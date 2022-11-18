<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use App\Models\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Produk';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('images')->display(function ($images){
            if($images != null){
                return $images[0]['image_path'];
            }
        })->image(null,50,50);

        $grid->column('category.name', 'Kategori');
        $grid->column('name', __('Nama'));
        $grid->column('price', __('Price'))->editable();
        $grid->column('isReady', __('Ready Stok'))->switch();
        $grid->column('isNew', __('Baru'))->switch();
        $grid->column('isPopular', __('Popular'))->switch();

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('description', __('Description'));
        $show->field('isNew', __('IsNew'));
        $show->field('isPopular', __('IsPopular'));
        $show->field('category_id', __('Category id'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $categories = Category::all()->pluck('name', 'id');
        $form = new Form(new Product());

        $form->select('category_id', __('Kategori'))->options($categories)->required();
        $form->text('name', __('Nama'))->required();
        $form->textarea('description', __('Deskripsi'))->required();
        $form->number('price', __('Harga'))->required();
        $form->switch('isReady', __('Stok Tersedia'))->default(1)->required();
        $form->switch('isNew', __('Product Baru'))->required();
        $form->switch('isPopular', __('Product Popular'))->required();

        $form->hasMany('images','Foto Produk', function (Form\NestedForm $form){
            $form->image('image_path', 'Foto')
                ->rules('mimes:jpg,png')
                ->required()
                ->move('produk');
        });



        return $form;
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product $product)
    {
        $images = $product->images;
        return response()->json([
           'data' => $product
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }

    public function newProduct(){
        $products = Product::where('isNew', '=', '1')->get();
        foreach ($products as $p){
            $p->images;
        }
        return response()->json([
           "data" => $products
        ]);
    }

    public function popularProduct(){
        $products = Product::where('isPopular', '=', '1')->get();
        foreach ($products as $p){
            $p->images;
        }
        return response()->json([
            "data" => $products
        ]);
    }

    public function productByCategory(){
        $category_id = request()->route()->parameter('category_id');
        $products = Product::where('category_id', '=', $category_id)->get();
        foreach ($products as $p){
            $p->images;
        }
        return response()->json([
            "data" => $products
        ]);
    }

    public function search(){
        $term = request()->route()->parameter('term');
        $products = Product::where('name', 'like', '%'.$term.'%')->get();
        foreach ($products as $p){
            $p->images;
        }
        return response()->json([
            "data" => $products
        ]);
    }
}

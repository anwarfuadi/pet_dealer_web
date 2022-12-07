/*
 Navicat Premium Data Transfer

 Source Server         : Dev Server AKNP
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : pet_dealer_dev

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 06/12/2022 08:35:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT 0,
  `order` int NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 5, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (3, 2, 6, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (4, 2, 7, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (5, 2, 8, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (6, 2, 9, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (7, 2, 10, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (8, 0, 2, 'Customer', 'fa-user-secret', '/customers', NULL, '2022-11-16 07:06:50', '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (9, 0, 3, 'Product', 'fa-cubes', '/products', NULL, '2022-11-16 07:07:52', '2022-11-16 07:08:47');
INSERT INTO `admin_menu` VALUES (10, 0, 4, 'Category', 'fa-object-group', '/categories', NULL, '2022-11-16 07:08:31', '2022-11-16 07:08:47');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 602 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-15 16:11:42', '2022-11-15 16:11:42');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 06:31:04', '2022-11-16 06:31:04');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 06:31:17', '2022-11-16 06:31:17');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2022-11-16 06:31:28', '2022-11-16 06:31:28');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 06:36:30', '2022-11-16 06:36:30');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-16 07:02:12', '2022-11-16 07:02:12');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:02:21', '2022-11-16 07:02:21');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 07:05:06', '2022-11-16 07:05:06');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:05:56', '2022-11-16 07:05:56');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Customer\",\"icon\":\"fa-user-secret\",\"uri\":\"\\/customers\",\"roles\":[null],\"permission\":null,\"_token\":\"y6eyvaqIZ8uXiInGt50Hzt1zgEcNwfqLkumMFkV1\"}', '2022-11-16 07:06:50', '2022-11-16 07:06:50');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-11-16 07:06:50', '2022-11-16 07:06:50');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"y6eyvaqIZ8uXiInGt50Hzt1zgEcNwfqLkumMFkV1\"}', '2022-11-16 07:07:52', '2022-11-16 07:07:52');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-11-16 07:07:52', '2022-11-16 07:07:52');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-object-group\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"y6eyvaqIZ8uXiInGt50Hzt1zgEcNwfqLkumMFkV1\"}', '2022-11-16 07:08:31', '2022-11-16 07:08:31');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-11-16 07:08:32', '2022-11-16 07:08:32');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"y6eyvaqIZ8uXiInGt50Hzt1zgEcNwfqLkumMFkV1\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-11-16 07:08:47', '2022-11-16 07:08:47');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:08:47', '2022-11-16 07:08:47');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:08:53', '2022-11-16 07:08:53');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 07:08:56', '2022-11-16 07:08:56');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:08:59', '2022-11-16 07:08:59');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:09:01', '2022-11-16 07:09:01');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 07:09:03', '2022-11-16 07:09:03');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 08:06:27', '2022-11-16 08:06:27');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 08:06:30', '2022-11-16 08:06:30');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-16 11:27:08', '2022-11-16 11:27:08');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:27:11', '2022-11-16 11:27:11');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 11:34:23', '2022-11-16 11:34:23');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:34:40', '2022-11-16 11:34:40');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:34:43', '2022-11-16 11:34:43');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:34:44', '2022-11-16 11:34:44');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:35:49', '2022-11-16 11:35:49');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:36:09', '2022-11-16 11:36:09');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:36:16', '2022-11-16 11:36:16');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-11-16 11:38:42', '2022-11-16 11:38:42');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-11-16 11:41:03', '2022-11-16 11:41:03');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:41:20', '2022-11-16 11:41:20');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:41:31', '2022-11-16 11:41:31');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:41:33', '2022-11-16 11:41:33');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 11:42:30', '2022-11-16 11:42:30');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:42:30', '2022-11-16 11:42:30');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:44:35', '2022-11-16 11:44:35');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 11:47:54', '2022-11-16 11:47:54');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:47:55', '2022-11-16 11:47:55');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:48:16', '2022-11-16 11:48:16');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 11:49:17', '2022-11-16 11:49:17');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:49:17', '2022-11-16 11:49:17');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:49:22', '2022-11-16 11:49:22');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 11:51:25', '2022-11-16 11:51:25');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:51:29', '2022-11-16 11:51:29');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:51:31', '2022-11-16 11:51:31');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:51:34', '2022-11-16 11:51:34');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 11:52:13', '2022-11-16 11:52:13');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:52:18', '2022-11-16 11:52:18');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:52:23', '2022-11-16 11:52:23');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:52:25', '2022-11-16 11:52:25');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:57:22', '2022-11-16 11:57:22');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:57:28', '2022-11-16 11:57:28');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:57:30', '2022-11-16 11:57:30');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:57:33', '2022-11-16 11:57:33');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:57:36', '2022-11-16 11:57:36');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 11:58:24', '2022-11-16 11:58:24');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:46', '2022-11-16 11:58:46');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:48', '2022-11-16 11:58:48');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:50', '2022-11-16 11:58:50');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:53', '2022-11-16 11:58:53');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:56', '2022-11-16 11:58:56');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:58:58', '2022-11-16 11:58:58');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 11:59:43', '2022-11-16 11:59:43');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 11:59:44', '2022-11-16 11:59:44');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 11:59:51', '2022-11-16 11:59:51');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:01:04', '2022-11-16 12:01:04');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:01:05', '2022-11-16 12:01:05');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:01:20', '2022-11-16 12:01:20');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:01:59', '2022-11-16 12:01:59');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:02:08', '2022-11-16 12:02:08');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:02:11', '2022-11-16 12:02:11');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:08:18', '2022-11-16 12:08:18');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:08:21', '2022-11-16 12:08:21');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:08:21', '2022-11-16 12:08:21');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:08:21', '2022-11-16 12:08:21');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:08:30', '2022-11-16 12:08:30');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:08:49', '2022-11-16 12:08:49');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:08:49', '2022-11-16 12:08:49');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:08:58', '2022-11-16 12:08:58');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:10:11', '2022-11-16 12:10:11');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:10:54', '2022-11-16 12:10:54');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:11:02', '2022-11-16 12:11:02');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:11:03', '2022-11-16 12:11:03');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:11:40', '2022-11-16 12:11:40');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:11:56', '2022-11-16 12:11:56');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:12:03', '2022-11-16 12:12:03');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:12:03', '2022-11-16 12:12:03');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:12:08', '2022-11-16 12:12:08');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:12:24', '2022-11-16 12:12:24');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:12:25', '2022-11-16 12:12:25');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:13:56', '2022-11-16 12:13:56');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:14:06', '2022-11-16 12:14:06');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:14:06', '2022-11-16 12:14:06');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:20:32', '2022-11-16 12:20:32');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:20:37', '2022-11-16 12:20:37');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:20:49', '2022-11-16 12:20:49');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:20:49', '2022-11-16 12:20:49');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:21:15', '2022-11-16 12:21:15');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:21:24', '2022-11-16 12:21:24');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:21:24', '2022-11-16 12:21:24');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:22:37', '2022-11-16 12:22:37');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 12:23:12', '2022-11-16 12:23:12');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 12:23:29', '2022-11-16 12:23:29');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 12:24:00', '2022-11-16 12:24:00');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:24:03', '2022-11-16 12:24:03');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:24:07', '2022-11-16 12:24:07');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:24:12', '2022-11-16 12:24:12');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"password_confirmation\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"_token\":\"YnKIh4DTEWRXjy57AJGaiyjujGDSehINULujQcJy\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\\/1\\/edit\"}', '2022-11-16 12:24:32', '2022-11-16 12:24:32');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:24:32', '2022-11-16 12:24:32');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:24:40', '2022-11-16 12:24:40');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:24:51', '2022-11-16 12:24:51');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:24:55', '2022-11-16 12:24:55');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:25:01', '2022-11-16 12:25:01');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:25:04', '2022-11-16 12:25:04');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:25:07', '2022-11-16 12:25:07');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:25:56', '2022-11-16 12:25:56');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:25:59', '2022-11-16 12:25:59');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:27:40', '2022-11-16 12:27:40');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:27:40', '2022-11-16 12:27:40');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:27:40', '2022-11-16 12:27:40');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:27:40', '2022-11-16 12:27:40');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:27:45', '2022-11-16 12:27:45');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:27:52', '2022-11-16 12:27:52');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:28:13', '2022-11-16 12:28:13');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:28:14', '2022-11-16 12:28:14');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:28:18', '2022-11-16 12:28:18');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:28:26', '2022-11-16 12:28:26');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:28:26', '2022-11-16 12:28:26');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:28:30', '2022-11-16 12:28:30');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"password_confirmation\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:28:59', '2022-11-16 12:28:59');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:28:59', '2022-11-16 12:28:59');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:29:06', '2022-11-16 12:29:06');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"password_confirmation\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\\/2\\/edit\"}', '2022-11-16 12:29:21', '2022-11-16 12:29:21');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:29:22', '2022-11-16 12:29:22');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:29:26', '2022-11-16 12:29:26');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:29:33', '2022-11-16 12:29:33');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:29:37', '2022-11-16 12:29:37');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:30:23', '2022-11-16 12:30:23');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:30:27', '2022-11-16 12:30:27');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:30:32', '2022-11-16 12:30:32');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"password_confirmation\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:31:01', '2022-11-16 12:31:01');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:31:01', '2022-11-16 12:31:01');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-11-16 12:31:07', '2022-11-16 12:31:07');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:31:30', '2022-11-16 12:31:30');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:31:35', '2022-11-16 12:31:35');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:31:49', '2022-11-16 12:31:49');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:31:50', '2022-11-16 12:31:50');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:31:53', '2022-11-16 12:31:53');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:32:03', '2022-11-16 12:32:03');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:32:03', '2022-11-16 12:32:03');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:33:23', '2022-11-16 12:33:23');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:40:02', '2022-11-16 12:40:02');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:40:03', '2022-11-16 12:40:03');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:40:31', '2022-11-16 12:40:31');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:41:10', '2022-11-16 12:41:10');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:41:15', '2022-11-16 12:41:15');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:42:03', '2022-11-16 12:42:03');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:42:06', '2022-11-16 12:42:06');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Asagi\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:42:20', '2022-11-16 12:42:20');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:42:20', '2022-11-16 12:42:20');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:42:24', '2022-11-16 12:42:24');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Chagoi\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:42:39', '2022-11-16 12:42:39');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:42:39', '2022-11-16 12:42:39');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:42:44', '2022-11-16 12:42:44');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Goromo\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:43:00', '2022-11-16 12:43:00');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:43:00', '2022-11-16 12:43:00');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:43:06', '2022-11-16 12:43:06');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Ochiba\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:43:17', '2022-11-16 12:43:17');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:43:17', '2022-11-16 12:43:17');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:43:21', '2022-11-16 12:43:21');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Showa\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:43:34', '2022-11-16 12:43:34');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:43:35', '2022-11-16 12:43:35');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:43:37', '2022-11-16 12:43:37');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Slayer\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:43:51', '2022-11-16 12:43:51');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:43:51', '2022-11-16 12:43:51');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:43:54', '2022-11-16 12:43:54');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Susui\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:44:04', '2022-11-16 12:44:04');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:44:04', '2022-11-16 12:44:04');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:44:28', '2022-11-16 12:44:28');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Tancho\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:44:41', '2022-11-16 12:44:41');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:44:41', '2022-11-16 12:44:41');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:44:43', '2022-11-16 12:44:43');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Utsuri\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:44:54', '2022-11-16 12:44:54');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:44:54', '2022-11-16 12:44:54');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:46:15', '2022-11-16 12:46:15');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:46:34', '2022-11-16 12:46:34');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:46:58', '2022-11-16 12:46:58');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"Sanke\",\"_token\":\"b5DJiNI5UdXY8KTZYvwspxhEsMA56RU06kKftEbB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 12:47:06', '2022-11-16 12:47:06');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:47:07', '2022-11-16 12:47:07');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:47:12', '2022-11-16 12:47:12');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:47:59', '2022-11-16 12:47:59');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:48:32', '2022-11-16 12:48:32');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:48:47', '2022-11-16 12:48:47');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 12:49:04', '2022-11-16 12:49:04');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/categories/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:49:11', '2022-11-16 12:49:11');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:49:15', '2022-11-16 12:49:15');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:49:27', '2022-11-16 12:49:27');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:49:29', '2022-11-16 12:49:29');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 12:50:22', '2022-11-16 12:50:22');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:51:51', '2022-11-16 12:51:51');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2022-11-16 12:52:04', '2022-11-16 12:52:04');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:09:07', '2022-11-16 15:09:07');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:09:18', '2022-11-16 15:09:18');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohakuk\",\"_token\":\"pARFZT3iox1gv8nrZYbHFSIB399af8MAjOBDsAra\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 15:09:22', '2022-11-16 15:09:22');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 15:09:22', '2022-11-16 15:09:22');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:10:09', '2022-11-16 15:10:09');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Kohaku\",\"_token\":\"pARFZT3iox1gv8nrZYbHFSIB399af8MAjOBDsAra\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/categories\"}', '2022-11-16 15:10:18', '2022-11-16 15:10:18');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-11-16 15:10:19', '2022-11-16 15:10:19');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:13:07', '2022-11-16 15:13:07');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:13:11', '2022-11-16 15:13:11');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 15:13:13', '2022-11-16 15:13:13');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-16 23:24:10', '2022-11-16 23:24:10');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:24:26', '2022-11-16 23:24:26');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:24:30', '2022-11-16 23:24:30');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:24:38', '2022-11-16 23:24:38');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:25:57', '2022-11-16 23:25:57');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:28:39', '2022-11-16 23:28:39');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:31:09', '2022-11-16 23:31:09');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:32:42', '2022-11-16 23:32:42');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:33:25', '2022-11-16 23:33:25');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:33:39', '2022-11-16 23:33:39');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:36:32', '2022-11-16 23:36:32');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:38:10', '2022-11-16 23:38:10');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:38:43', '2022-11-16 23:38:43');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:39:01', '2022-11-16 23:39:01');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:42:25', '2022-11-16 23:42:25');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:52:49', '2022-11-16 23:52:49');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:52:51', '2022-11-16 23:52:51');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:52:53', '2022-11-16 23:52:53');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku 1\",\"descriptions\":\"Kohaku 1\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-16 23:53:55', '2022-11-16 23:53:55');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:53:56', '2022-11-16 23:53:56');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:54:41', '2022-11-16 23:54:41');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:54:43', '2022-11-16 23:54:43');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku 20cm\",\"descriptions\":\"Kohaku 20cm\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-16 23:55:08', '2022-11-16 23:55:08');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-11-16 23:55:09', '2022-11-16 23:55:09');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku 20cm\",\"descriptions\":\"Kohaku 20cm\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new___LA_KEY__\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\"}', '2022-11-16 23:55:42', '2022-11-16 23:55:42');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-16 23:55:42', '2022-11-16 23:55:42');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:55:51', '2022-11-16 23:55:51');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku 20cm\",\"descriptions\":\"Kohaku 20cm\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"1\":{\"id\":\"1\",\"_remove_\":\"0\"},\"new_1\":{\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-16 23:58:26', '2022-11-16 23:58:26');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-16 23:58:26', '2022-11-16 23:58:26');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:58:31', '2022-11-16 23:58:31');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-16 23:59:40', '2022-11-16 23:59:40');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:02:14', '2022-11-17 00:02:14');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:02:30', '2022-11-17 00:02:30');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:03:03', '2022-11-17 00:03:03');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:03:48', '2022-11-17 00:03:48');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isReady\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 00:03:55', '2022-11-17 00:03:55');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isReady\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 00:03:57', '2022-11-17 00:03:57');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:04:15', '2022-11-17 00:04:15');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:07:59', '2022-11-17 00:07:59');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:08:16', '2022-11-17 00:08:16');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:08:27', '2022-11-17 00:08:27');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:09:52', '2022-11-17 00:09:52');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:10:05', '2022-11-17 00:10:05');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:17:51', '2022-11-17 00:17:51');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:18:05', '2022-11-17 00:18:05');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:18:48', '2022-11-17 00:18:48');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:19:26', '2022-11-17 00:19:26');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:20:04', '2022-11-17 00:20:04');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 00:20:53', '2022-11-17 00:20:53');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"name\":\"Sanke 20CM\",\"descriptions\":\"asfafa\",\"price\":\"200000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 00:21:27', '2022-11-17 00:21:27');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:21:27', '2022-11-17 00:21:27');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:21:58', '2022-11-17 00:21:58');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 00:22:14', '2022-11-17 00:22:14');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 00:23:01', '2022-11-17 00:23:01');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 00:23:11', '2022-11-17 00:23:11');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 00:23:22', '2022-11-17 00:23:22');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 01:35:55', '2022-11-17 01:35:55');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:37:16', '2022-11-17 01:37:16');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku35cm\",\"descriptions\":\"Kohaku 35cm\",\"price\":\"500000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"1\":{\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"id\":\"3\",\"_remove_\":\"1\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 01:38:48', '2022-11-17 01:38:48');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 01:38:48', '2022-11-17 01:38:48');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:38:56', '2022-11-17 01:38:56');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"name\":\"Kohaku 20cm\",\"descriptions\":\"Kohaku 20cm\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 01:39:46', '2022-11-17 01:39:46');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 01:39:47', '2022-11-17 01:39:47');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:41:16', '2022-11-17 01:41:16');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"name\":\"Sanke 20CM\",\"descriptions\":\"asfafa\",\"price\":\"200000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 01:41:48', '2022-11-17 01:41:48');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 01:41:48', '2022-11-17 01:41:48');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:42:01', '2022-11-17 01:42:01');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:42:04', '2022-11-17 01:42:04');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 01:42:06', '2022-11-17 01:42:06');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 02:47:17', '2022-11-17 02:47:17');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isNew\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:20', '2022-11-17 02:47:20');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"isNew\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:21', '2022-11-17 02:47:21');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"isNew\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:22', '2022-11-17 02:47:22');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isPopular\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:24', '2022-11-17 02:47:24');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"isPopular\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:25', '2022-11-17 02:47:25');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"isPopular\":\"0\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:25', '2022-11-17 02:47:25');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isPopular\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:47:35', '2022-11-17 02:47:35');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"isPopular\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:54:31', '2022-11-17 02:54:31');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"isPopular\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:54:33', '2022-11-17 02:54:33');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"isNew\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:54:35', '2022-11-17 02:54:35');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"isNew\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:54:36', '2022-11-17 02:54:36');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isNew\":\"1\",\"_token\":\"keXEXe3gCH54eV3aVWDmLNscmqBm8pyj3MDa3awN\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 02:54:37', '2022-11-17 02:54:37');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 07:31:19', '2022-11-17 07:31:19');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:31:23', '2022-11-17 07:31:23');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:31:25', '2022-11-17 07:31:25');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"isNew\":\"0\",\"_token\":\"R81BtmBPYjZgvTI6tB4sxEmvPxYWtmcSkK5TkiId\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 07:31:40', '2022-11-17 07:31:40');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"isPopular\":\"0\",\"_token\":\"R81BtmBPYjZgvTI6tB4sxEmvPxYWtmcSkK5TkiId\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 07:31:45', '2022-11-17 07:31:45');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"isPopular\":\"0\",\"_token\":\"R81BtmBPYjZgvTI6tB4sxEmvPxYWtmcSkK5TkiId\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-17 07:31:46', '2022-11-17 07:31:46');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:32:32', '2022-11-17 07:32:32');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:33:22', '2022-11-17 07:33:22');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 07:33:57', '2022-11-17 07:33:57');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:34:47', '2022-11-17 07:34:47');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"6\",\"name\":\"Ochiba SQ\",\"description\":\"Ochiba Show Quality\",\"price\":\"1500000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"R81BtmBPYjZgvTI6tB4sxEmvPxYWtmcSkK5TkiId\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 07:37:06', '2022-11-17 07:37:06');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 07:37:07', '2022-11-17 07:37:07');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 07:39:18', '2022-11-17 07:39:18');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/products', 'POST', '127.0.0.1', '{\"category_id\":\"11\",\"name\":\"Utsuri Grade A\",\"description\":\"Utsuri Grade A\",\"price\":\"250000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"new_1\":{\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"R81BtmBPYjZgvTI6tB4sxEmvPxYWtmcSkK5TkiId\",\"_previous_\":\"https:\\/\\/b20d-103-147-46-90.ap.ngrok.io\\/admin\\/products\"}', '2022-11-17 07:39:53', '2022-11-17 07:39:53');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 07:39:53', '2022-11-17 07:39:53');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 08:26:21', '2022-11-17 08:26:21');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-11-17 09:49:38', '2022-11-17 09:49:38');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 09:49:46', '2022-11-17 09:49:46');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 10:29:59', '2022-11-17 10:29:59');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 10:55:17', '2022-11-17 10:55:17');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 14:07:13', '2022-11-17 14:07:13');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:10:40', '2022-11-17 15:10:40');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2022-11-17 15:11:07', '2022-11-17 15:11:07');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/customers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:11:13', '2022-11-17 15:11:13');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:11:23', '2022-11-17 15:11:23');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:11:54', '2022-11-17 15:11:54');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:12:50', '2022-11-17 15:12:50');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:13:25', '2022-11-17 15:13:25');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:15:55', '2022-11-17 15:15:55');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:16:08', '2022-11-17 15:16:08');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:16:55', '2022-11-17 15:16:55');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:17:32', '2022-11-17 15:17:32');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-11-17 15:17:45', '2022-11-17 15:17:45');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:17:54', '2022-11-17 15:17:54');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:17:56', '2022-11-17 15:17:56');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:17:58', '2022-11-17 15:17:58');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:18:02', '2022-11-17 15:18:02');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 15:18:46', '2022-11-17 15:18:46');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2022-11-17 15:50:18', '2022-11-17 15:50:18');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-11-17 16:05:05', '2022-11-17 16:05:05');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-18 04:19:54', '2022-11-18 04:19:54');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:19:57', '2022-11-18 04:19:57');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:20:00', '2022-11-18 04:20:00');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:21:07', '2022-11-18 04:21:07');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"0uzH7giMGUxtdwexurqKmT7EPHRVLUNhIg2C8M8f\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 04:21:25', '2022-11-18 04:21:25');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 04:21:25', '2022-11-18 04:21:25');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:21:32', '2022-11-18 04:21:32');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:23:33', '2022-11-18 04:23:33');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:23:36', '2022-11-18 04:23:36');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:23:39', '2022-11-18 04:23:39');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"0uzH7giMGUxtdwexurqKmT7EPHRVLUNhIg2C8M8f\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 04:23:54', '2022-11-18 04:23:54');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 04:23:55', '2022-11-18 04:23:55');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:24:01', '2022-11-18 04:24:01');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:25:11', '2022-11-18 04:25:11');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-18 04:27:30', '2022-11-18 04:27:30');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:33', '2022-11-18 04:27:33');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:35', '2022-11-18 04:27:35');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:36', '2022-11-18 04:27:36');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:40', '2022-11-18 04:27:40');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:47', '2022-11-18 04:27:47');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:27:49', '2022-11-18 04:27:49');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"0uzH7giMGUxtdwexurqKmT7EPHRVLUNhIg2C8M8f\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 04:28:02', '2022-11-18 04:28:02');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 04:28:02', '2022-11-18 04:28:02');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 04:28:09', '2022-11-18 04:28:09');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-18 13:45:54', '2022-11-18 13:45:54');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:46:08', '2022-11-18 13:46:08');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:46:11', '2022-11-18 13:46:11');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:46:18', '2022-11-18 13:46:18');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:46:23', '2022-11-18 13:46:23');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 13:47:19', '2022-11-18 13:47:19');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 13:47:23', '2022-11-18 13:47:23');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:47:31', '2022-11-18 13:47:31');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '[]', '2022-11-18 13:50:06', '2022-11-18 13:50:06');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:50:17', '2022-11-18 13:50:17');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/categories/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:50:25', '2022-11-18 13:50:25');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/categories/2', 'PUT', '103.147.47.201', '{\"name\":\"Sanke\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 13:50:34', '2022-11-18 13:50:34');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 13:50:34', '2022-11-18 13:50:34');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/categories/3/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:50:51', '2022-11-18 13:50:51');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/categories/3', 'PUT', '103.147.47.201', '{\"name\":\"Asagi\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 13:51:04', '2022-11-18 13:51:04');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 13:51:05', '2022-11-18 13:51:05');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/categories/3/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:51:14', '2022-11-18 13:51:14');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:51:34', '2022-11-18 13:51:34');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:51:40', '2022-11-18 13:51:40');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:59:30', '2022-11-18 13:59:30');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/auth/setting', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 13:59:36', '2022-11-18 13:59:36');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/auth/setting', 'PUT', '103.147.47.201', '{\"name\":\"Administrator\",\"password\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"password_confirmation\":\"$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\"}', '2022-11-18 14:00:07', '2022-11-18 14:00:07');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/auth/setting', 'GET', '103.147.47.201', '[]', '2022-11-18 14:00:08', '2022-11-18 14:00:08');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/auth/setting', 'GET', '103.147.47.201', '[]', '2022-11-18 14:00:17', '2022-11-18 14:00:17');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 14:00:26', '2022-11-18 14:00:26');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/categories/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 14:00:31', '2022-11-18 14:00:31');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/categories/2', 'PUT', '103.147.47.201', '{\"name\":\"Sanke\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 14:00:41', '2022-11-18 14:00:41');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 14:00:41', '2022-11-18 14:00:41');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/categories/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 14:00:54', '2022-11-18 14:00:54');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/categories/2', 'PUT', '103.147.47.201', '{\"name\":\"Sanke\",\"_token\":\"ynBFFu6xWUlNG43twsjDvnzBsaJXQeZmtgqYuVco\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 14:01:17', '2022-11-18 14:01:17');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 14:01:18', '2022-11-18 14:01:18');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/categories/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 14:02:44', '2022-11-18 14:02:44');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:28:16', '2022-11-18 22:28:16');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:28:27', '2022-11-18 22:28:27');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:28:39', '2022-11-18 22:28:39');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:28:39', '2022-11-18 22:28:39');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/categories/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:28:43', '2022-11-18 22:28:43');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/categories/2', 'PUT', '103.147.47.201', '{\"name\":\"Sanke\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:28:59', '2022-11-18 22:28:59');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:28:59', '2022-11-18 22:28:59');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/categories/3/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:29:02', '2022-11-18 22:29:02');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/categories/3', 'PUT', '103.147.47.201', '{\"name\":\"Asagi\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:29:08', '2022-11-18 22:29:08');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:29:09', '2022-11-18 22:29:09');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/categories/4/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:29:13', '2022-11-18 22:29:13');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/categories/4', 'PUT', '103.147.47.201', '{\"name\":\"Chagoi\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:29:21', '2022-11-18 22:29:21');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:29:21', '2022-11-18 22:29:21');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/categories/5/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:29:27', '2022-11-18 22:29:27');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/categories/5', 'PUT', '103.147.47.201', '{\"name\":\"Goromo\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:29:34', '2022-11-18 22:29:34');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:29:34', '2022-11-18 22:29:34');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/categories/6/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:29:38', '2022-11-18 22:29:38');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/categories/6', 'PUT', '103.147.47.201', '{\"name\":\"Ochiba\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:29:45', '2022-11-18 22:29:45');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:29:46', '2022-11-18 22:29:46');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/categories/7/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:29:48', '2022-11-18 22:29:48');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/categories/7', 'PUT', '103.147.47.201', '{\"name\":\"Showa\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:29:57', '2022-11-18 22:29:57');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:29:58', '2022-11-18 22:29:58');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/categories/8/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:30:02', '2022-11-18 22:30:02');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/categories/8', 'PUT', '103.147.47.201', '{\"name\":\"Slayer\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:30:08', '2022-11-18 22:30:08');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:30:08', '2022-11-18 22:30:08');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/categories/9/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:30:12', '2022-11-18 22:30:12');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/categories/9', 'PUT', '103.147.47.201', '{\"name\":\"Susui\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:30:18', '2022-11-18 22:30:18');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:30:19', '2022-11-18 22:30:19');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/categories/10/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:30:23', '2022-11-18 22:30:23');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/categories/10', 'PUT', '103.147.47.201', '{\"name\":\"Tancho\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:30:32', '2022-11-18 22:30:32');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:30:33', '2022-11-18 22:30:33');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/categories/11/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:30:37', '2022-11-18 22:30:37');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/categories/11', 'PUT', '103.147.47.201', '{\"name\":\"Utsuri\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-18 22:30:44', '2022-11-18 22:30:44');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-18 22:30:45', '2022-11-18 22:30:45');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:30:51', '2022-11-18 22:30:51');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/products/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:33:00', '2022-11-18 22:33:00');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/products/1', 'PUT', '103.147.47.201', '{\"category_id\":\"1\",\"name\":\"Kohaku35cm\",\"description\":\"Kohaku 35cm\",\"price\":\"500000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"1\":{\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/products\"}', '2022-11-18 22:34:07', '2022-11-18 22:34:07');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:34:08', '2022-11-18 22:34:08');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:34:20', '2022-11-18 22:34:20');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/products/1', 'PUT', '103.147.47.201', '{\"isNew\":\"0\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-18 22:34:24', '2022-11-18 22:34:24');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/products/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:34:32', '2022-11-18 22:34:32');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/products/2', 'PUT', '103.147.47.201', '{\"category_id\":\"2\",\"name\":\"Sanke 20CM\",\"description\":\"asfafa\",\"price\":\"200000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"6\":{\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/products\"}', '2022-11-18 22:35:03', '2022-11-18 22:35:03');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:35:03', '2022-11-18 22:35:03');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/products/2', 'PUT', '103.147.47.201', '{\"isPopular\":\"0\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-18 22:35:09', '2022-11-18 22:35:09');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/products/3/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:35:15', '2022-11-18 22:35:15');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/products/3', 'PUT', '103.147.47.201', '{\"category_id\":\"1\",\"name\":\"Kohaku 20cm\",\"description\":\"Kohaku 20cm\",\"price\":\"100000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"4\":{\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"id\":\"5\",\"_remove_\":\"0\"}},\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/products\"}', '2022-11-18 22:35:34', '2022-11-18 22:35:34');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:35:34', '2022-11-18 22:35:34');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/products/3', 'PUT', '103.147.47.201', '{\"isPopular\":\"0\",\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-18 22:35:39', '2022-11-18 22:35:39');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/products/4/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:35:46', '2022-11-18 22:35:46');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/products/4', 'PUT', '103.147.47.201', '{\"category_id\":\"6\",\"name\":\"Ochiba SQ\",\"description\":\"Ochiba Show Quality\",\"price\":\"1500000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"8\":{\"id\":\"8\",\"_remove_\":\"0\"}},\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/products\"}', '2022-11-18 22:35:59', '2022-11-18 22:35:59');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:35:59', '2022-11-18 22:35:59');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/products/5/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:08', '2022-11-18 22:36:08');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/products/5', 'PUT', '103.147.47.201', '{\"category_id\":\"11\",\"name\":\"Utsuri Grade A\",\"description\":\"Utsuri Grade A\",\"price\":\"250000\",\"isReady\":\"on\",\"isNew\":\"on\",\"isPopular\":\"on\",\"images\":{\"9\":{\"id\":\"9\",\"_remove_\":\"0\"}},\"_token\":\"9wEaJutkwuSoXjuSoESyyec2k2yyfyMOxF5jMhO0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/products\"}', '2022-11-18 22:36:22', '2022-11-18 22:36:22');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-11-18 22:36:23', '2022-11-18 22:36:23');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:44', '2022-11-18 22:36:44');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:48', '2022-11-18 22:36:48');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:54', '2022-11-18 22:36:54');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:56', '2022-11-18 22:36:56');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:36:58', '2022-11-18 22:36:58');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-18 22:37:19', '2022-11-18 22:37:19');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-19 09:39:54', '2022-11-19 09:39:54');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-19 09:40:06', '2022-11-19 09:40:06');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-19 09:40:23', '2022-11-19 09:40:23');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-19 09:41:00', '2022-11-19 09:41:00');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:12:46', '2022-11-21 07:12:46');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:12:54', '2022-11-21 07:12:54');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:12:55', '2022-11-21 07:12:55');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:12:58', '2022-11-21 07:12:58');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:12:59', '2022-11-21 07:12:59');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:01', '2022-11-21 07:13:01');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:04', '2022-11-21 07:13:04');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:06', '2022-11-21 07:13:06');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:07', '2022-11-21 07:13:07');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:08', '2022-11-21 07:13:08');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:09', '2022-11-21 07:13:09');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:34', '2022-11-21 07:13:34');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:45', '2022-11-21 07:13:45');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:13:59', '2022-11-21 07:13:59');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku OK\",\"_token\":\"GYiiVB1AtliO9SwLUJP6G4SDtEXUPBfxPahbIH7D\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-21 07:14:05', '2022-11-21 07:14:05');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-21 07:14:05', '2022-11-21 07:14:05');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:14:32', '2022-11-21 07:14:32');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:14:58', '2022-11-21 07:14:58');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:15:00', '2022-11-21 07:15:00');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:15:01', '2022-11-21 07:15:01');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:15:02', '2022-11-21 07:15:02');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:15:02', '2022-11-21 07:15:02');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:32', '2022-11-21 07:19:32');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:36', '2022-11-21 07:19:36');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:42', '2022-11-21 07:19:42');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:44', '2022-11-21 07:19:44');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:53', '2022-11-21 07:19:53');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:19:58', '2022-11-21 07:19:58');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/auth/roles/create', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:20:02', '2022-11-21 07:20:02');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/auth/roles', 'POST', '103.147.47.201', '{\"slug\":\"operator\",\"name\":\"operator\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"GYiiVB1AtliO9SwLUJP6G4SDtEXUPBfxPahbIH7D\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/roles\"}', '2022-11-21 07:20:32', '2022-11-21 07:20:32');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '[]', '2022-11-21 07:20:32', '2022-11-21 07:20:32');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:20:40', '2022-11-21 07:20:40');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/auth/users', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:20:49', '2022-11-21 07:20:49');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/auth/users', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:20:57', '2022-11-21 07:20:57');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/auth/users/create', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:00', '2022-11-21 07:21:00');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/auth/users', 'POST', '103.147.47.201', '{\"username\":\"op\",\"name\":\"Operator\",\"password\":\"qwerty\",\"password_confirmation\":\"qwerty\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"GYiiVB1AtliO9SwLUJP6G4SDtEXUPBfxPahbIH7D\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/users\"}', '2022-11-21 07:21:20', '2022-11-21 07:21:20');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/auth/users', 'GET', '103.147.47.201', '[]', '2022-11-21 07:21:20', '2022-11-21 07:21:20');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:24', '2022-11-21 07:21:24');
INSERT INTO `admin_operation_log` VALUES (497, 2, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:21:30', '2022-11-21 07:21:30');
INSERT INTO `admin_operation_log` VALUES (498, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:40', '2022-11-21 07:21:40');
INSERT INTO `admin_operation_log` VALUES (499, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:46', '2022-11-21 07:21:46');
INSERT INTO `admin_operation_log` VALUES (500, 2, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:47', '2022-11-21 07:21:47');
INSERT INTO `admin_operation_log` VALUES (501, 2, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:48', '2022-11-21 07:21:48');
INSERT INTO `admin_operation_log` VALUES (502, 2, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:48', '2022-11-21 07:21:48');
INSERT INTO `admin_operation_log` VALUES (503, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:49', '2022-11-21 07:21:49');
INSERT INTO `admin_operation_log` VALUES (504, 2, 'admin', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:50', '2022-11-21 07:21:50');
INSERT INTO `admin_operation_log` VALUES (505, 2, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:21:52', '2022-11-21 07:21:52');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:22:03', '2022-11-21 07:22:03');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:22:07', '2022-11-21 07:22:07');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:22:20', '2022-11-21 07:22:20');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/auth/permissions/create', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:22:35', '2022-11-21 07:22:35');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/auth/permissions', 'POST', '103.147.47.201', '{\"slug\":\"customer\",\"name\":\"customer\",\"http_method\":[null],\"http_path\":\"\\/customers\",\"_token\":\"7oKlqxZ8ZLcYH0NNjGrOD4ewW616IaH8GgX7jLdI\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/permissions\"}', '2022-11-21 07:23:00', '2022-11-21 07:23:00');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '[]', '2022-11-21 07:23:00', '2022-11-21 07:23:00');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:08', '2022-11-21 07:23:08');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/auth/roles/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:13', '2022-11-21 07:23:13');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/auth/roles/2/edit', 'GET', '103.147.47.201', '[]', '2022-11-21 07:23:19', '2022-11-21 07:23:19');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/auth/roles/2', 'PUT', '103.147.47.201', '{\"slug\":\"operator\",\"name\":\"operator\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"7oKlqxZ8ZLcYH0NNjGrOD4ewW616IaH8GgX7jLdI\",\"_method\":\"PUT\"}', '2022-11-21 07:23:23', '2022-11-21 07:23:23');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '[]', '2022-11-21 07:23:23', '2022-11-21 07:23:23');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:27', '2022-11-21 07:23:27');
INSERT INTO `admin_operation_log` VALUES (518, 2, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:23:33', '2022-11-21 07:23:33');
INSERT INTO `admin_operation_log` VALUES (519, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:34', '2022-11-21 07:23:34');
INSERT INTO `admin_operation_log` VALUES (520, 2, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:38', '2022-11-21 07:23:38');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:23:44', '2022-11-21 07:23:44');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:48', '2022-11-21 07:23:48');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/auth/menu/9/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:23:54', '2022-11-21 07:23:54');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/auth/menu/9', 'PUT', '103.147.47.201', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"az563atPDAlqF9wz60oqsukMmI4kirPhRg3Lzk5v\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/menu\"}', '2022-11-21 07:24:00', '2022-11-21 07:24:00');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '[]', '2022-11-21 07:24:00', '2022-11-21 07:24:00');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:04', '2022-11-21 07:24:04');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:07', '2022-11-21 07:24:07');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/auth/menu/9/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:12', '2022-11-21 07:24:12');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/auth/menu/9', 'PUT', '103.147.47.201', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"az563atPDAlqF9wz60oqsukMmI4kirPhRg3Lzk5v\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/menu\"}', '2022-11-21 07:24:16', '2022-11-21 07:24:16');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '[]', '2022-11-21 07:24:16', '2022-11-21 07:24:16');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/auth/menu/10/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:19', '2022-11-21 07:24:19');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/auth/menu/10', 'PUT', '103.147.47.201', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-object-group\",\"uri\":\"\\/categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"az563atPDAlqF9wz60oqsukMmI4kirPhRg3Lzk5v\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/menu\"}', '2022-11-21 07:24:23', '2022-11-21 07:24:23');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '[]', '2022-11-21 07:24:24', '2022-11-21 07:24:24');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:28', '2022-11-21 07:24:28');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:24:32', '2022-11-21 07:24:32');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:35', '2022-11-21 07:24:35');
INSERT INTO `admin_operation_log` VALUES (537, 2, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:24:45', '2022-11-21 07:24:45');
INSERT INTO `admin_operation_log` VALUES (538, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:47', '2022-11-21 07:24:47');
INSERT INTO `admin_operation_log` VALUES (539, 2, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:55', '2022-11-21 07:24:55');
INSERT INTO `admin_operation_log` VALUES (540, 2, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:24:59', '2022-11-21 07:24:59');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:25:04', '2022-11-21 07:25:04');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:14', '2022-11-21 07:25:14');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/auth/menu/9/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:19', '2022-11-21 07:25:19');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/auth/menu/9', 'PUT', '103.147.47.201', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"pv9fJgJ0vggDhE1oAZaZffrQcYmLhGE9shM78HUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/menu\"}', '2022-11-21 07:25:24', '2022-11-21 07:25:24');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '[]', '2022-11-21 07:25:24', '2022-11-21 07:25:24');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/auth/menu/10/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:26', '2022-11-21 07:25:26');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/auth/menu/10', 'PUT', '103.147.47.201', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-object-group\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"pv9fJgJ0vggDhE1oAZaZffrQcYmLhGE9shM78HUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/auth\\/menu\"}', '2022-11-21 07:25:31', '2022-11-21 07:25:31');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '[]', '2022-11-21 07:25:32', '2022-11-21 07:25:32');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:38', '2022-11-21 07:25:38');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/_handle_action_', 'POST', '103.147.47.201', '{\"_key\":\"6\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"pv9fJgJ0vggDhE1oAZaZffrQcYmLhGE9shM78HUm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-11-21 07:25:44', '2022-11-21 07:25:44');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:44', '2022-11-21 07:25:44');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:47', '2022-11-21 07:25:47');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/auth/users', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:48', '2022-11-21 07:25:48');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/_handle_action_', 'POST', '103.147.47.201', '{\"_key\":\"2\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"pv9fJgJ0vggDhE1oAZaZffrQcYmLhGE9shM78HUm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-11-21 07:25:52', '2022-11-21 07:25:52');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/auth/users', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:52', '2022-11-21 07:25:52');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/auth/users', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:57', '2022-11-21 07:25:57');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:25:59', '2022-11-21 07:25:59');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/_handle_action_', 'POST', '103.147.47.201', '{\"_key\":\"2\",\"_model\":\"Encore_Admin_Auth_Database_Role\",\"_token\":\"pv9fJgJ0vggDhE1oAZaZffrQcYmLhGE9shM78HUm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-11-21 07:26:03', '2022-11-21 07:26:03');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/auth/roles', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:03', '2022-11-21 07:26:03');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/auth/permissions', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:05', '2022-11-21 07:26:05');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:07', '2022-11-21 07:26:07');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/auth/menu/8/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:09', '2022-11-21 07:26:09');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:14', '2022-11-21 07:26:14');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/auth/menu/8/edit', 'GET', '103.147.47.201', '[]', '2022-11-21 07:26:20', '2022-11-21 07:26:20');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/auth/menu/9/edit', 'GET', '103.147.47.201', '[]', '2022-11-21 07:26:22', '2022-11-21 07:26:22');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/auth/menu/10/edit', 'GET', '103.147.47.201', '[]', '2022-11-21 07:26:24', '2022-11-21 07:26:24');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/auth/menu/2/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:32', '2022-11-21 07:26:32');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/auth/logout', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:26:36', '2022-11-21 07:26:36');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-21 07:29:35', '2022-11-21 07:29:35');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/auth/menu', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:29:37', '2022-11-21 07:29:37');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/auth/menu/8/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-21 07:29:43', '2022-11-21 07:29:43');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/customers', 'GET', '103.147.47.201', '[]', '2022-11-21 07:30:00', '2022-11-21 07:30:00');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-23 03:11:29', '2022-11-23 03:11:29');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:11:35', '2022-11-23 03:11:35');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:11:37', '2022-11-23 03:11:37');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:11:40', '2022-11-23 03:11:40');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:12:27', '2022-11-23 03:12:27');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:12:28', '2022-11-23 03:12:28');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/products/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:14:52', '2022-11-23 03:14:52');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:14:58', '2022-11-23 03:14:58');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/categories/1/edit', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-23 03:15:01', '2022-11-23 03:15:01');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/categories/1', 'PUT', '103.147.47.201', '{\"name\":\"Kohaku\",\"_token\":\"1jEnLy7Iq3BAXc7tEqOyyBDBZvnchnaI2SHmXQbz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ikanhias.alila.id\\/admin\\/categories\"}', '2022-11-23 03:15:05', '2022-11-23 03:15:05');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/categories', 'GET', '103.147.47.201', '[]', '2022-11-23 03:15:05', '2022-11-23 03:15:05');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-29 12:38:49', '2022-11-29 12:38:49');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-29 12:38:58', '2022-11-29 12:38:58');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-29 12:39:21', '2022-11-29 12:39:21');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-29 12:39:23', '2022-11-29 12:39:23');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-29 12:39:46', '2022-11-29 12:39:46');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-29 12:49:31', '2022-11-29 12:49:31');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/customers', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-29 12:49:34', '2022-11-29 12:49:34');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-30 03:16:44', '2022-11-30 03:16:44');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-30 03:16:49', '2022-11-30 03:16:49');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-30 03:16:50', '2022-11-30 03:16:50');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-30 03:17:08', '2022-11-30 03:17:08');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/products/3', 'PUT', '103.147.47.201', '{\"isNew\":\"0\",\"_token\":\"pR2T3HtggKjqgQBJmYBt4eRhS60BYGsEzEcdp0rB\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-11-30 03:17:20', '2022-11-30 03:17:20');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-11-30 03:40:52', '2022-11-30 03:40:52');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-11-30 03:40:58', '2022-11-30 03:40:58');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/categories', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-12-01 01:40:51', '2022-12-01 01:40:51');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/products', 'GET', '103.147.47.201', '{\"_pjax\":\"#pjax-container\"}', '2022-12-01 01:40:53', '2022-12-01 01:40:53');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/products', 'GET', '103.147.47.201', '[]', '2022-12-01 08:31:44', '2022-12-01 08:31:44');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin', 'GET', '103.147.47.201', '[]', '2022-12-05 07:58:16', '2022-12-05 07:58:16');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2022-11-15 16:11:03', '2022-11-15 16:11:03');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$9hbdpCFvAjcGi3yvg2OVMuoldWWvyb.mmB6JJdNqZUzGrTOH7qkca', 'Administrator', 'images/ic_launcher_round.png', 'O5Q08j2SQFU4RfsF1QHcT3G32E0STf7X9OYmOX0HDtRmjdkI01coNSk9rkmf', '2022-11-15 16:11:03', '2022-11-16 12:31:01');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Kohaku', 'images/5160d95fa7a0f11809127aea26871928.png', '2022-11-16 11:42:30', '2022-11-23 03:15:05');
INSERT INTO `categories` VALUES (2, 'Sanke', 'images/sanke.png', '2022-11-16 12:08:49', '2022-11-18 22:28:59');
INSERT INTO `categories` VALUES (3, 'Asagi', 'images/asagi.png', '2022-11-16 12:42:20', '2022-11-18 22:29:08');
INSERT INTO `categories` VALUES (4, 'Chagoi', 'images/chagoi.png', '2022-11-16 12:42:39', '2022-11-18 22:29:21');
INSERT INTO `categories` VALUES (5, 'Goromo', 'images/goromo.png', '2022-11-16 12:43:00', '2022-11-18 22:29:34');
INSERT INTO `categories` VALUES (6, 'Ochiba', 'images/ochiba.png', '2022-11-16 12:43:17', '2022-11-18 22:29:45');
INSERT INTO `categories` VALUES (7, 'Showa', 'images/showa.png', '2022-11-16 12:43:34', '2022-11-18 22:29:58');
INSERT INTO `categories` VALUES (8, 'Slayer', 'images/slayer.png', '2022-11-16 12:43:51', '2022-11-18 22:30:08');
INSERT INTO `categories` VALUES (9, 'Susui', 'images/susui.png', '2022-11-16 12:44:04', '2022-11-18 22:30:18');
INSERT INTO `categories` VALUES (10, 'Tancho', 'images/tancho.png', '2022-11-16 12:44:41', '2022-11-18 22:30:32');
INSERT INTO `categories` VALUES (11, 'Utsuri', 'images/utsuri.png', '2022-11-16 12:44:54', '2022-11-18 22:30:44');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'Anwar', 'anwar@aku.com', '085649010588', 'banana', NULL, NULL);
INSERT INTO `customers` VALUES (2, 'Lutfi', 'vv@aku.com', '0858585858', 'banana', '2022-11-17 15:49:59', '2022-11-17 15:49:59');
INSERT INTO `customers` VALUES (4, 'Ali', 'ali@ali.com', '0865776677', 'bananana', '2022-11-17 16:04:46', '2022-11-17 16:04:46');
INSERT INTO `customers` VALUES (5, 'Kalila Radiya', 'kalila@kalila.com', '085649010588', 'bananana', '2022-11-17 16:09:28', '2022-11-17 16:09:28');
INSERT INTO `customers` VALUES (6, 'budi', 'budi@budi.com', '8494654548484', 'bananana', '2022-11-19 09:31:43', '2022-11-19 09:31:43');
INSERT INTO `customers` VALUES (7, 'alila', 'alila@alila.id', '55575555', 'bananana', '2022-11-19 09:38:17', '2022-11-19 09:38:17');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, 'produk/b0c7bfd1ee13b0b9beae9e7edd399677.jpg', 1, '2022-11-16 23:55:42', '2022-11-18 22:34:07');
INSERT INTO `images` VALUES (2, 'produk/a096c9d0ac86855058956fe306251201.jpg', 1, '2022-11-16 23:58:26', '2022-11-18 22:34:07');
INSERT INTO `images` VALUES (4, 'produk/download (3).jpg', 3, '2022-11-17 01:39:46', '2022-11-18 22:35:34');
INSERT INTO `images` VALUES (5, 'produk/1f96cf22c1ea668b1b5ce13550f719d7.jpg', 3, '2022-11-17 01:39:46', '2022-11-18 22:35:34');
INSERT INTO `images` VALUES (6, 'produk/download (4).jpg', 2, '2022-11-17 01:41:48', '2022-11-18 22:35:03');
INSERT INTO `images` VALUES (7, 'produk/17e12a3e3c9639da3ad75ff517dd2811.jpg', 2, '2022-11-17 01:41:48', '2022-11-18 22:35:03');
INSERT INTO `images` VALUES (8, 'produk/ochiba.jpg', 4, '2022-11-17 07:37:06', '2022-11-18 22:35:59');
INSERT INTO `images` VALUES (9, 'produk/Capture.JPG', 5, '2022-11-17 07:39:53', '2022-11-18 22:36:23');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_11_15_160401_create_customers_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_11_16_061916_create_categories_table', 2);
INSERT INTO `migrations` VALUES (8, '2022_11_16_063727_create_products_table', 2);
INSERT INTO `migrations` VALUES (9, '2022_11_16_065524_create_images_table', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `isReady` tinyint(1) NOT NULL,
  `isNew` tinyint(1) NOT NULL,
  `isPopular` tinyint(1) NOT NULL,
  `category_id` bigint NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Kohaku35cm', 'Kohaku 35cm', 500000, 1, 0, 1, 1, '2022-11-16 23:55:42', '2022-11-18 22:34:24');
INSERT INTO `products` VALUES (2, 'Sanke 20CM', 'asfafa', 200000, 1, 1, 0, 2, '2022-11-17 00:21:27', '2022-11-18 22:35:09');
INSERT INTO `products` VALUES (3, 'Kohaku 20cm', 'Kohaku 20cm', 100000, 1, 0, 0, 1, '2022-11-17 01:39:46', '2022-11-30 03:17:20');
INSERT INTO `products` VALUES (4, 'Ochiba SQ', 'Ochiba Show Quality', 1500000, 1, 1, 1, 6, '2022-11-17 07:37:06', '2022-11-17 07:37:06');
INSERT INTO `products` VALUES (5, 'Utsuri Grade A', 'Utsuri Grade A', 250000, 1, 1, 1, 11, '2022-11-17 07:39:53', '2022-11-17 07:39:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

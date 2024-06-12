/*
 Navicat Premium Data Transfer

 Source Server         : owen
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : td_company

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 12/06/2024 15:29:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for n_detail_tables
-- ----------------------------
DROP TABLE IF EXISTS `n_detail_tables`;
CREATE TABLE `n_detail_tables`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_map` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `view` tinyint(0) NULL DEFAULT NULL,
  `insert` tinyint(0) NULL DEFAULT NULL,
  `update` tinyint(0) NULL DEFAULT NULL,
  `search` tinyint(0) NULL DEFAULT NULL,
  `history` tinyint(0) NULL DEFAULT NULL,
  `parent` int(0) NULL DEFAULT NULL,
  `other_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `region` int(0) NULL DEFAULT NULL,
  `ord` int(0) NULL DEFAULT NULL,
  `act` tinyint(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `map_view`(`table_map`, `view`) USING BTREE,
  INDEX `map_insert`(`table_map`, `insert`) USING BTREE,
  INDEX `map_update`(`table_map`, `update`) USING BTREE,
  INDEX `map_search`(`table_map`, `search`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 338 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of n_detail_tables
-- ----------------------------
INSERT INTO `n_detail_tables` VALUES (1, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã KH', 'text', 'customers', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (2, 'name', '{\"required\":1}', 'Tên KH/Cty', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (3, 'contacter', '{\"required\":1}', 'Người liên hệ', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (4, 'phone', '{\"required\":1}', 'SĐT di động', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (5, 'telephone', '', 'SĐT cố định', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (6, 'email', '{\"required\":1}', 'Email', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (7, 'address', '{\"required\":1}', 'Địa chỉ', 'text', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (8, 'city', '{\"required\":1}', 'Tỉnh/TP', 'linking', 'customers', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\",\r\n		\"where\":{\"parent\":0}\r\n	}\r\n}', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (9, 'tax_code', '', 'Mã số thuế', 'text', 'customers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:45:08', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (10, 'status', '{\"required\":1}', 'Trạng thái', 'select', 'customers', 1, 1, 1, 1, 1, 0, '{\"data\":{\n		\"options\":{\"\":\"Loại KH\", \"1\":\"KH cũ\", \"2\":\"KH mới\"}\n	}\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (11, 'note', '', 'Ghi chú', 'textarea', 'customers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (12, 'act', '', 'Kích hoạt', 'checkbox', 'customers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (13, 'created_by', NULL, 'Phụ trách', 'linking', 'customers', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (14, 'created_at', NULL, 'Ngày tạo', 'datetime', 'customers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (15, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'customers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (16, 'name', '{\"required\":1}', 'Tên thiết bị', 'text', 'devices', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:51:39', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (17, 'model_price', '{\"required\":1}', 'Chi phí khuôn', 'text', 'devices', 1, 1, 1, 0, 1, 0, '', 1, 1, 1, '2023-04-08 01:02:39', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (18, '', '', 'ĐG chỉnh máy', 'group', 'devices', 1, 0, 0, 0, 1, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (19, '', '', 'ĐG lượt', 'group', 'devices', 1, 0, 0, 0, 1, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (20, 'shape_price', '{\"required\":1}', 'Khách', 'text', 'devices', 1, 1, 1, 0, 1, 18, '', 12, 0, 1, '2023-04-27 04:39:05', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (21, 'w_shape_price', '{\"required\":1}', 'Thợ', 'text', 'devices', 1, 1, 1, 0, 1, 18, '', 12, 0, 1, '2023-04-27 04:39:20', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (22, 'work_price', '{\"required\":1}', 'Khách', 'text', 'devices', 1, 1, 1, 0, 1, 19, '', 13, 0, 1, '2023-04-27 04:39:22', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (23, 'w_work_price', '{\"required\":1}', 'Thợ', 'text', 'devices', 1, 1, 1, 0, 1, 19, '', 13, 0, 1, '2023-04-27 04:39:26', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (24, 'act', '', 'Kích hoạt', 'checkbox', 'devices', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 10:39:49', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (25, 'created_at', '', 'Ngày tạo', 'datetime', 'devices', 1, 1, 1, 1, 1, 0, '', 1, 3, 1, '2023-04-30 10:39:49', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (26, 'updated_at', '', 'Ngày sửa', 'datetime', 'devices', 0, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 10:45:00', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (27, 'seri', '{\"disable_field\":1,\"required\":1}', 'Mã BG', 'text', 'quotes', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (28, 'customer_id', NULL, 'Khách hàng', 'linking', 'quotes', 1, 1, 1, 1, 1, 0, '{\n	\"config\":{\n		\"search\":1,\n		\"except_linking\":1\n	},\n	\"data\":{\n		\"table\":\"customers\"\n	}\n}', 1, 0, 1, '2023-04-23 18:20:42', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (29, 'city', '{\"required\":1}', 'Tỉnh/TP', 'linking', 'quotes', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\",\r\n		\"where\":{\"parent\":0}\r\n	}\r\n}', 1, 1, 1, '2023-04-30 11:00:08', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (30, 'profit', '{\"required\":1, \"type_input\":\"price\"}', 'Lợi nhuận', 'text', 'quotes', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (31, 'ship_price', '{\"required\":1, \"type_input\":\"price\"}', 'Phí Ship', 'text', 'quotes', 1, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-30 11:00:13', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (32, 'total_amount', '{\"required\":1, \"type_input\":\"price\"}', 'Giá trị BG', 'text', 'quotes', 1, 1, 1, 0, 1, 0, '', 1, 4, 1, '2023-04-30 11:00:33', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (33, 'status', '{\"required\":1}', 'Trạng thái', 'select', 'quotes', 1, 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"\":\"Trạng thái\", \"not_accepted\":\"Chưa duyệt\", \"accepted\":\"Đã duyệt\", \"order_created\":\"Đã tạo đơn\"}\r\n	}\r\n}', 1, 5, 1, '2023-05-11 11:19:48', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (34, 'created_by', NULL, 'Phụ trách', 'linking', 'quotes', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (35, 'created_at', NULL, 'Ngày tạo', 'datetime', 'quotes', 1, 1, 1, 1, 1, 0, '', 1, 6, 1, '2023-04-30 11:00:43', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (36, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'quotes', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (46, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'materals', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (47, 'price', '{\"required\":1,\"type_input\":\"number\"}', 'Đơn giá', 'text', 'materals', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (48, 'default', '', 'Lựa chọn mặc định', 'checkbox', 'materals', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (49, 'act', '', 'Kích hoạt', 'checkbox', 'materals', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (50, 'note', '', 'Ghi chú', 'textarea', 'materals', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:40', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (51, 'created_at', '', 'Ngày tạo', 'datetime', 'materals', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (52, 'updated_at', '', 'Ngày sửa', 'datetime', 'materals', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (53, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_prices', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (54, 'price', '{\"required\":1,\"type_input\":\"number\"}', 'Đơn giá', 'text', 'supply_prices', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (55, 'act', '', 'Kích hoạt', 'checkbox', 'supply_prices', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (56, 'note', '', 'Ghi chú', 'textarea', 'supply_prices', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (57, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_prices', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (58, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_prices', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (59, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_types', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (60, 'act', '', 'Kích hoạt', 'checkbox', 'supply_types', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (61, 'note', '', 'Ghi chú', 'textarea', 'supply_types', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (62, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_types', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (63, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_types', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (64, 'note', '', 'Ghi chú', 'textarea', 'devices', 0, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-08 00:05:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (66, 'product', NULL, 'Tên sản phẩm', 'child_linking', 'quotes', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\",\r\n		\"field_query\":\"quote_id\"\r\n	}\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (67, 'name', '{\"required\":1}', 'Tên nhân viên', 'text', 'n_users', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:40:33', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (68, 'email', '{\"required\":1}', 'Email', 'text', 'n_users', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:28:34', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (69, 'phone', '{\"required\":1}', 'SĐT', 'text', 'n_users', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (70, 'created_at', '', 'Ngày tạo', 'datetime', 'n_users', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (71, 'created_by', '', 'Người tạo', 'linking', 'n_users', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 0, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (72, 'act', '', 'Kích hoạt', 'checkbox', 'n_users', 1, 1, 1, 0, 1, 0, '', 4, 1, 1, '2023-05-23 14:42:33', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (73, 'note', '', 'Ghi chú', 'textarea', 'n_users', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (74, 'username', '{\"required\":1,\"unique\":1}', 'Username', 'text', 'n_users', 0, 1, 1, 0, 1, 0, '', 4, 0, 1, '2023-05-23 15:22:01', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (75, 'password', '{\"required\":1,\"type_input\":\"password\"}', 'Password', 'text', 'n_users', 0, 1, 1, 0, 1, 0, '', 4, 0, 1, '2023-05-23 14:41:41', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (76, 'group_user', '', 'Vai trò', 'linking', 'n_users', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_group_users\"\r\n	}\r\n}', 4, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (77, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã đơn', 'text', 'orders', 1, 0, 1, 1, 1, 0, '', 1, 4, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (78, 'list_product', '', 'Sản phẩm', 'child_linking', 'orders', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\",\r\n		\"field_query\":\"order\"\r\n	}\r\n}', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (79, 'status', '', 'Trạng thái', 'select', 'orders', 1, 0, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"\":\"Trạng thái đơn\", \r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt thiết kế\", \r\n			\"to_design\":\"Chờ thiết kế nhận lệnh\",\r\n			\"designing\":\"Đang thiết kế\",\r\n			\"design_submited\":\"Đã xong thiết kế\",\r\n			\"tech_submited\":\"Kế hoạch đang xử lí\",\r\n			\"making_process\":\"Đang gia công\",\r\n			\"submited\":\"hoàn thành gia công\",\r\n			\"finished\":\"Đã thu tiền\"\r\n		}\r\n	}\r\n}', 1, 9, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (80, 'advance', '{\"type_input\":\"price\"}', 'Tạm ứng', 'text', 'orders', 1, 0, 1, 0, 1, 0, '', 1, 10, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (81, 'rest', '{\"type_input\":\"price\"}', 'Tổng tiền', 'text', 'orders', 1, 0, 1, 0, 1, 0, '', 1, 11, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (82, 'created_at', '', 'Ngày nhận hàng', 'datetime', 'orders', 1, 0, 1, 1, 1, 0, '', 1, 5, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (83, 'created_by', '', 'Kinh doanh', 'linking', 'orders', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 7, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (84, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'c_designs', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (85, 'order', '', 'Đơn hàng', 'linking', 'c_designs', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\",\r\n		\"field_title\":\"code\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 07:02:19', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (86, 'name', '', 'Sản phẩm', 'text', 'c_designs', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (87, 'status', '', 'Trạng thái', 'select', 'c_designs', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"not_accepted\":\"Chưa duyệt\", \"designing\":\"Đang thiết kế\", \"design_submited\":\"Đã hoàn thành\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (88, 'created_at', '', 'Ngày tạo', 'datetime', 'c_designs', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (89, 'created_by', '', 'Tạo bởi', 'linking', 'c_designs', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (90, 'assign_by', '', 'Nhận bởi', 'linking', 'c_designs', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 10:42:46', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (91, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã Lệnh', 'text', 'c_supplies', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-07-14 02:55:30', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (92, 'size_type', '{\"required\":1,\"readonly\":1,\"inject_class\":\"__wh_select_size\"}', 'Tên vật tư', 'linking', 'c_supplies', 1, 0, 0, 0, 1, 148, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":{\r\n			\"getFunc\":\"getTableWarehouseByType\"\r\n		}\r\n	}\r\n}', 1, 1, 1, '2023-07-14 02:55:31', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (93, 'qty', '{\"required\":1, \"type_input\":\"number\"}', 'SL cần xuất', 'text', 'c_supplies', 1, 1, 1, 0, 1, 0, '', 1, 1, 1, '2023-07-14 02:55:32', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (94, 'order', '', 'Xuất cho đơn', 'linking', 'c_supplies', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\"\r\n	}\r\n}', 1, 1, 0, '2023-07-14 02:56:31', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (95, 'name', '', 'Sản phẩm', 'text', 'c_supplies', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-07-14 03:16:25', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (96, 'status', '', 'Trạng thái', 'select', 'c_supplies', 0, 0, 1, 0, 1, 0, '{\r\n		\"data\":{\r\n				\"options\":{\"\":\"Chưa gửi yêu cầu xuất\", \"handling\":\"Đang chờ xuất kho\", \"handled\":\"Đã xuất kho\"}\r\n		}\r\n}', 1, 1, 1, '2023-07-14 02:50:55', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (97, 'created_by', '', 'Người tạo', 'linking', 'c_supplies', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 1, 1, '2023-07-14 03:11:41', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (98, 'assign_by', '', 'Phụ trách', 'linking', 'c_supplies', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 1, 1, '2023-07-14 03:11:21', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (99, 'created_at', '', 'Ngày tạo', 'datetime', 'c_supplies', 1, 0, 1, 1, 1, 0, '', 1, 1, 1, '2023-07-14 02:56:03', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (100, 'table_map', '', 'Bảng dữ liệu', 'linking', 'n_log_actions', 0, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_tables\",\r\n		\"field_title\":\"note\"\r\n	}\r\n}', NULL, 0, 0, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (101, 'action', '', 'Hoạt động', 'select', 'n_log_actions', 0, 0, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n				\"\":\"Chọn hành động\", \r\n				\"insert\":\"Thêm mới\", \r\n				\"update\":\"Cập nhật\", \r\n				\"remove\":\"Xóa\"\r\n			}\r\n	}\r\n}', NULL, 0, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (102, 'user', '', 'Nhân viên', 'linking', 'n_log_actions', 0, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', NULL, 0, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (103, 'created_at', '', 'Thời gian', 'datetime', 'n_log_actions', 0, 0, 0, 1, 1, 0, '', NULL, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (104, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_types', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (105, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_prices', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:35');
INSERT INTO `n_detail_tables` VALUES (106, 'ord', '', 'Sắp xếp', 'text', 'materals', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (108, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'devices', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (109, 'default_device', '', 'Lựa chọn mặc định', 'checkbox', 'devices', 1, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-28 11:32:02', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (110, 'name', '{\"required\":1}', 'Tên công nhân', 'text', 'w_users', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:40:33', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (111, 'phone', '{\"required\":1}', 'SĐT', 'text', 'w_users', 1, 1, 1, 1, 1, 0, '', 1, 1, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (112, 'created_at', '', 'Ngày tạo', 'datetime', 'w_users', 1, 1, 1, 1, 1, 0, '', 1, 4, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (113, 'created_by', '', 'Người tạo', 'linking', 'w_users', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 0, 3, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (114, 'act', '', 'Kích hoạt', 'checkbox', 'w_users', 1, 1, 1, 0, 1, 0, '', 4, 5, 1, '2023-05-23 14:42:33', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (115, 'note', '', 'Ghi chú', 'textarea', 'w_users', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (116, 'username', '{\"required\":1,\"unique\":1}', 'Username', 'text', 'w_users', 1, 1, 1, 0, 1, 0, '', 4, 2, 1, '2023-05-23 15:22:01', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (117, 'password', '{\"required\":1,\"type_input\":\"password\"}', 'Password', 'text', 'w_users', 0, 1, 1, 0, 1, 0, '', 4, 0, 1, '2023-05-23 14:41:41', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (118, 'group_user', '', 'Thiết bị máy', 'group', 'w_users', 1, 1, 1, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_ajax_value_child\",\r\n	\"inject_attr\":\"link=get-device-by-type\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 4, 0, 0, '2023-05-23 14:41:40', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (119, 'type', '{\"required\":1,\"inject_class\":\"__select_parent\"}', 'Tổ máy', 'select', 'w_users', 1, 0, 0, 0, 1, 118, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"0\":\"Chọn tổ máy\",\r\n			\"print\":\"Tổ in\", \r\n			\"nilon\":\"Cán màng\", \r\n			\"metalai\":\"Tổ cán metalai\",\r\n			\"compress\":\"Tổ ép nhũ\",\r\n			\"float\":\"Tổ thúc nổi\",\r\n			\"uv\":\"Tổ in UV\",\r\n			\"elevate\":\"Tổ bế\",\r\n			\"peel\":\"Tổ bóc lề\",\r\n			\"mill\":\"Tổ máy phay\",\r\n			\"cut\":\"Tổ máy xén\",\r\n			\"fill\":\"Tổ máy bồi\",\r\n			\"box_paste\":\"Tổ dán hộp giấy\",\r\n			\"bag_paste\":\"Tổ dán túi giấy\",\r\n			\"finish\":\"Tổ hoàn thiện cuối\"\r\n		}\r\n	}\r\n}', 1, 0, 0, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (120, 'device', '{\"required\":1,\"disable_field\":1,\"inject_class\":\"__select_child\"}', 'Thiết bị', 'select', 'w_users', 1, 0, 0, 0, 1, 118, '{\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn loại thiết bị\",\r\n			\"1\":\"In offset\",\r\n			\"2\":\"In offset uv\",\r\n			\"3\":\"In label\",\r\n			\"4\":\"In KTS\",\r\n			\"auto\":\"Thiết bị tự động\",\r\n			\"semi_auto\":\"Thiết bị bán tự động\"\r\n		}\r\n	}\r\n}', 1, 0, 0, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (121, 'name', '{\"required\":\"1\",\"unique\":\"1\"}', 'Tên vật tư', 'text', 'paper_extends', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (122, 'category', '', 'Nhóm sản phẩm', 'select', 'paper_extends', 1, 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"0\":\"Chọn nhóm\", \r\n			\"2\":\"Hộp giấy\", \r\n			\"3\":\"Túi giấy\",\r\n			\"4\":\"Tem rời dán tay\",\r\n			\"5\":\"Mác giấy\",\r\n			\"6\":\"Toa - Tờ rơi - Tờ gấp\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (123, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'paper_extends', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (124, 'act', '', 'Kích hoạt', 'checkbox', 'paper_extends', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (125, 'note', '', 'Ghi chú', 'textarea', 'paper_extends', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (126, 'created_at', '', 'Ngày tạo', 'datetime', 'paper_extends', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (127, 'updated_at', '', 'Ngày sửa', 'datetime', 'paper_extends', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (128, 'type', '{\"required\":1}', 'Loại thiết bị', 'select', 'devices', 1, 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"\":\"Loại Thiết bị\", \"auto\":\"Tự động\", \"semi_auto\":\"Bán tự động\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (129, 'name', '{\"disable_field\":1}', 'Tên vật tư', 'text', 'supply_warehouses', 0, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (130, 'length', '{\"required\":1}', 'KT dài', 'text', 'supply_warehouses', 1, 0, 0, 0, 1, 329, '', 1, 1, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (131, 'width', '{\"required\":1}', 'KT rộng', 'text', 'supply_warehouses', 1, 0, 0, 0, 1, 329, '', 1, 2, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (132, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'supply_warehouses', 1, 0, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (133, 'supp_type', '{\"required\":1,\"inject_class\":\"__select_parent\"}', 'Loại vật tư', 'linking', 'supply_warehouses', 1, 0, 0, 0, 1, 135, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"supply_types\",\r\n		\"where\":{\"is_name\":0},\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (134, 'supp_price', '{\"required\":1,\"inject_class\":\"__select_child\"}', 'Định lượng', 'linking', 'supply_warehouses', 1, 0, 0, 0, 1, 135, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"supply_prices\"\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (135, 'group_supply', '', 'Dạng vật tư', 'group', 'supply_warehouses', 1, 1, 0, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_ajax_value_child\",\r\n	\"inject_attr\":\"link=option-ajax-child/supply_prices/supply_id\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 1, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (136, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'print_warehouse', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (137, 'length', '{\"required\":1}', 'KT dài', 'text', 'print_warehouse', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (138, 'width', '{\"required\":1}', 'KT rộng', 'text', 'print_warehouse', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (139, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng', 'text', 'print_warehouse', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (140, 'name', '{\"disable_field\":1}', 'Tên vật tư', 'text', 'print_warehouses', 0, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (141, 'length', '{\"required\":1}', 'KT dài', 'text', 'print_warehouses', 1, 0, 0, 0, 1, 328, '', 1, 2, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (142, 'width', '{\"required\":1}', 'KT rộng', 'text', 'print_warehouses', 1, 0, 0, 0, 1, 328, '', 1, 3, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (143, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'print_warehouses', 1, 0, 1, 0, 1, 0, '', 1, 4, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (144, 'supp_price', '', 'Loại giấy', 'linking', 'print_warehouses', 1, 0, 0, 0, 1, 327, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (145, 'name', '{\"disable_field\":1}', 'Tên vật tư', 'text', 'other_warehouses', 0, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (146, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'other_warehouses', 1, 0, 1, 0, 1, 0, '', 1, 1, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (147, 'supp_price', '{\"required\":1}', 'Loại nam châm', 'linking', 'other_warehouses', 1, 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (148, 'group_supply', '', 'Dạng vật tư', 'group', 'c_supplies', 1, 1, 1, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_type_warehouse\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 1, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (149, 'supp_type', '{\"required\":1,\"inject_class\":\"__wh_select_type\"}', 'Loại vật tư', 'select', 'c_supplies', 1, 0, 0, 0, 1, 148, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn loại vật tư\",\r\n			\"paper\":\"Giấy in\", \r\n			\"nilon\":\"Màng nilon\", \r\n			\"metalai\":\"Màng metalai\",\r\n			\"cover\":\"Màng phủ trên\",\r\n			\"carton\":\"Carton\",\r\n			\"rubber\":\"Cao su\",\r\n			\"styrofoam\":\"Mút phẳng\",\r\n			\"decal\":\"Nhung\",\r\n			\"silk\":\"Vải lụa\",\r\n			\"mica\":\"Mi ca\",\r\n			\"magnet\":\"Nam châm\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (150, 'name', '{\"disable_field\":1}', 'Tên vật tư', 'text', 'square_warehouses', 0, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (151, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Còn lại (m)', 'text', 'square_warehouses', 1, 0, 1, 0, 1, 0, '', 1, 1, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (152, 'supp_price', '{\"required\":1}', 'Loại vật tư', 'linking', 'square_warehouses', 1, 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (153, 'created_by', NULL, 'Người thêm', 'linking', 'other_warehouses', 1, 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 2, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (154, 'created_at', NULL, 'Ngày thêm', 'datetime', 'other_warehouses', 1, 0, 0, 0, 1, 0, '', 1, 3, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (155, 'created_by', NULL, 'Người thêm', 'linking', 'square_warehouses', 1, 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 4, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (156, 'created_at', NULL, 'Ngày thêm', 'datetime', 'square_warehouses', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (157, 'order', NULL, 'Đơn hàng', 'linking', 'products', 0, NULL, NULL, 1, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\",\r\n		\"field_title\":\"code\"\r\n	}\r\n}', 1, 0, 1, '2023-08-22 03:54:31', '2024-06-12 06:23:59');
INSERT INTO `n_detail_tables` VALUES (158, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã', 'text', 'products', 1, 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2024-06-12 06:25:52');
INSERT INTO `n_detail_tables` VALUES (159, 'name', '', 'Tên', 'text', 'products', 1, 0, 1, 1, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (160, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'products', 0, NULL, NULL, 0, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 0, '2023-08-22 03:54:31', '2024-06-12 06:24:02');
INSERT INTO `n_detail_tables` VALUES (161, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng sx', 'text', 'products', 1, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (162, 'total_amount', '{\"type_input\":\"price\"}', 'Tổng giá', 'text', 'products', 1, 0, 1, 0, 0, 0, '', 1, 3, 1, '2023-05-26 03:19:12', '2024-06-12 06:26:13');
INSERT INTO `n_detail_tables` VALUES (163, 'created_by', NULL, 'Người thêm', 'linking', 'products', 1, 0, 0, 1, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 3, 1, '2023-04-08 00:08:00', '2024-06-12 06:26:17');
INSERT INTO `n_detail_tables` VALUES (164, 'created_at', NULL, 'Ngày thêm', 'datetime', 'products', 1, 1, 1, 1, 0, 0, '', 1, 4, 1, '2023-04-08 00:08:00', '2024-06-12 06:26:22');
INSERT INTO `n_detail_tables` VALUES (165, 'width', '{\"required\":1}', 'Kích thước khổ', 'text', 'square_warehouses', 1, 1, 0, 1, 1, 0, '', 1, 1, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (166, 'qtv', '', 'Định lượng', 'text', 'print_warehouses', 1, 0, 0, 0, 1, 327, '{\r\n		\"config\":{\r\n				\"search\":1,\r\n				\"direct_show\":1\r\n		},\r\n		\"data\":{\r\n				\"options\":{\"\":\"Chọn định lượng\"}\r\n		}\r\n}', 1, 1, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (171, 'name', '', 'Tên lệnh', 'text', 'w_salaries', 1, 0, 0, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (172, 'command', '', 'Mã lệnh', 'text', 'w_salaries', 1, 0, 0, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (173, 'qty', '', 'Số lượng', 'text', 'w_salaries', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (174, 'workprice', '', 'Đơn giá', 'text', 'w_salaries', 1, 0, 0, 0, 1, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (175, 'shape_price', '', 'Lên khuôn', 'text', 'w_salaries', 1, 0, 0, 0, 1, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (176, 'handle', '', 'Thông tin SX', 'json_name', 'w_salaries', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (177, 'total', '', 'Thành tiền', 'text', 'w_salaries', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (178, 'group_user', '', 'Thiết bị máy', 'group', 'w_salaries', 1, 0, 0, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_type_worker\"\r\n}', 4, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (179, 'type', '{\"inject_class\":\"__worker_select_type\"}', 'Tổ máy', 'select', 'w_salaries', 1, 0, 0, 0, 1, 178, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn tổ máy\",\r\n			\"print\":\"Tổ in\", \r\n			\"nilon\":\"Cán màng\", \r\n			\"metalai\":\"Tổ cán metalai\",\r\n			\"compress\":\"Tổ ép nhũ\",\r\n			\"uv\":\"Tổ in UV\",\r\n			\"elevate\":\"Tổ bế\",\r\n			\"float\":\"Tổ thúc nổi\",\r\n			\"peel\":\"Tổ bóc lề\",\r\n			\"mill\":\"Tổ máy phay\",\r\n			\"cut\":\"Tổ máy xén\",\r\n			\"fold\":\"Tổ gấp vạch\",\r\n			\"fill\":\"Tổ máy bồi\",\r\n			\"box_paste\":\"Tổ dán hộp giấy\",\r\n			\"bag_paste\":\"Tổ dán túi giấy\",\r\n			\"finish\":\"Tổ hoàn thiện cuối\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (180, 'worker', '{\"disable_field\":1,\"inject_class\":\"__worker_select_worker\"}', 'Công nhân', 'linking', 'w_salaries', 1, 0, 0, 0, 1, 178, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"w_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (181, 'submited_at', '', 'TG Chấm công', 'datetime', 'w_salaries', 1, 0, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (182, 'created_by', '', 'Tạo lệnh', 'linking', 'w_salaries', 1, 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-05-23 14:38:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (183, 'name', '{\"required\":1}', 'Tên máy in', 'text', 'printers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (184, 'print_length', '{\"required\":1,\"type_input\":\"number\"}', 'Chiều dài cho phép', 'text', 'printers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (185, 'print_width', '{\"required\":1,\"type_input\":\"number\"}', 'Chiều rộng cho phép', 'text', 'printers', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (186, 'model_price', '{\"required\":1,\"type_input\":\"number\"}', 'Chi phí khuôn mẫu', 'text', 'printers', 1, 1, 1, 0, 1, 0, '', 14, 0, 1, '2023-04-28 00:28:28', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (187, '', '', 'ĐG chỉnh máy', 'group', 'printers', 1, 0, 0, 0, 1, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (188, '', '', 'ĐG lượt', 'group', 'printers', 1, 0, 0, 0, 1, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (189, 'shape_price', '{\"required\":1}', 'Khách', 'text', 'printers', 1, 1, 1, 0, 1, 187, '', 12, 0, 1, '2023-04-27 04:39:05', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (190, 'w_shape_price', '{\"required\":1}', 'Thợ', 'text', 'printers', 1, 1, 1, 0, 1, 187, '', 12, 0, 1, '2023-04-27 04:39:20', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (191, 'work_price', '{\"required\":1}', 'Khách', 'text', 'printers', 1, 1, 1, 0, 1, 188, '', 13, 0, 1, '2023-04-27 04:39:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (192, 'w_work_price', '{\"required\":1}', 'Thợ', 'text', 'printers', 1, 1, 1, 0, 1, 188, '', 13, 0, 1, '2023-04-27 04:39:26', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (193, 'act', '', 'Kích hoạt', 'checkbox', 'printers', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-30 10:44:01', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (194, 'created_at', '', 'Ngày tạo', 'datetime', 'printers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-30 10:43:59', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (195, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'printers', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (196, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_names', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (197, 'factor', '{\"required\":1,\"type_input\":\"number\"}', 'Hệ số máy phay', 'text', 'supply_names', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (198, 'act', '', 'Kích hoạt', 'checkbox', 'supply_names', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (199, 'note', '', 'Ghi chú', 'textarea', 'supply_names', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (200, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_names', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (201, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_names', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (202, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_names', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (203, 'name', '', 'Tên vật tư', 'text', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (204, 'product_qty', '', 'SL sản phẩm', 'text', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (205, 'nqty', '', 'Số bát', 'text', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (206, 'supp_qty', '', 'Số L vật tư', 'text', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (207, 'print', '', 'In', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (208, 'nilon', '', 'Cán nilon', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (209, 'metalai', '', 'Cán metalai', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (210, 'compress', '', 'Ép nhũ', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (211, 'uv', '', 'In UV', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (212, 'elevate', '', 'Bế', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (213, 'float', '', 'Thúc nổi', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (214, 'peel', '', 'Bóc lề', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (215, 'fold', '', 'Gấp vạch', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (216, 'box_paste', '', 'Dán hộp', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (217, 'bag_paste', '', 'Dán túi', 'handle_stage', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (218, 'status', '', 'Trạng thái', 'text', 'papers', 1, 0, 0, 0, 1, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (219, 'name', '', 'Tên vật tư', 'text', 'supplies', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (220, 'product_qty', '', 'SL sản phẩm', 'text', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (221, 'nqty', '', 'Số bát', 'text', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (222, 'supp_qty', '', 'Số L vật tư', 'text', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (223, 'cut', '', 'Xén', 'handle_stage', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (224, 'elavate', '', 'Bế', 'handle_stage', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (225, 'peel', '', 'Bóc lề', 'handle_stage', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (226, 'mill', '', 'Phay', 'handle_stage', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (227, 'status', '', 'Trạng thái', 'text', 'supplies', 1, 0, 0, 0, 1, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (228, 'product_qty', '', 'SL sản phẩm', 'text', 'fill_finishes', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (229, 'fill', '', 'Bồi', 'handle_stage', 'fill_finishes', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (230, 'finish', '', 'Hoàn thiện cuối', 'handle_stage', 'fill_finishes', 1, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (231, 'status', '', 'Trạng thái', 'text', 'fill_finishes', 1, 0, 0, 0, 1, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (232, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'quotes', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"orders\",\r\n	\"field_pluck\":\"quote_id\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (233, 'size', NULL, 'Kích thước khuôn', 'product_size', 'quotes', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (234, 'name', '{\"required\":1,\"disable_field\":1}', 'Tên', 'text', 'product_categories', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (235, 'design_factor', '{\"required\":1,\"type_input\":\"number\"}', 'Hệ số tính điểm cho TK', 'text', 'product_categories', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (236, 'act', '', 'Kích hoạt', 'checkbox', 'product_categories', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (237, 'name', '{\"required\":1}', 'Tên', 'text', 'product_styles', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (238, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'product_styles', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (239, 'created_at', NULL, 'Ngày tạo', 'datetime', 'product_styles', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (240, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'product_styles', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (241, 'act', '', 'Kích hoạt', 'checkbox', 'product_styles', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (242, 'status', '', 'Trạng thái', 'select', 'products', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt thiết kế\", \r\n			\"to_design\":\"Chờ thiết kế nhận lệnh\",\r\n			\"designing\":\"Đang thiết kế\",\r\n			\"design_submited\":\"Đã xong thiết kế\",\r\n			\"tech_submited\":\"Kế hoạch đang xử lí\",\r\n			\"making_process\":\"Đang gia công\",\r\n			\"submited\":\"Hoàn tất gia công\",\r\n			\"need_rework\":\"Cần sản xuất lại\",\r\n			\"waiting_warehouse\":\"Chờ kế toán duyệt nhập kho\",\r\n			\"last_submited\":\"Hoàn tất\"\r\n			\r\n		}\r\n	}\r\n}', 1, 5, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (243, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'products', 0, 0, 0, 1, 0, 0, '{\n	\"table_target\":\"products\",\n	\"field_pluck\":\"id\"\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 06:24:03');
INSERT INTO `n_detail_tables` VALUES (244, 'size', NULL, 'Kích thước', 'product_size', 'products', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 06:25:30');
INSERT INTO `n_detail_tables` VALUES (245, 'name', '{\"required\":1}', 'Tên nhà cung cấp', 'text', 'warehouse_providers', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (246, 'act', '', 'Kích hoạt', 'checkbox', 'warehouse_providers', 1, 1, 1, 0, 1, 0, '', 1, 1, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (247, 'note', '', 'Ghi chú', 'textarea', 'warehouse_providers', 0, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (248, 'created_at', '', 'Ngày tạo', 'datetime', 'warehouse_providers', 1, 1, 1, 1, 1, 0, '', 1, 3, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (249, 'updated_at', '', 'Ngày sửa', 'datetime', 'warehouse_providers', 0, 1, 1, 0, 1, 0, '', 1, 4, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (250, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'warehouse_providers', 1, 1, 1, 0, 1, 0, '', 1, 5, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (251, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã', 'text', 'supply_buyings', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (252, 'name', '{\"required\":1}', 'Tên', 'text', 'supply_buyings', 1, 1, 1, 1, 1, 0, '', 1, 1, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (253, 'provider', '', 'Nhà cung cấp', 'linking', 'supply_buyings', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"warehouse_providers\"\r\n	}\r\n}', 1, 2, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (254, 'supply', '', 'Vật tư cần mua', 'json_supply', 'supply_buyings', 1, 1, 1, 0, 1, 0, '', 1, 3, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (255, 'status', '', 'Trạng thái', 'select', 'supply_buyings', 1, 0, 0, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt mua\", \r\n			\"buying\":\"Đang chờ mua\",\r\n			\"bought\":\"Đã mua\",\r\n			\"submited\":\"Đã nhập kho\"\r\n		}\r\n	}\r\n}', 1, 4, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (256, 'payment_status', '', 'Công nợ', 'select', 'supply_buyings', 1, 1, 1, 1, 1, 0, '{\"data\":{\n		\"options\":{\n			\"not_payment\":\"Chưa thanh toán\",\n			\"paid_off\":\"Đã thanh toán hết\"\n		}\n	}\n}', 1, 5, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (257, 'note', '', 'Ghi chú', 'textarea', 'supply_buyings', 0, 1, 1, 0, 1, 0, '', 1, 6, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (258, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_buyings', 1, 0, 0, 1, 1, 0, '', 1, 7, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (259, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_buyings', 0, 0, 0, 0, 1, 0, '', 1, 8, 1, '2023-04-28 11:43:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (260, 'created_by', NULL, 'Người thêm', 'linking', 'supply_buyings', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 9, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (261, 'applied_by', NULL, 'Người duyệt mua', 'linking', 'supply_buyings', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 10, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (262, 'bought_by', NULL, 'Người mua', 'linking', 'supply_buyings', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 11, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (263, 'submited_by', NULL, 'Nhập kho bởi', 'linking', 'supply_buyings', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 11, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (264, 'outside_qty', '{\"type_input\":\"number\",\"required\":1}', 'Sản phẩm lỗi', 'text', 'products', 1, 1, 1, 0, 0, 0, '', 1, 2, 0, '2023-04-30 11:00:22', '2024-06-12 06:25:58');
INSERT INTO `n_detail_tables` VALUES (265, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'c_expertises', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (266, 'name', '{\"disable_field\":1}', 'Tiêu đề', 'text', 'c_expertises', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (267, 'qty', '{\"required\":1, \"type_input\":\"number\"}', 'SL nhập kho', 'text', 'c_expertises', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-07-14 02:55:32', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (268, 'product', '', 'Sản phẩm', 'linking', 'c_expertises', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (269, 'take_status', '', 'Kiểu nhập kho', 'select', 'c_expertises', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"full\":\"Nhập kho đủ\", \"prob\":\"Nhập kho thiếu do lỗi kỹ thuật\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (270, 'handle_problem', '', 'Sản xuất lại', 'select', 'c_expertises', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"not_rework\":\"Không sản xuất lại\", \"rework\":\"Yêu cầu sản xuất lại\", \"reworked\":\"Đã sản xuất lại\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (271, 'created_at', '', 'Ngày tạo', 'datetime', 'c_expertises', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (272, 'created_by', '', 'Tạo bởi', 'linking', 'c_expertises', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (281, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã sản phẩm', 'text', 'product_warehouses', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (282, 'name', '', 'Tên', 'text', 'product_warehouses', 1, 0, 1, 1, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (283, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng', 'text', 'product_warehouses', 1, 1, 1, 0, 1, 0, '', 1, 2, 1, '2023-04-30 11:00:22', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (284, 'price', '{\"type_input\":\"price\"}', 'Giá', 'text', 'product_warehouses', 1, 0, 1, 0, 1, 0, '', 1, 6, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (285, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'product_warehouses', 0, NULL, NULL, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 0, '2023-08-22 03:54:31', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (286, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'product_warehouses', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (287, 'size', NULL, 'Kích thước', 'product_size', 'product_warehouses', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (288, 'created_by', NULL, 'Người thêm', 'linking', 'product_warehouses', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 3, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (289, 'created_at', NULL, 'Ngày thêm', 'datetime', 'product_warehouses', 1, 1, 1, 1, 1, 0, '', 1, 4, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (290, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã đối tác', 'text', 'partners', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (291, 'name', '{\"required\":1}', 'Tên KH/Cty', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (292, 'contacter', '{\"required\":1}', 'Người liên hệ', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (293, 'phone', '{\"required\":1}', 'SĐT di động', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (294, 'telephone', '', 'SĐT cố định', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (295, 'email', '{\"required\":1}', 'Email', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (296, 'address', '{\"required\":1}', 'Địa chỉ', 'text', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (297, 'city', '{\"required\":1}', 'Tỉnh/TP', 'linking', 'partners', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\",\r\n		\"where\":{\"parent\":0}\r\n	}\r\n}', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (298, 'tax_code', '', 'Mã số thuế', 'text', 'partners', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:45:08', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (299, 'type', '{\"required\":1}', 'Phân loại', 'select', 'partners', 1, 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"\":\"Phân loại đối tác\", \"2\":\"Đối tác thương mại\", \"1\":\"Tính giá sản xuất\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (300, 'note', '', 'Ghi chú', 'textarea', 'partners', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (301, 'act', '', 'Kích hoạt', 'checkbox', 'partners', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (302, 'created_by', NULL, 'Phụ trách', 'linking', 'partners', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (303, 'created_at', NULL, 'Ngày tạo', 'datetime', 'partners', 1, 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (304, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'partners', 0, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (305, 'price', '{\"type_input\":\"price\"}', 'Đơn giá', 'calc_price', 'products', 1, 0, 0, 0, 0, 0, '', 1, 3, 1, '2023-05-26 03:19:12', '2024-06-12 06:26:20');
INSERT INTO `n_detail_tables` VALUES (306, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'after_prints', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (307, 'name', '{\"disable_field\":1}', 'Tên', 'text', 'after_prints', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (308, 'qty', '{\"required\":1, \"type_input\":\"number\"}', 'Số lượng', 'text', 'after_prints', 1, 1, 1, 0, 1, 0, '', 1, 0, 1, '2023-07-14 02:55:32', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (309, 'worker', '', 'Công nhân', 'linking', 'after_prints', 1, 0, 1, 1, 1, 0, '{\n	\"config\":{\n		\"search\":1\n	},\n	\"data\":{\n		\"table\":\"w_users\",\n		\"where\":{\"type\":\"print\"}\n	}\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (310, 'status', '', 'Trạng thái', 'select', 'after_prints', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"processing\":\"Chờ KCS\", \"submited\":\"Đã xử lí\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (311, 'created_at', '', 'Ngày gửi', 'datetime', 'after_prints', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (312, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'c_reworks', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (313, 'name', '{\"disable_field\":1}', 'Tên', 'text', 'c_reworks', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (314, 'product', '', 'Sản phẩm sx lại', 'linking', 'c_reworks', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\"\r\n	}\r\n}', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (315, 'type', '', 'Khâu sản xuất lỗi', 'select', 'c_reworks', 1, 0, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn tổ máy\",\r\n			\"print\":\"Tổ in\", \r\n			\"nilon\":\"Cán màng\", \r\n			\"metalai\":\"Tổ cán metalai\",\r\n			\"compress\":\"Tổ ép nhũ\",\r\n			\"float\":\"Tổ thúc nổi\",\r\n			\"uv\":\"Tổ in UV\",\r\n			\"elevate\":\"Tổ bế\",\r\n			\"peel\":\"Tổ bóc lề\",\r\n			\"mill\":\"Tổ máy phay\",\r\n			\"cut\":\"Tổ máy xén\",\r\n			\"fill\":\"Tổ máy bồi\",\r\n			\"box_paste\":\"Tổ dán hộp giấy\",\r\n			\"bag_paste\":\"Tổ dán túi giấy\",\r\n			\"finish\":\"Tổ hoàn thiện cuối\"\r\n		}\r\n	}\r\n}', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (316, 'worker', '', 'Công nhân', 'linking', 'c_reworks', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"w_users\"\r\n	}\r\n}', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (317, 'status', '', 'Trạng thái', 'select', 'c_reworks', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"not_accepted\":\"Chờ xử lí\", \"submited\":\"Đã xử lí\"}\r\n	}\r\n}', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (318, 'rework_status', '', 'Trạng thái sx', 'select', 'c_reworks', 1, 0, 1, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\"need_rework\":\"Cần sản xuất lại\", \"no_rework\":\"Không cần sản xuất lại\", \"reworked\":\"Đã sản xuất lại\"}\r\n	}\r\n}', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (319, 'note', '', 'Ghi chú', 'textarea', 'c_reworks', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (320, 'created_at', '', 'Ngày gửi', 'datetime', 'c_reworks', 1, 0, 1, 1, 1, 0, '', 1, 1, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (322, 'qty', '', 'Số lượng', 'text', 'c_reworks', 1, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (323, 'customer', '', 'Khách hàng', 'linking', 'orders', 1, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"customers\"\r\n	}\r\n}', 1, 8, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (324, 'customer_city', '', 'Tỉnh/TP', 'customer_city', 'orders', 0, 0, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\"\r\n	}\r\n}', 1, 2, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (325, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'orders', 0, 0, 0, 1, 1, 0, '{\r\n	\"table_target\":\"orders\",\r\n	\"field_pluck\":\"order\"\r\n}', 1, 3, 1, '2023-04-30 11:17:52', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (326, 'return_time', '', 'Ngày phải  trả hàng', 'datetime', 'orders', 1, 0, 1, 1, 1, 0, '', 1, 6, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (327, 'group_paper', '', 'Dạng giấy', 'group', 'print_warehouses', 1, 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (328, 'group_size', '', 'KT khổ', 'group', 'print_warehouses', 1, 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (329, 'group_size', '', 'KT khổ', 'group', 'supply_warehouses', 1, 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:41:40', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (330, 'created_by', NULL, 'Chịu trách nhiệm', 'linking', 'warehouse_histories', 1, 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (331, 'action', '', 'Hành động', 'select', 'warehouse_histories', 1, 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"insert\":\"Thêm mới NVL\", \"update\":\"Nhập thêm NVL\"}\r\n	}\r\n}', 1, 0, 1, '2023-04-07 23:41:47', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (332, 'name', '', 'Tên NVL', 'text', 'warehouse_histories', 1, 0, 1, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (333, 'qty', '', 'Số lượng', 'text', 'warehouse_histories', 1, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (335, 'bill', '', 'Hóa đơn', 'filev2', 'warehouse_histories', 1, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (336, 'new_qty', '', 'Tồn kho', 'text', 'warehouse_histories', 1, 0, 1, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (337, 'created_at', '', 'Ngày thực hiện', 'datetime', 'warehouse_histories', 1, 0, 0, 1, 1, 0, '', NULL, 0, 1, '2023-06-15 06:55:51', '2024-06-12 13:21:37');
INSERT INTO `n_detail_tables` VALUES (338, 'design', NULL, 'Thiết kế', 'linking', 'products', 0, 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"design_types\"\r\n	}\r\n}', 1, 0, 1, '2023-08-22 03:54:31', '2024-06-12 06:44:37');
INSERT INTO `n_detail_tables` VALUES (339, 'Length', '', 'Dài', 'text', 'products', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 07:01:14');
INSERT INTO `n_detail_tables` VALUES (340, 'width', '', 'Rộng', 'text', 'products', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 07:01:14');
INSERT INTO `n_detail_tables` VALUES (341, 'height', '', 'Cao', 'text', 'products', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 07:01:14');
INSERT INTO `n_detail_tables` VALUES (342, 'custom_design_file', '', 'File thiết kế khách gửi', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:15:46');
INSERT INTO `n_detail_tables` VALUES (343, 'sale_shape_file', '', 'Khuôn KD tính giá', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:04:52');
INSERT INTO `n_detail_tables` VALUES (344, 'tech_shape_file', '', 'Khuôn Sản Xuất (Kỹ Thuật)', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:04:52');
INSERT INTO `n_detail_tables` VALUES (345, 'design_file', '', 'File Gốc (P. Thiết Kế)', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:10:08');
INSERT INTO `n_detail_tables` VALUES (346, 'tech_design_file', '', 'File bình theo khuôn (P. thiết kế)', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:10:07');
INSERT INTO `n_detail_tables` VALUES (347, 'handle_shape_file', '', 'Khuôn Ép Nhũ, Thúc Nổi, In UV', 'filev2', 'products', 0, 0, 0, 0, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-06-12 07:10:07');
INSERT INTO `n_detail_tables` VALUES (348, 'detail', '', 'Ghi chú', 'textarea', 'products', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');
INSERT INTO `n_detail_tables` VALUES (349, 'note', '', 'Ghi chú Gia công', 'pro_note_handle', 'products', 0, 0, 0, 0, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-06-12 13:21:36');

SET FOREIGN_KEY_CHECKS = 1;

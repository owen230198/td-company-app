/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : td_company

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 08/05/2024 13:42:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for warehouse_histories
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_histories`;
CREATE TABLE `warehouse_histories`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` int(0) NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `imported` bigint(0) NULL DEFAULT NULL,
  `ex_inventory` bigint(0) NULL DEFAULT NULL,
  `exported` bigint(0) NULL DEFAULT NULL,
  `inventory` bigint(0) NULL DEFAULT NULL,
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` int(0) NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `bill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `w_type` tinyint(0) NULL DEFAULT NULL,
  `act` tinyint(0) NULL DEFAULT NULL,
  `product` int(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`, `created_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouse_histories
-- ----------------------------
INSERT INTO `warehouse_histories` VALUES (7, NULL, 'GIẤY IVOLRY - 250 - 102x51', 'print_warehouses', 'paper', 70, NULL, 100000, 0, NULL, 100000, 'sheet', 50, 16.5, '{\"id\":\"68\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2\"}', NULL, NULL, NULL, 1, '2023-10-01 11:22:57', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (8, NULL, 'GIẤY IVOLRY - 250 - 102x57', 'print_warehouses', 'paper', 71, NULL, 100000, 0, NULL, 100000, 'sheet', 50, 16.5, '{\"id\":\"69\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3\"}', NULL, NULL, NULL, 1, '2023-10-01 11:23:43', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (9, NULL, 'GIẤY IVOLRY - 250 - 102x44', 'print_warehouses', 'paper', 72, NULL, 60000, 0, NULL, 60000, 'sheet', 50, 16.5, '{\"id\":\"70\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4\"}', NULL, NULL, NULL, 1, '2023-10-01 11:24:42', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (10, NULL, 'GIẤY COUCHES - 120 - 50x44', 'print_warehouses', 'paper', 73, NULL, 87020, 0, NULL, 87020, 'sheet', 50, 18, '{\"id\":\"71\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5\"}', NULL, NULL, NULL, 1, '2023-10-01 12:17:28', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (11, NULL, 'GIẤY COUCHES - 120 - 50x42', 'print_warehouses', 'paper', 74, NULL, 87020, 0, NULL, 87020, 'sheet', 50, 18, '{\"id\":\"72\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6\"}', NULL, NULL, NULL, 1, '2023-10-01 12:18:21', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (12, NULL, 'GIẤY COUCHES - 120 - 54.5x48.5', 'print_warehouses', 'paper', 75, NULL, 74300, 0, NULL, 74300, 'sheet', 50, 18, '{\"id\":\"73\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7\"}', NULL, NULL, NULL, 1, '2023-10-01 12:19:43', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (13, NULL, 'GIẤY IVOLRY - 250 - 102x44', 'print_warehouses', 'paper', 72, NULL, 13200, 60000, NULL, 73200, 'sheet', 50, 16500, '{\"id\":\"89\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4740902657631_c709f1fad82bab43b1410bc080d11b3e309\",\"name\":\"z4740902657631_c709f1fad82bab43b1410bc080d11b3e309\"}', NULL, NULL, NULL, 7, '2023-10-06 09:01:44', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (14, NULL, 'GIẤY IVOLRY - 250 - 102x44', 'print_warehouses', 'paper', 72, NULL, 46800, 73200, NULL, 120000, 'sheet', 50, 16500, '{\"id\":\"90\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10\",\"name\":\"z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10\"}', NULL, NULL, NULL, 7, '2023-10-06 09:03:17', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (15, NULL, 'GIẤY IVOLRY - 250 - 102x57', 'print_warehouses', 'paper', 71, NULL, 3600, 100000, NULL, 103600, 'sheet', 50, 16500, '{\"id\":\"91\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)\",\"name\":\"z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)\"}', NULL, NULL, NULL, 7, '2023-10-06 09:04:59', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (16, NULL, 'GIẤY IVOLRY - 250 - 102x57', 'print_warehouses', 'paper', 71, NULL, 27160, 103600, NULL, 130760, 'sheet', 50, 16500, '{\"id\":\"92\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10\",\"name\":\"z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10\"}', NULL, NULL, NULL, 7, '2023-10-06 09:06:34', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (17, NULL, 'GIẤY IVOLRY - 250 - 102x51', 'print_warehouses', 'paper', 70, NULL, 20000, 100000, NULL, 120000, 'sheet', 50, 16500, '{\"id\":\"93\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9\",\"name\":\"z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9\"}', NULL, NULL, NULL, 7, '2023-10-06 09:18:42', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (44, NULL, 'GIẤY IVOLRY - 300 - 89.5x74', 'print_warehouses', 'paper', 84, NULL, 31000, 0, NULL, 31000, 'sheet', 50, 3.54, '{\"id\":\"216\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/d4ac4633ebd6440fa397b84f1bc94a3c.7z\",\"name\":\"d4ac4633ebd6440fa397b84f1bc94a3c.7z\"}', NULL, NULL, NULL, 13, '2024-02-29 10:51:03', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (45, NULL, 'GIẤY IVOLRY - 300 - 74.5x62', 'print_warehouses', 'paper', 85, NULL, 31000, 0, NULL, 31000, 'sheet', 50, 2.54, '{\"id\":\"217\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/d4ac4633ebd6440fa397b84f1bc94a3c(1).7z\",\"name\":\"d4ac4633ebd6440fa397b84f1bc94a3c(1).7z\"}', NULL, NULL, NULL, 13, '2024-02-29 10:53:23', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (46, NULL, 'GIẤY IVOLRY - 300 - 102x37.5', 'print_warehouses', 'paper', 86, NULL, 31000, 0, NULL, 31000, 'sheet', 50, 2.1, '{\"id\":\"218\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5202983001707_762798626540791dd865c80ae171cbb6.jpg\",\"name\":\"z5202983001707_762798626540791dd865c80ae171cbb6.jpg\"}', NULL, NULL, NULL, 13, '2024-02-29 10:57:22', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (47, NULL, 'GIẤY IVOLRY - 300 - 65x94.5', 'print_warehouses', 'paper', 87, NULL, 31000, 0, NULL, 31000, 'sheet', 50, 3.37, '{\"id\":\"219\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5202983001707_762798626540791dd865c80ae171cbb6(1).jpg\",\"name\":\"z5202983001707_762798626540791dd865c80ae171cbb6(1).jpg\"}', NULL, NULL, NULL, 13, '2024-02-29 10:59:02', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (48, NULL, 'GIẤY IVOLRY - 300 - 92.5x65', 'print_warehouses', 'paper', 88, NULL, 36600, 0, NULL, 36600, 'sheet', 50, 3.3, '{\"id\":\"220\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f.jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f.jpg\"}', NULL, NULL, NULL, 13, '2024-02-29 11:04:28', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (49, NULL, 'Cán bóng - 93.5', 'square_warehouses', 'nilon', 7, NULL, 10600, 0, NULL, 10600, 'square', 51, 79000, '{\"id\":\"269\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(1).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(1).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 09:50:49', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (50, NULL, 'Cán bóng - 101', 'square_warehouses', 'nilon', 8, NULL, 10600, 0, NULL, 10600, 'square', 51, 79000, '{\"id\":\"270\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(2).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(2).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 09:54:00', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (51, NULL, 'Cán bóng - 101', 'square_warehouses', 'nilon', 8, NULL, 53000, 10600, NULL, 63600, 'square', 51, 79000, '{\"id\":\"271\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(3).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(3).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 09:56:05', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (52, NULL, 'GIẤY IVOLRY - 300 - 92.5x65', 'print_warehouses', 'paper', 88, NULL, 200, 36600, NULL, 36800, 'sheet', 51, 6, '{\"id\":\"272\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/131 USA.xlsx\",\"name\":\"131 USA.xlsx\"}', NULL, NULL, NULL, 24, '2024-03-01 10:44:47', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (57, NULL, 'Cán mờ - 93.5', 'square_warehouses', 'nilon', 9, NULL, 53000, 0, NULL, 53000, 'square', 51, 79000, '{\"id\":\"275\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(4).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(4).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:01:17', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (58, NULL, 'Cán bóng - 73.5', 'square_warehouses', 'nilon', 10, NULL, 53000, 0, NULL, 53000, 'square', 51, 79000, '{\"id\":\"276\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(5).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(5).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:05:02', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (69, NULL, 'Cán bóng - 73.5', 'square_warehouses', 'nilon', 10, NULL, 53000, 20760, NULL, 73760, 'square', 51, 79000, '{\"id\":\"278\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(6).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(6).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:22:09', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (70, NULL, 'Cán mờ - 73.5', 'square_warehouses', 'nilon', 11, NULL, 530000, 0, NULL, 530000, 'square', 51, 79000, '{\"id\":\"286\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(8).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(8).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:24:34', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (71, NULL, 'Cán bóng - 73.5', 'square_warehouses', 'nilon', 10, NULL, 530000, 73760, NULL, 603760, 'square', 51, 79000, '{\"id\":\"287\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(9).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(9).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:25:50', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (72, NULL, 'Cán mờ - 93.5', 'square_warehouses', 'nilon', 9, NULL, 530000, 0, NULL, 530000, 'square', 51, 79000, '{\"id\":\"288\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(10).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(10).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:35:03', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (73, NULL, 'Cán bóng - 93.5', 'square_warehouses', 'nilon', 7, NULL, 530000, 0, NULL, 530000, 'square', 51, 79000, '{\"id\":\"289\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(11).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(11).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:37:47', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (74, NULL, 'Cán bóng - 88.5', 'square_warehouses', 'nilon', 12, NULL, 530000, 0, NULL, 530000, 'square', 51, 79000, '{\"id\":\"290\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(12).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(12).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:39:44', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (88, NULL, 'Cán bóng - 101', 'square_warehouses', 'nilon', 8, NULL, 530000, 5850, NULL, 535850, 'square', 51, 79000, '{\"id\":\"291\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(13).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(13).jpg\"}', NULL, NULL, NULL, 13, '2024-03-01 14:46:25', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (92, NULL, 'GIẤY COUCHES - 80 - 54.5x39.5', 'print_warehouses', 'paper', 89, NULL, 14325, 0, NULL, 14325, 'sheet', 49, 23000, '{\"id\":\"318\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256764775840_716c2ee08aa586bbdd6853f2bdb16932.jpg\",\"name\":\"z5256764775840_716c2ee08aa586bbdd6853f2bdb16932.jpg\"}', NULL, NULL, NULL, 13, '2024-03-18 16:13:12', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (96, NULL, 'GIẤY IVOLRY - 300 - 65x94.5', 'print_warehouses', 'paper', 87, NULL, 300, 12850, NULL, 13150, 'sheet', 50, 17000, '{\"id\":\"319\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/File_Convert_Sau_Binh_00033493A_Bộ (hộ%0d%0a p+toa) 023_ 130 45 165 mm_.pdf\",\"name\":\"File_Convert_Sau_Binh_00033493A_Bộ (hộ%0d%0a p+toa) 023_ 130 45 165 mm_.pdf\"}', NULL, NULL, NULL, 13, '2024-03-18 16:45:28', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (97, NULL, 'GIẤY IVOLRY - 230 - 48x44', 'print_warehouses', 'paper', 90, NULL, 600, 0, NULL, 600, 'sheet', 49, 18200, '{\"id\":\"370\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5203015229010_0533ba4510d6106facdcfea21ed87c1f(14).jpg\",\"name\":\"z5203015229010_0533ba4510d6106facdcfea21ed87c1f(14).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 10:41:19', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (98, NULL, 'GIẤY IVOLRY - 400 - 51x30', 'print_warehouses', 'paper', 91, NULL, 2650, 0, NULL, 2650, 'sheet', 49, 18400, '{\"id\":\"371\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5.jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5.jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 10:46:01', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (99, NULL, 'GIẤY COUCHES - 120 - 55.5x35.5', 'print_warehouses', 'paper', 92, NULL, 4330, 0, NULL, 4330, 'sheet', 49, 21300, '{\"id\":\"372\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5(1).jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 10:56:15', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (100, NULL, 'Cán bóng - 46', 'square_warehouses', 'nilon', 13, NULL, 237, 0, NULL, 237, 'square', 54, 67000, '{\"id\":\"373\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5(2).jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 16:23:29', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (101, NULL, 'Cán bóng - 46', 'square_warehouses', 'nilon', 13, NULL, 1778, 237, NULL, 2014, 'square', 54, 67000, '{\"id\":\"376\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5(5).jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5(5).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 16:29:04', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (102, NULL, 'Cán bóng - 46', 'square_warehouses', 'nilon', 13, NULL, 500, 2014, NULL, 2514, 'square', 54, 67000, '{\"id\":\"377\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5(6).jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5(6).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 16:31:47', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (103, NULL, 'Cán bóng - 52', 'square_warehouses', 'nilon', 14, NULL, 79500, 0, NULL, 79500, 'square', 54, 67000, '{\"id\":\"378\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5281511227201_3a86db5eaf4114e96484c840745fb8e5(7).jpg\",\"name\":\"z5281511227201_3a86db5eaf4114e96484c840745fb8e5(7).jpg\"}', NULL, NULL, NULL, 13, '2024-04-09 16:35:58', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (108, NULL, 'GIẤY COUCHES - 120 - 62x43', 'print_warehouses', 'paper', 93, NULL, 2320, 0, NULL, 2320, 'sheet', 49, 21000, '{\"id\":\"399\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5336437218518_369dbc9b44782b62edcf8bad849ad186.jpg\",\"name\":\"z5336437218518_369dbc9b44782b62edcf8bad849ad186.jpg\"}', NULL, NULL, NULL, 13, '2024-04-11 08:32:55', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (109, NULL, 'GIẤY COUCHES - 150 - 62x43', 'print_warehouses', 'paper', 94, NULL, 620, 0, NULL, 620, 'sheet', 49, 21000, '{\"id\":\"400\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5336437218391_01492ba28974a76e256b8feaf7a9713a.jpg\",\"name\":\"z5336437218391_01492ba28974a76e256b8feaf7a9713a.jpg\"}', NULL, NULL, NULL, 13, '2024-04-11 08:34:33', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (110, NULL, 'GIẤY COUCHES - 300 - 54.5x39.5', 'print_warehouses', 'paper', 95, NULL, 220, 0, NULL, 220, 'sheet', 49, 21000, '{\"id\":\"401\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5336437218391_01492ba28974a76e256b8feaf7a9713a(1).jpg\",\"name\":\"z5336437218391_01492ba28974a76e256b8feaf7a9713a(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-11 08:35:14', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (111, NULL, 'GIẤY COUCHES - 120 - 54.5x39.5', 'print_warehouses', 'paper', 96, NULL, 2100, 0, NULL, 2100, 'sheet', 49, 21000, '{\"id\":\"402\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5336437218391_01492ba28974a76e256b8feaf7a9713a(2).jpg\",\"name\":\"z5336437218391_01492ba28974a76e256b8feaf7a9713a(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-11 08:35:57', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (112, NULL, 'GIẤY COUCHES - 120 - 54.5x46', 'print_warehouses', 'paper', 97, NULL, 3566, 0, NULL, 3566, 'sheet', 49, 21000, '{\"id\":\"425\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06.jpg\",\"name\":\"z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06.jpg\"}', NULL, NULL, NULL, 13, '2024-04-12 09:17:15', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (113, NULL, 'GIẤY COUCHES - 120 - 48x36.3', 'print_warehouses', 'paper', 98, NULL, 4300, 0, NULL, 4300, 'sheet', 49, 21000, '{\"id\":\"426\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06(1).jpg\",\"name\":\"z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-12 09:17:57', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (114, NULL, 'GIẤY COUCHES - 120 - 54.5x32.5', 'print_warehouses', 'paper', 99, NULL, 2000, 0, NULL, 2000, 'sheet', 49, 21000, '{\"id\":\"427\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06(2).jpg\",\"name\":\"z5339677863670_bf2462ee6d2e986a9184cefc9fdbef06(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-12 09:18:58', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (115, NULL, 'GIẤY COUCHES - 120 - 69.5x36', 'print_warehouses', 'paper', 100, NULL, 3600, 0, NULL, 3600, 'sheet', 49, 21000, '{\"id\":\"501\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5368012959659_c6994d646ef2b9c03461e69e03d27aa2.jpg\",\"name\":\"z5368012959659_c6994d646ef2b9c03461e69e03d27aa2.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:03:09', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (116, NULL, 'GIẤY IVOLRY - 400 - 39.5x38', 'print_warehouses', 'paper', 101, NULL, 1400, 0, NULL, 1400, 'sheet', 49, 18200, '{\"id\":\"502\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5374084263650_ac927187bc8d164dd2ccd5e7a3abb7fa.jpg\",\"name\":\"z5374084263650_ac927187bc8d164dd2ccd5e7a3abb7fa.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:04:03', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (117, NULL, 'GIẤY IVOLRY - 400 - 45x40.5', 'print_warehouses', 'paper', 102, NULL, 2150, 0, NULL, 2150, 'sheet', 49, 18200, '{\"id\":\"503\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5377955241429_3237bf26ed9fe3f86c858f39d4842a2f.jpg\",\"name\":\"z5377955241429_3237bf26ed9fe3f86c858f39d4842a2f.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:07:52', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (118, NULL, 'GIẤY IVOLRY - 400 - 59.5x48', 'print_warehouses', 'paper', 103, NULL, 900, 0, NULL, 900, 'sheet', 49, 18200, '{\"id\":\"504\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5377979594548_66716b23ead614586cce9c3a50e84efd.jpg\",\"name\":\"z5377979594548_66716b23ead614586cce9c3a50e84efd.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:13:29', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (119, NULL, 'GIẤY IVOLRY - 300 - 53x43', 'print_warehouses', 'paper', 104, NULL, 1650, 0, NULL, 1650, 'sheet', 49, 18200, '{\"id\":\"506\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5377979594548_66716b23ead614586cce9c3a50e84efd(1).jpg\",\"name\":\"z5377979594548_66716b23ead614586cce9c3a50e84efd(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:19:58', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (120, NULL, 'GIẤY COUCHES - 120 - 54.5x32.5', 'print_warehouses', 'paper', 105, NULL, 10450, 0, NULL, 10450, 'sheet', 49, 21000, '{\"id\":\"507\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378012887050_51c7635fc0e2e49fea48c21b91bca53f.jpg\",\"name\":\"z5378012887050_51c7635fc0e2e49fea48c21b91bca53f.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:22:42', '2024-05-07 00:58:17');
INSERT INTO `warehouse_histories` VALUES (121, NULL, 'GIẤY IVOLRY - 350 - 46x32.5', 'print_warehouses', 'paper', 106, NULL, 2630, 0, NULL, 2630, 'sheet', 49, 18200, '{\"id\":\"508\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378026260658_96b78c90582e5d9d21b80ab725a160bd.jpg\",\"name\":\"z5378026260658_96b78c90582e5d9d21b80ab725a160bd.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:24:55', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (122, NULL, 'Cán mờ - 62', 'square_warehouses', 'nilon', 15, NULL, 210000, 0, NULL, 210000, 'square', 56, 69000, '{\"id\":\"509\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd.jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:36:22', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (125, NULL, 'Cán mờ - 49.5', 'square_warehouses', 'nilon', 16, NULL, 543000, 0, NULL, 543000, 'square', 56, 69000, '{\"id\":\"510\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(1).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 10:45:49', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (128, NULL, 'GIẤY COUCHES - 80 - 54.5x39.5', 'print_warehouses', 'paper', 89, NULL, 750, 0, NULL, 750, 'sheet', 49, 23200, '{\"id\":\"512\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378192569371_0c85d3cd7376b8832de2fc33553d98b0.jpg\",\"name\":\"z5378192569371_0c85d3cd7376b8832de2fc33553d98b0.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 11:17:25', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (129, NULL, 'GIẤY OFFSET - 70 - 65x43', 'print_warehouses', 'paper', 107, NULL, 1350, 0, NULL, 1350, 'sheet', 49, 24700, '{\"id\":\"513\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378192569371_0c85d3cd7376b8832de2fc33553d98b0(1).jpg\",\"name\":\"z5378192569371_0c85d3cd7376b8832de2fc33553d98b0(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 11:18:04', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (130, NULL, 'GIẤY OFFSET - 70 - 65x43', 'print_warehouses', 'paper', 107, NULL, 25, 1350, NULL, 1375, 'sheet', 49, 24700, '{\"id\":\"514\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378192569371_0c85d3cd7376b8832de2fc33553d98b0(2).jpg\",\"name\":\"z5378192569371_0c85d3cd7376b8832de2fc33553d98b0(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 11:31:46', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (133, NULL, 'Cán mờ - 54', 'square_warehouses', 'nilon', 17, NULL, 530000, 0, NULL, 530000, 'square', 56, 69000, '{\"id\":\"528\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(2).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 13:49:06', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (134, NULL, 'CARTON MẶT NÂU - MỘC - Carton 1.8ly - 126x100', 'supply_warehouses', 'carton', 37, NULL, 600, 0, NULL, 600, 'plate', 58, 15435, '{\"id\":\"536\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5229145078946_0800fcb11438d3aec5878ea510ba0b3c.jpg\",\"name\":\"z5229145078946_0800fcb11438d3aec5878ea510ba0b3c.jpg\"}', NULL, NULL, NULL, 13, '2024-04-24 15:31:58', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (135, NULL, 'Cán mờ - 101', 'square_warehouses', 'nilon', 18, NULL, 15790000, 0, NULL, 15790000, 'square', 56, 69000, '{\"id\":\"540\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(3).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(3).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:47:43', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (136, NULL, 'Cán mờ - 43', 'square_warehouses', 'nilon', 19, NULL, 1560000, 0, NULL, 1560000, 'square', 56, 69000, '{\"id\":\"541\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(4).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(4).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:48:51', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (137, NULL, 'Cán mờ - 55', 'square_warehouses', 'nilon', 20, NULL, 1160000, 0, NULL, 1160000, 'square', 56, 69000, '{\"id\":\"542\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(5).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(5).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:50:09', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (138, NULL, 'Cán mờ - 46', 'square_warehouses', 'nilon', 21, NULL, 510000, 0, NULL, 510000, 'square', 56, 69000, '{\"id\":\"543\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(6).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(6).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:51:00', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (139, NULL, 'Cán mờ - 36', 'square_warehouses', 'nilon', 22, NULL, 500000, 0, NULL, 500000, 'square', 56, 69000, '{\"id\":\"544\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(7).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(7).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:51:40', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (140, NULL, 'Cán mờ - 65', 'square_warehouses', 'nilon', 23, NULL, 740000, 0, NULL, 740000, 'square', 56, 69000, '{\"id\":\"545\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(8).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(8).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:53:17', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (141, NULL, 'Cán mờ - 79', 'square_warehouses', 'nilon', 24, NULL, 240000, 0, NULL, 240000, 'square', 56, 69000, '{\"id\":\"546\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(9).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(9).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 08:54:13', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (142, NULL, 'Cán bóng - 78', 'square_warehouses', 'nilon', 25, NULL, 500000, 0, NULL, 500000, 'square', 56, 67000, '{\"id\":\"547\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(10).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(10).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:02:11', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (143, NULL, 'Cán bóng - 62', 'square_warehouses', 'nilon', 26, NULL, 520000, 0, NULL, 520000, 'square', 56, 67000, '{\"id\":\"548\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(11).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(11).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:02:40', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (144, NULL, 'Cán bóng - 43', 'square_warehouses', 'nilon', 27, NULL, 1340000, 0, NULL, 1340000, 'square', 56, 67000, '{\"id\":\"549\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(12).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(12).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:04:16', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (145, NULL, 'Cán bóng - 57', 'square_warehouses', 'nilon', 28, NULL, 530000, 0, NULL, 530000, 'square', 56, 67000, '{\"id\":\"551\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(13).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(13).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:10:09', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (146, NULL, 'Cán bóng - 69', 'square_warehouses', 'nilon', 29, NULL, 510000, 0, NULL, 510000, 'square', 56, 67000, '{\"id\":\"552\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(14).jpg\",\"name\":\"z5256742921190_5dec991d3b139dd35ec9b42de844e9fd(14).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:11:08', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (147, NULL, 'GIẤY IVOLRY - 400 - 54.5x43.5', 'print_warehouses', 'paper', 108, NULL, 1730, 0, NULL, 1730, 'sheet', 49, 18200, '{\"id\":\"553\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5381165460937_abfd049680ed7581e200e65d02917376.jpg\",\"name\":\"z5381165460937_abfd049680ed7581e200e65d02917376.jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:16:05', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (148, NULL, 'GIẤY IVOLRY - 400 - 52.5x32', 'print_warehouses', 'paper', 109, NULL, 738, 0, NULL, 738, 'sheet', 49, 18200, '{\"id\":\"554\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5381174040338_027567da9642e4eb374b0eef6d740618.jpg\",\"name\":\"z5381174040338_027567da9642e4eb374b0eef6d740618.jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 09:18:31', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (149, NULL, 'GIẤY DUPLEX - 450 - 69x48', 'print_warehouses', 'paper', 110, NULL, 50000, 0, NULL, 50000, 'sheet', 55, 1.61, '{\"id\":\"558\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030.jpg\",\"name\":\"z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030.jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 10:42:34', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (150, NULL, 'GIẤY DUPLEX - 450 - 88.9x55', 'print_warehouses', 'paper', 111, NULL, 50000, 0, NULL, 50000, 'sheet', 55, 2.38, '{\"id\":\"559\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030(1).jpg\",\"name\":\"z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 10:48:12', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (151, NULL, 'GIẤY DUPLEX - 450 - 89x69', 'print_warehouses', 'paper', 112, NULL, 50000, 0, NULL, 50000, 'sheet', 55, 2.98, '{\"id\":\"560\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030(2).jpg\",\"name\":\"z5378078685563_e0ab2881bb66fb0a1b8c1e56010c3030(2).jpg\"}', NULL, NULL, NULL, 13, '2024-04-25 10:49:17', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (152, NULL, 'GIẤY COUCHES - 120 - 56x34', 'print_warehouses', 'paper', 113, NULL, 2350, 0, NULL, 2350, 'sheet', 49, 519.58, '{\"id\":\"601\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5384210390411_5402b65684303cfaee40cbc873f903f7.jpg\",\"name\":\"z5384210390411_5402b65684303cfaee40cbc873f903f7.jpg\"}', NULL, NULL, NULL, 13, '2024-04-26 15:20:45', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (153, NULL, 'GIẤY COUCHES - 120 - 54.5x54', 'print_warehouses', 'paper', 114, NULL, 2300, 0, NULL, 2300, 'sheet', 49, 752.26, '{\"id\":\"602\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5384210390411_5402b65684303cfaee40cbc873f903f7(1).jpg\",\"name\":\"z5384210390411_5402b65684303cfaee40cbc873f903f7(1).jpg\"}', NULL, NULL, NULL, 13, '2024-04-26 15:22:19', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (154, NULL, 'GIẤY IVOLRY - 400 - 59x43', 'print_warehouses', 'paper', 115, NULL, 1400, 0, NULL, 1400, 'sheet', 49, 1.85, '{\"id\":\"603\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5384210401676_7ebf9eac02d34413f8c834e516263046.jpg\",\"name\":\"z5384210401676_7ebf9eac02d34413f8c834e516263046.jpg\"}', NULL, NULL, NULL, 13, '2024-04-26 15:24:11', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (155, NULL, 'CARTON MẶT NÂU - MỘC - Carton 1.8ly - 100x54', 'supply_warehouses', 'carton', 38, NULL, 2610, 0, NULL, 2610, 'plate', 59, 4.61, '{\"id\":\"604\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5382601933313_67f3faada112824edda0f437f0ba55de2.jpg\",\"name\":\"z5382601933313_67f3faada112824edda0f437f0ba55de2.jpg\"}', NULL, NULL, NULL, 13, '2024-04-26 15:28:56', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (158, NULL, 'GIẤY COUCHES - 80 - 54.5x39.5', 'print_warehouses', 'paper', 89, NULL, 6550, 12, NULL, 6562, 'sheet', 49, 396.23, '{\"id\":\"610\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5387532693900_39d18b0d4c2da182b38e187b05b93b01.jpg\",\"name\":\"z5387532693900_39d18b0d4c2da182b38e187b05b93b01.jpg\"}', NULL, NULL, NULL, 13, '2024-04-27 10:50:29', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (159, NULL, 'GIẤY IVOLRY - 400 - 61x31', 'print_warehouses', 'paper', 116, NULL, 2670, 0, NULL, 2670, 'sheet', 49, 1.38, '{\"id\":\"611\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/2.jpg\",\"name\":\"2.jpg\"}', NULL, NULL, NULL, 13, '2024-04-27 10:52:45', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (160, NULL, 'CARTON MẶT NÂU - MỘC - Carton 1.8ly - 126x100', 'supply_warehouses', 'carton', 37, NULL, 1000, 600, NULL, 1600, 'plate', 59, 14490, '{\"id\":\"616\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5388702719534_38521752a0bd82d789e7615abffcb497.jpg\",\"name\":\"z5388702719534_38521752a0bd82d789e7615abffcb497.jpg\"}', NULL, NULL, NULL, 13, '2024-04-27 15:46:50', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (161, NULL, 'GIẤY IVOLRY - 350 - 46x32.5', 'print_warehouses', 'paper', 106, NULL, 20, 2630, NULL, 2650, 'sheet', 49, 18200, '{\"id\":\"623\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5400486275061_43f997b801d4371ad777e9b20eca8bbc.jpg\",\"name\":\"z5400486275061_43f997b801d4371ad777e9b20eca8bbc.jpg\"}', NULL, NULL, NULL, 13, '2024-05-02 09:01:50', '2024-05-07 00:58:18');
INSERT INTO `warehouse_histories` VALUES (194, NULL, 'GIẤY COUCHES - 120 - 54.5x39.5', 'print_warehouses', 'paper', 96, NULL, 150, 2100, NULL, 2250, 'sheet', 49, 21000, '{\"id\":\"624\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z5400486275061_43f997b801d4371ad777e9b20eca8bbc(1).jpg\",\"name\":\"z5400486275061_43f997b801d4371ad777e9b20eca8bbc(1).jpg\"}', NULL, NULL, NULL, 13, '2024-05-02 11:16:25', '2024-05-07 00:58:18');

SET FOREIGN_KEY_CHECKS = 1;

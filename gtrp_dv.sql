/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : gtrp_dv

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 06/06/2024 04:31:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bestsellers
-- ----------------------------
DROP TABLE IF EXISTS `bestsellers`;
CREATE TABLE `bestsellers` (
  `rank` int DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bestsellers
-- ----------------------------
BEGIN;
INSERT INTO `bestsellers` (`rank`, `product`) VALUES (1, '蜜汁烤乳猪');
INSERT INTO `bestsellers` (`rank`, `product`) VALUES (2, '小原味烤乳猪');
COMMIT;

-- ----------------------------
-- Table structure for city_orders
-- ----------------------------
DROP TABLE IF EXISTS `city_orders`;
CREATE TABLE `city_orders` (
  `id` int DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `order_count` int DEFAULT NULL,
  `total_sales` decimal(10,2) DEFAULT NULL,
  `avg_order_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of city_orders
-- ----------------------------
BEGIN;
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (1, '广州', 205, 307500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (2, '天河', 175, 262500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (3, '从化', 155, 232500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (4, '增城', 135, 202500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (5, '天河', 185, 277500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (6, '越秀', 145, 217500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (7, '白云', 125, 187500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (8, '番禺', 115, 172500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (9, '荔湾', 105, 157500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (10, '黄埔', 95, 142500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (11, '海珠', 85, 127500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (12, '东山', 75, 112500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (13, '花都', 65, 97500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (14, '南沙', 55, 82500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (15, '越秀', 145, 217500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (16, '白云', 125, 187500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (17, '番禺', 115, 172500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (18, '荔湾', 105, 157500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (19, '黄埔', 95, 142500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (20, '海珠', 85, 127500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (21, '东山', 75, 112500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (22, '花都', 65, 97500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (23, '南沙', 55, 82500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (24, '从化', 45, 67500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (25, '荔湾', 35, 52500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (26, '黄埔', 25, 37500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (27, '海珠', 15, 22500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (28, '东山', 5, 7500.00, 1500.00);
INSERT INTO `city_orders` (`id`, `city`, `order_count`, `total_sales`, `avg_order_price`) VALUES (29, '增城', 10, 15000.00, 1500.00);
COMMIT;

-- ----------------------------
-- Table structure for customer_segments
-- ----------------------------
DROP TABLE IF EXISTS `customer_segments`;
CREATE TABLE `customer_segments` (
  `segment` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sales` decimal(10,2) DEFAULT NULL,
  `percent` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customer_segments
-- ----------------------------
BEGIN;
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('VIP客户', 300, 4500000.00, '25.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('高价值客户', 500, 3200000.00, '30.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('常购客户', 1000, 2100000.00, '20.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('潜在客户', 1500, 1600000.00, '15.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('新客户', 2000, 1200000.00, '10.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('VIP客户', 300, 4500000.00, '25.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('高价值客户', 500, 3200000.00, '30.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('常购客户', 1000, 2100000.00, '20.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('潜在客户', 1500, 1600000.00, '15.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('新客户', 2000, 1200000.00, '10.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('VIP客户', 300, 4500000.00, '25.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('高价值客户', 500, 3200000.00, '30.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('常购客户', 1000, 2100000.00, '20.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('潜在客户', 1500, 1600000.00, '15.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('新客户', 2000, 1200000.00, '10.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('VIP客户', 300, 4500000.00, '25.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('高价值客户', 500, 3200000.00, '30.00');
INSERT INTO `customer_segments` (`segment`, `quantity`, `sales`, `percent`) VALUES ('常购客户', 1000, 2100000.00, '20.00');
COMMIT;

-- ----------------------------
-- Table structure for pig_inventory
-- ----------------------------
DROP TABLE IF EXISTS `pig_inventory`;
CREATE TABLE `pig_inventory` (
  `flavor` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pig_inventory
-- ----------------------------
BEGIN;
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('原味烤乳猪', 490);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('蜜汁烤乳猪', 450);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('香辣烤乳猪', 400);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('五香烤乳猪', 350);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('孜然烤乳猪', 300);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('咖喱烤乳猪', 280);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('草药烤乳猪', 260);
INSERT INTO `pig_inventory` (`flavor`, `quantity`) VALUES ('脆皮烤乳猪', 240);
COMMIT;

-- ----------------------------
-- Table structure for pig_sales
-- ----------------------------
DROP TABLE IF EXISTS `pig_sales`;
CREATE TABLE `pig_sales` (
  `flavor` varchar(50) DEFAULT NULL,
  `sales` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pig_sales
-- ----------------------------
BEGIN;
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('原味烤乳猪', 1500000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('蜜汁烤乳猪', 1200000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('香辣烤乳猪', 1000000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('五香烤乳猪', 900000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('孜然烤乳猪', 850000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('咖喱烤乳猪', 800000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('草药烤乳猪', 750000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('脆皮烤乳猪', 700000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('辣椒烤乳猪', 650000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('黑椒烤乳猪', 600000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('迷你烤乳猪', 550000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('家庭装烤乳猪', 500000.00);
INSERT INTO `pig_sales` (`flavor`, `sales`) VALUES ('豪华烤乳猪', 450000.00);
COMMIT;

-- ----------------------------
-- Table structure for product_inventory
-- ----------------------------
DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE `product_inventory` (
  `product` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product_inventory
-- ----------------------------
BEGIN;
INSERT INTO `product_inventory` (`product`, `quantity`, `status`) VALUES ('大型烤乳猪', 1000, '充足');
INSERT INTO `product_inventory` (`product`, `quantity`, `status`) VALUES ('小型烤乳猪', 800, '紧张');
INSERT INTO `product_inventory` (`product`, `quantity`, `status`) VALUES ('中型烤乳猪', 500, '充足');
COMMIT;

-- ----------------------------
-- Table structure for sales_channels
-- ----------------------------
DROP TABLE IF EXISTS `sales_channels`;
CREATE TABLE `sales_channels` (
  `channel` varchar(50) DEFAULT NULL,
  `sales` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sales_channels
-- ----------------------------
BEGIN;
INSERT INTO `sales_channels` (`channel`, `sales`) VALUES ('线上', 612345.00);
INSERT INTO `sales_channels` (`channel`, `sales`) VALUES ('线下', 387654.00);
INSERT INTO `sales_channels` (`channel`, `sales`) VALUES ('第三方平台', 256789.00);
INSERT INTO `sales_channels` (`channel`, `sales`) VALUES ('社交媒体', 143987.00);
INSERT INTO `sales_channels` (`channel`, `sales`) VALUES ('批发渠道', 342225.00);
COMMIT;

-- ----------------------------
-- Table structure for user_acts
-- ----------------------------
DROP TABLE IF EXISTS `user_acts`;
CREATE TABLE `user_acts` (
  `action_name` varchar(255) NOT NULL,
  `action_count` int NOT NULL,
  PRIMARY KEY (`action_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_acts
-- ----------------------------
BEGIN;
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('下单量', 2942);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('付款量', 2752);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('加入购物车', 4223);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('复购率', 2842);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('新品下单数', 1100);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('新品付款数', 1118);
INSERT INTO `user_acts` (`action_name`, `action_count`) VALUES ('访问量', 3270);
COMMIT;

-- ----------------------------
-- Table structure for user_getdata
-- ----------------------------
DROP TABLE IF EXISTS `user_getdata`;
CREATE TABLE `user_getdata` (
  `metric_name` varchar(255) NOT NULL,
  `metric_value` varchar(255) NOT NULL,
  PRIMARY KEY (`metric_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_getdata
-- ----------------------------
BEGIN;
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('产品质量', '4.8');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('同比变化', '8');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('客户服务', '4.7');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('客户满意度', '75');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('常用支付方式', '微信支付、支付宝');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('当月销售额', '25123');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('环比变化', '12');
INSERT INTO `user_getdata` (`metric_name`, `metric_value`) VALUES ('配送速度', '4.3');
COMMIT;

-- ----------------------------
-- Table structure for weekly_sales
-- ----------------------------
DROP TABLE IF EXISTS `weekly_sales`;
CREATE TABLE `weekly_sales` (
  `day` varchar(10) DEFAULT NULL,
  `sales` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of weekly_sales
-- ----------------------------
BEGIN;
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周一', 10000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周二', 12000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周三', 9000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周四', 11000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周五', 13000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周六', 15000.00);
INSERT INTO `weekly_sales` (`day`, `sales`) VALUES ('周日', 14000.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

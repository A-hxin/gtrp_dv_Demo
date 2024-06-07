-- 创建数据库
CREATE DATABASE gtrp_dv;
USE gtrp_dv;

-- 创建并插入每周销售额数据
CREATE TABLE weekly_sales (
                              day VARCHAR(10),
                              sales DECIMAL(10, 2)
);

INSERT INTO weekly_sales (day, sales) VALUES
                                          ('周一', 10000),
                                          ('周二', 12000),
                                          ('周三', 9000),
                                          ('周四', 11000),
                                          ('周五', 13000),
                                          ('周六', 15000),
                                          ('周日', 14000);

-- 创建并插入每月销售额数据
CREATE TABLE monthly_sales (
                               month VARCHAR(10),
                               sales DECIMAL(10, 2)
);

INSERT INTO monthly_sales (month, sales) VALUES
                                             ('1月', 1000000),
                                             ('2月', 1100000),
                                             ('3月', 1050000),
                                             ('4月', 1200000),
                                             ('5月', 1150000),
                                             ('6月', 1180000),
                                             ('7月', 1300000),
                                             ('8月', 1250000),
                                             ('9月', 1270000),
                                             ('10月', 1300000),
                                             ('11月', 1350000),
                                             ('12月', 1400000);

-- 创建并插入各类烤乳猪销售额数据
CREATE TABLE pig_sales (
                           flavor VARCHAR(50),
                           sales DECIMAL(10, 2)
);

INSERT INTO pig_sales (flavor, sales) VALUES
                                          ('原味烤乳猪', 1500000),
                                          ('蜜汁烤乳猪', 1200000),
                                          ('香辣烤乳猪', 1000000),
                                          ('五香烤乳猪', 900000),
                                          ('孜然烤乳猪', 850000),
                                          ('咖喱烤乳猪', 800000),
                                          ('草药烤乳猪', 750000),
                                          ('脆皮烤乳猪', 700000),
                                          ('辣椒烤乳猪', 650000),
                                          ('黑椒烤乳猪', 600000),
                                          ('迷你烤乳猪', 550000),
                                          ('家庭装烤乳猪', 500000),
                                          ('豪华烤乳猪', 450000);

-- 创建并插入各类烤乳猪库存数量数据
CREATE TABLE pig_inventory (
                               flavor VARCHAR(50),
                               quantity INT
);

INSERT INTO pig_inventory (flavor, quantity) VALUES
                                                 ('原味烤乳猪', 490),
                                                 ('蜜汁烤乳猪', 450),
                                                 ('香辣烤乳猪', 400),
                                                 ('五香烤乳猪', 350),
                                                 ('孜然烤乳猪', 300),
                                                 ('咖喱烤乳猪', 280),
                                                 ('草药烤乳猪', 260),
                                                 ('脆皮烤乳猪', 240),
                                                 ('辣椒烤乳猪', 220),
                                                 ('黑椒烤乳猪', 200),
                                                 ('迷你烤乳猪', 180),
                                                 ('家庭装烤乳猪', 160),
                                                 ('豪华烤乳猪', 140);

-- 创建并插入销售渠道分析数据
CREATE TABLE sales_channels (
                                channel VARCHAR(50),
                                sales DECIMAL(10, 2)
);

INSERT INTO sales_channels (channel, sales) VALUES
                                                ('线上', 612345),
                                                ('线下', 387654),
                                                ('第三方平台', 256789),
                                                ('社交媒体', 143987),
                                                ('批发渠道', 342225);

-- 创建并插入客户分类（RFM分析）数据
CREATE TABLE customer_segments (
                                   segment VARCHAR(50),
                                   quantity INT,
                                   sales DECIMAL(10, 2),
                                   percent VARCHAR(5)
);
INSERT INTO customer_segments (segment, quantity, sales, percent) VALUES
                                                                      ('VIP客户', 300, 4500000.00, '25.00'),
                                                                      ('高价值客户', 500, 3200000.00, '30.00'),
                                                                      ('常购客户', 1000, 2100000.00, '20.00'),
                                                                      ('潜在客户', 1500, 1600000.00, '15.00'),
                                                                      ('新客户', 2000, 1200000.00, '10.00'),
                                                                      ('VIP客户', 300, 4500000.00, '25.00'),
                                                                      ('高价值客户', 500, 3200000.00, '30.00'),
                                                                      ('常购客户', 1000, 2100000.00, '20.00'),
                                                                      ('潜在客户', 1500, 1600000.00, '15.00'),
                                                                      ('新客户', 2000, 1200000.00, '10.00'),
                                                                      ('VIP客户', 300, 4500000.00, '25.00'),
                                                                      ('高价值客户', 500, 3200000.00, '30.00'),
                                                                      ('常购客户', 1000, 2100000.00, '20.00'),
                                                                      ('潜在客户', 1500, 1600000.00, '15.00'),
                                                                      ('新客户', 2000, 1200000.00, '10.00'),
                                                                      ('VIP客户', 300, 4500000.00, '25.00'),
                                                                      ('高价值客户', 500, 3200000.00, '30.00'),
                                                                      ('常购客户', 1000, 2100000.00, '20.00');


-- 创建并插入产品库存状态数据
CREATE TABLE product_inventory (
                                   product VARCHAR(50),
                                   quantity INT,
                                   status VARCHAR(10)
);

INSERT INTO product_inventory (product, quantity, status) VALUES
                                                              ('大型烤乳猪', 1000, '充足'),
                                                              ('小型烤乳猪', 800, '紧张'),
                                                              ('中型烤乳猪', 500, '充足');

-- 创建并插入畅销产品数据
CREATE TABLE bestsellers (
                             `rank` INT,
                             product VARCHAR(50)
);

INSERT INTO bestsellers (`rank`, product) VALUES
                                              (1, '蜜汁烤乳猪'),
                                              (2, '小原味烤乳猪');

-- 创建并插入用户操作数据
CREATE TABLE user_acts (
                           action_name VARCHAR(255) NOT NULL PRIMARY KEY,
                           action_count INT NOT NULL
);

INSERT INTO user_acts (action_name, action_count) VALUES
                                                      ('访问量', 12232),
                                                      ('加入购物车', 70),
                                                      ('下单量', 2942),
                                                      ('付款量', 2752),
                                                      ('复购率', 2842),
                                                      ('新品付款数', 118),
                                                      ('新品下单数', 100);

-- 创建并插入用户获取数据
CREATE TABLE user_getdata (
                              metric_name VARCHAR(255) NOT NULL PRIMARY KEY,
                              metric_value VARCHAR(255) NOT NULL
);

INSERT INTO user_getdata (metric_name, metric_value) VALUES
                                                         ('当月销售额', '1234567'),
                                                         ('环比变化', '12'),
                                                         ('同比变化', '8'),
                                                         ('客户满意度', '75'),
                                                         ('常用支付方式', '微信支付、支付宝'),
                                                         ('产品质量', '4'),
                                                         ('配送速度', '3'),
                                                         ('客户服务', '4');

-- 创建并插入城市订单数据
CREATE TABLE city_orders (
                             id INT,
                             city VARCHAR(50),
                             order_count INT,
                             total_sales DECIMAL(10, 2),
                             avg_order_price DECIMAL(10, 2)
);

INSERT INTO city_orders (id, city, order_count, total_sales, avg_order_price) VALUES
                                                                                  (1, '广州', 205, 307500, 1500),
                                                                                  (2, '天河', 175, 262500, 1500),
                                                                                  (3, '从化', 155, 232500, 1500),
                                                                                  (4, '增城', 135, 202500, 1500),
                                                                                  (5, '天河', 185, 277500, 1500),
                                                                                  (6, '越秀', 145, 217500, 1500),
                                                                                  (7, '白云', 125, 187500, 1500),
                                                                                  (8, '番禺', 115, 172500, 1500),
                                                                                  (9, '荔湾', 105, 157500, 1500),
                                                                                  (10, '黄埔', 95, 142500, 1500),
                                                                                  (11, '海珠', 85, 127500, 1500),
                                                                                  (12, '东山', 75, 112500, 1500),
                                                                                  (13, '花都', 65, 97500, 1500),
                                                                                  (14, '南沙', 55, 82500, 1500),
                                                                                  (15, '越秀', 145, 217500, 1500),
                                                                                  (16, '白云', 125, 187500, 1500),
                                                                                  (17, '番禺', 115, 172500, 1500),
                                                                                  (18, '荔湾', 105, 157500, 1500),
                                                                                  (19, '黄埔', 95, 142500, 1500),
                                                                                  (20, '海珠', 85, 127500, 1500),
                                                                                  (21, '东山', 75, 112500, 1500),
                                                                                  (22, '花都', 65, 97500, 1500),
                                                                                  (23, '南沙', 55, 82500, 1500),
                                                                                  (24, '从化', 45, 67500, 1500),
                                                                                  (25, '荔湾', 35, 52500, 1500),
                                                                                  (26, '黄埔', 25, 37500, 1500),
                                                                                  (27, '海珠', 15, 22500, 1500),
                                                                                  (28, '东山', 5, 7500, 1500),
                                                                                  (29, '增城', 10, 15000, 1500);

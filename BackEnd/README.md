## -所用组件-
```bash
npm init -y
npm install express mysql2 swagger-jsdoc swagger-ui-express
```

## API运行
1、将sql文件导入到gtrp_dv数据库中

2、安装库
```bash
npm i
```
3、运行后端服务
```bash
node server
```

# API文档

## 获取每周销售数据
**请求方法：** GET  
**URL：** /weekly_sales  
**响应状态码：**

- `200`：成功获取每周销售数据
    - 响应体：
    ```json
    [
      { "day": "周一", "sales": 10000.00 },
      { "day": "周二", "sales": 12000.00 },
      { "day": "周三", "sales": 9000.00 },
      { "day": "周四", "sales": 11000.00 },
      { "day": "周五", "sales": 13000.00 },
      { "day": "周六", "sales": 15000.00 },
      { "day": "周日", "sales": 14000.00 }
    ]
    ```
- `500`：服务器错误

---

## 获取每月销售数据
**请求方法：** GET  
**URL：** /monthly_sales  
**响应状态码：**
- `200`：成功获取每月销售数据
    - 响应体：
    ```json
    [
      { "month": "1月", "sales": 1000000.00 },
      { "month": "2月", "sales": 1100000.00 },
      { "month": "3月", "sales": 1050000.00 },
      { "month": "4月", "sales": 1200000.00 },
      { "month": "5月", "sales": 1150000.00 },
      { "month": "6月", "sales": 1180000.00 },
      { "month": "7月", "sales": 1300000.00 },
      { "month": "8月", "sales": 1250000.00 },
      { "month": "9月", "sales": 1270000.00 },
      { "month": "10月", "sales": 1300000.00 },
      { "month": "11月", "sales": 1350000.00 },
      { "month": "12月", "sales": 1400000.00 }
    ]
    ```
- `500`：服务器错误

---

## 获取各类烤乳猪销售数据
**请求方法：** GET  
**URL：** /pig_sales  
**响应状态码：**
- `200`：成功获取各类烤乳猪销售数据
    - 响应体：
    ```json
    [
      { "flavor": "原味烤乳猪", "sales": 1500000.00 },
      { "flavor": "蜜汁烤乳猪", "sales": 1200000.00 },
      { "flavor": "香辣烤乳猪", "sales": 1000000.00 },
      { "flavor": "五香烤乳猪", "sales": 900000.00 },
      { "flavor": "孜然烤乳猪", "sales": 850000.00 },
      { "flavor": "咖喱烤乳猪", "sales": 800000.00 },
      { "flavor": "草药烤乳猪", "sales": 750000.00 },
      { "flavor": "脆皮烤乳猪", "sales": 700000.00 },
      { "flavor": "辣椒烤乳猪", "sales": 650000.00 },
      { "flavor": "黑椒烤乳猪", "sales": 600000.00 },
      { "flavor": "迷你烤乳猪", "sales": 550000.00 },
      { "flavor": "家庭装烤乳猪", "sales": 500000.00 },
      { "flavor": "豪华烤乳猪", "sales": 450000.00 }
    ]
    ```
- `500`：服务器错误

---

## 获取各类烤乳猪库存数量数据
**请求方法：** GET  
**URL：** /pig_inventory  
**响应状态码：**
- `200`：成功获取各类烤乳猪库存数量数据
    - 响应体：
    ```json
    [
      { "flavor": "原味烤乳猪", "quantity": 490 },
      { "flavor": "蜜汁烤乳猪", "quantity": 450 },
      { "flavor": "香辣烤乳猪", "quantity": 400 },
      { "flavor": "五香烤乳猪", "quantity": 350 },
      { "flavor": "孜然烤乳猪", "quantity": 300 },
      { "flavor": "咖喱烤乳猪", "quantity": 280 },
      { "flavor": "草药烤乳猪", "quantity": 260 },
      { "flavor": "脆皮烤乳猪", "quantity": 240 },
      { "flavor": "辣椒烤乳猪", "quantity": 220 },
      { "flavor": "黑椒烤乳猪", "quantity": 200 },
      { "flavor": "迷你烤乳猪", "quantity": 180 },
      { "flavor": "家庭装烤乳猪", "quantity": 160 },
      { "flavor": "豪华烤乳猪", "quantity": 140 }
    ]
    ```
- `500`：服务器错误

---

## 获取销售渠道分析数据
**请求方法：** GET  
**URL：** /sales_channels  
**响应状态码：**
- `200`：成功获取销售渠道分析数据
    - 响应体：
    ```json
    [
      { "channel": "线上", "sales": 612345.00 },
      { "channel": "线下", "sales": 387654.00 },
      { "channel": "第三方平台", "sales": 256789.00 },
      { "channel": "社交媒体", "sales": 143987.00 },
      { "channel": "批发渠道", "sales": 342225.00 }
    ]
    ```
- `500`：服务器错误

---

## 获取客户分类（RFM分析）数据
**请求方法：** GET  
**URL：** /customer_segments  
**响应状态码：**
- `200`：成功获取客户分类数据
    - 响应体：
    ```json
    [
      { "segment": "高价值客户", "quantity": 500, "sales": 3200000.00, "percent": 30.00 },
      { "segment": "常购客户", "quantity": 1000, "sales": 2100000.00, "percent": 20.00 },
      { "segment": "潜在客户", "quantity": 1500, "sales": 1600000.00, "percent": 15.00 },
      { "segment": "新客户", "quantity": 2000, "sales": 1200000.00, "percent": 10.00 },
      { "segment": "VIP客户", "quantity": 300, "sales": 4500000.00, "percent": 25.00 }
    ]
    ```
- `500`：服务器错误

---

## 获取产品库存状态数据
**请求方法：** GET  
**URL：** /product_inventory  
**响应状态码：**
- `200`：成功获取产品库存状态数据
    - 响应体：
    ```json
    [
      { "product": "大型烤乳猪", "quantity": 1000, "status": "充足" },
      { "product": "小型烤乳猪", "quantity": 800, "status": "紧张" },
      { "product": "中型烤乳猪", "quantity": 500, "status": "充足" }
    ]
    ```
- `500`：服务器错误

---

## 获取畅销产品数据
**请求方法：** GET  
**URL：** /bestsellers  
**响应状态码：**
- `200`：成功获取畅销产品数据
    - 响应体：
    ```json
    [
      { "rank": 1, "product": "蜜汁烤乳猪" },
      { "rank": 2, "product": "小原味烤乳猪" }
    ]
    ```
- `500`：服务器错误

---

## 获取用户操作数据
**请求方法：** GET  
**URL：** /user_acts  
**响应状态码：**
- `200`：成功获取用户操作数据

## 获取其他数据
/user_getdata
```json
[
  {
    "metric_name": "产品质量",
    "metric_value": "4"
  },
  {
    "metric_name": "同比变化",
    "metric_value": "8"
  },
  {
    "metric_name": "客户服务",
    "metric_value": "4"
  },
  {
    "metric_name": "客户满意度",
    "metric_value": "75"
  },
  {
    "metric_name": "常用支付方式",
    "metric_value": "微信支付、支付宝"
  },
  {
    "metric_name": "当月销售额",
    "metric_value": "1234567"
  },
  {
    "metric_name": "环比变化",
    "metric_value": "12"
  },
  {
    "metric_name": "配送速度",
    "metric_value": "3"
  }
]
```

const express = require('express');
const app = express();
const port = 5692;  // 设置端口

const swaggerUi = require('swagger-ui-express');
const swaggerSpec = require('./swagger/swaggerOptions');

const weeklySalesRouter = require('./router/weekly_sales');
const monthlySalesRouter = require('./router/monthly_sales');
const pigSalesRouter = require('./router/pig_sales');
const pigInventoryRouter = require('./router/pig_inventory');
const salesChannelsRouter = require('./router/sales_channels');
const customerSegmentsRouter = require('./router/customer_segments');
const productInventoryRouter = require('./router/product_inventory');
const bestsellersRouter = require('./router/bestsellers');
const userActsRouter = require('./router/user_acts');
const userGetdataRouter = require('./router/user_getdata');
const cityOrdersRouter = require('./router/city_orders');

app.use('/weekly_sales', weeklySalesRouter);
app.use('/monthly_sales', monthlySalesRouter);
app.use('/pig_sales', pigSalesRouter);
app.use('/pig_inventory', pigInventoryRouter);
app.use('/sales_channels', salesChannelsRouter);
app.use('/customer_segments', customerSegmentsRouter);
app.use('/product_inventory', productInventoryRouter);
app.use('/bestsellers', bestsellersRouter);
app.use('/user_acts', userActsRouter);
app.use('/user_getdata', userGetdataRouter);
app.use('/city_orders', cityOrdersRouter);

// Swagger API 文档路由
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

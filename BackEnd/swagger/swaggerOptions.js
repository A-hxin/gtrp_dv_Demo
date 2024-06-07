// swagger/swaggerOptions.js
const swaggerJSDoc = require('swagger-jsdoc');

const options = {
    definition: {
        openapi: '3.0.0',
        info: {
            title: 'GTRP API',
            version: '1.0.0',
            description: 'API documentation for GTRP application',
        },
        servers: [
            {
                url: 'http://localhost:3000',
            },
        ],
    },
    apis: ['./router/monthly_sales/index.js'], // 指定路由文件的位置
};

const swaggerSpec = swaggerJSDoc(options);

module.exports = swaggerSpec;

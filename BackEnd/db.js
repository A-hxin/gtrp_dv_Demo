const mysql = require('mysql2');

const pool = mysql.createPool({
    host: '192.168.10.140',      // ip地址
    user: 'gtrp_dv',           // 用户名
    password: '8iNwjyPBncAtsG4n',  // 密码
    database: 'gtrp_dv'     // 数据库
});

module.exports = pool.promise();

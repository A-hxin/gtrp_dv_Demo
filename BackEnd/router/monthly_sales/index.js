const express = require('express');
const router = express.Router();
const db = require('../../db');

/**
 * @swagger
 * /monthly_sales:
 *   get:
 *     summary: 获取每月销售数据
 *     responses:
 *       200:
 *         description: 成功获取每月销售数据
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   month:
 *                     type: string
 *                     example: '1月'
 *                   sales:
 *                     type: number
 *                     format: float
 *                     example: 1000000.00
 *       500:
 *         description: 服务器错误
 */
router.get('/', async (req, res) => {
    try {
        const [rows, fields] = await db.query('SELECT * FROM monthly_sales');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;

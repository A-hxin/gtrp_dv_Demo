const express = require('express');
const router = express.Router();
const db = require('../../db');

/**
 * @swagger
 * /weekly_sales:
 *   get:
 *     summary: 获取每周销售数据
 *     responses:
 *       200:
 *         description: 成功获取每周销售数据
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   day:
 *                     type: string
 *                     example: '周一'
 *                   sales:
 *                     type: number
 *                     format: float
 *                     example: 10000.00
 *       500:
 *         description: 服务器错误
 */
router.get('/', async (req, res) => {
    try {
        const [rows, fields] = await db.query('SELECT * FROM weekly_sales');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;

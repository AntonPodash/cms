const db = require('../db');

class clientController {
    async addClient(req, res) {
        const {first_name, last_name, phone} = req.body;
        const newClient = await db.query(`INSERT INTO clients (first_name, last_name, phone) values ($1, $2, $3) RETURNING *`, [first_name, last_name, phone]);
        
        res.json(newClient.rows[0]);
    };

    async getClients(req, res) {
        
    };

    async findClient(req, res) {
        
    };

    async deleteClient(req, res) {
        
    };
};

module.exports = new clientController();
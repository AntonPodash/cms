const Pool = require('pg').Pool;

const pool = new Pool({
    user: "postgres",
    password: "root",
    host: "localhost",
    port: 5532,
    database: "cms"
});

module.exports = pool;
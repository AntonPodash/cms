const express = require('express');
const clientRouter = require('./routes/client.routes');
const PORT = 8080;

const app = express();

app.use(express.json());
app.use('/api', clientRouter);

app.listen(PORT, () => console.log('Server started'));
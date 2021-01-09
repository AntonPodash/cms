const Router = require('express');
const router = new Router();
const clientController = require('../controllers/client.controller');

router.post('/client', clientController.addClient);
router.get('/client', clientController.getClients);
router.get('/client/:id', clientController.findClient);
router.delete('/client/:id', clientController.deleteClient);

module.exports = router;
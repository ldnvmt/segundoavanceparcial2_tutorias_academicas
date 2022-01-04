const express = require('express');
const router = express.Router();

const customerController = require('../controllers/customerController');

router.get('/', customerController.list);
router.post('/add', customerController.save);
router.get('/delete/:id_tutoria', customerController.delete);

router.get('/update/:id_tutoria', customerController.edit);
router.post('/update/:id_tutoria', customerController.update);


module.exports = router;
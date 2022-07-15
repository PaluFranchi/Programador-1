var express = require('express');
var router = express.Router();
var recetarioModel = require('../../models/recetarioModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('admin/novedades',{
      layout:'admin/layout',
      usuario: req.session.nombre
  });
});

module.exports = router;

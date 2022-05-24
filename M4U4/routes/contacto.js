var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacto');
});

router.post('/', async(req, res, next) => {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var mensaje = req.body.mensaje;

  console.log(req.body)

  var obj = {
    to: 'palomafranchimont@gmail.com',
    subject: 'Contacto desde el recetario',
    html: nombre + " " + apellido + " se contacto a traves y quiere mas informacion a este correo: " + email + ". Además, hizo el siguiente comentario: " + mensaje,
  }


  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  });

  var info = await transporter.sendMail(obj);

  res.render('contacto', {
    message: 'Mensaje enviado correctamente'
  });

});

module.exports = router;


var express = require("express");
var router = express.Router();
var productosModel = require("./../models/productsModel");
var nodemailer = require("nodemailer");

router.get('/productos', async function (req, res, next) {

   var productos = await productosModel.getProductos();

   res.json(productos);
});


router.post("/contacto", async (req, res) => {
   const email = {
      to: "matiasafianini@yahoo.com",
      subject: "Asunto - DecoExp",
      html: `${req.body.nombre} se contactó a través del sitio web y quiere más info, enviar la correspondiente al siguiente correo: ${req.body.email} 
      <br>
      El contenido del mensaje es el siguiente ${req.body.mensaje} 
      <br>
      Y su telefono es el siguiente: ${req.body.telefono}`
   }

   // Fin email 

   const transport = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
         user: process.env.SMTP_USER,
         pass: process.env.SMTP_PASS
      }
   });

   await transport.sendMail(email);

   // Respuesta
   res.status(201).json({
      error: false,
      message: "Mensaje enviado correctamente"
   });
   
});

module.exports = router;


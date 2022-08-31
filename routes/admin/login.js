var express = require('express');
var router = express.Router();
var userModel = require("./../../models/userModel")


/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('admin/login', {
    layout: "admin/layout",
    
  });
});

router.post("/", async (req, res, next) => {
  try {
    let usuario = req.body.usuario;
    let password = req.body.password;

    var datos = await userModel.getUserData(usuario, password);

    if (datos != undefined) {
      req.session.id_usuario = datos.id;
      req.session.nombre = datos.usuario;
      res.redirect("/admin/panel");
      
      
    } else {
      res.render("admin/login", {
        layout: "admin/layout",
        error: true
      });
    }
  } catch (error) {
    console.log(error);
  }
})


module.exports = router;
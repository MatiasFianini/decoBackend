var express = require('express');
var router = express.Router();
var productosModel = require("../../models/productsModel");


/* GET panel (vista de productos y plantilla)*/
router.get('/', async function (req, res, next) {

  var productos = await productosModel.getProductos();

  res.render('admin/panel', {
    layout: "admin/layout",
    persona: req.session.nombre,
    productos
  });
});

// SECCIÓN AGREGAR
// Enrutamiento pagina agg
router.get("/agregar", (req, res) => {
  res.render("admin/agregar", {
    layout: "admin/layout",
    persona: req.session.nombre
  });
})

// Recibir metodo post de agregar 
router.post("/agregar", async (req, res, next) => {
  try {
    if (req.body.nombre != "" && req.body.descripcion != "" && req.body.image != "" && req.body.precio != "") {
      await productosModel.aggProducto(req.body);
      res.redirect("/admin/panel");
    } else {
      res.render("admin/panel/agregar", {
        layout: "admin/layout",
        error: true,
        message: "Ingresar todos los campos correspondientes"
      });
    }
  } catch (error) {
    console.log(error);
    res.render("admin/panel/agregar", {
      layout: "admin/layout",
      error: true,
      message: "No se pudo agregar el producto"
    });
  }
})


// SECCION ELIMINAR
router.get("/eliminar/:id", async (req, res) => {
  var id = req.params.id;

  await productosModel.deleteProducto(id);
  res.redirect("/admin/panel/");
})

// Obtener producto by id - SECCION MODIFICAR

router.get("/modificar/:id", async (req, res) => {
  let id = req.params.id;
  let producto = await productosModel.getProductoById(id);
  res.render("admin/modificar", {
    layout: "admin/layout",
    persona: req.session.nombre,
    producto
  });
})

// Modificar producto by id - Seccion modificar

router.post("/modificar", async (req, res, next) => {
  try {
    // OBJETO CON LOS CAMPOS MODIFICADOS  
    let obj = {
      nombre: req.body.nombre,
      descripcion: req.body.descripcion,
      image: req.body.image,
      precio: req.body.precio
    }
    
    await productosModel.modificarProductoById(obj, req.body.id);
    
    res.redirect("/admin/panel/");

  } catch (error) { 
    console.log(error) 
   
    res.render("admin/modificar", {
      layout: "admin/layout",
      error: true,
      persona: req.session.nombre,
      message: "No se pudo modificar el producto"
      
    });

    
  }
})

module.exports = router;
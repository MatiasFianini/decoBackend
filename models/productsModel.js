var pool = require("./db");


// Obtener productos
async function getProductos() {
    var query = "select * from productos";
    let rows = await pool.query(query);
    return rows;
}

// Agregar productos
async function aggProducto(obj) {
    try {
        var query = "insert into productos set ?"
        let rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error

    }
}

// Borrar productos
async function deleteProducto(id) {
    try {
        var query = "delete from productos where id = ?";
        let rows = await pool.query(query, [id]);
        return rows;
    } catch (error) {
        console.log(error)
    }

}



// SECCIÓN MODIFICAR
// Traer info del producto a modificar via id

async function getProductoById(id) {
    var query = "select * from productos where id = ?";
    var rows = await pool.query(query, [id]);
    return rows[0];
}

// Modificar el producto 

async function modificarProductoById(obj, id) {
    try {
        var query = "update productos set ? where id = ?";
        var rows = await pool.query(query, [obj, id]);
        return rows;

    } catch (error) {
        console.log(error);
        throw error;
    }
}


module.exports = { getProductos, aggProducto, deleteProducto, getProductoById, modificarProductoById };
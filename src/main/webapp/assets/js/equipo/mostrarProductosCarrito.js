
let productosGuardados;
let tbody;

async function mostarCarrito() {

    tbody = document.getElementById("cuerpoTabla");

    const peticion = new Peticion(DATOS.URL.obtenerCarrito, null);
    let json = await peticion.realizarGET();
    const productos = json.data;
    productosGuardados = new CarritoDeCompras(productos);
    cambiarCartaProducto(productosGuardados.obtener(0).id);
    agregarFilasEnCarrito();
}

function agregarFilasEnCarrito() {

    const productos = productosGuardados.ListaProductos;

    productos.forEach(producto => {
        producto.cantidad = 1
        tbody.innerHTML = tbody.innerHTML + `
        <th scope="col" onclick="cambiarCartaProducto(${producto.id})" style="cursor:pointer;">${producto.Nombre}</th>
        <td><button class="btn btn-primary" onclick="cambiarCantidad(${producto.id}, 1)">+</button></td>
        <td id="${producto.id}">${producto.cantidad}</td>
        <td><button class="btn btn-warning" onclick="cambiarCantidad(${producto.id}, -1)" >-</button></td>
        <td><button class="btn btn-warning" onclick="eliminarProducto(${producto.id})"> <i class="fa fa-trash" aria-hidden="true"></i> </button></td>
        `
    })


}

function eliminarProducto(id) {

    productosGuardados.eliminarProducto(id);
    eliminarProductoCarritoServer(id);
    reiniciarCarrito();

}

function reiniciarCarrito() {
    const tbody = document.getElementById("cuerpoTabla");
    tbody.innerHTML = "";
    agregarFilasEnCarrito();
}

function cambiarCantidad(id, cantidad) {

    const producto = productosGuardados.obtenerProducto(id);
    
    if (producto.cantidad === 1 && cantidad < 0) {
        alert("No puede pedir menos a 1");
        return;
    }
    
    producto.cantidad += cantidad;

    let total = document.getElementById(id);
    total.innerHTML = producto.cantidad;

}

function cambiarCartaProducto(idProducto) {

    const informacionProducto = document.getElementById("informacionProducto");
    const producto = productosGuardados.obtenerProducto(idProducto);
    
    informacionProducto.innerHTML = `
                <img src="${producto.Img}" class="img-tumbnail rounded img-fluid" alt="">
                <p>Producto: ${producto.Nombre}</p>
                <p>Precio: ${producto.precio}</p>
                <p>Descripcion: ${producto.Descripcion}</p>
    `

}

async function generarCarrito() {

    let res = await fetch(DATOS.URL.consultarCarrito, {
        method: "GET"
    })

    let json = await res.json();
    generarCarrito(json.data.productosGuardados);
}

async function eliminarProductoCarritoServer(id) {

    await fetch(DATOS.URL.eliminarCarritoProducto, {
        method: "POST",
        body: new URLSearchParams({idProducto: id}),
        headers: {
            "Content-Type":  "application/x-www-form-urlencoded"
        }
    })

}

document.addEventListener("DOMContentLoaded", mostarCarrito);
let divPadre;

const crearFila = (datos) => {

    if (datos.producto.Descripcion === undefined) {
        datos.producto.Descripcion = "Sin espesificar";
    }

    const row = `
        <th scope="row"> ${datos.producto.id} </th>
        <td>${datos.producto.Nombre}</td>
        <td>${datos.producto.precio}</td>
        <td>${datos.stock}</td>
        <td>${datos.producto.Descripcion}</td>
    `

    divPadre.innerHTML = divPadre.innerHTML + row;

    console.log(datos.producto);

}

const obtenerDatosTabla = async () => {
    const peticiones = new Peticion(DATOS.URL.obtenerInventario);

    let res = await peticiones.realizarGET();


    res.data.forEach( crearFila );

}

document.addEventListener("DOMContentLoaded", () => {
    obtenerDatosTabla();
    divPadre = document.getElementById("cuerpoTabla");
})
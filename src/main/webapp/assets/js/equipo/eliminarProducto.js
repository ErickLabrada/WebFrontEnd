

const eliminarProducto = async (datos) => {

    const idProducto = document.getElementById("idProducto").value

    const peticion = new Peticion(DATOS.URL.eliminarProducto, {
        idProducto: idProducto
    });

    let data = await peticion.enviarPeticion();

    alert(data.data);

}

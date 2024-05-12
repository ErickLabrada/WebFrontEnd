async function agregarProducto(idProducto) {

    let res = await fetch(DATOS.URL.agregarAlCarrito, {
        method: "POST",
        body: new URLSearchParams({id:idProducto})
    });

    let json = await res.json();

    alert(json.data);


}
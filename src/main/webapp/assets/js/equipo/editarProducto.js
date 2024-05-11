
const form = document.getElementById("form");

form.addEventListener("submit", async (evnt) => {

    evnt.preventDefault();

    const formData = new FormData(form);

    const peticion = new Peticion(
        DATOS.URL.actualizarProducto, formData
    );

    let data = await peticion.realizarPeticion()

    alert(data.data);

})


let uri = "/tiendita/CrearUsuario"

function obtenerDatosCampo () {

    let pass = document.getElementById('pass').value;
    let nombre = document.getElementById('Nombre').value;

    return {nombre, pass}

}

async function enviarPeticion() {

    const {nombre, pass} = obtenerDatosCampo();

    let datos = {
        "usuario": nombre,
        "pass": pass
    }

    let res = await fetch(uri, {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        data: JSON.stringify(datos),
    })

    let data = await res.json();

    console.log(data);

}

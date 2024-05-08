
class Peticion {

    constructor(uri, datos) {
        this.uri = uri;
        this.datos = datos;
    }

    async enviarPeticion() {

        console.log(new URLSearchParams(this.datos).toString());

        let payloadSize = new URLSearchParams(this.datos).toString().length;

        console.log(payloadSize);

        let res = await fetch(this.uri, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams(this.datos).toString(),
        })

        let data = await res.json();

        return data;
    }

}

class Peticion {

    constructor(uri, datos) {
        this.uri = uri;
        this.datos = datos;
    }

    async enviarPeticion(headers) {

        let res = await fetch(this.uri, {
            method: "POST",
            headers: headers || {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams(this.datos).toString(),
        })

        let data = await res.json();

        return data;
    }

    async realizarGET() {

        let res = await fetch(this.uri, {
            method: "GET"
        });

        return await res.json();
    }

    async realizarPeticion() {
        let res = await fetch(this.uri, {
            method: "POST",
            body: this.datos,
        })

        let data = await res.json();

        return data;
    }

}
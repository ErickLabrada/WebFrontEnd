

class CarritoDeCompras {
    
    constructor(ListaProductos) {
        this.ListaProductos = ListaProductos;
    }

    obtenerProducto(id) {

        for (const producto in this.ListaProductos) {
            
            if (this.ListaProductos[producto].id === id) {
                return this.ListaProductos[producto];
            }

        }

        return null;
    }

    obtener(pos) {
        return this.ListaProductos[pos];
    }

    eliminarProducto(id) {

        let arrayProvicional = []

        for( let i = 0; i < this.ListaProductos.length; i++ ) {

            if(this.ListaProductos[i].id === id) {
                continue;
            }

            arrayProvicional.push(this.ListaProductos[i]);

        }

        this.ListaProductos = arrayProvicional;
    }

    async enviarCompra() {

        console.log(this.ListaProductos);

    }

}
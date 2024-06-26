
const url = DATOS.URL.obtenerProductos;
const contenedorProductos = document.getElementById("contenedorProductos");

const createCards = (producto) => {

    const divPadre = document.createElement("div");
    divPadre.classList.add("cold-md-4");
    
    const divCard = document.createElement("div");
    divCard.classList.add("card");
    divCard.classList.add("mb-4");
    divCard.classList.add("product-wap");
    divCard.classList.add("rounded-0");
    console.log(producto)
    divCard.innerHTML = `<div class="card mb-4 product-wap rounded-0>
            <div class="card rounded-0">
                <img class="card-img rounded-0 img-fluid" src="${producto.Img}">                                
                    <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                    <ul class="list-unstyled">
                        <li><button class="btn btn-success text-white mt-2" onclick="agregarProducto(${producto.id})"><i class="fas fa-cart-plus"></i></button></li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <a href="shop-single.html" class="h3 text-decoration-none">${producto.Nombre}</a>                                
                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                    <li class="pt-2"> 
                        <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span> 
                        <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span> 
                        <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span> 
                        <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span> 
                        <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span> 
                    </li>
                </ul>
                <ul class="list-unstyled d-flex justify-content-center mb-1"> 
                    <li>
                        <i class="text-warning fa fa-star"></i> 
                        <i class="text-warning fa fa-star"></i> 
                        <i class="text-warning fa fa-star"></i> 
                        <i class="text-warning fa fa-star"></i> 
                        <i class="text-warning fa fa-star"></i> 
                    </li>
                </ul>
                <p class="text-center mb-0">$${producto.precio}</p>                            
            </div>
        </div>`
    contenedorProductos.appendChild(divCard);
    
}

const obtenerProductos = async () => {

    const res = await fetch(url, {method: 'GET'});

    const json = await res.json();

    json.data.forEach(element => {
        createCards(element);
    });

};

document.addEventListener('DOMContentLoaded', obtenerProductos);

let frutas = ["pomelo", "pera", "manzana", "naranja", "mandarina"];

let frutasLength = [];

for (let i = 0; i < frutas.length; i++) { //Numero de letras por pieza de fruta
    let fruta = frutas[i];
    for (let j = 0; j <= fruta.length; j++) {
        frutasLength[i] = j
    }    
}

console.log(frutasLength); // [6, 4, 7, 7, 9]
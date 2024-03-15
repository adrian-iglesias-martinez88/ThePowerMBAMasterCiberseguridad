// Implementa la función denominada sumAll que toma un array de números como argumento y devuelve la suma de todos los números de la matriz.
const numeros = [1, 2, 3, 5, 45, 37, 58];
function sumAll(param) {
  let sum = 0;

  for (let z = 0; z < param.length; z++) {
    const numeros = param[z];
    sum += numeros;
  }

  return sum;
}
console.log(sumAll(numeros));
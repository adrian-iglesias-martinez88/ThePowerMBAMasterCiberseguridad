// Calcular un promedio (media)
const numeros = [12, 21, 38, 5, 45, 37, 6];
function average(param) {
  let sum = 0;

  for (let y = 0; y < param.length; y++) {
    const numeros = param[y];
    sum += numeros;
  }
  return sum / param.length;
}

console.log(average(numeros));
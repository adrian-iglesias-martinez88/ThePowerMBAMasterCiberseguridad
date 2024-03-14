const calcularFactorial = (n) => {
    // Caso base: Si n es igual a 0, el factorial es 1.
    if (n === 0) {
      return 1;
    }
    // Caso recursivo: Llamamos a la función con un valor más pequeño y multiplicamos por n.
    else {
      return n * calcularFactorial(n - 1);
    }
  };
  
  // Ejemplo de uso:
  const numero = 5;
  const factorial = calcularFactorial(numero);
  console.log(`El factorial de ${numero} es ${factorial}`);
  
  
  
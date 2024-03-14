let age = 18;

if (age > 18) {
    // este código no se ejecuta porque la condición no se cumple
    console.log("Eres mayor de edad");
} else if (age === 18) {
    // por aquí pasa el código y se lee el log
    console.log("Tienes 18 años");
} else {
    // este código no se ejecuta porque se cumplió la condición de arriba
    console.log("Eres menor de edad");
}
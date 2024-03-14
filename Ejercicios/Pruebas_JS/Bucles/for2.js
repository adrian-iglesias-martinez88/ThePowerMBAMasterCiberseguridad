const user = {
    email: "user@user.com",
    password: "odsfofjowf"
}

// Object.keys me devolverá un array con todas las claves
// del objeto que le mande
const allTheKeysOfMyObject = Object.keys(user);
// allTheKeysOfMyObject = ["email", "password"];

// recorremos ese array de claves con el bucle
for (let i = 0; i < allTheKeysOfMyObject.length; i++) {
    
    // nos guardamos cada clave en cada vuelta
    const key = allTheKeysOfMyObject[i];

    // en vez de usar . para acceder a la propiedad de un objeto
    // usamos los corchetes para poder obtener una propiedad 
    // de nuestro objeto con la variable key
    // que en cada vuelta del bucle será una clave del objeto
    console.log(user[key]);
    
}
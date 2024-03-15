// Usa un bucle para crear 3 arrays de peliculas filtrados por categorias. Pelicula pequeña, menos de 100 minutos, pelicula mediana, mas de 100 minutos y menos de 200 y pelicula grande, mas de 200 minutos. Imprime cada array en por consola.
const movies = [
  { name: "Titan A.E.", durationInMinutes: 130 },
  { name: "Nightmare before Christmas", durationInMinutes: 225 },
  { name: "Inception", durationInMinutes: 165 },
  { name: "The Lord of the Rings", durationInMinutes: 967 },
  { name: "Star Wars: A New Hope", durationInMinutes: 214 },
  { name: "Terminator", durationInMinutes: 140 },
  { name: "Cars", durationInMinutes: 98 },
  { name: "Toy Story", durationInMinutes: 50 },
];
const short = [];
const medium = [];
const long = [];

for (let x = 0; x < movies.length; x++) {
    if (movies[x].durationInMinutes <= 99) {
        short.push(movies[x]);
    } else if (movies[x].durationInMinutes >= 201) {
        long.push(movies[x]);
    } else {
        medium.push(movies[x]);
    }    
}

console.log(short);
console.log(medium);
console.log(long);
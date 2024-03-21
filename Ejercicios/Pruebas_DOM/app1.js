let box2 = document.getElementById("box2");
box2.insertAdjacentHTML("beforebegin", "<div><p>un párrafo nuevo.</p></div>");

// beforebegin - El nuevo HTML es insertado justo antes del elemento, a la misma altura (hermano);
// afterbegin - El nuevo HTML se inserta dentro del elemento, antes del primer hijo.
// beforeend - El nuevo HTML se inserta dentro del elemento, después del último hijo
// afterend - El nuevo HTML es insertado justo después del elemento, a la misma altura (hermano)
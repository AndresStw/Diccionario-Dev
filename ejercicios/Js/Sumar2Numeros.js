/// Author: AndresStw

// Algoritmo: suma de dos números

/// Este script solo corre desde el navegador

// Datos
let Numero1, Numero2, Suma; // Declaramos las variables sin asignarles un valor inicial.

// Entrada
Numero1 = Number(prompt("Ingrese el primer número:")); // Pedimos el número y convertimos la entrada a tipo Number.

Numero2 = Number(prompt("Ingrese el segundo número:")); // Pedimos el segundo número y convertimos la entrada a Tipo Number.

// Proceso
Suma = Numero1 + Numero2;

// Salida
console.log(
  "La suma de: " + Numero1 + " + " + Numero2 + " es igual a: " + Suma,
); // Mostramos el resultado en la consola (WEB) .

alert("La suma de: " + Numero1 + " + " + Numero2 + " es igual a: " + Suma); // Mostramos el resultado en una ventana emergente(WEB).

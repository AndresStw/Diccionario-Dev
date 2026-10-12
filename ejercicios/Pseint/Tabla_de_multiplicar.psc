// Author: AndresStw
Algoritmo Tabla_de_multiplicar
	// Enunciado: Solicita un numero y muestra su tabla de multiplicar del 1 al 10.
	// Datos
	// Declarar variables
	Definir tabla Como Entero;
	Definir i Como Entero;
	// Entradas
	// Solicitar información al usuario
	Escribir 'Ingrese la tabla que desea mostrar'; // Variable i es un contador
	Leer tabla;
	// Procesos
	// Resolver el problema
	Para i<-1 Hasta 10 Hacer
		Escribir tabla, ' X ', i, ' = ', (tabla*i); // Primer ciclo for
	FinPara
	// Salidas
	// Mostrar resultados
FinAlgoritmo

	// Author: AndresStw
	Algoritmo Tabla_de_multiplicar
		// Enunciado: Solicita un número y muestra su tabla de multiplicar del 1 al 10.
		// Datos
		// Declarar variables
		Definir tabla Como Entero;
		Definir i Como Entero;//Variable i es un contador
		
		// Entradas
		// Solicitar informaci?n al usuario
		Escribir "Ingrese la tabla que desea mostrar";
		Leer tabla;
		
		// Procesos
		// Resolver el problema
		
		para i = 1 hasta 10 Hacer//Primer ciclo for 
			Escribir tabla, " X ", i ,  " = ", (tabla * i);
		FinPara
		
		// Salidas
		// Mostrar resultados
	
		
FinAlgoritmo

// Nota: Acá vemos la primera aparición de la estructura "Para" (o ciclo for). 
// ¿Para qué sirve? Básicamente es nuestro asistente infatigable: automatiza 
// tareas repetitivas para no tener que escribir 10 líneas de código con las 
// operaciones manuales. 
// 
// Desglosándolo por partes:
// 1. "i = 1 hasta 10": Creamos un contador llamado 'i' que arranca en 1 
//    y avanza pasito a pasito hasta llegar a 10. (En cada vuelta, PSeInt 
//    le suma automáticamente 1 a 'i').

// 2. "Hacer": Es la orden de ejecución. Todo lo que esté entre 'Para' y 'FinPara' 
//    se va a repetir exactamente 10 veces, cambiando el valor de 'i' en 
//    cada iteración para darnos la tabla completa sin rompernos la cabeza.

	

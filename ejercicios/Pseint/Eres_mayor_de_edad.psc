// Author: AndresStw

Algoritmo Eres_mayor_de_edad
	// Enunciado: Solicita la edad de una persona y determina si es mayor o menor de edad.
	
	// Datos
	// Declarar variables
	Definir Edad Como Entero;
	
	// Entradas
	// Solicitar informacion al usuario
	Escribir 'Y ahora dime que edad tienes?: ';
	Leer Edad;
	
	// Procesos
	// Resolver el problema
	Si Edad >= 18 Entonces
		Escribir 'Ya estas viejito...Eres mayor de edad. ';
	SiNo
		Si Edad >= 15 Y Edad <= 17 Entonces
			Escribir 'Te falta poco para ser mayor de edad. '; // Extra...
		SiNo
			Escribir 'Lo siento eres menor de edad.';
		FinSi
	FinSi
	
	// Salidas
	// Mostrar resultados
	Escribir 'Tu edad es ', Edad;
	
FinAlgoritmo

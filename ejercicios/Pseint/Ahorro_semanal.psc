// Author: AndresStw
Algoritmo Ahorro_semanal
	// Enunciado: Pregunta cuánto dinero ahorras cada semana y durante cuántas semanas. Calcula el ahorro total.
	
	// Datos
	// Declarar variables
	Definir ahorroSemanal Como Real;
	Definir semanas Como Entero;
	Definir i Como Entero;
	Definir ahorroTotal Como Real;
	
	// Entradas
	// Solicitar informacion al usuario
	Escribir 'Cuanto dinero ahorras cada semana? : ';
	Leer ahorroSemanal;
	Escribir 'Durantes cuantas semanas ahorras? : ';
	Leer semanas;
	
	// Procesos
	// Resolver el problema
	ahorroTotal <- 0;// Iniciamos el contador
	
	Para i<-1 Hasta semanas Hacer //Ciclo for 
		ahorroTotal <- ahorroTotal+ahorroSemanal;
		Escribir 'En la semana ', i, ' ahorraste un total de ', ahorroTotal;
	FinPara
	
	// Salidas
	// Mostrar resultados
	Escribir 'El total de tus ahorros es de: ', ahorroTotal;
	
FinAlgoritmo

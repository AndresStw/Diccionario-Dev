// Author: AndresStw
Algoritmo Adivina_el_numero
	// Enunciado: Define un n�mero secreto y pide al usuario que intente adivinarlo. Indica si su respuesta es demasiado alta, demasiado baja o correcta. Repite hasta que acierte.
	// Datos
	// Declarar variables
	Definir numeroSecreto Como Entero;
	Definir intento Como Entero;
	numeroSecreto <- 12;
	// Entradas
	// Solicitar informacion al usuario
	Repetir // Defino el numero secreto
		Escribir 'Intenta adivinar el numero secreto: '; // Esto inicia el ciclo hasta que mientras que.
		Leer intento;
		// Procesos
		// Resolver el problema
		Si intento>numeroSecreto Entonces
			Escribir 'Demasiado alto, intenta con un numero mas bajo. ';
		SiNo
			Si intento<numeroSecreto Entonces
				Escribir 'Demasiado bajo, Intenta un numero mas alto. ';
			SiNo
				Escribir 'Adivinaste el numero. ';
			FinSi
		FinSi
	Hasta Que intento=numeroSecreto
	// Salidas
	// Mostrar resultados
	Escribir 'El numero secreto es.', numeroSecreto;
FinAlgoritmo

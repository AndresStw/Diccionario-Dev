// Author: AndresStw
Algoritmo Me_levanto_o_sigo_durmiendo
	// Enunciado: Pregunta si tienes clases hoy (`S/N`) y si ya son las 6:00 a. m. Decide si debes levantarte o puedes seguir durmiendo.
	// Datos
	// Declarar variables
	Definir tengoClases Como Cadena;
	Definir horaLevantarse Como Cadena;
	// Entradas
	// Solicitar informaci?n al usuario
	Escribir 'A que horas suena tu alarma ?';
	Leer horaLevantarse;
	Escribir 'Tengo Clases hoy? (S/N) ';
	Leer tengoClases;
	// Procesos
	// Resolver el problema
	Si horaLevantarse=' 6:00 AM ' O horaLevantarse='6:00 am' Entonces
		Si tengoClases='S' O tengoClases='s' Entonces
			Escribir 'Momento de levantarse. ';
			Escribir 'Una ducha. ';
			Escribir 'Y termino de alistarme para ir a estudiar.';
		SiNo
			Escribir 'No tengo clases sigamos durmiendo. ';
			Escribir 'Apaga la alarma. ';
		FinSi
	SiNo
		Escribir 'La alarma aun no esta programada.';
		Escribir 'Revisa el reloj. ';
	FinSi
	// Salidas
	// Mostrar resultados
FinAlgoritmo

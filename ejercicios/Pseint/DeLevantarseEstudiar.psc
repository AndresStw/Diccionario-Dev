//Author: AndresStw

Algoritmo DeLevantarseEstudiar
	
	// Datos
	Definir horaLevantarse Como Cadena;
	Definir tengoClases Como Caracter;
	
	// Entradas
	Escribir "A que hora suena tu alarma?"; // Mostrar primer mensaje en pantalla
	Leer horaLevantarse; //Guardamos en la variable
	
	Escribir "Tienes clases hoy? (S/N)"; // Mostrar segundo mensaje en pantalla
	Leer tengoClases; //Guardamos en la variable
	
	// Procesos con if y else anidado
	Si horaLevantarse = "6:00 AM" O horaLevantarse = "6:00 am" Entonces 
		
		Si tengoClases = "S" O tengoClases = "s" Entonces
			Escribir "Apagar alarma.";
			Escribir "Levantarse de la cama.";
			Escribir "Alistarse para ir a clases.";
		SiNo
			Escribir "No tienes clases hoy.";
			Escribir "A seguir durmiendo Zzz...";
		FinSi
		
	SiNo
		Escribir "La alarma no esta programada para las 6:00 AM.";
		Escribir "Revisar la hora de la alarma.";
	FinSi
	
	// Salidas
	Escribir "Fin del algoritmo.";
	
FinAlgoritmo

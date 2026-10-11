// Author: AndresStw
Algoritmo El_numero_mayor
	// Dificultad:Intermedio
	// Enunciado: Solicita tres números y determina cuál es el mayor. Si dos o más números son iguales, tu algoritmo también debe contemplarlo.
	// Datos
	// Declarar variables
	Definir N1, N2, N3 Como Entero;
	// Entradas
	// Solicitar información al usuario
	Escribir 'Ingresa el primer numero.';
	Leer N1;
	Escribir 'Ingresa el segundo numero. ';
	Leer N2;
	Escribir 'Ingresa el tecer numero. ';
	Leer N3;
	// Procesos
	// Resolver el problema
	// Resolver el problema analizando mayorías y posibles empates
	Si N1==N2 Y N2==N3 Entonces
		Escribir 'Empate total Los tres numeros son iguales (', N1, ').';
		Si N1>=N2 Y N1>=N3 Entonces
			Escribir 'El primer numero es mayor. '; // Analiza muy bien esta logica....
			Si N1==N2 Y N1==N3 Entonces // La parte que más confunde es esta validar los numeros mayores.
			
			FinSi
		SiNo
			Si N2>=N1 Y N2>=N3 Entonces
				Escribir 'El segundo numero es el mayor. ';
			SiNo
				Escribir 'El tercer numero es el mayor. ';
			FinSi
		FinSi
	FinSi
	// Salidas
	// Mostrar resultados
	Escribir 'El primer numero fue: ', N1;
	Escribir 'El segundo numero fue:', N2;
	Escribir 'El tercer numero fue: ', N3;
FinAlgoritmo

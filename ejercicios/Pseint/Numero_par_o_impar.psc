// Author: AndresStw
Algoritmo Numero_par_o_impar
	// Enunciado: Solicita un numero entero e indica si es par o impar.
	// Datos
	// Declarar variables
	Definir Numero Como Entero;
	// Entradas
	// Solicitar informacion al usuario
	Escribir 'Ingresa el numero que tienes pensado: ';
	Leer Numero;
	// Procesos
	// Resolver el problema
	Si Numero MOD 2==0 Entonces
		Escribir 'Tu numero es par.'; 
	SiNo
		Escribir 'Tu numero es impar.';
	FinSi
	// Salidas
	// Mostrar resultados
	Escribir 'El numero que ingresaste fue: ', Numero;
FinAlgoritmo

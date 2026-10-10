//Author: AndresStw

Algoritmo PromedioDeNotas
	
	//Datos
	Definir Nota1, Nota2 ,Nota3,Promedio, suma Como Real ; //Variables
		
	
	//Entradas
	//Primera Nota
	Escribir "Ingrese su primera nota "; //Mostramos el primer texto en pantalla
	Leer  Nota1; //Guardamos en la variable Nota1
	
	//Segunda Nota
	Escribir "Ingrese su segunda nota ";//Mostramos el segundo mensaje en pantalla
	Leer Nota2; //Guardamos la variable Nota2
	
	//Tercera Nota
	Escribir "Ingrese su tercera nota ";//Mostramos el Tercer mensaje en pantalla
	Leer Nota3; //Guardamos la variable Nota3
	
	//Procesos
	suma = Nota1 + Nota2 + Nota3; // Proceso  1
	Promedio = suma / 3; // Proceso 2
	
	//Salida
	Escribir "Su Promedio es de:", Promedio;
	 //Su promedio es de: ?
	
	
	//Nota: Se agrego utra variable (suma) ya que primero necesitamos sumar todas las notas , luego de eso con el resultado optenido hacemos la divicion.
	
FinAlgoritmo

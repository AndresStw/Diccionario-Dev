//Author: AndresStw

import java.util.Scanner; //Esto es super importante cargamos la libreria basica para usar el (leer) en Pseint

public class Sumar2Numeros { // Nombre y inicio del archivo

    public static void main(String[] args) { // Metodo principal (Punto de entrada)

        // Datos
        int numero1, numero2, suma; // Mismo tipo de dato Int

        // Entrada
        Scanner entrada = new Scanner(System.in);

        System.out.println("Ingrese el primer numero:"); // Mensaje en pantalla
        numero1 = entrada.nextInt(); // Guardamos el numero en la variable numero1

        System.out.println(" Ingrese el segundo numero: "); // Mensaje en pantalla
        numero2 = entrada.nextInt(); // Guardamos el numero en la variable numero2

        // Proceso
        suma = numero1 + numero2; // hacemos la operacion normal sumar N1 + N2 = suma

        // Salida
        System.out.println("La suma de: " + numero1 + " + " + numero2 + " Es " + suma);// Mostras resultado en pantalla
        entrada.close();// Esto es escencial para cerrar el escaner

    }

}
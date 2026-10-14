// Autor: AndresStw
//  Enunciado: Solicita un número y muestra su tabla de multiplicar del 1 al 10.
package soluciones;

import java.util.Scanner;

public class TablaMultiplicar {

    public static void main(String[] args) {

        // ──────── DATOS ────────
        // Declarar variables y Scanner

        Scanner entrada = new Scanner(System.in);

        // ──────── ENTRADAS ────────
        // Pedir datos al usuario con print
        // Leer con nextInt / nextDouble / nextLine
        System.out.println("Ingresa el numero de la tabla que quieres generar: ");
        int tabla = entrada.nextInt();

        // ──────── PROCESOS ────────
        // Cálculos, condicionales, ciclos
        for (int i = 1; i <= 10; i++) {
            System.out.println(tabla + " x " + i + " = " + (tabla * i));

        }

        // ──────── SALIDAS ────────
        // Mostrar resultados con println

        // ──────── CIERRE ────────
        entrada.close();

    }

}
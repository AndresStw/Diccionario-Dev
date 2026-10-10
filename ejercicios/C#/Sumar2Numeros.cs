//Author: AndresStw

/// Algoritmo de sumar 2 números super basico (nivel primaria)

using System; //Importar libreria para usar consola y converts basicos

/// C# funciona un poco diferente al resto de lenguajes, tiene sus propias reglas y estructuras. Basicamente, cada lenguaje tiene su personalidad. C# es el que te pide que organices bien tus cosas

namespace Algoritmo_sumar_2_numeros //namespace es para organizar nuestro código y evitar conflictos con otros nombres.
{


    class Algoritmo_sumar_2_numeros
    {
        static void Main() //aqui comienza la ejecucion.
        {

            // Datos
            int Numero1, Numero2, suma; //Cajitas para guardar datos 

            // Entradas
            Console.Write("Ingrese el primer número: "); //Mostramos mensaje en pantalla
            Numero1 = Convert.ToInt32(Console.ReadLine()); //Guardamos en la cajita

            Console.Write("Ingrese el segundo número: "); //Mostramos mensaje en la pantalla
            Numero2 = Convert.ToInt32(Console.ReadLine()); // Guardamos en la cajita

            // Proceso
            suma = Numero1 + Numero2; // Operacion basica N1 + N2 = Suma

            // Salida
            Console.WriteLine("La suma de los dos números es: " + suma); //Mostramos el resuldato en pantalla
        }
    }
}

//!Atrevete a hacer mejoras¡, podemos hacer un algoritmo más complejo...
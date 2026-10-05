# Diccionario rápido de programación
# Java, JavaScript y C#
# Andrés Stw

## 1) Salida de datos

### Java
System.out.println("Hola");
System.out.print("Hola");

### JavaScript
console.log("Hola");
console.log('Hola');

### C#
Console.WriteLine("Hola");
Console.Write("Hola");

## 2) Entrada de datos

### Java
import java.util.Scanner;

Scanner sc = new Scanner(System.in);
String nombre = sc.nextLine();
int edad = sc.nextInt();
double precio = sc.nextDouble();

### JavaScript
let nombre = prompt("Ingrese su nombre");
let edad = parseInt(prompt("Ingrese su edad"));
let precio = parseFloat(prompt("Ingrese el precio"));

### C#
string nombre = Console.ReadLine();
int edad = int.Parse(Console.ReadLine());
double precio = double.Parse(Console.ReadLine());

## 3) Variables

### Java
String nombre = "Andres";
int edad = 20;
double precio = 1500.50;
boolean activo = true;

### JavaScript
let nombre = "Andres";
let edad = 20;
let precio = 1500.50;
let activo = true;

### C#
string nombre = "Andres";
int edad = 20;
double precio = 1500.50;
bool activo = true;

## 4) Constantes

### Java
final int MAX = 10;

### JavaScript
const MAX = 10;

### C#
const int MAX = 10;

## 5) Condicionales

### Java
if (edad >= 18) {
    System.out.println("Mayor de edad");
} else {
    System.out.println("Menor de edad");
}

### JavaScript
if (edad >= 18) {
    console.log("Mayor de edad");
} else {
    console.log("Menor de edad");
}

### C#
if (edad >= 18) {
    Console.WriteLine("Mayor de edad");
} else {
    Console.WriteLine("Menor de edad");
}

## 6) Ciclos for

### Java
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}

### JavaScript
for (let i = 0; i < 5; i++) {
    console.log(i);
}

### C#
for (int i = 0; i < 5; i++) {
    Console.WriteLine(i);
}

## 7) Ciclos while

### Java
int i = 0;
while (i < 5) {
    System.out.println(i);
    i++;
}

### JavaScript
let i = 0;
while (i < 5) {
    console.log(i);
    i++;
}

### C#
int i = 0;
while (i < 5) {
    Console.WriteLine(i);
    i++;
}

## 8) Arreglos

### Java
int[] numeros = {1, 2, 3, 4};
System.out.println(numeros[0]);

### JavaScript
let numeros = [1, 2, 3, 4];
console.log(numeros[0]);

### C#
int[] numeros = { 1, 2, 3, 4 };
Console.WriteLine(numeros[0]);

## 9) Funciones / métodos

### Java
public static int sumar(int a, int b) {
    return a + b;
}

### JavaScript
function sumar(a, b) {
    return a + b;
}

### C#
static int Sumar(int a, int b) {
    return a + b;
}

## 10) Clases básicas

### Java
class Persona {
    private String nombre;

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public void saludar() {
        System.out.println("Hola, soy " + nombre);
    }
}

### JavaScript
class Persona {
    constructor(nombre) {
        this.nombre = nombre;
    }

    saludar() {
        console.log("Hola, soy " + this.nombre);
    }
}

### C#
class Persona {
    private string nombre;

    public Persona(string nombre) {
        this.nombre = nombre;
    }

    public void Saludar() {
        Console.WriteLine("Hola, soy " + nombre);
    }
}

## 11) Crear objeto

### Java
Persona p = new Persona("Andres");
p.saludar();

### JavaScript
const p = new Persona("Andres");
p.saludar();

### C#
Persona p = new Persona("Andres");
p.Saludar();

## 12) Herencia

### Java
class Animal {
    public void comer() {
        System.out.println("Comiendo");
    }
}

class Perro extends Animal {
    public void ladrar() {
        System.out.println("Guau");
    }
}

### JavaScript
class Animal {
    comer() {
        console.log("Comiendo");
    }
}

class Perro extends Animal {
    ladrar() {
        console.log("Guau");
    }
}

### C#
class Animal {
    public void Comer() {
        Console.WriteLine("Comiendo");
    }
}

class Perro : Animal {
    public void Ladrar() {
        Console.WriteLine("Guau");
    }
}

## 13) Encapsulamiento

### Java
class Cuenta {
    private double saldo;

    public void depositar(double monto) {
        saldo += monto;
    }

    public double getSaldo() {
        return saldo;
    }
}

### JavaScript
class Cuenta {
    constructor() {
        this.saldo = 0;
    }

    depositar(monto) {
        this.saldo += monto;
    }

    getSaldo() {
        return this.saldo;
    }
}

### C#
class Cuenta {
    private double saldo;

    public void Depositar(double monto) {
        saldo += monto;
    }

    public double GetSaldo() {
        return saldo;
    }
}

## 14) Retorno y parámetros

### Java
public int sumar(int a, int b) {
    return a + b;
}

### JavaScript
function sumar(a, b) {
    return a + b;
}

### C#
static int Sumar(int a, int b) {
    return a + b;
}

## 15) Principal / entry point

### Java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hola");
    }
}

### JavaScript
function main() {
    console.log("Hola");
}

main();

### C#
class Program {
    static void Main() {
        Console.WriteLine("Hola");
    }
}

## 16) Diferencias rápidas que más se te olvidan

### Java
- Usa ; al final de instrucciones
- Main: public static void main(String[] args)
- Scanner para entrada

### JavaScript
- No usa ; siempre es opcional
- console.log para imprimir
- prompt para entrada
- let / const en lugar de var

### C#
- Console.WriteLine para imprimir
- Console.ReadLine para entrada
- Main: static void Main()
- Usa PascalCase en métodos y clases

## 17) Mini plantilla para empezar tus ejercicios

### Java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese un valor:");
        int valor = sc.nextInt();
        System.out.println("Valor ingresado: " + valor);
    }
}

### JavaScript
let valor = parseInt(prompt("Ingrese un valor"));
console.log("Valor ingresado: " + valor);

### C#
using System;

class Program {
    static void Main() {
        Console.WriteLine("Ingrese un valor:");
        int valor = int.Parse(Console.ReadLine());
        Console.WriteLine("Valor ingresado: " + valor);
    }
}

## 18) Ejercicios recomendados para practicar

- Suma de dos números
- Promedio de notas
- Edad mayor o menor
- Número par o impar
- Arreglo de nombres
- Clase Persona con nombre y edad
- Clase Producto con precio y cantidad
- Clase CuentaBancaria con depositar y retirar

## 19) Trucos para recordar

- Java: System.out.println()
- JavaScript: console.log()
- C#: Console.WriteLine()

- Java: Scanner
- JavaScript: prompt
- C#: Console.ReadLine()

- Java: class + public static void main
- JavaScript: class + constructor
- C#: class + static void Main

## 20) Resumen final

La lógica de programación es la misma en los 3 lenguajes:
- variables
- condicionales
- ciclos
- arreglos
- funciones
- clases
- objetos

Lo que cambia es la sintaxis.

Si sabes esto, ya estás muy bien.

------------------------------------------------------
Fin del diccionario
------------------------------------------------------

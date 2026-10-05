# Diccionario rápido de programación

## 1) Salida de datos

### Java
```java
System.out.println("Hola");
System.out.print("Hola");
```

### JavaScript
```javascript
console.log("Hola");
console.log('Hola');
```

### C#
```csharp
Console.WriteLine("Hola");
Console.Write("Hola");
```

## 2) Entrada de datos

### Java
```java
import java.util.Scanner;

Scanner sc = new Scanner(System.in);
String nombre = sc.nextLine();
int edad = sc.nextInt();
double precio = sc.nextDouble();
```

### JavaScript
```javascript
let nombre = prompt("Ingrese su nombre");
let edad = parseInt(prompt("Ingrese su edad"));
let precio = parseFloat(prompt("Ingrese el precio"));
```

### C#
```csharp
string nombre = Console.ReadLine();
int edad = int.Parse(Console.ReadLine());
double precio = double.Parse(Console.ReadLine());
```

## 3) Variables

### Java
```java
String nombre = "Andres";
int edad = 20;
double precio = 1500.50;
boolean activo = true;
```

### JavaScript
```javascript
let nombre = "Andres";
let edad = 20;
let precio = 1500.50;
let activo = true;
```

### C#
```csharp
string nombre = "Andres";
int edad = 20;
double precio = 1500.50;
bool activo = true;
```

## 4) Constantes

### Java
```java
final int MAX = 10;
```

### JavaScript
```javascript
const MAX = 10;
```

### C#
```csharp
const int MAX = 10;
```

## 5) Condicionales

### Java
```java
if (edad >= 18) {
    System.out.println("Mayor de edad");
} else {
    System.out.println("Menor de edad");
}
```

### JavaScript
```javascript
if (edad >= 18) {
    console.log("Mayor de edad");
} else {
    console.log("Menor de edad");
}
```

### C#
```csharp
if (edad >= 18) {
    Console.WriteLine("Mayor de edad");
} else {
    Console.WriteLine("Menor de edad");
}
```

## 6) Ciclos for

### Java
```java
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}
```

### JavaScript
```javascript
for (let i = 0; i < 5; i++) {
    console.log(i);
}
```

### C#
```csharp
for (int i = 0; i < 5; i++) {
    Console.WriteLine(i);
}
```

## 7) Ciclos while

### Java
```java
int i = 0;
while (i < 5) {
    System.out.println(i);
    i++;
}
```

### JavaScript
```javascript
let i = 0;
while (i < 5) {
    console.log(i);
    i++;
}
```

### C#
```csharp
int i = 0;
while (i < 5) {
    Console.WriteLine(i);
    i++;
}
```

## 8) Arreglos

### Java
```java
int[] numeros = {1, 2, 3, 4};
System.out.println(numeros[0]);
```

### JavaScript
```javascript
let numeros = [1, 2, 3, 4];
console.log(numeros[0]);
```

### C#
```csharp
int[] numeros = { 1, 2, 3, 4 };
Console.WriteLine(numeros[0]);
```

## 9) Funciones / métodos

### Java
```java
public static int sumar(int a, int b) {
    return a + b;
}
```

### JavaScript
```javascript
function sumar(a, b) {
    return a + b;
}
```

### C#
```csharp
static int Sumar(int a, int b) {
    return a + b;
}
```

## 10) Clases básicas

### Java
```java
class Persona {
    private String nombre;

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public void saludar() {
        System.out.println("Hola, soy " + nombre);
    }
}
```

### JavaScript
```javascript
class Persona {
    constructor(nombre) {
        this.nombre = nombre;
    }

    saludar() {
        console.log("Hola, soy " + this.nombre);
    }
}
```

### C#
```csharp
class Persona {
    private string nombre;

    public Persona(string nombre) {
        this.nombre = nombre;
    }

    public void Saludar() {
        Console.WriteLine("Hola, soy " + nombre);
    }
}
```

## 11) Resumen final

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

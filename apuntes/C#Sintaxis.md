# ⚡ C# desde cero — Guía didáctica de sintaxis

> Una guía práctica para aprender a escribir C# desde cero. Avanza en orden, ejecuta los ejemplos y cambia los valores para observar qué ocurre.

> **Importante:** Los fragmentos de código son independientes, salvo que se indique lo contrario. No copies todos los ejemplos en un único archivo: varios declaran variables o métodos con los mismos nombres.

---

## 📑 Índice

1. [¿Qué es C# y cómo se ejecuta?](#1-qué-es-c-y-cómo-se-ejecuta)
2. [Tu primer programa](#2-tu-primer-programa)
3. [Variables y tipos de datos](#3-variables-y-tipos-de-datos)
4. [Mostrar y leer información](#4-mostrar-y-leer-información)
5. [Operadores](#5-operadores)
6. [Tomar decisiones con condiciones](#6-tomar-decisiones-con-condiciones)
7. [Repetir instrucciones con ciclos](#7-repetir-instrucciones-con-ciclos)
8. [Métodos](#8-métodos)
9. [Arreglos y listas](#9-arreglos-y-listas)
10. [Clases y objetos](#10-clases-y-objetos)
11. [Manejo de errores](#11-manejo-de-errores)
12. [Cadenas de texto](#12-cadenas-de-texto)
13. [Primeros pasos en Unity](#13-primeros-pasos-en-unity)
14. [Aplicaciones de escritorio](#14-aplicaciones-de-escritorio)
15. [Palabras clave esenciales](#15-palabras-clave-esenciales)
16. [Errores frecuentes](#16-errores-frecuentes)
17. [Ejercicios para practicar](#17-ejercicios-para-practicar)
18. [Soluciones sugeridas](#18-soluciones-sugeridas)

---

## 1. ¿Qué es C# y cómo se ejecuta?

**C# (C sharp)** es un lenguaje de programación usado para crear aplicaciones de consola, programas de escritorio, servicios web y videojuegos, entre otras cosas.

Para empezar, puedes instalar el **SDK de .NET** y usar un editor como Visual Studio o Visual Studio Code.

En una terminal, crea un proyecto de consola:

```bash
dotnet new console -n MiPrimerPrograma
cd MiPrimerPrograma
dotnet run
```

- `dotnet new console` crea un proyecto de consola.
- `cd MiPrimerPrograma` entra en la carpeta del proyecto.
- `dotnet run` compila y ejecuta el programa.

La estructura exacta del archivo `Program.cs` puede variar según la versión y la plantilla de .NET. Los ejemplos de esta guía usan sintaxis de C# moderna, pero también se muestran clases completas cuando ayudan a entender los conceptos.

---

## 2. Tu primer programa

```csharp
Console.WriteLine("¡Hola, mundo!");
```

`Console.WriteLine()` muestra texto en la consola y luego pasa a una nueva línea.

También puedes escribir:

```csharp
Console.Write("Hola ");
Console.Write("de nuevo");
```

Resultado:

```text
Hola de nuevo
```

### ¿Qué significan los símbolos?

- `Console`: permite interactuar con la consola.
- `WriteLine(...)`: muestra un valor y termina la línea.
- `(...)`: los paréntesis contienen los datos que recibe el método.
- `"..."`: las comillas dobles delimitan una cadena de texto.
- `;`: termina una instrucción en este tipo de código C#.

---

## 3. Variables y tipos de datos

Una **variable** es un espacio con nombre que permite guardar un valor.

```csharp
int edad = 20;
double promedio = 4.5;
float velocidad = 5.5f;
decimal precio = 19.99m;
string nombre = "Andres";
char inicial = 'A';
bool activo = true;
```

| Tipo      | Para qué sirve                                                                   | Ejemplo                      |
| --------- | -------------------------------------------------------------------------------- | ---------------------------- |
| `int`     | Números enteros                                                                  | `int cantidad = 10;`         |
| `long`    | Enteros de mayor rango                                                           | `long poblacion = 8000000L;` |
| `float`   | Números decimales de precisión simple                                            | `float velocidad = 2.5f;`    |
| `double`  | Números decimales de precisión doble                                             | `double promedio = 4.5;`     |
| `decimal` | Cálculos decimales donde importa la representación decimal, como muchos importes | `decimal dinero = 25.50m;`   |
| `string`  | Texto                                                                            | `string mensaje = "Hola";`   |
| `char`    | Un carácter UTF-16                                                               | `char inicial = 'A';`        |
| `bool`    | Verdadero o falso                                                                | `bool encendido = false;`    |

### Declarar y cambiar una variable

```csharp
int puntos = 10;
puntos = 15;

Console.WriteLine(puntos); // 15
```

El signo `=` asigna un valor. No significa “es igual a” en una comparación; para comparar se usa `==`.

### Usar `var`

C# puede deducir el tipo a partir del valor inicial:

```csharp
var nombre = "Andres"; // string
var edad = 20;         // int
var activo = true;     // bool
```

`var` no convierte la variable en una variable de tipo dinámico. Una vez deducido el tipo, la variable conserva ese tipo.

### Constantes con `const`

Usa `const` para valores que no deben cambiar y que pueden determinarse al compilar:

```csharp
const double PI = 3.14159;
```

---

## 4. Mostrar y leer información

### Mostrar datos

```csharp
Console.WriteLine("Hola");
Console.Write("Escribe tu nombre: ");
```

- `WriteLine()` añade una nueva línea al final.
- `Write()` no añade una nueva línea automáticamente.

### Leer texto

```csharp
Console.Write("¿Cómo te llamas? ");
string nombre = Console.ReadLine() ?? "";

Console.WriteLine($"¡Hola, {nombre}!");
```

`Console.ReadLine()` puede devolver `null`, por ejemplo cuando no queda entrada disponible. `?? ""` usa una cadena vacía si eso sucede.

### Leer un número entero de forma segura

```csharp
Console.Write("Ingresa tu edad: ");

if (int.TryParse(Console.ReadLine(), out int edad))
{
    Console.WriteLine($"Tu edad es {edad}.");
}
else
{
    Console.WriteLine("Escribe un número entero válido.");
}
```

`int.TryParse()` intenta convertir el texto en un entero. Si la conversión funciona, devuelve `true` y guarda el resultado en `edad`; si falla, devuelve `false`.

**Consejo:** al comenzar, prefiere `TryParse()` para entradas que podrían ser incorrectas. `Convert.ToInt32()` puede lanzar una excepción si el texto no es válido.

---

## 5. Operadores

Los operadores permiten calcular valores, comparar datos y combinar condiciones.

### Aritméticos

| Operador | Significado             | Ejemplo |
| -------- | ----------------------- | ------- |
| `+`      | Suma                    | `a + b` |
| `-`      | Resta                   | `a - b` |
| `*`      | Multiplicación          | `a * b` |
| `/`      | División                | `a / b` |
| `%`      | Residuo de una división | `a % b` |

```csharp
int a = 10;
int b = 3;

Console.WriteLine(a + b); // 13
Console.WriteLine(a / b); // 3
Console.WriteLine(a % b); // 1
```

**Atención:** cuando ambos operandos de `/` son enteros, el resultado es entero y se descarta la parte decimal. Para obtener un resultado decimal:

```csharp
double resultado = 10.0 / 3.0;
Console.WriteLine(resultado); // Aproximadamente 3.333333...
```

### Comparación

| Operador | Significado       |
| -------- | ----------------- |
| `==`     | Igual a           |
| `!=`     | Distinto de       |
| `>`      | Mayor que         |
| `<`      | Menor que         |
| `>=`     | Mayor o igual que |
| `<=`     | Menor o igual que |

```csharp
int edad = 20;
Console.WriteLine(edad >= 18); // True
```

<!-- ### Lógicos

| Operador | Significado                                   |
| -------- | --------------------------------------------- | --- | --------------------------------------------- |
| `&&`     | AND: las dos condiciones deben ser verdaderas |
| `        |                                               | `   | OR: al menos una condición debe ser verdadera |
| `!`      | NOT: invierte el valor lógico                 | -->

```csharp
int edad = 20;
bool tieneEntrada = true;

if (edad >= 18 && tieneEntrada)
{
    Console.WriteLine("Puedes entrar.");
}
```

### Asignación abreviada e incremento

```csharp
int numero = 10;

numero += 5; // Equivale a numero = numero + 5
numero -= 2; // Equivale a numero = numero - 2
numero *= 2; // Equivale a numero = numero * 2
numero /= 2; // Equivale a numero = numero / 2
numero++;    // Aumenta en uno
numero--;    // Disminuye en uno
```

---

## 6. Tomar decisiones con condiciones

### `if`

Ejecuta el bloque si la condición es verdadera:

```csharp
int edad = 20;

if (edad >= 18)
{
    Console.WriteLine("Eres mayor de edad.");
}
```

### `if` y `else`

```csharp
int numero = 7;

if (numero % 2 == 0)
{
    Console.WriteLine("Par");
}
else
{
    Console.WriteLine("Impar");
}
```

### `else if`

Permite comprobar varias condiciones en orden:

```csharp
double nota = 4.2;

if (nota >= 4.5)
{
    Console.WriteLine("Excelente");
}
else if (nota >= 3.0)
{
    Console.WriteLine("Aprobado");
}
else
{
    Console.WriteLine("Debes seguir practicando");
}
```

En este ejemplo se supone una escala de notas de 0 a 5. Cambia los límites si tu sistema de calificación es distinto.

### Operador ternario

Para elegir entre dos expresiones sencillas:

```csharp
int edad = 17;
string resultado = edad >= 18 ? "Adulto" : "Menor";

Console.WriteLine(resultado);
```

### `switch`

Útil cuando comparas una expresión con varios valores posibles:

```csharp
int opcion = 2;

switch (opcion)
{
    case 1:
        Console.WriteLine("Jugar");
        break;

    case 2:
        Console.WriteLine("Configuración");
        break;

    default:
        Console.WriteLine("Opción no válida");
        break;
}
```

`break` termina el caso actual. En ejemplos modernos también existe la expresión `switch`, pero el formato anterior es una buena base para empezar.

---

## 7. Repetir instrucciones con ciclos

Los ciclos repiten un bloque de código. Comprueba siempre que exista una forma de terminar cuando corresponda.

### `for`: cuando sabes cuántas veces repetir

```csharp
for (int i = 0; i < 5; i++)
{
    Console.WriteLine(i);
}
```

Muestra los números del `0` al `4`.

- `int i = 0`: inicializa el contador.
- `i < 5`: el ciclo continúa mientras esta condición sea verdadera.
- `i++`: incrementa el contador al final de cada iteración.

### `while`: mientras se cumpla una condición

```csharp
int contador = 0;

while (contador < 3)
{
    Console.WriteLine(contador);
    contador++;
}
```

Si olvidas `contador++`, la condición seguirá siendo verdadera y el ciclo podría no terminar.

### `do while`: se ejecuta al menos una vez

```csharp
int numero = 0;

do
{
    Console.WriteLine("Esta instrucción se ejecuta al menos una vez.");
    numero++;
}
while (numero < 1);
```

Observa que el punto y coma después de `while (numero < 1);` es obligatorio.

### `foreach`: recorrer elementos

```csharp
string[] nombres = { "Ana", "Luis", "Sara" };

foreach (string nombre in nombres)
{
    Console.WriteLine(nombre);
}
```

`foreach` visita cada elemento de la colección sin que tengas que administrar manualmente un índice.

### `break` y `continue`

- `break`: termina el ciclo más cercano.
- `continue`: salta el resto de la iteración actual y continúa con la siguiente.

```csharp
for (int i = 0; i < 10; i++)
{
    if (i == 2)
    {
        continue; // No muestra el 2
    }

    if (i == 5)
    {
        break; // Termina al llegar al 5
    }

    Console.WriteLine(i);
}
```

---

## 8. Métodos

Un **método** agrupa instrucciones para reutilizarlas. Puede recibir datos mediante parámetros y devolver un resultado.

En una plantilla moderna de consola, puedes colocar estos métodos después de las instrucciones de nivel superior, o usarlos dentro de una clase. Para comprender la estructura tradicional, aquí se muestra una clase completa:

```csharp
using System;

class Program
{
    static void Main()
    {
        Saludar();
        Saludar("Andres");

        int resultado = Sumar(5, 3);
        Console.WriteLine(resultado); // 8
    }

    static void Saludar()
    {
        Console.WriteLine("Hola");
    }

    static void Saludar(string nombre)
    {
        Console.WriteLine($"Hola, {nombre}");
    }

    static int Sumar(int a, int b)
    {
        return a + b;
    }
}
```

Conceptos importantes:

- `static`: permite llamar al método desde el contexto estático de `Main` sin crear un objeto `Program`.
- `void`: indica que el método no devuelve un valor.
- `int`: indica que el método devuelve un entero.
- `return`: devuelve el resultado y termina el método.
- Los parámetros, como `int a`, reciben los valores que se pasan al llamar al método.

Los dos métodos `Saludar` tienen el mismo nombre, pero distintas listas de parámetros. Esto se llama **sobrecarga**.

---

## 9. Arreglos y listas

### Arreglos

Un arreglo guarda varios elementos del mismo tipo en una estructura de tamaño fijo.

```csharp
int[] numeros = { 10, 20, 30 };

Console.WriteLine(numeros[0]); // 10
Console.WriteLine(numeros[2]); // 30
```

Los índices empiezan en `0`. Con un arreglo de tres elementos, los índices válidos son `0`, `1` y `2`.

Puedes crear un arreglo con un tamaño definido:

```csharp
int[] notas = new int[5];
notas[0] = 4;
```

### Listas

`List<T>` permite agregar y quitar elementos durante la ejecución. Necesitas importar su espacio de nombres si no está disponible ya:

```csharp
using System.Collections.Generic;

List<string> juegos = new List<string>();

juegos.Add("Minecraft");
juegos.Add("Terraria");
juegos.Remove("Minecraft");

Console.WriteLine(juegos.Count); // 1
```

En proyectos que usan `using` globales o instrucciones de nivel superior, el `using` suele estar al principio del archivo.

También puedes recorrer una lista:

```csharp
foreach (string juego in juegos)
{
    Console.WriteLine(juego);
}
```

**Diferencia clave:** el tamaño de un arreglo no cambia después de crearlo; una lista puede crecer o reducirse.

---

## 10. Clases y objetos

Una **clase** describe datos y comportamientos. Un **objeto** es una instancia creada a partir de esa clase.

```csharp
class Persona
{
    public string Nombre { get; set; } = "";

    public void Presentarse()
    {
        Console.WriteLine($"Hola, soy {Nombre}");
    }
}
```

Crear y utilizar un objeto:

```csharp
Persona persona = new Persona();
persona.Nombre = "Andres";
persona.Presentarse();
```

### ¿Qué significa cada parte?

- `class Persona`: declara una clase llamada `Persona`.
- `public`: permite acceder al miembro desde otros contextos permitidos.
- `Nombre`: propiedad que permite leer y asignar el nombre.
- `{ get; set; }`: define accesores para leer y escribir la propiedad.
- `new Persona()`: crea una instancia.
- `Presentarse()`: ejecuta un método del objeto.

### Constructor

Un constructor permite preparar el objeto al crearlo:

```csharp
class Jugador
{
    public string Nombre { get; set; }

    public Jugador(string nombre)
    {
        Nombre = nombre;
    }
}
```

Uso:

```csharp
Jugador jugador = new Jugador("Alex");
Console.WriteLine(jugador.Nombre);
```

En un proyecto con nullable reference types habilitado, puede ser útil declarar `Nombre` como `public string Nombre { get; set; } = "";` o usar `required` cuando corresponda. La forma adecuada depende de la versión de C# y del diseño de la clase.

---

## 11. Manejo de errores

A veces una operación falla durante la ejecución. Las **excepciones** permiten manejar ciertos errores inesperados o condiciones excepcionales.

```csharp
try
{
    int numero = Convert.ToInt32("abc");
    Console.WriteLine(numero);
}
catch (FormatException)
{
    Console.WriteLine("El texto no tiene un formato numérico válido.");
}
```

Como `"abc"` no representa un entero, la conversión produce una `FormatException` y se ejecuta el bloque `catch`.

### `finally`

`finally` se utiliza para ejecutar instrucciones al salir del bloque `try`/`catch`, tanto si se produjo una excepción como si no, salvo situaciones excepcionales como la terminación abrupta del proceso.

```csharp
try
{
    Console.WriteLine("Intentando una operación...");
}
catch (Exception)
{
    Console.WriteLine("Ocurrió un error.");
}
finally
{
    Console.WriteLine("Fin de la operación.");
}
```

Este ejemplo ilustra la estructura; no necesitas añadir `catch (Exception)` a todos los programas. Captura únicamente los errores que sepas manejar y usa `TryParse()` para validar entradas sencillas.

---

## 12. Cadenas de texto

Una cadena (`string`) contiene texto.

### Concatenación e interpolación

La concatenación une cadenas con `+`:

```csharp
string nombre = "Andres";
int edad = 20;

Console.WriteLine("Me llamo " + nombre + " y tengo " + edad + " años.");
```

La **interpolación** suele ser más fácil de leer:

```csharp
Console.WriteLine($"Me llamo {nombre} y tengo {edad} años.");
```

El símbolo `$` permite incluir variables o expresiones dentro de `{ }`.

### Comillas simples y dobles

```csharp
string nombre = "Andres";
char inicial = 'A';
```

- `string` usa comillas dobles.
- `char` usa comillas simples y representa un carácter.

### Algunas operaciones útiles

```csharp
string mensaje = "Hola, mundo";

Console.WriteLine(mensaje.Length);          // Longitud
Console.WriteLine(mensaje.ToUpper());       // MAYÚSCULAS
Console.WriteLine(mensaje.ToLower());       // minúsculas
Console.WriteLine(mensaje.Contains("Hola"));// True
```

Las cadenas son inmutables: métodos como `ToUpper()` devuelven una nueva cadena; no modifican la cadena original.

---

## 13. Primeros pasos en Unity

Estos ejemplos pertenecen a scripts de **Unity**, no a una aplicación de consola normal.

### Script básico

Crea un archivo llamado `MiScript.cs` y escribe:

```csharp
using UnityEngine;

public class MiScript : MonoBehaviour
{
    void Start()
    {
        Debug.Log("El objeto está listo.");
    }

    void Update()
    {
        // Se ejecuta una vez por fotograma mientras el componente esté activo.
    }
}
```

El nombre del archivo debe coincidir con el nombre de la clase pública del componente para que Unity lo gestione correctamente como script adjuntable.

- `MonoBehaviour`: clase base que permite que el script funcione como componente de Unity.
- `Start()`: se llama antes de la primera actualización del componente, si está activo.
- `Update()`: se llama una vez por fotograma mientras el componente esté activo.
- `Debug.Log()`: escribe un mensaje en la consola de Unity.

### Variables en el Inspector

```csharp
using UnityEngine;

public class Movimiento : MonoBehaviour
{
    public float velocidad = 5f;

    [SerializeField] private int vida = 100;
}
```

- `public`: permite acceso desde otros contextos autorizados y normalmente expone el campo serializable en el Inspector.
- `[SerializeField]`: permite que un campo privado compatible se serialice y aparezca en el Inspector.
- `5f`: el sufijo `f` indica un valor de tipo `float`.

### Detectar una tecla con el sistema clásico

```csharp
using UnityEngine;

public class EntradaJugador : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            Debug.Log("Presionaste espacio");
        }
    }
}
```

Este ejemplo usa la API clásica `Input`. Si el proyecto está configurado para utilizar exclusivamente el **Input System** nuevo, utiliza la API de ese paquete y revisa la configuración de entrada del proyecto.

---

## 14. Aplicaciones de escritorio

Los ejemplos siguientes se utilizan en proyectos de escritorio. No son código completo por sí solos: el evento debe estar conectado al botón y los espacios de nombres necesarios deben estar disponibles.

### Windows Forms

```csharp
private void btnSaludar_Click(object sender, EventArgs e)
{
    MessageBox.Show("¡Hola!");
}
```

Normalmente este método se conecta al evento `Click` del botón desde el diseñador de Windows Forms o mediante código.

### WPF

```csharp
private void BtnSaludar_Click(object sender, RoutedEventArgs e)
{
    MessageBox.Show("¡Hola!");
}
```

En WPF, el evento puede conectarse desde XAML, por ejemplo mediante `Click="BtnSaludar_Click"`, siempre que el método esté en la clase de ventana correspondiente y los tipos estén disponibles.

---

## 15. Palabras clave esenciales

| Palabra    | Uso habitual                                                                     |
| ---------- | -------------------------------------------------------------------------------- |
| `using`    | Importa un espacio de nombres o declara el uso de un recurso, según el contexto. |
| `class`    | Declara una clase.                                                               |
| `public`   | Declara un miembro accesible públicamente.                                       |
| `private`  | Limita el acceso al miembro a su contexto permitido.                             |
| `static`   | Declara un miembro asociado al tipo, no a una instancia concreta.                |
| `void`     | Indica que un método no devuelve un valor.                                       |
| `return`   | Devuelve un valor o termina un método.                                           |
| `new`      | Crea una instancia u objeto.                                                     |
| `if`       | Evalúa una condición.                                                            |
| `else`     | Define una alternativa.                                                          |
| `for`      | Repite instrucciones usando inicialización, condición y actualización.           |
| `while`    | Repite mientras una condición sea verdadera.                                     |
| `break`    | Sale del ciclo o `switch` más cercano.                                           |
| `continue` | Pasa a la siguiente iteración del ciclo.                                         |
| `try`      | Delimita código cuyo error se quiere manejar.                                    |
| `catch`    | Maneja excepciones compatibles.                                                  |
| `const`    | Declara una constante cuyo valor se determina en compilación.                    |
| `var`      | Permite que el compilador deduzca el tipo local.                                 |

---

## 16. Errores frecuentes

### 1. Olvidar el punto y coma

```csharp
// ❌ Incorrecto
int edad = 20

// ✅ Correcto
int edad = 20;
```

### 2. Usar `=` en vez de `==` para comparar

```csharp
// ❌ Incorrecto: no es una comparación válida para esta condición
if (edad = 18) { }

// ✅ Correcto
if (edad == 18) { }
```

### 3. Usar comillas simples para una cadena

```csharp
// ❌ Incorrecto
string nombre = 'Andres';

// ✅ Correcto
string nombre = "Andres";
```

### 4. No actualizar el contador de un ciclo

```csharp
// ❌ Incorrecto: si contador empieza en 0, nunca cambia y el ciclo no termina
int contador = 0;

while (contador < 5)
{
    Console.WriteLine(contador);
}

// ✅ Correcto
while (contador < 5)
{
    Console.WriteLine(contador);
    contador++;
}
```

### 5. Acceder a un índice que no existe

```csharp
int[] numeros = { 10, 20, 30 };

// ❌ numeros[3] no existe; los índices válidos son 0, 1 y 2
// Console.WriteLine(numeros[3]);

// ✅
Console.WriteLine(numeros[2]);
```

### 6. Confundir mayúsculas y minúsculas

C# distingue entre mayúsculas y minúsculas:

```csharp
string nombre = "Ana";
Console.WriteLine(nombre);

// Console.WriteLine(Nombre); // Error: Nombre es otro identificador
```

---

## 17. Ejercicios para practicar

Intenta resolverlos antes de mirar las soluciones.

1. **Saludo:** pide al usuario su nombre y muestra `Hola, nombre`.
2. **Edad:** pide una edad y muestra si la persona es mayor de edad. Valida que la entrada sea un entero.
3. **Par o impar:** pide un entero y determina si es par o impar.
4. **Contador:** usa un `for` para mostrar los números del 1 al 10.
5. **Suma:** crea un método `Sumar` que reciba dos enteros y devuelva su suma.
6. **Lista de juegos:** crea una `List<string>`, añade tres juegos y muéstralos con `foreach`.
7. **Clase:** crea una clase `Mascota` con una propiedad `Nombre` y un método `Presentarse()`.

---

## 18. Soluciones sugeridas

### Ejercicio 1: saludo

```csharp
Console.Write("¿Cómo te llamas? ");
string nombre = Console.ReadLine() ?? "";

Console.WriteLine($"Hola, {nombre}");
```

### Ejercicio 2: validar edad

```csharp
Console.Write("Ingresa tu edad: ");

if (int.TryParse(Console.ReadLine(), out int edad) && edad >= 0)
{
    if (edad >= 18)
    {
        Console.WriteLine("Eres mayor de edad.");
    }
    else
    {
        Console.WriteLine("Eres menor de edad.");
    }
}
else
{
    Console.WriteLine("Ingresa una edad válida (entero no negativo).");
}
```

### Ejercicio 3: par o impar

```csharp
Console.Write("Ingresa un entero: ");

if (int.TryParse(Console.ReadLine(), out int numero))
{
    Console.WriteLine(numero % 2 == 0 ? "Par" : "Impar");
}
else
{
    Console.WriteLine("Entrada no válida.");
}
```

### Ejercicio 4: contador

```csharp
for (int i = 1; i <= 10; i++)
{
    Console.WriteLine(i);
}
```

### Ejercicio 5: método de suma

```csharp
static int Sumar(int a, int b)
{
    return a + b;
}
```

En una aplicación de consola tradicional, colócalo dentro de una clase y llámalo desde un método `static`, como `Main`.

### Ejercicio 6: lista de juegos

```csharp
using System.Collections.Generic;

List<string> juegos = new List<string>
{
    "Minecraft",
    "Terraria",
    "Stardew Valley"
};

foreach (string juego in juegos)
{
    Console.WriteLine(juego);
}
```

### Ejercicio 7: clase `Mascota`

```csharp
class Mascota
{
    public string Nombre { get; set; } = "";

    public void Presentarse()
    {
        Console.WriteLine($"Hola, soy {Nombre}.");
    }
}

// Uso:
Mascota mascota = new Mascota();
mascota.Nombre = "Luna";
mascota.Presentarse();
```

---

## 🚀 Cómo aprender mejor

No intentes memorizar toda la guía de una vez. Sigue este ciclo:

1. **Lee** un concepto.
2. **Escribe** el ejemplo tú mismo.
3. **Ejecuta** el programa.
4. **Modifica** un valor y predice el resultado.
5. **Provoca un error** a propósito y aprende a interpretar el mensaje.
6. **Resuelve un ejercicio** sin copiar la solución.

> La sintaxis te enseña **cómo** escribir instrucciones. La práctica te enseña **cuándo** y **por qué** utilizarlas.

---

<div align="center">

**Hecho para practicar, no para memorizar.**

</div>

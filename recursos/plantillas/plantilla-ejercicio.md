# 📋 Plantillas para aprender a programar

¡Bienvenido a la sección de plantillas para aprender a programar en cualquier lenguaje! 🎉

Acá encontrarás las plantillas que, desde mi punto de vista, son las mejores para **acostumbrarte al orden** y saber **dónde va cada cosa** mientras practicas. Con el tiempo, esas plantillas se vuelven parte de ti y las usas sin mirarlas.

Es como cuando aprendes a montar bici:

> Primero usas las rueditas de apoyo. Después las quitas y ya vas solo. 🚲

Lo mismo pasa con el código: primero copias la plantilla, después la interiorizas, y al final escribes con orden sin necesitar el molde.

---

## 📑 Índice

1. [La estructura de bloques](#-la-estructura-de-bloques)
2. [¿Con qué lenguaje empezar?](#-con-qué-lenguaje-empezar)
3. [PSeInt](#-pseint)
4. [JavaScript](#-javascript)
5. [Java](#-java)
6. [C#](#-c)
7. [C++](#-c-1)
8. [Resumen visual: la misma lógica en 5 lenguajes](#-resumen-visual-la-misma-lógica-en-5-lenguajes)
9. [Trampas comunes por lenguaje](#-trampas-comunes-por-lenguaje)
10. [¿Cómo usar estas plantillas?](#-cómo-usar-estas-plantillas)

---

## 🧭 La estructura de bloques

Todas las plantillas de este documento siguen los **cuatro bloques de un algoritmo**:

```

// Datos → qué variables necesito
// Entradas → qué le pido al usuario
// Procesos → qué cálculos o decisiones hago
// Salidas → qué muestro

```

Esta estructura no es capricho. Es la traducción directa de cómo funciona cualquier programa, sin importar el lenguaje:

| Bloque       | ¿Qué hace?                                               |
| ------------ | -------------------------------------------------------- |
| **Datos**    | Se declaran las variables y estructuras.                 |
| **Entradas** | Se solicita información al usuario.                      |
| **Procesos** | Se resuelve el problema (cálculos, condiciones, ciclos). |
| **Salidas**  | Se muestran los resultados.                              |

> 📌 **Nota:** si vienes de PSeInt, ya conoces estos bloques. Los usabas con `// Datos`, `// Entradas`, `// Procesos`, `// Salidas` en tus `.psc`. Esta sección es para llevar ese orden a **todos** los lenguajes.

---

## 🎯 ¿Con qué lenguaje empezar?

Esta es la pregunta que todos hacemos al principio. Y la respuesta depende de **qué quieras lograr**. Aquí va mi recomendación honesta:

### 🥇 Ruta recomendada para principiantes absolutos

```

PSeInt → JavaScript (navegador) → Java → C# → C++
1 2 3 4 5

```

| Paso | Lenguaje                   | ¿Por qué?                                                                   |
| :--: | -------------------------- | --------------------------------------------------------------------------- |
|  1️⃣  | **PSeInt**                 | Aprendes lógica **sin pelearte con sintaxis**. Es el gimnasio mental.       |
|  2️⃣  | **JavaScript (navegador)** | Solo necesitas un navegador. Cero instalación. Feedback inmediato.          |
|  3️⃣  | **Java**                   | Sintaxis estricta que te obliga a ordenar la cabeza. Muy usado en empresas. |
|  4️⃣  | **C#**                     | Parecido a Java, pero con un entorno muy cómodo (Visual Studio).            |
|  5️⃣  | **C++**                    | Control total del hardware. Más complejo, pero muy poderoso.                |

### 🎯 Si tienes un objetivo claro, ve directo

| Quiero…                          | Empieza con…                                      |
| -------------------------------- | ------------------------------------------------- |
| Aprender a programar desde cero  | **PSeInt** → **JavaScript**                       |
| Crear páginas web                | **JavaScript** (HTML + CSS primero)               |
| Desarrollar apps Android         | **Java** o **Kotlin**                             |
| Desarrollar videojuegos en Unity | **C#**                                            |
| Desarrollo empresarial           | **Java** o **C#**                                 |
| Videojuegos de alto rendimiento  | **C++**                                           |
| Automatizar tareas               | **Python** (no está en esta guía, pero es el rey) |

### ⚠️ Reglas importantes

- **No saltes de lenguaje en lenguaje.** Domina uno antes de pasar al siguiente. La lógica se aprende repitiendo, no coleccionando sintaxis.
- **No empieces por C++** si es tu primer lenguaje. Es como aprender a manejar en un Fórmula 1.
- **No te preocupes por "cuál es mejor".** Todos sirven. Lo que importa es que practiques con **uno** hasta que puedas escribir sin mirar la plantilla.
- **Repite el mismo ejercicio en varios lenguajes.** Vas a notar que la lógica es idéntica; solo cambia la sintaxis. Ese es el aprendizaje real.

> 🎓 **Frase para recordar:** _"El mejor lenguaje para empezar es el que vas a usar mañana."_

---

## 🟢 PSeInt

Para mí, **PSeInt es algo que deberías practicar incluso si ya dominas otro lenguaje de programación**. Y si eres nuevo, mucho más. Ahí aprendes buenas prácticas sin que la sintaxis de un lenguaje real te estorbe.

PSeInt no exige llaves, ni clases, ni `main`. Pero sí te obliga a pensar el orden.

### Plantilla base

```pseint
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]

Algoritmo NombreDelEjercicio

    // ──────── DATOS ────────
    // Declarar variables
    Definir variable1 Como Entero;
    Definir variable2 Como Real;
    Definir variable3 Como Cadena;

    // ──────── ENTRADAS ────────
    // Solicitar información al usuario
    Escribir "Ingresa el primer dato: ";
    Leer variable1;

    // ──────── PROCESOS ────────
    // Resolver el problema
    // Cálculos, condiciones, ciclos

    // ──────── SALIDAS ────────
    // Mostrar resultados
    Escribir "El resultado es: ", variable1;

FinAlgoritmo
```

### Ejemplo concreto: sumar dos números

```pseint
// Autor: AndresStw
// Enunciado: Solicita dos números, calcula su suma y muestra el resultado.

Algoritmo Sumar2Numeros

    // ──────── DATOS ────────
    Definir Numero1, Numero2, Suma Como Entero;

    // ──────── ENTRADAS ────────
    Escribir "Ingrese el primer número: ";
    Leer Numero1;
    Escribir "Ingrese el segundo número: ";
    Leer Numero2;

    // ──────── PROCESOS ────────
    Suma <- Numero1 + Numero2;

    // ──────── SALIDAS ────────
    Escribir "La suma de: ", Numero1, " + ", Numero2, " es ", Suma;

FinAlgoritmo
```

> 💡 **Recuerda:** en PSeInt la asignación se hace con `<-`, no con `=`.

---

## 🟨 JavaScript

JavaScript tiene un detalle importante: **se ejecuta en dos entornos distintos**, y cada uno lee datos de forma diferente.

| Entorno       | ¿Dónde corre?         | Entrada       | Salida                      |
| ------------- | --------------------- | ------------- | --------------------------- |
| **Navegador** | Chrome, Firefox, Edge | `prompt()`    | `console.log()` / `alert()` |
| **Node.js**   | Terminal / servidor   | `prompt-sync` | `console.log()`             |

Te dejo las dos versiones.

### 🌐 Versión navegador (la más simple para empezar)

```javascript
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]
// Ejecutar en el navegador (consola con F12)

// ──────── DATOS ────────
let variable1, variable2, resultado;

// ──────── ENTRADAS ────────
variable1 = Number(prompt("Ingresa el primer número:"));
variable2 = Number(prompt("Ingresa el segundo número:"));

// ──────── PROCESOS ────────
resultado = variable1 + variable2;

// ──────── SALIDAS ────────
console.log("El resultado es: " + resultado);
alert("El resultado es: " + resultado);
```

### 🟩 Versión Node.js (para ejecutar en terminal)

Instala `prompt-sync` (una sola vez):

```bash
npm install prompt-sync
```

Luego:

```javascript
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]
// Ejecutar con: node archivo.js

// ──────── DATOS ────────
const prompt = require("prompt-sync")();
let variable1, variable2, resultado;

// ──────── ENTRADAS ────────
variable1 = Number(prompt("Ingresa el primer número: "));
variable2 = Number(prompt("Ingresa el segundo número: "));

// ──────── PROCESOS ────────
resultado = variable1 + variable2;

// ──────── SALIDAS ────────
console.log("El resultado es: " + resultado);
```

### Ejemplo concreto: sumar dos números (navegador)

```javascript
// Autor: AndresStw
// Enunciado: Solicita dos números, calcula su suma y muestra el resultado.

// ──────── DATOS ────────
let numero1, numero2, suma;

// ──────── ENTRADAS ────────
numero1 = Number(prompt("Ingrese el primer número:"));
numero2 = Number(prompt("Ingrese el segundo número:"));

// ──────── PROCESOS ────────
suma = numero1 + numero2;

// ──────── SALIDAS ────────
console.log("La suma de: " + numero1 + " + " + numero2 + " es: " + suma);
alert("La suma es: " + suma);
```

> ⚠️ **Ojo con `Number()`:** `prompt()` **siempre devuelve texto**. Si no lo conviertes, `"5" + "3"` te da `"53"` en lugar de `8`.

> 💡 **`let` vs `const`:** usa `let` para variables que cambian y `const` para valores fijos. No uses `var`, está en desuso.

---

## ☕ Java

Ay, mi querido amigo **resabiado**. Ese que tienes que organizar todo con lujo de detalle para que te entienda. Ese que te obliga a escribir `public class`, `main`, llaves, `;`… Todo. Pero todos sabemos que es porque es muy bueno. 😅

Java es exigente porque está pensado para proyectos grandes donde el orden importa más que la velocidad al escribir.

### Plantilla base

```java
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]

import java.util.Scanner;

public class NombreDelEjercicio {

    public static void main(String[] args) {

        // ──────── DATOS ────────
        // Declarar variables y Scanner
        Scanner entrada = new Scanner(System.in);

        // ──────── ENTRADAS ────────
        // Pedir datos al usuario con print
        // Leer con nextInt / nextDouble / nextLine

        // ──────── PROCESOS ────────
        // Cálculos, condicionales, ciclos

        // ──────── SALIDAS ────────
        // Mostrar resultados con println

        // ──────── CIERRE ────────
        entrada.close();

    }

}
```

### Ejemplo concreto: sumar dos números

```java
// Autor: AndresStw
// Enunciado: Solicita dos números, calcula su suma y muestra el resultado.

import java.util.Scanner;

public class Sumar2Numeros {

    public static void main(String[] args) {

        // ──────── DATOS ────────
        int numero1, numero2, suma;
        Scanner entrada = new Scanner(System.in);

        // ──────── ENTRADAS ────────
        System.out.print("Ingrese el primer número: ");
        numero1 = entrada.nextInt();

        System.out.print("Ingrese el segundo número: ");
        numero2 = entrada.nextInt();

        // ──────── PROCESOS ────────
        suma = numero1 + numero2;

        // ──────── SALIDAS ────────
        System.out.println("La suma es: " + suma);

        // ──────── CIERRE ────────
        entrada.close();

    }

}
```

> ⚠️ **Reglas que Java NO perdona:**
>
> - El nombre de la clase debe coincidir con el nombre del archivo.
> - Cada instrucción termina en `;`.
> - Cada `{` debe tener su `}`.
> - `System` y `String` van con mayúscula.
> - El `Scanner` necesita `import` y debe cerrarse al final.

---

## 🟪 C#

C# se parece bastante a Java, pero con diferencias importantes: usa `namespace`, su `Console` es más cómodo que `System.out`, y no hay `Scanner` que cerrar.

### Plantilla base

```csharp
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]

using System;

namespace NombreDelEjercicio
{
    class Program
    {
        static void Main(string[] args)
        {
            // ──────── DATOS ────────
            // Declarar variables

            // ──────── ENTRADAS ────────
            // Pedir datos con Console.Write
            // Leer con Console.ReadLine() + Convert o Parse

            // ──────── PROCESOS ────────
            // Cálculos, condicionales, ciclos

            // ──────── SALIDAS ────────
            // Mostrar resultados con Console.WriteLine
        }
    }
}
```

### Ejemplo concreto: sumar dos números

```csharp
// Autor: AndresStw
// Enunciado: Solicita dos números, calcula su suma y muestra el resultado.

using System;

namespace Sumar2Numeros
{
    class Program
    {
        static void Main(string[] args)
        {
            // ──────── DATOS ────────
            int numero1, numero2, suma;

            // ──────── ENTRADAS ────────
            Console.Write("Ingrese el primer número: ");
            numero1 = Convert.ToInt32(Console.ReadLine());

            Console.Write("Ingrese el segundo número: ");
            numero2 = Convert.ToInt32(Console.ReadLine());

            // ──────── PROCESOS ────────
            suma = numero1 + numero2;

            // ──────── SALIDAS ────────
            Console.WriteLine("La suma es: " + suma);
        }
    }
}
```

### Versión robusta con `TryParse`

```csharp
// ──────── ENTRADAS ────────
Console.Write("Ingrese el primer número: ");
if (!int.TryParse(Console.ReadLine(), out int numero1))
{
    Console.WriteLine("Eso no es un número válido.");
    return;
}
```

> ⚠️ **Sobre leer números en C#:** `Console.ReadLine()` **siempre devuelve `string`**.
>
> | Forma                             | Si el usuario escribe "hola"           |
> | --------------------------------- | -------------------------------------- |
> | `Convert.ToInt32("hola")`         | ❌ Excepción y el programa se cae      |
> | `int.TryParse("hola", out int n)` | ✅ Devuelve `false`, el programa sigue |

---

## 🟦 C++

C++ es el más "crudo" de todos: no tiene `String` mágico, ni clases obligatorias, ni una librería `Console` amable. Pero es muy directo una vez que aprendes sus símbolos.

### Plantilla base

```cpp
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]

#include <iostream>
#include <string>

using namespace std;

int main()
{
    // ──────── DATOS ────────
    // Declarar variables

    // ──────── ENTRADAS ────────
    // Pedir datos con cout
    // Leer con cin

    // ──────── PROCESOS ────────
    // Cálculos, condicionales, ciclos

    // ──────── SALIDAS ────────
    // Mostrar resultados con cout

    // ──────── CIERRE ────────
    return 0;
}
```

### Ejemplo concreto: sumar dos números

```cpp
// Autor: AndresStw
// Enunciado: Solicita dos números, calcula su suma y muestra el resultado.

#include <iostream>

using namespace std;

int main()
{
    // ──────── DATOS ────────
    int numero1, numero2, suma;

    // ──────── ENTRADAS ────────
    cout << "Ingrese el primer número: ";
    cin >> numero1;

    cout << "Ingrese el segundo número: ";
    cin >> numero2;

    // ──────── PROCESOS ────────
    suma = numero1 + numero2;

    // ──────── SALIDAS ────────
    cout << "La suma es: " << suma << endl;

    // ──────── CIERRE ────────
    return 0;
}
```

> ⚠️ **Diferencias clave de C++ frente a los demás:**
>
> | Símbolo                | ¿Qué significa?                              |
> | ---------------------- | -------------------------------------------- |
> | `#include <iostream>`  | Importa la librería de entrada/salida        |
> | `using namespace std;` | Permite usar `cout` sin escribir `std::cout` |
> | `cout <<`              | Imprime (las flechas apuntan "hacia afuera") |
> | `cin >>`               | Lee (las flechas apuntan "hacia adentro")    |
> | `endl`                 | Salto de línea (o `"\n"`)                    |
> | `return 0;`            | Le dice al sistema: "todo salió bien"        |

> 💡 **Sobre `cin >>`:** no lee espacios en blanco. Si el usuario escribe `"Hola Mundo"` en un `string`, solo captura `"Hola"`. Para leer líneas completas necesitas `getline(cin, variable);`.

---

## 🧩 Resumen visual: la misma lógica en 5 lenguajes

Ejercicio: **pedir dos números y mostrar su suma**.

| Lenguaje   | Datos                          | Entrada                                    | Proceso       | Salida                   |
| ---------- | ------------------------------ | ------------------------------------------ | ------------- | ------------------------ |
| **PSeInt** | `Definir a, b, s Como Entero;` | `Leer a;`                                  | `s <- a + b;` | `Escribir s;`            |
| **JS**     | `let a, b, s;`                 | `a = Number(prompt("..."));`               | `s = a + b;`  | `console.log(s);`        |
| **Java**   | `int a, b, s;`                 | `a = sc.nextInt();`                        | `s = a + b;`  | `System.out.println(s);` |
| **C#**     | `int a, b, s;`                 | `a = Convert.ToInt32(Console.ReadLine());` | `s = a + b;`  | `Console.WriteLine(s);`  |
| **C++**    | `int a, b, s;`                 | `cin >> a;`                                | `s = a + b;`  | `cout << s << endl;`     |

**Misma lógica. Distinta sintaxis.** Ese es el punto clave.

---

## ⚠️ Trampas comunes por lenguaje

| Lenguaje   | Trampa común                              | Solución                              |
| ---------- | ----------------------------------------- | ------------------------------------- |
| **PSeInt** | Usar `=` para asignar                     | Usar `<-`                             |
| **Java**   | Usar `Scanner` sin importar               | `import java.util.Scanner;`           |
| **Java**   | `nextLine()` justo después de `nextInt()` | Añadir un `entrada.nextLine();` extra |
| **JS**     | Olvidar `Number()` al usar `prompt()`     | `Number(prompt(...))`                 |
| **JS**     | Usar `var` en lugar de `let` o `const`    | Usar `let` o `const`                  |
| **C#**     | Usar `Convert.ToInt32` sin validar        | Usar `int.TryParse`                   |
| **C#**     | Olvidar `using System;`                   | Añadirlo al inicio                    |
| **C++**    | Olvidar `return 0;` en `main`             | Añadirlo al final                     |
| **C++**    | `cin >>` no lee espacios                  | Usar `getline(cin, variable);`        |

---

## 🎯 ¿Cómo usar estas plantillas?

1. **Copia la plantilla del lenguaje que estés practicando.**
2. **Rellena cada bloque** con lo que corresponda al ejercicio.
3. **Ejecuta y prueba.** Si algo no funciona, revisa primero el bloque donde crees que está el error.
4. **Repite el mismo ejercicio en varios lenguajes.** Vas a notar que la lógica es la misma; solo cambia la sintaxis.
5. **Cuando ya no necesites la plantilla**, déjala de lado. Ya interiorizaste el orden.

> 🎓 **Frase para recordar:** las plantillas no son muletas. Son el andamiaje que usas mientras construyes tu criterio. Cuando ya puedes escribir sin ellas, es porque el aprendizaje se quedó contigo.

---

## 🧩 ¿Por qué esta estructura funciona?

Porque es la **traducción directa** de cómo funciona cualquier programa:

1. Necesitas **datos** para trabajar.
2. Necesitas **recibirlos** de algún lado.
3. Necesitas **procesarlos** para obtener algo.
4. Necesitas **mostrar** ese algo.

Sin importar si estás en PSeInt, JavaScript, Java, C# o C++, ese flujo es siempre el mismo. Lo único que cambia es cómo se escribe cada paso.

---

_Apunte creado para Diccionario-Dev. Si encuentras un error o quieres aportar una plantilla para otro lenguaje (Python, Kotlin, Go, Rust…), abre un Issue o un Pull Request._

```

---

## 📌 Notas finales sobre el archivo

### Sobre la ubicación

Guarda este archivo en:

```

recursos/plantillas/README.md

````

Y si quieres, agrega un **link desde el README principal** del repo:

```markdown
## 📋 Plantillas para programar

¿Necesitas una plantilla base para empezar? Tenemos plantillas para PSeInt, JavaScript, Java, C# y C++.

→ [Ver plantillas](./recursos/plantillas/README.md)
````

### Sobre los lenguajes que podrías agregar después

Cuando el repo crezca, estos son los candidatos naturales:

| Lenguaje       | ¿Por qué agregarlo?                                    |
| -------------- | ------------------------------------------------------ |
| **Python**     | El más pedido por principiantes. Sintaxis muy simple.  |
| **Kotlin**     | Para desarrollo Android moderno. Reemplaza a Java.     |
| **TypeScript** | JavaScript con tipos. Muy usado en empresas.           |
| **Go**         | Backend moderno. Sintaxis simple, muy rápido.          |
| **Rust**       | Sistemas y rendimiento. Curva de aprendizaje empinada. |
| **SQL**        | No es lenguaje general, pero se usa en todo backend.   |

### Sobre el orden sugerido de aprendizaje

La ruta que te propuse (`PSeInt → JS → Java → C# → C++`) es **una recomendación**, no una regla. Pero si tuviera que defenderla:

- **PSeInt** porque aprendes a pensar sin pelearte con la sintaxis.
- **JS navegador** porque no necesitas instalar nada, y ves resultados al instante.
- **Java** porque te obliga a ordenar la cabeza y es el estándar empresarial.
- **C#** porque es el hermano elegante de Java, ideal para Unity y apps Windows.
- **C++** porque es el jefe final: control total, pero sin red de seguridad.

### Sobre repetir el mismo ejercicio

Cuando tengas tiempo, haz este ejercicio en los 5 lenguajes:

1. Pedir dos números.
2. Sumarlos.
3. Mostrar el resultado.

Vas a tardar 5 minutos en PSeInt, 10 en JS, 15 en Java, 15 en C#, y 20 en C++. Pero al terminarlo vas a entender algo que ningún tutorial te enseña: **la lógica es idéntica; el lenguaje es solo el idioma**.

---

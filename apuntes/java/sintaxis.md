# ☕ Java: por qué escribes tanto para hacer tan poco

> ¿Alguna vez miraste tu primer programa en Java y pensaste _"¿por qué rayos necesito escribir 5 líneas para imprimir un 'Hola'?"_
>
> Tranquilo, no eres el único. Bienvenido al club.

Este README es una guía para entender **qué significa cada palabra rara** que Java te obliga a escribir. No es memorizar, es entender por qué están ahí.

---

## 📑 Índice

1. [El trauma inicial](#-el-trauma-inicial)
2. [`public class HolaMundo`](#-parte-1-public-class-holamundo)
3. [`public static void main(String[] args)`](#-parte-2-public-static-void-mainstring-args)
4. [`System.out.println("Hola, mundo")`](#️-parte-3-systemoutprintlnhola-mundo)
5. [¿Por qué Java es tan verboso?](#-parte-4-por-qué-java-es-tan-verboso)
6. [Las llaves `{ }` y el `;`](#-parte-5-las-llaves---y-el-)
7. [La receta completa](#-parte-6-la-receta-completa)
8. [**Datos:** cómo declarar variables](#-parte-7-datos--cómo-declarar-variables)
9. [**Entradas:** cómo leer del teclado](#️-parte-8-entradas--cómo-leer-datos-del-usuario)
10. [**Procesos:** cómo hacer operaciones](#️-parte-9-procesos--cómo-hacer-operaciones)
11. [**Salidas:** cómo mostrar datos](#️-parte-10-salidas--cómo-mostrar-datos)
12. [**Un programa completo paso a paso**](#️-parte-11-un-programa-completo-paso-a-paso)
13. [Tabla resumen: PSeInt vs Java](#-tabla-resumen-pseint-vs-java)
14. [Errores que vas a cometer](#️-errores-que-vas-a-cometer-y-está-bien)
15. [Conclusión](#-conclusión)

---

## 🤔 El trauma inicial

Todos empezamos igual. Escribes tu primer programa en Java y ves esto:

```java
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("Hola, mundo");
    }
}
```

Y piensas:

> 😵 **"En Python esto es una línea. ¿Por qué Java me está gritando?"**

Respira. Vamos a desarmar esta cosa pieza por pieza, como si fuera un LEGO.

---

## 🧱 Parte 1: `public class HolaMundo`

```java
public class HolaMundo { ... }
```

### ¿Qué es `class`?

Java es un lenguaje **orientado a objetos**, y todo en Java vive dentro de una **clase**. Piensa en una clase como una **caja grande** donde metes cosas: variables, métodos, todo.

![Imagen para referencia de una variable](../pseint/imagenes/variable.png)

> En PSeInt, todo vivía dentro de `Algoritmo ... FinAlgoritmo`. En Java, todo vive dentro de `class ... { }`.

### ¿Qué es `public`?

`public` significa **"visible para todos"**. Es un modificador de acceso.

Piensa en una casa:

- **`public`** → la fachada. Cualquiera puede verla.
- **`private`** → tu habitación. Solo tú.
- **`protected`** → la sala familiar. Solo los de la casa.

Por ahora solo necesitas saber que `public` significa "accesible desde cualquier lado". Ya aprenderás los demás.

### ¿Por qué el nombre debe coincidir con el archivo?

Porque Java es un obsesivo del orden. Si tu clase se llama `HolaMundo`, el archivo **obligatoriamente** debe llamarse `HolaMundo.java`. Mayúsculas y todo así de simple...

> ⚠️ Si lo nombras `holamundo.java` con minúscula, Java te va a decir: "No sé qué estás haciendo, pero no".

**Equivalencia PSeInt → Java:**

| PSeInt                 | Java                               |
| ---------------------- | ---------------------------------- |
| `Algoritmo MiPrograma` | `public class MiPrograma`          |
| `FinAlgoritmo`         | `}` (la llave que cierra la clase) |

---

## 🚪 Parte 2: `public static void main(String[] args)`

Esta es la línea que hace que todo el mundo llore. Vamos por partes.

### ¿Qué es `main`?

`main` es el **nombre especial** que Java busca para empezar a ejecutar tu programa.

Cuando le das "Run", Java busca el método llamado `main` y dice: "Ok, aquí empiezo". Sin `main`, tu programa no corre. Es el punto de entrada.

En PSeInt no tenías que escribir esto porque el algoritmo ya sabía dónde empezar. En Java, **tú debes decirle dónde**.

### ¿Por qué `public`?

Porque Java necesita poder **llamar a `main` desde afuera** (desde el sistema operativo o el IDE). Si fuera `private`, nadie podría ejecutarlo.

> 🤔 **"¿Y quién lo llama?"** → El sistema. Literalmente, la máquina virtual de Java le dice: "Ey, `main`, arranca".

### ¿Por qué `static`?

Aquí viene la parte bonita.

Normalmente, para usar algo de una clase, necesitas **crear un objeto** de esa clase. Por ejemplo:

```java
Persona p = new Persona(); // Creas un objeto
p.saludar();               // Y usas sus métodos
```

Pero si `main` necesitara crear un objeto de su propia clase para funcionar, sería un problema: ¿quién crea ese objeto? ¿El objeto de quién?

`static` significa: **"este método pertenece a la clase, NO a un objeto específico"**. Así Java puede llamar a `main` **sin necesidad de crear un objeto**.

> 💡 **Analogía simple:** un método `static` es como una máquina expendedora en la calle. No necesitas "tener" la máquina para usarla. Está ahí, disponible. Un método no-static es como una cafetera personal: necesitas tener la cafetera para usarla.

### ¿Por qué `void`?

`void` significa **"no devuelve nada"**.

En PSeInt tenías funciones que devolvían un valor y otras que solo hacían algo. En Java, todas las funciones deben declarar **qué devuelven**. Si no devuelven nada, se pone `void`.

`main` no devuelve nada porque solo ejecuta el programa. Nadie espera un resultado de vuelta.

### ¿Por qué `String[] args`?

`args` es un **arreglo de textos**. Guarda los parámetros que se pasan al programa desde la consola.

Por ejemplo, si ejecutas:

```bash
java MiPrograma hola mundo
```

Entonces `args` contiene `["hola", "mundo"]`. Puedes acceder a ellos con `args[0]`, `args[1]`, etc.

Si nunca pasas parámetros, `args` estará vacío. Pero **debe existir** porque Java exige esa firma exacta para reconocer el método `main`.

### 🧩 Todo junto

```java
public static void main(String[] args) { ... }
```

Traducción al español:

> **"Este método es visible para todos (`public`), pertenece a la clase y no a un objeto (`static`), no devuelve nada (`void`), se llama `main` y recibe un arreglo de textos (`String[] args`)."**

Ya sé. Sigue siendo largo. Pero ahora **sabes qué significa cada palabra**, no solo las escribes de memoria.

**Equivalencia PSeInt → Java:**

| PSeInt                            | Java                                     |
| --------------------------------- | ---------------------------------------- |
| El inicio implícito del algoritmo | `public static void main(String[] args)` |

---

## 🖨️ Parte 3: `System.out.println("Hola, mundo")`

Otra línea que parece un trabalenguas. Vamos a desmenuzarla.

### ¿Qué es `System`?

`System` es una clase que Java trae incluida. Contiene herramientas para interactuar con el sistema (entrada, salida, errores, etc.).

### ¿Qué es `out`?

`out` es un **atributo estático** de `System` que representa la **salida estándar**. O sea, la consola donde ves los mensajes.

> 📌 **Nota:** `out` es la salida normal. También existe `err` para mensajes de error. Y `in` para la entrada (sí, el mismo que usa `Scanner`).

### ¿Qué es `println`?

`println` = **print line** = "imprime y salta de línea".

- `println("Hola")` → imprime "Hola" y baja a la siguiente línea.
- `print("Hola")` → imprime "Hola" sin saltar de línea.

### 🧩 La ruta completa

```
System  →  la clase con herramientas del sistema
  .out  →  la salida estándar (la consola)
  .println(...)  →  el método que imprime y salta de línea
```

Leyéndolo de izquierda a derecha:

> **"De la clase `System`, usa el objeto `out`, y ejecuta su método `println`."**

Es como dar indicaciones de una dirección: **Casa → Habitación → Cama**.

**Equivalencia PSeInt → Java:**

| PSeInt                       | Java                          |
| ---------------------------- | ----------------------------- |
| `Escribir "Hola"`            | `System.out.println("Hola");` |
| `Escribir Sin Saltar "Hola"` | `System.out.print("Hola");`   |

---

## 📦 Parte 4: ¿Por qué Java es tan verboso?

Buena pregunta. Y la respuesta tiene que ver con el **diseño del lenguaje**.

Java se creó en 1995 con una meta: **ser un lenguaje serio para sistemas grandes**. Eso significa:

- **Todo debe ser explícito.** Nada de adivinar.
- **El compilador te avisa antes de ejecutar.** Por eso exige tipos, llaves, nombres exactos.
- **El código debe ser legible para otros.** Aunque escribas más, cualquiera lo entiende rápido.

Comparemos:

**🐍 Python (relajado):**

```python
print("Hola")
```

**☕ Java (estricto):**

```java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hola");
    }
}
```

Python te deja ser libre. Java te obliga a **ordenar tus ideas antes de escribir**.

> 🎯 **Consejo mental:** Java no es complicado porque quiera torturarte. Es exigente porque está diseñado para proyectos grandes donde el orden importa más que la rapidez de escribir.

---

## 🎨 Parte 5: Las llaves `{ }` y el `;`

Estas dos cositas son la causa #1 de errores en principiantes. Así que presta atención.

### Las llaves `{ }`

Delimitan **bloques de código**. Como `FinSi`, `FinPara`, `FinAlgoritmo` en PSeInt, pero más compacto.

```java
public class Main {     // ← Abre la clase
    public static void main(String[] args) {  // ← Abre el método
        System.out.println("Hola");           // ← Instrucción
    }                                          // ← Cierra el método
}                                              // ← Cierra la clase
```

Cada `{` debe tener su `}`. Y deben estar **anidadas correctamente**.

> ⚠️ Si te falta una llave, Java te va a decir que "falta un símbolo" y te va a volver loco buscando dónde. Sí, ya lo vas a vivir. 😂

### El `;`

Cada instrucción termina con `;`. **Punto**. Sin excepciones (bueno, casi).

```java
int edad = 20;                       // ✅ Lleva ;
System.out.println("Hola");          // ✅ Lleva ;
if (edad >= 18) { ... }              // ❌ El if NO lleva ; después de la llave
```

**¿Por qué existe el `;`?**

Porque Java necesita saber **dónde termina una instrucción**. En PSeInt, cada línea se interpretaba sola. En Java, podrías escribir todo en una sola línea y el `;` separa las instrucciones.

> 💡 **Truco:** mira tu código y pregúntate "¿esta línea hace algo?". Si la respuesta es sí, probablemente lleva `;`.

---

## 🔍 Parte 6: La receta completa

Vamos a armar el esqueleto mínimo de un programa Java, anotado:

```java
// 1. Importar herramientas (opcional, solo si las usas)
import java.util.Scanner;

// 2. Declarar la clase (nombre = nombre del archivo)
public class MiPrograma {

    // 3. Método principal (punto de entrada, siempre igual)
    public static void main(String[] args) {

        // 4. Aquí va tu código
        System.out.println("Hola, mundo");

    } // ← Cierra main
} // ← Cierra la clase
```

**Plantilla mental para memorizar:**

```
Importación (si hace falta)
  ↓
Clase pública (nombre = archivo)
  ↓
Método main (siempre igual)
  ↓
Tu código aquí
```

Cada programa Java que hagas va a seguir este esqueleto. **Siempre**. Con el tiempo lo escribirás sin pensar.

---

## 🧮 Parte 7: Datos — Cómo declarar variables

En PSeInt aprendiste a usar `Definir x Como Entero`. En Java se hace muy parecido, pero con **tipos más específicos** y **siempre con `;` al final**.

### La fórmula básica

```java
tipo nombre = valor;
```

Tres partes: **tipo**, **nombre**, **valor**. Como una caja etiquetada: sabes qué hay dentro (tipo), cómo se llama (nombre) y qué contiene (valor).

### Los tipos que más vas a usar

| Tipo Java | PSeInt equivalente | ¿Qué guarda?                | Ejemplo                     |
| --------- | ------------------ | --------------------------- | --------------------------- |
| `int`     | `Entero`           | Números sin decimales       | `int edad = 20;`            |
| `double`  | `Real`             | Números con decimales       | `double precio = 19.99;`    |
| `float`   | `Real`             | Decimales (menos precisión) | `float velocidad = 5.5f;`   |
| `boolean` | `Logico`           | Verdadero o falso           | `boolean activo = true;`    |
| `char`    | (no existe)        | Un solo carácter            | `char inicial = 'A';`       |
| `String`  | `Cadena`           | Texto                       | `String nombre = "Andres";` |

> ⚠️ **Ojo:** `String` va con **S mayúscula**. `string` con minúscula no existe en Java. Es uno de los errores más comunes al venir de otros lenguajes.

### Tres formas de declarar

**1. Declarar y asignar en la misma línea** (la más usada):

```java
int edad = 20;
String nombre = "Andres";
```

**2. Declarar primero, asignar después:**

```java
int edad;        // La caja existe pero está vacía
edad = 20;       // Ahora guardas un valor
```

Útil cuando el valor depende de una condición o una entrada.

**3. Declarar varias del mismo tipo en una línea:**

```java
int a = 1, b = 2, c = 3;
```

O sin asignar:

```java
int a, b, c;     // Tres cajas vacías listas para usar
```

> 💡 **Consejo:** no abuses de esta forma. En proyectos reales, una variable por línea es más fácil de leer y de modificar.

### Reglas de nombrado (esto Java lo exige)

- Empieza con **letra minúscula** (por convención).
- Si tiene varias palabras, usa **camelCase**: `nombreCompleto`, `edadUsuario`, `precioTotal`.
- **No** uses espacios, guiones ni acentos.
- **No** puede empezar con número: `2edad` ❌, `edad2` ✅.
- **Sí** puede contener números: `nota1`, `nota2`.

| ❌ Mal            | ✅ Bien          |
| ----------------- | ---------------- |
| `Nombre`          | `nombre`         |
| `nombre_completo` | `nombreCompleto` |
| `precio-total`    | `precioTotal`    |
| `2nota`           | `nota2`          |

### Constantes: `final`

Cuando un valor **no debe cambiar** durante el programa, se marca con `final`. Por convención, su nombre va en **MAYÚSCULAS**.

```java
final double PI = 3.14159;
final int MAX_INTENTOS = 3;
final String APP_NAME = "Diccionario-Dev";
```

Si intentas cambiarlas después, Java te tira error:

```java
PI = 3.14;  // ❌ Error: cannot assign a value to final variable PI
```

**Equivalencia PSeInt → Java:**

| PSeInt                         | Java                  |
| ------------------------------ | --------------------- |
| `Definir edad Como Entero`     | `int edad;`           |
| `Definir precio Como Real`     | `double precio;`      |
| `Definir nombre Como Cadena`   | `String nombre;`      |
| `Definir activo Como Logico`   | `boolean activo;`     |
| (no existe)                    | `char inicial;`       |
| (no existe, se usaba variable) | `final int MAX = 10;` |

---

## ⌨️ Parte 8: Entradas — Cómo leer datos del usuario

En PSeInt, leer un dato era tan simple como `Leer edad`. En Java... bueno, Java es Java. Necesitas **tres pasos** antes de poder leer un solo número.

### Los tres pasos obligatorios

**1. Importar la clase `Scanner`** (arriba del archivo, antes de la clase):

```java
import java.util.Scanner;
```

**2. Crear el objeto `Scanner`** (dentro de `main`):

```java
Scanner entrada = new Scanner(System.in);
```

**3. Leer el dato** con el método correcto:

```java
int edad = entrada.nextInt();
```

> 🔍 **¿Qué es `System.in`?** Es el flujo de entrada del sistema. En lenguaje simple: "el teclado".

### Los métodos del Scanner (memorízalos)

| Método          | ¿Qué lee?                         | Ejemplo                              |
| --------------- | --------------------------------- | ------------------------------------ |
| `nextInt()`     | Un número entero                  | `int edad = entrada.nextInt();`      |
| `nextDouble()`  | Un número decimal                 | `double p = entrada.nextDouble();`   |
| `next()`        | Una palabra (sin espacios)        | `String n = entrada.next();`         |
| `nextLine()`    | Una línea completa (con espacios) | `String n = entrada.nextLine();`     |
| `nextBoolean()` | `true` o `false`                  | `boolean a = entrada.nextBoolean();` |

### Ejemplo completo: sumar dos números

```java
import java.util.Scanner;

public class Sumar {
    public static void main(String[] args) {

        // 1. Preparar el Scanner
        Scanner entrada = new Scanner(System.in);

        // 2. Pedir los datos (con print para que el cursor quede al lado)
        System.out.print("Ingresa el primer número: ");
        int numero1 = entrada.nextInt();

        System.out.print("Ingresa el segundo número: ");
        int numero2 = entrada.nextInt();

        // 3. Procesar
        int suma = numero1 + numero2;

        // 4. Mostrar el resultado
        System.out.println("La suma es: " + suma);

        // 5. Cerrar el Scanner
        entrada.close();
    }
}
```

**Salida esperada:**

```
Ingresa el primer número: 5
Ingresa el segundo número: 3
La suma es: 8
```

### ⚠️ El error clásico: `nextLine()` después de `nextInt()`

Este te va a morder **algún día**. Presta atención.

Si mezclas `nextInt()` (o `nextDouble()`, `next()`) con `nextLine()`, el `nextLine()` se salta la lectura y aparece vacío. ¿Por qué?

Porque cuando escribes `5` y presionas `Enter`:

- `nextInt()` lee el `5`.
- **Deja el `Enter` pendiente** en el buffer.
- `nextLine()` lee ese `Enter` como si fuera una línea vacía.

**Solución:** añade un `entrada.nextLine();` extra después del `nextInt()` para "consumir" el `Enter`.

```java
System.out.print("Ingresa tu edad: ");
int edad = entrada.nextInt();
entrada.nextLine();  // ⬅️ Consume el Enter pendiente

System.out.print("Ingresa tu nombre: ");
String nombre = entrada.nextLine();  // Ahora sí funciona
```

### Validación básica con `try / catch`

Si el usuario escribe "hola" donde esperabas un número, `nextInt()` lanza una excepción y el programa se cae. Para que no explote:

```java
System.out.print("Ingresa un número: ");

try {
    int numero = entrada.nextInt();
    System.out.println("Ingresaste: " + numero);
} catch (Exception e) {
    System.out.println("Eso no es un número válido.");
}
```

Se llama **manejo de excepciones**. Lo verás en detalle más adelante, pero vale la pena que lo conozcas desde ya.

### ¿Por qué cerrar el `Scanner`?

```java
entrada.close();
```

Porque el `Scanner` abre un flujo hacia el teclado, y dejarlo abierto consume recursos. En programas pequeños no se nota, pero es **buena práctica** cerrarlo cuando ya no lo uses.

**Equivalencia PSeInt → Java:**

| PSeInt        | Java                                                                          |
| ------------- | ----------------------------------------------------------------------------- |
| `Leer edad`   | `Scanner entrada = new Scanner(System.in);` + `int edad = entrada.nextInt();` |
| `Leer nombre` | `String nombre = entrada.nextLine();`                                         |
| `Leer precio` | `double precio = entrada.nextDouble();`                                       |

Como ves, Java te hace escribir 3 líneas para algo que en PSeInt era 1. Es el precio de la formalidad.

---

## ⚙️ Parte 9: Procesos — Cómo hacer operaciones

Aquí es donde Java y PSeInt se parecen más. Los operadores son casi los mismos, solo cambian algunos símbolos.

### Operadores aritméticos

| Operador | Significado      | PSeInt | Java |
| -------- | ---------------- | ------ | ---- |
| `+`      | Suma             | `+`    | `+`  |
| `-`      | Resta            | `-`    | `-`  |
| `*`      | Multiplicación   | `*`    | `*`  |
| `/`      | División         | `/`    | `/`  |
| `%`      | Módulo (residuo) | `MOD`  | `%`  |

```java
int a = 10;
int b = 3;

int suma = a + b;         // 13
int resta = a - b;        // 7
int mult = a * b;         // 30
int div = a / b;          // 3  ⚠️ ojo aquí
int residuo = a % b;      // 1
```

> ⚠️ **Cuidado con la división entre enteros:** `10 / 3` da **3**, no 3.3333. Java descarta la parte decimal. Para obtener el resultado real, al menos uno de los operandos debe ser decimal:
>
> ```java
> double resultado = 10.0 / 3.0;  // 3.3333333333333335
> ```

### Operadores de comparación

| Operador | Significado       | Ejemplo  |
| -------- | ----------------- | -------- |
| `==`     | Igual a           | `a == b` |
| `!=`     | Distinto de       | `a != b` |
| `>`      | Mayor que         | `a > b`  |
| `<`      | Menor que         | `a < b`  |
| `>=`     | Mayor o igual que | `a >= b` |
| `<=`     | Menor o igual que | `a <= b` |

**Ojo:** `==` compara. `=` asigna. No los mezcles.

```java
int edad = 20;             // ✅ Asignación
if (edad == 20) { ... }    // ✅ Comparación
if (edad = 20) { ... }     // ❌ Error de compilación
```

### Operadores lógicos

| Operador | Significado | PSeInt |
| -------- | ----------- | ------ |
| `&&`     | AND (y)     | `Y`    |
| `\|\|`   | OR (o)      | `O`    |
| `!`      | NOT (no)    | `NO`   |

```java
int edad = 20;
boolean tieneEntrada = true;

if (edad >= 18 && tieneEntrada) {
    System.out.println("Puede entrar.");
}

if (edad < 18 || !tieneEntrada) {
    System.out.println("No puede entrar.");
}
```

### Incremento y decremento

```java
int contador = 0;

contador++;    // Aumenta 1 → contador = 1
contador--;    // Disminuye 1 → contador = 0

contador += 5; // Suma 5 → contador = 5
contador -= 2; // Resta 2 → contador = 3
contador *= 2; // Multiplica por 2 → contador = 6
contador /= 3; // Divide por 3 → contador = 2
```

Estos son los que más vas a usar en ciclos (`for`).

### Concatenación de Strings

El `+` también sirve para unir textos:

```java
String nombre = "Andres";
int edad = 20;

String mensaje = "Me llamo " + nombre + " y tengo " + edad + " años.";
System.out.println(mensaje);
```

**Salida:**

```
Me llamo Andres y tengo 20 años.
```

Java convierte automáticamente el `int` a texto cuando lo pegas con `+`.

> 💡 **Truco:** si quieres unir texto con un número y que Java NO sume, cuida el orden:
>
> ```java
> System.out.println("Resultado: " + 5 + 3);   // "Resultado: 53" 😱
> System.out.println("Resultado: " + (5 + 3)); // "Resultado: 8" ✅
> ```

---

## 🖨️ Parte 10: Salidas — Cómo mostrar datos

Ya conoces `System.out.println`, pero no es la única forma de mostrar datos. Aquí las tres que usarás.

### `println` vs `print` vs `printf`

| Método    | ¿Qué hace?                             | Cuándo usarlo            |
| --------- | -------------------------------------- | ------------------------ |
| `println` | Imprime y **salta de línea**           | Resultados finales       |
| `print`   | Imprime **sin saltar de línea**        | Preguntas al usuario     |
| `printf`  | Imprime con **formato** (decimales, %) | Cuando necesitas control |

```java
System.out.println("Hola");                // Imprime y salta
System.out.print("Ingresa tu nombre: ");   // Imprime sin saltar
System.out.printf("Pi = %.2f%n", 3.14159); // "Pi = 3.14"
```

### ¿Cuándo usar `print` y cuándo `println`?

**`print`** cuando quieres que el usuario escriba **en la misma línea** que la pregunta:

```java
System.out.print("¿Cómo te llamas? ");
String nombre = entrada.nextLine();
```

Salida:

```
¿Cómo te llamas? Andres_
```

**`println`** cuando quieres mostrar un resultado o mensaje cerrado:

```java
System.out.println("Hola, " + nombre);
```

Salida:

```
Hola, Andres
```

### `printf` para dar formato

Cuando quieres mostrar decimales con precisión exacta o alinear columnas:

```java
double precio = 19.999999;
System.out.printf("Precio: %.2f%n", precio);   // "Precio: 20.00"
```

**Códigos de formato más comunes:**

| Código | ¿Para qué?           | Ejemplo                   |
| ------ | -------------------- | ------------------------- |
| `%d`   | Entero               | `printf("%d", 42)`        |
| `%f`   | Decimal              | `printf("%f", 3.14)`      |
| `%.2f` | Decimal con 2 cifras | `printf("%.2f", 3.14159)` |
| `%s`   | Texto                | `printf("%s", "Hola")`    |
| `%n`   | Salto de línea       | `printf("Hola%n")`        |

Ejemplo completo:

```java
String nombre = "Andres";
int edad = 20;
double promedio = 4.5678;

System.out.printf("Nombre: %s%n", nombre);
System.out.printf("Edad: %d años%n", edad);
System.out.printf("Promedio: %.2f%n", promedio);
```

**Salida:**

```
Nombre: Andres
Edad: 20 años
Promedio: 4.57
```

> 💡 **¿Por qué `%n` y no `\n`?** Porque `%n` es portable entre sistemas operativos (Windows usa `\r\n`, Linux usa `\n`). En `printf`, siempre usa `%n`.

### Caracteres especiales

Dentro de un String, puedes usar secuencias de escape:

| Código | Significado     |
| ------ | --------------- |
| `\n`   | Salto de línea  |
| `\t`   | Tabulación      |
| `\"`   | Comilla doble   |
| `\\`   | Barra invertida |

```java
System.out.println("Hola\nMundo");        // Dos líneas
System.out.println("Nombre\tEdad");       // Tabulación
System.out.println("Él dijo: \"Hola\"");  // Comillas internas
```

**Equivalencia PSeInt → Java:**

| PSeInt                       | Java                                   |
| ---------------------------- | -------------------------------------- |
| `Escribir "Hola"`            | `System.out.println("Hola");`          |
| `Escribir Sin Saltar "Hola"` | `System.out.print("Hola");`            |
| `Escribir "Total: ", x`      | `System.out.println("Total: " + x);`   |
| (no existe)                  | `System.out.printf("Total: %d%n", x);` |

---

## 🏗️ Parte 11: Un programa completo paso a paso

Vamos a armar un programa Java **bien estructurado**, usando la misma lógica que aprendiste en PSeInt: **Datos → Entradas → Procesos → Salidas**.

**Ejercicio:** pedir dos notas, calcular el promedio y mostrarlo.

### El código completo

```java
// Autor: AndresStw
// Enunciado: Pedir dos notas, calcular el promedio y mostrar el resultado.

import java.util.Scanner;

public class PromedioNotas {

    public static void main(String[] args) {

        // ──────── DATOS ────────
        double nota1, nota2, promedio;
        Scanner entrada = new Scanner(System.in);

        // ──────── ENTRADAS ────────
        System.out.print("Ingresa la primera nota: ");
        nota1 = entrada.nextDouble();

        System.out.print("Ingresa la segunda nota: ");
        nota2 = entrada.nextDouble();

        // ──────── PROCESOS ────────
        promedio = (nota1 + nota2) / 2;

        // ──────── SALIDAS ────────
        System.out.println("El promedio es: " + promedio);

        // ──────── CIERRE ────────
        entrada.close();
    }
}
```

### ¿Por qué esta estructura importa?

Porque **divide el problema en partes claras**. Cualquiera que abra el archivo entiende de un vistazo:

- **Datos:** qué variables necesito.
- **Entradas:** qué le pido al usuario.
- **Procesos:** qué cálculos hago.
- **Salidas:** qué muestro.
- **Cierre:** liberar recursos.

Es la misma lógica que usabas en tus `.psc` de PSeInt, pero traducida a Java.

### Comparación directa con PSeInt

**PSeInt (PromedioDeNotas.psc):**

```pseint
Algoritmo PromedioDeNotas
    // Datos
    Definir Nota1, Nota2, Promedio, suma Como Real;

    // Entradas
    Escribir "Ingrese su primera nota ";
    Leer Nota1;
    Escribir "Ingrese su segunda nota ";
    Leer Nota2;

    // Procesos
    suma = Nota1 + Nota2;
    Promedio = suma / 2;

    // Salida
    Escribir "Su promedio es de: ", Promedio;
FinAlgoritmo
```

**Java (PromedioNotas.java):**

```java
import java.util.Scanner;

public class PromedioNotas {
    public static void main(String[] args) {
        // Datos
        double nota1, nota2, promedio;
        Scanner entrada = new Scanner(System.in);

        // Entradas
        System.out.print("Ingrese su primera nota: ");
        nota1 = entrada.nextDouble();
        System.out.print("Ingrese su segunda nota: ");
        nota2 = entrada.nextDouble();

        // Procesos
        promedio = (nota1 + nota2) / 2;

        // Salida
        System.out.println("Su promedio es de: " + promedio);

        entrada.close();
    }
}
```

**La lógica es idéntica.** Solo cambia la sintaxis. Ese es el punto clave: **ya sabes programar. Solo estás aprendiendo a escribirlo en Java.**

### Anatomía visual del archivo

```
┌─ import java.util.Scanner;              ← Herramientas
│
├─ public class PromedioNotas {           ← La clase (nombre = archivo)
│  │
│  ├─ public static void main(...) {      ← Punto de entrada
│  │  │
│  │  ├─ // Datos                         ← 1. Datos
│  │  ├─ // Entradas                      ← 2. Entradas
│  │  ├─ // Procesos                      ← 3. Procesos
│  │  ├─ // Salidas                       ← 4. Salidas
│  │  └─ entrada.close();                 ← 5. Cierre
│  │
│  }                                      ← Cierra main
│
}                                          ← Cierra clase
```

### Plantilla mental reutilizable

Guarda esto, lo vas a usar en cada ejercicio:

```java
// Autor: [Tu nombre]
// Enunciado: [Qué hace el programa]

import java.util.Scanner;

public class NombreDelEjercicio {

    public static void main(String[] args) {

        // ──────── DATOS ────────
        // Declarar variables y Scanner

        // ──────── ENTRADAS ────────
        // Pedir datos al usuario con print
        // Leer con nextInt / nextDouble / nextLine

        // ──────── PROCESOS ────────
        // Cálculos, condicionales, ciclos

        // ──────── SALIDAS ────────
        // Mostrar resultados con println

        // ──────── CIERRE ────────
        // entrada.close();
    }
}
```

Cada programa Java que hagas va a seguir este esqueleto. Siempre. Con el tiempo lo escribirás sin pensar.

---

## 📊 Tabla resumen: PSeInt vs Java

| Concepto            | PSeInt                  | Java                            |
| ------------------- | ----------------------- | ------------------------------- |
| Inicio del programa | `Algoritmo Nombre`      | `public class Nombre` + `main`  |
| Fin del programa    | `FinAlgoritmo`          | `}` (última llave)              |
| Declarar variable   | `Definir x Como Entero` | `int x;`                        |
| Asignar             | `x <- 5`                | `x = 5;`                        |
| Constante           | (no existe)             | `final int MAX = 10;`           |
| Imprimir            | `Escribir "Hola"`       | `System.out.println("Hola");`   |
| Imprimir sin salto  | `Escribir Sin Saltar`   | `System.out.print("Hola");`     |
| Leer dato           | `Leer edad`             | `Scanner` + `entrada.nextInt()` |
| Separador           | Salto de línea          | `;`                             |
| Bloques             | `FinSi`, `FinPara`      | `{ }`                           |
| Comentario          | `//`                    | `//`                            |

---

## ⚠️ Errores que vas a cometer (y está bien)

- **Olvidar un `;`** → Java te dirá "expected ';'". Busca la línea.
- **Olvidar una `}`** → "reached end of file while parsing". Busca la llave que falta.
- **Escribir mal el nombre del archivo** → "class is public, should be declared in a file named...". Ajústalo.
- **Olvidar el `main`** → "Main method not found in class". Copia el esqueleto de nuevo.
- **Escribir `System.out.printline`** → No existe. Es `println` (print line).
- **Escribir `system.out`** con minúscula → No existe. `System` va con mayúscula.
- **Escribir `string`** en lugar de `String` → No existe. Va con mayúscula.
- **Usar `Scanner` sin importarlo** → "cannot find symbol: class Scanner". Agrega `import java.util.Scanner;`.
- **Declarar `Scanner = entrada.nextInt()`** → `Scanner` es una clase, no una variable. Primero se crea el objeto: `Scanner entrada = new Scanner(System.in);`.
- **Pasar argumentos a `nextInt()`** → `nextInt()` no recibe parámetros. Se usa vacío: `entrada.nextInt();`.

> 🎯 **Regla de oro:** Java es case-sensitive. `System` y `system` son cosas distintas. Igual con `String` vs `string`.

---

## 🚀 Conclusión

Java no es "difícil". Es **explícito**. Te obliga a decirle **todo** lo que quieres hacer, sin atajos, sin adivinanzas.

Y eso es justamente lo que lo hace un lenguaje serio, usado en bancos, apps, empresas y sistemas críticos.

Cuando alguien te diga:

> _"Java escribe demasiado para hacer tan poco"_

Tú respondes:

> _"Java no escribe mucho. Solo te obliga a ser claro."_

Una vez que entiendas **por qué** están esas palabras raras, dejan de ser raras. Se vuelven obvias. Y ya no las escribes porque toca, sino porque **sabes por qué están ahí**.

**No memorices Java. Entiéndelo.**

---

_Apunte de sintaxis Java creado para Diccionario-Dev. Si encuentras un error o quieres aportar, abre un Issue o un Pull Request._

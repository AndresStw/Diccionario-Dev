# 🧠 PSeInt: el lenguaje que te enseña a pensar antes de escribir

> PSeInt es como ese profe de matemáticas que te dice _"primero entiende el problema, después lo resuelves"_.
>
> No te deja escribir código sin pensar. Y eso, aunque a veces da flojera, es lo que te vuelve programador de verdad. 😅

Este README es tu **chuleta completa de sintaxis PSeInt**. Cada instrucción, cada palabra, cada símbolo raro, explicado sin dolor.

---

## 🎯 ¿Qué es PSeInt y por qué debería importarte?

**PSeInt** = **P**seudo **Se**udocode **Int**erpreter.

Es una herramienta educativa que te deja escribir algoritmos en **pseudocódigo** (un idioma intermedio entre español e inglés), y ejecutarlos como si fuera un lenguaje real.

Su objetivo no es que hagas aplicaciones. Su objetivo es que **aprendas a pensar como programador** sin pelearte con la sintaxis estricta de Java, C# o Python.

> 💡 **Idea clave:** PSeInt es el gimnasio donde entrenas la lógica. Después, cuando entres a Java, ya tienes los músculos.

---

## 🏗️ La estructura básica de un algoritmo

Todo programa en PSeInt vive entre `Algoritmo` y `FinAlgoritmo`. Como un sándwich: el pan de arriba, el relleno, el pan de abajo.

```pseint
Algoritmo MiPrograma
    // Aquí va tu código
FinAlgoritmo
```

Eso es todo. Sin `public`, sin `class`, sin `main`. Solo el nombre y el cuerpo.

> 😌 **Respira.** Comparado con Java, PSeInt es un masaje.

**Comparación con Java:**

| PSeInt                 | Java                                                       |
| ---------------------- | ---------------------------------------------------------- |
| `Algoritmo MiPrograma` | `public class MiPrograma` + `public static void main(...)` |
| `FinAlgoritmo`         | `}` (la última llave)                                      |
| Todo va directo        | Necesitas clases, main, etc.                               |

---

## 📦 Declarar variables: el famoso `Definir`

Antes de usar una variable, PSeInt te pide declararla. Es como decirle _"ojo, voy a guardar algo aquí"_.

```pseint
Definir edad Como Entero
Definir precio Como Real
Definir nombre Como Cadena
Definir activo Como Logico
```

### 📋 Los tipos de datos en PSeInt

| Tipo     | ¿Qué guarda?                  | Ejemplo                   |
| -------- | ----------------------------- | ------------------------- |
| `Entero` | Números sin decimales         | `10`, `-3`, `500`         |
| `Real`   | Números con decimales         | `3.14`, `1500.50`, `-0.5` |
| `Cadena` | Texto (cadenas de caracteres) | `"Hola"`, `"Andrés"`      |
| `Logico` | Verdadero o Falso             | `Verdadero`, `Falso`      |

### 🧠 Truco: puedes agrupar variables del mismo tipo

Si tres variables son `Entero`, no las declares una por una. Agrúpalas:

```pseint
Definir N1, N2, N3 Como Entero;
```

Menos líneas, más limpio. Tu yo del futuro lo agradece. 😎

---

## ✍️ Asignar valores: el operador `<-`

PSeInt usa `<-` para **asignar** un valor a una variable. Se lee como _"guarda esto en esta cajita"_.

```pseint
edad <- 20
nombre <- "Andrés"
precio <- 1500.50
activo <- Verdadero
```

> ⚠️ **Ojo:** `<-` **no es igual a `=`**. En PSeInt, `=` se usa para **comparar** (en condiciones), no para asignar.

**Comparación con Java:**

| PSeInt               | Java                                |
| -------------------- | ----------------------------------- |
| `edad <- 20`         | `int edad = 20;`                    |
| `nombre <- "Andrés"` | `String nombre = "Andrés";`         |
| `<-` es asignación   | `=` es asignación (¡ojo, al revés!) |

> 🎭 **Confusión clásica:** en PSeInt, `=` compara. En Java, `=` asigna y `==` compara. Cada lenguaje tiene su personalidad.

---

## 🖨️ Mostrar datos: `Escribir`

`Escribir` es tu forma de hablarle al usuario. Muestra texto, variables o ambos.

```pseint
Escribir "Hola, mundo"
Escribir "Tu edad es: ", edad
Escribir "El resultado es: ", suma
```

### 🎨 Detalles finos

- Puedes concatenar texto y variables con **comas**.
- Las comas **no** añaden espacios automáticamente. Si quieres uno, escríbelo tú:

```pseint
Escribir "La suma es: ", suma   // ✅ La suma es: 15
Escribir "La suma es:", suma    // ⚠️  La suma es:15
```

- Para imprimir **sin saltar de línea** (raro pero existe):

```pseint
Escribir Sin Saltar "Hola"
```

**Comparación con Java:**

| PSeInt                       | Java                                 |
| ---------------------------- | ------------------------------------ |
| `Escribir "Hola"`            | `System.out.println("Hola");`        |
| `Escribir Sin Saltar "Hola"` | `System.out.print("Hola");`          |
| `Escribir "Total: ", x`      | `System.out.println("Total: " + x);` |

> 😂 En PSeInt separas con comas. En Java concatenas con `+`. Cosas de cada lenguaje.

---

## ⌨️ Recibir datos: `Leer`

`Leer` toma un dato que el usuario escribe y lo guarda en una variable.

```pseint
Escribir "Ingresa tu edad:"
Leer edad
```

> ⚠️ **Antes de un `Leer`, siempre va un `Escribir`.** El usuario necesita saber **qué** le están pidiendo. Si no, se queda mirando la pantalla como tonto. 😂

**Comparación con Java:**

| PSeInt      | Java                            |
| ----------- | ------------------------------- |
| `Leer edad` | `Scanner` + `entrada.nextInt()` |
| Una línea   | Cinco líneas + import + close   |

> 🎯 Aquí PSeInt te gana por goleada. Leer datos en Java es toda una ceremonia.

---

## 🧮 Operadores aritméticos

Los básicos para hacer cuentas:

| Operador | Significado     | Ejemplo    | Resultado              |
| -------- | --------------- | ---------- | ---------------------- |
| `+`      | Suma            | `5 + 3`    | `8`                    |
| `-`      | Resta           | `5 - 3`    | `2`                    |
| `*`      | Multiplicación  | `5 * 3`    | `15`                   |
| `/`      | División        | `10 / 3`   | `3.33` (si son reales) |
| `^`      | Potencia        | `2 ^ 3`    | `8`                    |
| `MOD`    | Módulo (resto)  | `10 MOD 3` | `1`                    |
| `DIV`    | División entera | `10 DIV 3` | `3`                    |

### 🔍 ¿Qué rayos es MOD?

**MOD** te da el **resto** de una división. Es famoso por su uso en "par o impar":

```pseint
Si Numero MOD 2 == 0 Entonces
    Escribir "Es par"
SiNo
    Escribir "Es impar"
FinSi
```

Porque todo número par, al dividirse entre 2, tiene **resto 0**. Y todo impar tiene **resto 1**.

> 💡 **Dato curioso:** `DIV` te da solo la parte entera de una división. `10 DIV 3 = 3` (porque `10 / 3 = 3.33`, le quitamos el `.33`).

---

## 🔀 Condicionales: `Si`, `SiNo`, `FinSi`

La estructura básica de toda decisión:

```pseint
Si condicion Entonces
    // Se ejecuta si la condición es Verdadera
SiNo
    // Se ejecuta si la condición es Falsa
FinSi
```

### 🎯 Ejemplo práctico

```pseint
Si edad >= 18 Entonces
    Escribir "Eres mayor de edad"
SiNo
    Escribir "Eres menor de edad"
FinSi
```

### 🪆 Condicionales anidadas

Sí, se pueden meter `Si` dentro de `Si`. Solo **sangra bien** para no perderte:

```pseint
Si edad >= 18 Entonces
    Escribir "Mayor de edad"
SiNo
    Si edad >= 15 Entonces
        Escribir "Adolescente"
    SiNo
        Escribir "Niño"
    FinSi
FinSi
```

Cada `Si` necesita su `FinSi`. **Sin excepción.** Si te falta uno, PSeInt te va a decir "Falta FinSi" y tú vas a mirar tu código por 10 minutos hasta encontrarlo. Bienvenido al club. 😂

**Comparación con Java:**

| PSeInt             | Java             |
| ------------------ | ---------------- |
| `Si ... Entonces`  | `if (...) {`     |
| `SiNo`             | `} else {`       |
| `FinSi`            | `}`              |
| Bloques con `SiNo` | Bloques con `{}` |

> 🔑 **Diferencia clave:** en PSeInt usas **palabras** para cerrar bloques. En Java usas **llaves**. Cada uno tiene su estilo.

---

## 🎭 Condicional múltiple: `Segun`

Cuando tienes **muchos casos** en vez de un simple sí/no:

```pseint
Segun opcion Hacer
    1:
        Escribir "Elegiste la opción 1"
    2:
        Escribir "Elegiste la opción 2"
    3:
        Escribir "Elegiste la opción 3"
    De Otro Modo:
        Escribir "Opción no válida"
FinSegun
```

Es como un menú de restaurante: eliges un número y se ejecuta el caso correspondiente.

**Equivalencia en Java:** `switch (opcion) { case 1: ... }`.

---

## 🔁 Ciclos: repetir sin morir en el intento

PSeInt tiene **tres ciclos** principales. Cada uno sirve para casos distintos.

### 1️⃣ `Para` (el contador)

Cuando **sabes cuántas veces** quieres repetir algo.

```pseint
Para i <- 1 Hasta 5 Hacer
    Escribir "Vuelta número: ", i
FinPara
```

- `i <- 1`: empieza en 1.
- `Hasta 5`: llega hasta 5.
- `i` avanza **automáticamente** en +1 cada vuelta.

> 😎 **Truco:** si no necesitas el contador, aún así tienes que declararlo. PSeInt no perdona.

**Equivalencia Java:** `for (int i = 1; i <= 5; i++) { ... }`.

---

### 2️⃣ `Mientras` (la condición antes)

Cuando **no sabes cuántas veces** vas a repetir, pero sabes **cuándo parar**.

```pseint
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador + 1
FinMientras
```

> ⚠️ **Ojo crítico:** si olvidas actualizar `contador`, el ciclo nunca termina. Se llama **ciclo infinito**, y es el terror de los programadores. Tu compu empieza a sonar como un avión. 😅

**Equivalencia Java:** `while (contador <= 5) { ... }`.

---

### 3️⃣ `Repetir` (la condición después)

Igual que `Mientras` pero la condición se **comprueba al final**. Por eso el bloque corre **al menos una vez**.

```pseint
Repetir
    Escribir "Ingresa la contraseña:"
    Leer intento
Hasta Que intento == "1234"
```

> 🎯 **Cuándo usarlo:** cuando necesitas ejecutar algo **al menos una vez** antes de verificar. Como pedir una contraseña: primero la pides, después compruebas.

**Equivalencia Java:** `do { ... } while (...)`.

### 🔍 La diferencia clave entre los tres

| Ciclo      | ¿Cuándo comprueba?     | ¿Cuántas veces mínimo?         |
| ---------- | ---------------------- | ------------------------------ |
| `Para`     | Antes de cada vuelta   | 0 veces (si el rango es vacío) |
| `Mientras` | Antes de cada vuelta   | 0 veces                        |
| `Repetir`  | Después de cada vuelta | 1 vez                          |

---

## 🧠 Operadores lógicos: `Y`, `O`, `NO`

Para combinar condiciones:

| Operador | Significado | Devuelve verdadero cuando...         |
| -------- | ----------- | ------------------------------------ |
| `Y`      | AND         | **Ambas** condiciones son verdaderas |
| `O`      | OR          | **Al menos una** es verdadera        |
| `NO`     | NOT         | La condición es **falsa**            |

### Ejemplos

```pseint
Si edad >= 18 Y tieneID Entonces
    Escribir "Puede entrar"
FinSi

Si esAdmin O esModerador Entonces
    Escribir "Tiene permisos"
FinSi

Si NO estaBloqueado Entonces
    Escribir "Cuenta activa"
FinSi
```

**Comparación con Java:**

| PSeInt | Java   |
| ------ | ------ |
| `Y`    | `&&`   |
| `O`    | `\|\|` |
| `NO`   | `!`    |

---

## 🧩 SubProcesos (funciones) en PSeInt

Aquí PSeInt muestra su lado serio. Puedes crear **funciones** reutilizables, como en cualquier lenguaje real.

```pseint
SubProceso resultado <- Sumar(a, b)
    resultado <- a + b
FinSubProceso
```

Y la usas así:

```pseint
Algoritmo Principal
    Definir total Como Entero
    total <- Sumar(5, 3)
    Escribir "El resultado es: ", total
FinAlgoritmo
```

> 💡 **Regla mental:** si vas a repetir la misma lógica muchas veces, conviértela en un SubProceso. Es como tener un botón que hace algo útil.

**Equivalencia Java:** `static int sumar(int a, int b) { return a + b; }`.

---

## 📚 Arreglos (arrays) en PSeInt

Para guardar **varios valores** del mismo tipo en una sola variable:

```pseint
Dimension numeros[5]

numeros[1] <- 10
numeros[2] <- 20
numeros[3] <- 30
numeros[4] <- 40
numeros[5] <- 50
```

- `Dimension` declara el arreglo y su tamaño.
- Se accede con `[índice]`. **Ojo:** PSeInt empieza a contar desde `1`, no desde `0`.

> ⚠️ **Dato importante:** en Java (y casi todos los lenguajes serios) los arreglos empiezan en `0`. En PSeInt empiezan en `1`. Cuando saltes a Java, esto te va a morder. 😂

### Recorrer un arreglo con `Para`

```pseint
Para i <- 1 Hasta 5 Hacer
    Escribir numeros[i]
FinPara
```

---

## 💬 Comentarios

Los comentarios **no** se ejecutan. Sirven para ti y para otros programadores (o para tu yo del futuro que ya no recuerda qué hiciste).

```pseint
// Este es un comentario de una línea

/* Este es un comentario
   de varias líneas */
```

> 🎯 **Consejo:** documenta **por qué** haces algo, no **qué** haces. El "qué" ya se ve en el código. El "por qué" es lo que vale.

---

## 📊 Tabla resumen: PSeInt ↔ Java

| Concepto        | PSeInt                               | Java                           |
| --------------- | ------------------------------------ | ------------------------------ |
| Inicio          | `Algoritmo Nombre`                   | `public class Nombre`          |
| Fin             | `FinAlgoritmo`                       | `}`                            |
| Variable        | `Definir x Como Entero`              | `int x;`                       |
| Asignar         | `x <- 5`                             | `x = 5;`                       |
| Imprimir        | `Escribir "Hola"`                    | `System.out.println("Hola");`  |
| Leer            | `Leer x`                             | `Scanner.nextInt()`            |
| Si              | `Si ... Entonces ... FinSi`          | `if (...) { ... }`             |
| Mientras        | `Mientras ... Hacer ... FinMientras` | `while (...) { ... }`          |
| Repetir         | `Repetir ... Hasta Que ...`          | `do { ... } while (...);`      |
| Para            | `Para i <- 1 Hasta 5 Hacer`          | `for (int i = 1; i <= 5; i++)` |
| Y/O/NO          | `Y`, `O`, `NO`                       | `&&`, `\|\|`, `!`              |
| Módulo          | `MOD`                                | `%`                            |
| División entera | `DIV`                                | `/` (con int)                  |

---

## ⚠️ Errores comunes en PSeInt

- **Olvidar `FinSi` / `FinMientras` / `FinPara`** → PSeInt te grita. Literalmente, no compila.
- **Usar `=` para asignar** → En PSeInt se usa `<-`. `=` es comparación.
- **Olvidar `Definir`** → PSeInt te dirá que la variable no existe.
- **Asignar tipo equivocado** → `Definir edad Como Entero` y luego `edad <- "hola"` → error.
- **Usar `Leer` sin `Escribir` antes** → El usuario no sabe qué escribir. Coherencia ante todo.
- **Índices de arreglos desde 0** → En PSeInt empiezan en 1. No te confundas.
- **Olvidar actualizar el contador en `Mientras`** → Ciclo infinito. Tu PC va a levitar. 🚀

---

## 🎯 Mini retos para dominar la sintaxis

Prueba escribir estos sin mirar la chuleta:

1. Pide dos números y muestra su suma.
2. Pide una edad y di si es mayor o menor de edad.
3. Pide un número y di si es par o impar.
4. Muestra los números del 1 al 10 con un `Para`.
5. Pide números hasta que el usuario ingrese `0` con un `Mientras`.
6. Crea un SubProceso que reciba dos números y devuelva el mayor.
7. Guarda 5 nombres en un arreglo y muéstralos.

> 🎯 **Consejo:** si resuelves estos 7, ya tienes la sintaxis de PSeInt **en los dedos**. No necesitas memorizar más.

---

## 🚀 Conclusión

PSeInt es ese amigo que te dice la verdad aunque no quieras escucharla: **"primero piensa, después escribe"**.

Su sintaxis es simple, casi como hablar en español. Pero justamente por eso es poderoso: **no te distrae con detalles**, te obliga a concentrarte en la **lógica**.

Cuando pases a Java, C# o Python, vas a agradecer haber empezado aquí. Porque la sintaxis se aprende en una tarde. **La lógica se entrena durante años.**

**No memorices PSeInt. Aprende a pensar con él.** 🧠🔥

---

_Apunte de sintaxis PSeInt creado para Diccionario-Dev. Si encuentras un error o quieres aportar, abre un Issue o un Pull Request._

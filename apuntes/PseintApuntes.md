# Aprendiendo lógica de programación con PSeInt

## 1. Mis primeros pasos con PSeInt

Comencé utilizando **PSeInt para reforzar mis bases de lógica de programación**. Antes de avanzar hacia lenguajes como Java, JavaScript, C# o C++, considero importante comprender cómo funciona un algoritmo y cómo resolver problemas mediante instrucciones ordenadas.

PSeInt es una herramienta educativa que permite escribir y ejecutar algoritmos utilizando pseudocódigo. Su propósito es facilitar el aprendizaje de la lógica de programación sin tener que preocuparme inicialmente por la sintaxis compleja de un lenguaje de programación real.

Aunque al principio puede resultar un poco extraño acostumbrarse a su forma de escribir las instrucciones, es una buena manera de aprender a pensar como programador: analizar un problema, dividirlo en pasos y construir una solución lógica.

## 2. ¿Cómo funciona el pseudocódigo?

El **pseudocódigo** es una forma de representar los pasos de un algoritmo mediante instrucciones sencillas, similares al lenguaje humano y a la programación.

No depende de un lenguaje de programación específico, por lo que permite concentrarse en la lógica del problema antes de preocuparse por la sintaxis de un lenguaje real.

Por ejemplo, si quisiera crear un programa que sume dos números, la lógica sería la siguiente:

1. Solicitar el primer número.
2. Solicitar el segundo número.
3. Sumar ambos números.
4. Mostrar el resultado en pantalla.

   🔗 El mismo ejercicio en diferentes lenguajes

Puedes ver cómo se resuelve el mismo problema —sumar dos números— utilizando diferentes herramientas y lenguajes de programación:

# [SumaEnPseint] (../ejercicios/Pseudocodigo Pseint/Sumar2Numeros.psc)

# [SumaEnJava] (../ejercicios/Java/Sumar2Numeros.java)

# [SumaEnJS] (../ejercicios/Js/Sumar2Numeros.js)

# [SumaEnC#] (../ejercicios/C#/Sumar2Numeros.cs)

El objetivo es comparar cómo se construye la misma solución en diferentes lenguajes, identificando sus similitudes, diferencias de sintaxis y formas de recibir datos, realizar operaciones y mostrar resultados.

Una de las ventajas del pseudocódigo es que podemos diseñar algoritmos incluso con papel y lápiz. Sin embargo, herramientas como PSeInt nos permiten ejecutar los algoritmos, comprobar sus resultados y detectar errores en nuestras instrucciones.

### Los cuatro elementos fundamentales de un algoritmo

Para comprender cómo funciona un algoritmo, podemos dividirlo en cuatro elementos principales:

**1. Datos y variables**

Son los valores que un programa necesita almacenar y utilizar durante su ejecución. Una variable es un espacio identificado por un nombre que permite guardar un dato.

Por ejemplo:

- `edad = 20`
- `nombre = "Andrés"`
- `precio = 5000`

En estos casos, `edad`, `nombre` y `precio` son variables, mientras que `20`, `"Andrés"` y `5000` son los valores que almacenan.

**2. Entrada**

Es la información que el programa recibe del usuario o de otra fuente.

Por ejemplo, cuando un programa pregunta cuántos años tienes y espera que introduzcas un número, está realizando una operación de entrada.

**3. Proceso**

Es el conjunto de operaciones que se realizan para transformar los datos y resolver un problema.

Por ejemplo, si tenemos el precio de un producto y su cantidad, podemos multiplicarlos para calcular el costo total.

**4. Salida**

Es la información que el programa presenta como resultado de su ejecución.

Por ejemplo, después de calcular el costo total de una compra, el programa puede mostrar en pantalla cuánto dinero debemos pagar.

En resumen, un algoritmo normalmente recibe datos, los procesa y presenta un resultado.

## 3. Instrucciones básicas de PSeInt

### 3.1. Escribir

La instrucción `Escribir` permite mostrar información en pantalla. Puede utilizarse para presentar mensajes, valores de variables o resultados de operaciones.

Ejemplo:

```pseint
Escribir "Hola, mundo"
Escribir "Bienvenido a mi primer algoritmo"
```

Al ejecutar estas instrucciones, el programa mostrará los mensajes en pantalla.

También podemos mostrar el contenido de una variable:

```pseint
Algoritmo MostrarEdad
    Definir edad Como Entero
    edad <- 20

    Escribir "Mi edad es: ", edad
FinAlgoritmo
```

En este ejemplo, `Escribir` presenta tanto un texto como el valor almacenado en la variable `edad`.

**¿Para qué sirve?**

- Mostrar mensajes al usuario.
- Presentar resultados de cálculos.
- Informar sobre el estado de un proceso.
- Facilitar la interacción entre el programa y la persona que lo utiliza.

### 3.2. Leer

La instrucción `Leer` permite recibir un dato introducido por el usuario y almacenarlo en una variable.

Ejemplo:

```pseint
Algoritmo SolicitarEdad
    Definir edad Como Entero

    Escribir "Ingresa tu edad:"
    Leer edad

    Escribir "Tu edad es: ", edad
FinAlgoritmo
```

En este caso, el programa solicita la edad, espera a que el usuario introduzca un valor y lo almacena en la variable `edad`.

Es importante aclarar que `Leer` no es exactamente lo mismo que `const`, `let` o `var` en JavaScript. En PSeInt, `Leer` recibe un dato; la variable se declara por separado mediante `Definir`.

En JavaScript, por otro lado, `let` y `const` permiten declarar variables o constantes, mientras que la entrada de datos se obtiene mediante mecanismos diferentes, como un formulario o `prompt()` en un entorno compatible.

### 3.3. Definir una variable

Antes de utilizar una variable en PSeInt, normalmente la declaramos mediante la instrucción `Definir`, indicando el nombre y el tipo de dato que almacenará.

Ejemplo:

```pseint
Definir edad Como Entero
Definir precio Como Real
Definir nombre Como Cadena
Definir esMayorDeEdad Como Logico
```

Los tipos de datos del ejemplo representan:

- **Entero:** números sin parte decimal, como `10` o `25`.
- **Real:** números que pueden tener decimales, como `19.5` o `3.14`.
- **Cadena:** texto, como `"Hola"` o `"Andrés"`.
- **Lógico:** valores de verdad, como `Verdadero` y `Falso`.

Una vez declarada la variable, podemos asignarle un valor utilizando el operador de asignación `<-`.

Por ejemplo:

```pseint
Definir edad Como Entero
edad <- 20
```

Aquí declaramos la variable `edad` y después le asignamos el valor `20`.

## 4. Un ejemplo práctico: las cajas de chocolates

Para entender las variables, podemos utilizar una analogía sencilla.

Imaginemos que compramos una caja de chocolates:

- **La caja representa la variable:** es el espacio donde guardamos algo.
- **Los chocolates representan el valor:** es la información que contiene ese espacio.
- **El nombre de la caja representa el identificador:** nos permite reconocer qué estamos almacenando.

Por ejemplo, podemos tener una caja llamada `chocolates` que almacene el número de chocolates que compramos.

```pseint
Algoritmo CajaDeChocolates
    Definir chocolates Como Entero

    chocolates <- 12

    Escribir "La caja contiene ", chocolates, " chocolates."
FinAlgoritmo
```

El programa mostrará:

```text
La caja contiene 12 chocolates.
```

Si después compramos otros 5 chocolates y actualizamos el valor de la variable, podemos calcular la nueva cantidad:

```pseint
chocolates <- chocolates + 5
```

Ahora la variable almacena `17`.

La idea importante es que una variable puede cambiar de valor durante la ejecución del programa. En este ejemplo, la variable representa la cantidad de chocolates, no la caja física en sí misma.

## 5. Operadores lógicos

Los operadores lógicos permiten evaluar condiciones y determinar si una expresión es verdadera o falsa. Son fundamentales para construir decisiones dentro de un algoritmo.

Los tres operadores principales que estoy aprendiendo son **AND, OR y NOT**.

### 5.1. AND (Y)

En PSeInt, el operador `Y` devuelve `Verdadero` únicamente cuando **ambas condiciones son verdaderas**.

| Condición A | Condición B | A Y B     |
| ----------- | ----------- | --------- |
| Verdadero   | Verdadero   | Verdadero |
| Verdadero   | Falso       | Falso     |
| Falso       | Verdadero   | Falso     |
| Falso       | Falso       | Falso     |

Ejemplo:

```pseint
Algoritmo OperadorAND
    Definir edad Como Entero
    Definir tieneEntrada Como Logico

    edad <- 20
    tieneEntrada <- Verdadero

    Si edad >= 18 Y tieneEntrada Entonces
        Escribir "Puede ingresar."
    SiNo
        Escribir "No puede ingresar."
    FinSi
FinAlgoritmo
```

Para ingresar, la persona debe tener al menos 18 años **y** contar con una entrada. Si alguna de las dos condiciones es falsa, no podrá ingresar.

### 5.2. OR (O)

En PSeInt, el operador `O` devuelve `Verdadero` cuando **al menos una de las condiciones es verdadera**. Solo devuelve `Falso` cuando ambas condiciones son falsas.

| Condición A | Condición B | A O B     |
| ----------- | ----------- | --------- |
| Verdadero   | Verdadero   | Verdadero |
| Verdadero   | Falso       | Verdadero |
| Falso       | Verdadero   | Verdadero |
| Falso       | Falso       | Falso     |

Ejemplo:

```pseint
Algoritmo OperadorOR
    Definir tieneBoleto Como Logico
    Definir estaEnLista Como Logico

    tieneBoleto <- Falso
    estaEnLista <- Verdadero

    Si tieneBoleto O estaEnLista Entonces
        Escribir "Puede ingresar."
    SiNo
        Escribir "No puede ingresar."
    FinSi
FinAlgoritmo
```

En este caso, la persona puede ingresar si tiene un boleto **o** aparece en la lista. Basta con que una de las condiciones sea verdadera.

### 5.3. NOT (NO)

El operador `NO` invierte el valor lógico de una expresión. Si una condición es verdadera, su negación es falsa; si es falsa, su negación es verdadera.

| Condición A | NO A      |
| ----------- | --------- |
| Verdadero   | Falso     |
| Falso       | Verdadero |

Ejemplo:

```pseint
Algoritmo OperadorNOT
    Definir hayInternet Como Logico

    hayInternet <- Falso

    Si NO hayInternet Entonces
        Escribir "No hay conexión a Internet."
    SiNo
        Escribir "La conexión está disponible."
    FinSi
FinAlgoritmo
```

Como `hayInternet` contiene el valor `Falso`, la expresión `NO hayInternet` es verdadera y se muestra el mensaje correspondiente.

### Resumen de los operadores lógicos

- **Y (AND):** todas las condiciones deben cumplirse.
- **O (OR):** basta con que una condición se cumpla.
- **NO (NOT):** invierte el resultado lógico.

Estos operadores permiten combinar condiciones y crear reglas más complejas dentro de un programa.

## 6. Conclusión

Mi objetivo al comenzar con PSeInt es fortalecer mi lógica de programación y comprender cómo se construyen los algoritmos antes de avanzar hacia herramientas y lenguajes más complejos.

Estoy aprendiendo a declarar variables, recibir datos, procesarlos, mostrar resultados y evaluar condiciones mediante operadores lógicos.

Aunque al principio algunas instrucciones pueden resultar poco familiares, comprender estos fundamentos me ayudará a resolver problemas de forma más organizada y a trasladar esos conocimientos a otros lenguajes de programación.

**La idea no es memorizar instrucciones, sino aprender a pensar de manera lógica para encontrar soluciones a los problemas.**

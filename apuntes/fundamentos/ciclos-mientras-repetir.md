# 🔄 Ciclos `Mientras` y `Repetir` en PSeInt

Hasta ahora hemos aprendido que un ciclo permite repetir instrucciones sin tener que escribirlas una y otra vez. Pero aquí viene una pregunta:

**¿Qué pasa cuando no sabemos cuántas veces tendremos que repetir algo?**

Imagina que estás creando un juego en el que el usuario debe adivinar un número secreto. No sabes si lo conseguirá en el primer intento, en el quinto o en el número 20.

¿Vas a escribir veinte veces la misma instrucción? ¡Ni loco! Para eso tenemos los ciclos `Mientras` y `Repetir`.

---

## 🧠 1. ¿Qué es el ciclo `Mientras`?

El ciclo `Mientras` repite un bloque de instrucciones **mientras una condición sea verdadera**.

En palabras sencillas: el programa revisa una condición antes de entrar al ciclo. Si se cumple, ejecuta las instrucciones; después vuelve a comprobarla.

### 💻 Sintaxis en PSeInt

```pseint
Mientras condicion Hacer
    // Instrucciones que se repetirán
FinMientras
```

### 🚀 Ejemplo: contar del 1 al 5

```pseint
Algoritmo ContarConMientras
    Definir contador Como Entero

    contador <- 1

    Mientras contador <= 5 Hacer
        Escribir contador
        contador <- contador + 1
    FinMientras
FinAlgoritmo
```

### ¿Cómo funciona?

1. Creamos la variable `contador` y le damos el valor inicial de 1.
2. El programa comprueba si `contador <= 5`.
3. Si la condición es verdadera, muestra el número.
4. Aumentamos el contador en uno.
5. El programa vuelve a comprobar la condición.
6. Cuando el contador llega a 6, la condición es falsa y el ciclo termina.

La salida será:

```
1
2
3
4
5
```

**¡Ojo con esto!** Si olvidas aumentar el contador, la condición podría continuar siendo verdadera para siempre. Eso puede provocar un ciclo infinito.

---

## 🔁 2. ¿Qué es el ciclo `Repetir`?

El ciclo `Repetir` también permite repetir instrucciones, pero tiene una diferencia importante: **primero ejecuta las instrucciones y después comprueba la condición de salida**.

Por eso, el bloque se ejecuta al menos una vez.

### 💻 Sintaxis en PSeInt

```pseint
Repetir
    // Instrucciones que se repetirán
Hasta Que condicion
```

La condición de `Hasta Que` indica cuándo debe terminar el ciclo.

### 🚀 Ejemplo: contar del 1 al 5

```pseint
Algoritmo ContarConRepetir
    Definir contador Como Entero

    contador <- 1

    Repetir
        Escribir contador
        contador <- contador + 1
    Hasta Que contador > 5
FinAlgoritmo
```

La salida también será:

```
1
2
3
4
5
```

### ¿Cómo funciona?

1. El programa muestra el valor actual del contador.
2. Aumenta el contador en uno.
3. Comprueba si `contador > 5`.
4. Si todavía no se cumple, vuelve a repetir las instrucciones.
5. Cuando la condición se cumple, termina el ciclo.

**Recuerda:** `Mientras` continúa mientras su condición sea verdadera; `Repetir ... Hasta Que` termina cuando su condición se vuelve verdadera.

---

## ⚖️ 3. ¿Cuál es la diferencia?

| Característica                  | `Mientras`                                              | `Repetir`                                                      |
| ------------------------------- | ------------------------------------------------------- | -------------------------------------------------------------- |
| ¿Cuándo comprueba la condición? | Antes de ejecutar el bloque.                            | Después de ejecutar el bloque.                                 |
| ¿Puede ejecutarse cero veces?   | Sí.                                                     | No, se ejecuta al menos una vez.                               |
| ¿Cuándo termina?                | Cuando la condición deja de cumplirse.                  | Cuando se cumple la condición de `Hasta Que`.                  |
| ¿Cuándo conviene?               | Cuando primero debes comprobar si corresponde ejecutar. | Cuando necesitas ejecutar al menos una vez antes de comprobar. |

### Un ejemplo fácil de recordar

Imagina que vas a entrar a una fiesta:

- **`Mientras`:** compruebas si tienes permiso para entrar. Si no lo tienes, no entras.
- **`Repetir`:** haces primero una acción, como introducir una contraseña, y después compruebas si es correcta. Si no lo es, vuelves a intentarlo.

Es una comparación sencilla para recordar la diferencia; el uso real dependerá de la lógica de tu programa.

---

## 🎮 4. Ejemplo práctico: ¡Adivina el número!

Este será uno de nuestros retos de PSeInt. El usuario tendrá que adivinar un número secreto.

### ¿Qué necesitamos?

- Una variable para el número secreto.
- Una variable para el intento del usuario.
- Un ciclo que permita seguir intentando.
- Condicionales para indicar si el intento es demasiado alto o demasiado bajo.

### La lógica del juego

1. Definir el número secreto.
2. Pedir un intento al usuario.
3. Comparar el intento con el número secreto.
4. Si es menor, indicar que es demasiado bajo.
5. Si es mayor, indicar que es demasiado alto.
6. Repetir hasta que el usuario acierte.

### Tu misión 🏆

Intenta resolverlo primero por tu cuenta utilizando `Mientras` o `Repetir`.

Cuando lo termines, puedes mejorarlo contando los intentos, limitando la cantidad de oportunidades o comprobando que el número introducido esté dentro de un rango permitido.

No necesitas un array ni un acumulador para resolver la versión básica.

---

## ⚠️ 5. Errores comunes

- **Olvidar actualizar una variable:** el ciclo puede no terminar nunca.
- **Usar una condición incorrecta:** revisa qué debe cumplirse para continuar y qué debe cumplirse para terminar.
- **Confundir `Mientras` con `Hasta Que`:** sus condiciones se interpretan de manera diferente.
- **No probar los límites:** comprueba qué ocurre cuando la condición es falsa desde el principio y cuando se vuelve falsa después de varias repeticiones.

## 🧩 6. Mini retos para practicar

Prueba estos ejercicios antes de mirar soluciones:

1. Muestra los números del 1 al 10 utilizando `Mientras`.
2. Muestra los números del 10 al 1 utilizando `Repetir`.
3. Pide al usuario una contraseña y repite la solicitud hasta que introduzca la correcta.
4. Solicita números hasta que el usuario introduzca un cero.
5. Resuelve el reto **¡Adivina el número!** utilizando uno de estos ciclos.

## 🚀 Para terminar

Los ciclos son una de las herramientas más importantes de la programación. Te permiten automatizar tareas, validar entradas y construir programas interactivos.

No memorices solamente la sintaxis: intenta entender **cuándo debe repetirse el código y qué condición hará que termine**.

¡Sigue practicando, bro! Un ciclo bien entendido te ahorra código y dolores de cabeza. 😂

---

_Apunte de aprendizaje de lógica de programación para Diccionario-Dev._

# 📝 Evaluación 1 — Conceptos básicos

**Nivel:** 🟢 Principiante
**Duración estimada:** 30 minutos
**Puntaje total:** 50 puntos
**Temas:** Variables, tipos de datos, operadores, condicionales, ciclos, entrada/salida

> 💡 **Instrucciones:** responde cada pregunta en una hoja aparte o en un archivo de texto. Al final encontrarás la hoja de respuestas.

---

## 🧠 Parte 1 — Preguntas teóricas (10 puntos)

**1.1** (2 pts) ¿Qué es una variable en programación? Explícalo con tus propias palabras.

**1.2** (2 pts) Nombra los 4 tipos de datos básicos que viste en PSeInt y da un ejemplo de cada uno.

**1.3** (2 pts) ¿Cuál es la diferencia entre `=` y `<-` en PSeInt?

**1.4** (2 pts) ¿Qué es un ciclo? ¿Para qué sirve?

**1.5** (2 pts) ¿Qué diferencia hay entre un error de **sintaxis** y un error de **lógica**?

---

## 💻 Parte 2 — Análisis de código (15 puntos)

**2.1** (5 pts) Observa el siguiente código. ¿Qué muestra en pantalla?

```pseint
Algoritmo Ejercicio1
    Definir a, b, resultado Como Entero;
    a <- 5;
    b <- 3;
    resultado <- a * b + 2;
    Escribir "El resultado es: ", resultado;
FinAlgoritmo
```

**2.2** (5 pts) Observa el siguiente código. ¿Qué valor tiene `x` al final?

```pseint
Algoritmo Ejercicio2
    Definir x Como Entero;
    x <- 10;
    x <- x + 5;
    x <- x * 2;
    x <- x - 4;
FinAlgoritmo
```

**2.3** (5 pts) ¿Qué muestra este código en pantalla?

```pseint
Algoritmo Ejercicio3
    Definir i Como Entero;
    Para i <- 1 Hasta 5 Hacer
        Escribir i * 2;
    FinPara
FinAlgoritmo
```

---

## ✍️ Parte 3 — Ejercicios prácticos (25 puntos)

**3.1** (8 pts) Escribe un algoritmo en PSeInt que **pida dos números** al usuario, y muestre: la suma, la resta, la multiplicación y la división de ambos.

**3.2** (8 pts) Escribe un algoritmo que **pida una edad** y determine si la persona es mayor o menor de edad (18 años como límite). Muestra el resultado en pantalla.

**3.3** (9 pts) Escribe un algoritmo que muestre **todos los números pares del 1 al 20** usando un ciclo. La salida debe verse así:

```
2
4
6
8
...
20
```

---

## 🎯 Puntaje final

Suma tus puntos y compara con la tabla:

| Puntaje | Nivel        |
| :-----: | ------------ |
| 45 – 50 | 🌟 Excelente |
| 38 – 44 | ✅ Bien      |
| 30 – 37 | 🟡 Regular   |
| 0 – 29  | 🔴 A repasar |

---

## ✅ Hoja de respuestas

<details>
<summary>👉 Haz clic para ver las respuestas (NO mires antes de terminar)</summary>

### Parte 1 — Teóricas

**1.1** Una variable es un espacio con nombre donde se guarda un valor que puede cambiar durante la ejecución del programa. Como una caja etiquetada. 📦

**1.2** Los 4 tipos básicos:

- **Entero** → `20`, `-5`, `1000`
- **Real** → `3.14`, `19.99`, `-0.5`
- **Cadena** → `"Hola"`, `"Andrés"`
- **Lógico** → `Verdadero`, `Falso`

**1.3** `<-` asigna un valor a una variable. `=` compara valores en condiciones. No son lo mismo.

**1.4** Un ciclo es una estructura que repite instrucciones. Sirve para no escribir el mismo código muchas veces.

**1.5** Error de **sintaxis**: el código no respeta las reglas del lenguaje, no compila. Error de **lógica**: el código corre pero hace algo distinto a lo que esperabas.

### Parte 2 — Análisis

**2.1** Muestra: `El resultado es: 17`

- `a * b + 2 = 5 * 3 + 2 = 17` (la multiplicación va antes que la suma)

**2.2** `x = 26`

- `x = 10 + 5 = 15`
- `x = 15 * 2 = 30`
- `x = 30 - 4 = 26`

**2.3** Muestra:

```
2
4
6
8
10
```

### Parte 3 — Prácticos

**3.1**

```pseint
Algoritmo OperacionesBasicas
    Definir n1, n2 Como Real;
    Escribir "Ingresa el primer número:";
    Leer n1;
    Escribir "Ingresa el segundo número:";
    Leer n2;
    Escribir "Suma: ", n1 + n2;
    Escribir "Resta: ", n1 - n2;
    Escribir "Multiplicación: ", n1 * n2;
    Escribir "División: ", n1 / n2;
FinAlgoritmo
```

**3.2**

```pseint
Algoritmo MayorDeEdad
    Definir edad Como Entero;
    Escribir "Ingresa tu edad:";
    Leer edad;
    Si edad >= 18 Entonces
        Escribir "Eres mayor de edad.";
    SiNo
        Escribir "Eres menor de edad.";
    FinSi
FinAlgoritmo
```

**3.3**

```pseint
Algoritmo NumerosPares
    Definir i Como Entero;
    Para i <- 2 Hasta 20 Con Paso 2 Hacer
        Escribir i;
    FinPara
FinAlgoritmo
```

> 💡 **Nota:** si no viste `Con Paso`, otra forma válida es usar `i <- i + 2` dentro de un `Mientras`.

</details>

---

## 🔗 Enlaces útiles si fallaste algo

- [📘 Apuntes de PSeInt](../apuntes/pseint/apuntes.md)
- [🧠 Sintaxis de PSeInt](../apuntes/pseint/sintaxis.md)
- [🔁 Ciclo `Para`](../apuntes/fundamentos/ciclo-para.md)
- [🔄 Ciclos `Mientras` y `Repetir`](../apuntes/fundamentos/ciclos-mientras-repetir.md)

# 📝 Evaluación 2 — Solo PSeInt

**Nivel:** 🟡 Intermedio
**Duración estimada:** 60 minutos
**Puntaje total:** 100 puntos
**Temas:** Ciclos, condicionales anidadas, operadores lógicos, acumuladores, subprocesos, arreglos

> 💡 **Instrucciones:** aquí no hay preguntas teóricas. Solo código. Demuestra lo que sabes.

---

## 💻 Parte 1 — Análisis de código (20 puntos)

**1.1** (5 pts) ¿Qué muestra en pantalla este código?

```pseint
Algoritmo Ejercicio1
    Definir i, suma Como Entero;
    suma <- 0;
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + i;
    FinPara
    Escribir suma;
FinAlgoritmo
```

**1.2** (5 pts) ¿Cuántas veces se ejecuta el bloque del `Mientras`?

```pseint
Algoritmo Ejercicio2
    Definir contador Como Entero;
    contador <- 1;
    Mientras contador < 10 Hacer
        Escribir contador;
        contador <- contador + 2;
    FinMientras
FinAlgoritmo
```

**1.3** (5 pts) ¿Qué muestra en pantalla?

```pseint
Algoritmo Ejercicio3
    Definir x Como Entero;
    x <- 15;
    Si x > 10 Y x < 20 Entonces
        Escribir "En rango";
    SiNo
        Escribir "Fuera de rango";
    FinSi
FinAlgoritmo
```

**1.4** (5 pts) ¿Qué muestra en pantalla?

```pseint
Algoritmo Ejercicio4
    Definir i Como Entero;
    Para i <- 5 Hasta 1 Con Paso -1 Hacer
        Escribir i;
    FinPara
FinAlgoritmo
```

---

## ✍️ Parte 2 — Ejercicios prácticos (50 puntos)

**2.1** (10 pts) **Contador con validación:** pide al usuario un número entre 1 y 100. Si el número está fuera de ese rango, sigue pidiéndolo hasta que ingrese uno válido. Al final muestra el número ingresado.

**2.2** (10 pts) **Suma de dígitos:** pide un número entero positivo y calcula la suma de sus dígitos. Ejemplo: si el usuario ingresa `123`, el resultado debe ser `6` (1 + 2 + 3).

**2.3** (15 pts) **Menú de operaciones:** muestra un menú con 4 opciones:

```
1. Sumar
2. Restar
3. Multiplicar
4. Salir
```

Pide al usuario que elija una opción. Si es 1, 2 o 3, pide dos números y muestra el resultado. Repite el menú hasta que el usuario elija la opción 4.

**2.4** (15 pts) **Promedio con arreglos:** pide al usuario 5 notas, guárdalas en un arreglo, calcula el promedio y muestra cada nota junto con el promedio final. Muestra también la nota más alta y la más baja.

---

## 🧩 Parte 3 — Subprocesos (30 puntos)

**3.1** (15 pts) **Función `EsPrimo`:** crea un subproceso que reciba un número y devuelva `Verdadero` si es primo, `Falso` si no lo es. Después úsalo para mostrar todos los números primos del 1 al 50.

**3.2** (15 pts) **Función `CalcularFactorial`:** crea un subproceso que reciba un número entero positivo y devuelva su factorial. Ejemplo: `5! = 5 × 4 × 3 × 2 × 1 = 120`. Después, pide al usuario un número y muestra su factorial.

---

## 🎯 Puntaje final

| Puntaje  | Nivel        |
| :------: | ------------ |
| 90 – 100 | 🌟 Excelente |
| 75 – 89  | ✅ Bien      |
| 60 – 74  | 🟡 Regular   |
|  0 – 59  | 🔴 A repasar |

---

## ✅ Hoja de respuestas

<details>
<summary>👉 Haz clic para ver las respuestas (NO mires antes de terminar)</summary>

### Parte 1 — Análisis

**1.1** Muestra `15`

- `1 + 2 + 3 + 4 + 5 = 15`

**1.2** Se ejecuta **5 veces**

- `1, 3, 5, 7, 9` → al llegar a 11, la condición es falsa.

**1.3** Muestra `En rango`

**1.4** Muestra:

```
5
4
3
2
1
```

### Parte 2 — Prácticos

**2.1**

```pseint
Algoritmo ValidarRango
    Definir numero Como Entero;
    Repetir
        Escribir "Ingresa un número entre 1 y 100:";
        Leer numero;
        Si numero < 1 O numero > 100 Entonces
            Escribir "Número fuera de rango. Intenta de nuevo.";
        FinSi
    Hasta Que numero >= 1 Y numero <= 100
    Escribir "El número ingresado fue: ", numero;
FinAlgoritmo
```

**2.2**

```pseint
Algoritmo SumaDigitos
    Definir numero, suma, digito Como Entero;
    suma <- 0;
    Escribir "Ingresa un número entero positivo:";
    Leer numero;
    Mientras numero > 0 Hacer
        digito <- numero MOD 10;
        suma <- suma + digito;
        numero <- numero DIV 10;
    FinMientras
    Escribir "La suma de los dígitos es: ", suma;
FinAlgoritmo
```

**2.3**

```pseint
Algoritmo MenuOperaciones
    Definir opcion Como Entero;
    Definir n1, n2 Como Real;

    Repetir
        Escribir "===== MENÚ =====";
        Escribir "1. Sumar";
        Escribir "2. Restar";
        Escribir "3. Multiplicar";
        Escribir "4. Salir";
        Escribir "Elige una opción:";
        Leer opcion;

        Segun opcion Hacer
            1:
                Escribir "Ingresa el primer número:";
                Leer n1;
                Escribir "Ingresa el segundo número:";
                Leer n2;
                Escribir "Resultado: ", n1 + n2;
            2:
                Escribir "Ingresa el primer número:";
                Leer n1;
                Escribir "Ingresa el segundo número:";
                Leer n2;
                Escribir "Resultado: ", n1 - n2;
            3:
                Escribir "Ingresa el primer número:";
                Leer n1;
                Escribir "Ingresa el segundo número:";
                Leer n2;
                Escribir "Resultado: ", n1 * n2;
            4:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción no válida.";
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
```

**2.4**

```pseint
Algoritmo PromedioNotas
    Definir notas[5] Como Real;
    Definir i Como Entero;
    Definir suma, promedio, mayor, menor Como Real;

    suma <- 0;
    mayor <- 0;
    menor <- 9999;

    Para i <- 1 Hasta 5 Hacer
        Escribir "Ingresa la nota ", i, ":";
        Leer notas[i];
        suma <- suma + notas[i];

        Si notas[i] > mayor Entonces
            mayor <- notas[i];
        FinSi
        Si notas[i] < menor Entonces
            menor <- notas[i];
        FinSi
    FinPara

    promedio <- suma / 5;

    Escribir "Notas ingresadas:";
    Para i <- 1 Hasta 5 Hacer
        Escribir "Nota ", i, ": ", notas[i];
    FinPara

    Escribir "Promedio: ", promedio;
    Escribir "Nota más alta: ", mayor;
    Escribir "Nota más baja: ", menor;
FinAlgoritmo
```

### Parte 3 — Subprocesos

**3.1**

```pseint
SubProceso resultado <- EsPrimo(numero)
    Definir i Como Entero;
    Definir esPrimo Como Logico;
    esPrimo <- Verdadero;

    Si numero < 2 Entonces
        esPrimo <- Falso;
    SiNo
        Para i <- 2 Hasta numero - 1 Hacer
            Si numero MOD i = 0 Entonces
                esPrimo <- Falso;
            FinSi
        FinPara
    FinSi

    resultado <- esPrimo;
FinSubProceso

Algoritmo MostrarPrimos
    Definir i Como Entero;
    Para i <- 1 Hasta 50 Hacer
        Si EsPrimo(i) Entonces
            Escribir i;
        FinSi
    FinPara
FinAlgoritmo
```

**3.2**

```pseint
SubProceso resultado <- CalcularFactorial(numero)
    Definir i Como Entero;
    Definir fact Como Entero;
    fact <- 1;
    Para i <- 1 Hasta numero Hacer
        fact <- fact * i;
    FinPara
    resultado <- fact;
FinSubProceso

Algoritmo MostrarFactorial
    Definir n Como Entero;
    Escribir "Ingresa un número:";
    Leer n;
    Escribir "El factorial de ", n, " es: ", CalcularFactorial(n);
FinAlgoritmo
```

</details>

---

## 🔗 Enlaces útiles si fallaste algo

- [🔁 Ciclo `Para`](../apuntes/fundamentos/ciclo-para.md)
- [🔄 Ciclos `Mientras` y `Repetir`](../apuntes/fundamentos/ciclos-mientras-repetir.md)
- [🧠 Sintaxis de PSeInt](../apuntes/pseint/sintaxis.md)
- [🐛 Cómo detectar errores](../apuntes/fundamentos/como-detectar-errores.md)

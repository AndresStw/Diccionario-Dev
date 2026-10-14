# 📝 Evaluación 3 — General (Difícil)

**Nivel:** 🔴 Avanzado
**Duración estimada:** 90 minutos
**Puntaje total:** 150 puntos
**Temas:** PSeInt, Java, C#, lógica compleja, análisis, refactorización, debugging

> ⚠️ **Advertencia:** esta evaluación **no es para cualquiera**. Combina todo lo que has aprendido. Si la pasas, puedes considerarte listo para proyectos reales. 🔥

---

## 🧠 Parte 1 — Análisis y debugging (30 puntos)

**1.1** (10 pts) El siguiente código **tiene 3 errores**. Encuéntralos y explica qué haría falta para corregirlos.

```pseint
Algoritmo ConErrores
    Definir contador Como Entero;
    contador <- 1;

    Mientras contador <= 5 Hacer
        Escribir contador;
    FinMientras

    Escribir "Fin del programa";
FinAlgoritmo
```

**1.2** (10 pts) El siguiente código en Java **no compila**. Encuentra los errores y escribe la versión corregida.

```java
public class Ejercicio {
    public static void main(String[] args) {
        int numero = 10
        System.out.println("El número es: " + numero);
        if (numero > 5) {
            System.out.println("Es mayor que 5")
        }
    }
}
```

**1.3** (10 pts) Explica **por qué** este código en C# no hace lo que se espera:

```csharp
int a = 10;
int b = 3;
double resultado = a / b;
Console.WriteLine(resultado);
```

El programador esperaba `3.333...` pero obtuvo `3`. ¿Por qué? ¿Cómo se corrige?

---

## 💻 Parte 2 — Lógica compleja (60 puntos)

**2.1** (15 pts) **Adivina el número (versión avanzada):** crea un juego en PSeInt donde:

- El programa genera un número secreto entre 1 y 100 (usa una variable fija para simular).
- El usuario tiene **7 intentos** máximo.
- Después de cada intento, indica si es muy alto, muy bajo o correcto.
- Si el usuario acierta, muestra en cuántos intentos lo logró.
- Si se queda sin intentos, muestra el número secreto.

**2.2** (15 pts) **Números primos gemelos:** un par de primos gemelos son dos números primos que difieren en 2 (ejemplo: 3 y 5, 11 y 13, 17 y 19). Crea un algoritmo que muestre todos los pares de primos gemelos entre 1 y 100.

**2.3** (15 pts) **Sistema de calificaciones:** pide al usuario las notas de N estudiantes (N lo define el usuario). Para cada estudiante:

- Pide su nombre y 3 notas.
- Calcula el promedio.
- Clasifica: `Excelente` (≥4.5), `Bueno` (≥3.5), `Regular` (≥3.0), `Reprobado` (<3.0).
  Al final, muestra una tabla con todos los estudiantes, sus promedios y su clasificación. Muestra también el promedio general del grupo.

**2.4** (15 pts) **Número capicúa:** un número capicúa se lee igual de izquierda a derecha que de derecha a izquierda (ejemplo: 12321, 555, 98789). Crea un algoritmo que determine si un número ingresado por el usuario es capicúa. **Restricción:** no puedes convertir el número a texto.

---

## 🔄 Parte 3 — Comparación entre lenguajes (30 puntos)

**3.1** (15 pts) Escribe el **mismo programa** en **PSeInt y en Java**: el programa debe pedir N números al usuario, calcular su suma y mostrar el promedio. Usa un ciclo `while`/`Mientras` para la lectura.

**3.2** (15 pts) Explica **3 diferencias clave** entre escribir un programa en PSeInt y escribirlo en Java. No vale copiar de los apuntes; explica con tus propias palabras y ejemplos.

---

## 🏗️ Parte 4 — Problema de diseño (30 puntos)

**4.1** (30 pts) **Diseña una agenda de contactos.** El programa debe:

1. Guardar hasta **10 contactos** con: nombre, teléfono y correo.
2. Permitir al usuario elegir entre:
   - **Agregar contacto** (si hay espacio disponible)
   - **Buscar contacto por nombre**
   - **Mostrar todos los contactos**
   - **Salir**

**Requisitos:**

- Debe usar **arreglos** (para guardar los 3 datos por contacto).
- Debe usar **subprocesos** para cada operación.
- Debe validar que no se exceda el límite de 10 contactos.
- Debe mostrar mensajes claros cuando un contacto no se encuentre.

Puedes resolverlo en **PSeInt** o **Java** (tú eliges).

---

## 🎯 Puntaje final

|  Puntaje  | Nivel                      |
| :-------: | -------------------------- |
| 135 – 150 | 🌟 Legendario              |
| 110 – 134 | ✅ Muy bien                |
| 85 – 109  | 🟡 Bien                    |
|  60 – 84  | 🔴 Necesitas practicar más |
|  0 – 59   | 💀 Vuelve a los apuntes    |

---

## ✅ Hoja de respuestas

<details>
<summary>👉 Haz clic para ver las respuestas (NO mires antes de terminar)</summary>

### Parte 1 — Análisis y debugging

**1.1** Los 3 errores:

1. **Falta incrementar `contador`** dentro del `Mientras`. Ciclo infinito.
2. **Falta el `Hacer`** después de la condición del `Mientras`.
3. **Falta el `;`** después de `Definir contador Como Entero`.

Corrección:

```pseint
Algoritmo ConErrores
    Definir contador Como Entero;
    contador <- 1;

    Mientras contador <= 5 Hacer
        Escribir contador;
        contador <- contador + 1;
    FinMientras

    Escribir "Fin del programa";
FinAlgoritmo
```

**1.2** Errores:

1. Falta `;` después de `int numero = 10`.
2. Falta `;` después de `System.out.println("Es mayor que 5")`.

Corrección:

```java
public class Ejercicio {
    public static void main(String[] args) {
        int numero = 10;
        System.out.println("El número es: " + numero);
        if (numero > 5) {
            System.out.println("Es mayor que 5");
        }
    }
}
```

**1.3** El problema es que **ambos operandos son `int`**, entonces Java y C# hacen **división entera** y descartan la parte decimal. `10 / 3 = 3`.

Se corrige convirtiendo al menos uno de los operandos a `double`:

```csharp
double resultado = (double)a / b;  // 3.3333...
```

O declarando uno de ellos como double directamente:

```csharp
double a = 10;
int b = 3;
double resultado = a / b;  // 3.3333...
```

### Parte 2 — Lógica compleja

**2.1**

```pseint
Algoritmo AdivinaAvanzado
    Definir numeroSecreto, intento, intentos Como Entero;
    numeroSecreto <- 42;
    intentos <- 0;

    Repetir
        Escribir "Intenta adivinar el número (1-100):";
        Leer intento;
        intentos <- intentos + 1;

        Si intento > numeroSecreto Entonces
            Escribir "Muy alto.";
        SiNo
            Si intento < numeroSecreto Entonces
                Escribir "Muy bajo.";
            SiNo
                Escribir "¡Correcto! Lo lograste en ", intentos, " intentos.";
            FinSi
        FinSi
    Hasta Que intento = numeroSecreto O intentos >= 7

    Si intento <> numeroSecreto Entonces
        Escribir "Sin intentos. El número era: ", numeroSecreto;
    FinSi
FinAlgoritmo
```

**2.2** (usando subproceso)

```pseint
SubProceso resultado <- EsPrimo(n)
    Definir i Como Entero;
    Definir primo Como Logico;
    primo <- Verdadero;
    Si n < 2 Entonces
        primo <- Falso;
    SiNo
        Para i <- 2 Hasta n - 1 Hacer
            Si n MOD i = 0 Entonces
                primo <- Falso;
            FinSi
        FinPara
    FinSi
    resultado <- primo;
FinSubProceso

Algoritmo PrimosGemelos
    Definir i Como Entero;
    Para i <- 2 Hasta 98 Hacer
        Si EsPrimo(i) Y EsPrimo(i + 2) Entonces
            Escribir "(", i, ", ", i + 2, ")";
        FinSi
    FinPara
FinAlgoritmo
```

**2.3**

```pseint
Algoritmo SistemaCalificaciones
    Definir n, i, j Como Entero;
    Definir nombre Como Cadena;
    Definir n1, n2, n3, promedio, sumaGeneral Como Real;
    Definir clasificacion Como Cadena;

    Escribir "¿Cuántos estudiantes?";
    Leer n;
    sumaGeneral <- 0;

    Para i <- 1 Hasta n Hacer
        Escribir "Nombre del estudiante ", i, ":";
        Leer nombre;
        Escribir "Nota 1:";
        Leer n1;
        Escribir "Nota 2:";
        Leer n2;
        Escribir "Nota 3:";
        Leer n3;

        promedio <- (n1 + n2 + n3) / 3;
        sumaGeneral <- sumaGeneral + promedio;

        Si promedio >= 4.5 Entonces
            clasificacion <- "Excelente";
        SiNo
            Si promedio >= 3.5 Entonces
                clasificacion <- "Bueno";
            SiNo
                Si promedio >= 3.0 Entonces
                    clasificacion <- "Regular";
                SiNo
                    clasificacion <- "Reprobado";
                FinSi
            FinSi
        FinSi

        Escribir nombre, " - Promedio: ", promedio, " - ", clasificacion;
    FinPara

    Escribir "Promedio general del grupo: ", sumaGeneral / n;
FinAlgoritmo
```

**2.4**

```pseint
Algoritmo EsCapicua
    Definir numero, original, invertido, digito Como Entero;
    invertido <- 0;

    Escribir "Ingresa un número:";
    Leer numero;
    original <- numero;

    Mientras numero > 0 Hacer
        digito <- numero MOD 10;
        invertido <- invertido * 10 + digito;
        numero <- numero DIV 10;
    FinMientras

    Si original = invertido Entonces
        Escribir "Es capicúa.";
    SiNo
        Escribir "No es capicúa.";
    FinSi
FinAlgoritmo
```

### Parte 3 — Comparación

**3.1** PSeInt:

```pseint
Algoritmo PromedioN
    Definir n, i, numero Como Entero;
    Definir suma, promedio Como Real;
    suma <- 0;

    Escribir "¿Cuántos números?";
    Leer n;

    i <- 1;
    Mientras i <= n Hacer
        Escribir "Número ", i, ":";
        Leer numero;
        suma <- suma + numero;
        i <- i + 1;
    FinMientras

    promedio <- suma / n;
    Escribir "Promedio: ", promedio;
FinAlgoritmo
```

Java:

```java
import java.util.Scanner;

public class PromedioN {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int n, i = 1, numero;
        double suma = 0, promedio;

        System.out.print("¿Cuántos números? ");
        n = entrada.nextInt();

        while (i <= n) {
            System.out.print("Número " + i + ": ");
            numero = entrada.nextInt();
            suma += numero;
            i++;
        }

        promedio = suma / n;
        System.out.println("Promedio: " + promedio);

        entrada.close();
    }
}
```

**3.2** Diferencias clave (ejemplos de respuesta):

1. **Estructura obligatoria:** Java requiere `class` + `main`, PSeInt solo `Algoritmo`. Java es más verboso.
2. **Tipado:** Java exige declarar el tipo (`int`, `double`). PSeInt también, pero es más flexible con conversiones.
3. **Terminadores:** Java usa `;` al final de cada instrucción y `{}` para bloques. PSeInt usa palabras clave como `FinSi`, `FinPara`.

### Parte 4 — Diseño

**Solución en PSeInt (esqueleto):**

```pseint
SubProceso AgregarContacto(nombres, telefonos, correos, posicion)
    Escribir "Nombre:";
    Leer nombres[posicion];
    Escribir "Teléfono:";
    Leer telefonos[posicion];
    Escribir "Correo:";
    Leer correos[posicion];
FinSubProceso

SubProceso BuscarContacto(nombres, telefonos, correos, total)
    Definir i Como Entero;
    Definir buscado Como Cadena;
    Definir encontrado Como Logico;
    encontrado <- Falso;

    Escribir "Nombre a buscar:";
    Leer buscado;

    Para i <- 1 Hasta total Hacer
        Si nombres[i] = buscado Entonces
            Escribir "Teléfono: ", telefonos[i];
            Escribir "Correo: ", correos[i];
            encontrado <- Verdadero;
        FinSi
    FinPara

    Si NO encontrado Entonces
        Escribir "Contacto no encontrado.";
    FinSi
FinSubProceso

Algoritmo AgendaContactos
    Dimension nombres[10], telefonos[10], correos[10] Como Cadena;
    Definir opcion, total Como Entero;
    total <- 0;

    Repetir
        Escribir "===== AGENDA =====";
        Escribir "1. Agregar contacto";
        Escribir "2. Buscar contacto";
        Escribir "3. Mostrar todos";
        Escribir "4. Salir";
        Leer opcion;

        Segun opcion Hacer
            1:
                Si total < 10 Entonces
                    total <- total + 1;
                    AgregarContacto(nombres, telefonos, correos, total);
                SiNo
                    Escribir "Agenda llena.";
                FinSi
            2:
                Si total > 0 Entonces
                    BuscarContacto(nombres, telefonos, correos, total);
                SiNo
                    Escribir "No hay contactos.";
                FinSi
            3:
                Si total > 0 Entonces
                    Para i <- 1 Hasta total Hacer
                        Escribir nombres[i], " - ", telefonos[i], " - ", correos[i];
                    FinPara
                SiNo
                    Escribir "No hay contactos.";
                FinSi
            4:
                Escribir "Saliendo...";
            De Otro Modo:
                Escribir "Opción no válida.";
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
```

</details>

---

## 🏆 Reflexión final

Si terminaste esta evaluación, **no importa el puntaje**. Lo importante es que te enfrentaste a problemas complejos sin rendirte.

Cada error que cometiste es una lección. Cada cosa que no supiste es un tema que ahora sabes que necesitas repasar. Eso es aprender. 🧠

**No memorices. Entiende. Practica. Repite.** 🔥

---

## 🔗 Enlaces útiles si fallaste algo

- [📚 Todos los apuntes](../apuntes/README.md)
- [🧪 Todos los ejercicios](../ejercicios/README.md)
- [🎯 Temas de práctica](../apuntes/temas-practica.md)
- [🐛 Cómo detectar errores](../apuntes/fundamentos/como-detectar-errores.md)

# ☕ Java Cheatsheet — Atajos y trucos

Guía de referencia rápida con atajos de código, combinaciones de teclado y herramientas útiles para desarrollar en Java.

El objetivo es escribir código más rápido, reducir tareas repetitivas y aprender a aprovechar mejor el IDE.

> **Nota:** los atajos de código dependen del editor y de su configuración. Esta guía prioriza IntelliJ IDEA en Windows y añade una sección para Visual Studio Code.

---

## 📚 Índice

- [1. Atajos de código en IntelliJ IDEA](#1-atajos-de-código-en-intellij-idea)
- [2. Atajos de teclado en IntelliJ IDEA](#2-atajos-de-teclado-en-intellij-idea)
- [3. Atajos de teclado en VS Code](#3-atajos-de-teclado-en-vs-code)
- [4. Generación de código](#4-generación-de-código)
- [5. Consejos para programar más rápido](#5-consejos-para-programar-más-rápido)

---

## 1. Atajos de código en IntelliJ IDEA

Los siguientes atajos son plantillas de código (_Live Templates_). Escribes la abreviatura y presionas `Tab` o utilizas la opción de expansión que indique el IDE.

### Estructura básica

| Abreviatura | Código generado                             | Función                                             |
| ----------- | ------------------------------------------- | --------------------------------------------------- |
| `psvm`      | `public static void main(String[] args) {}` | Método principal                                    |
| `sout`      | `System.out.println();`                     | Imprimir con salto de línea                         |
| `soutv`     | `System.out.println(variable);`             | Imprimir una variable (según versión/configuración) |
| `serr`      | `System.err.println();`                     | Mostrar un mensaje de error                         |
| `souf`      | `System.out.printf("");`                    | Imprimir con formato (según versión/configuración)  |

**Ejemplo:**

Escribe `sout` y expándelo para obtener:

```java
System.out.println("Hola, mundo");
```

En lugar de escribir toda la instrucción manualmente, utilizas la plantilla del IDE.

### Estructuras de control

| Abreviatura | Función                                                                   |
| ----------- | ------------------------------------------------------------------------- |
| `if`        | Crear una condición                                                       |
| `ifn`       | Condición para comprobar si una expresión es `null` (si está disponible)  |
| `fori`      | Crear un bucle `for` con índice                                           |
| `iter`      | Crear un bucle para recorrer una colección o arreglo (si está disponible) |
| `while`     | Crear un bucle `while`                                                    |
| `try`       | Crear un bloque `try` para manejar excepciones                            |

Ejemplo de `fori`:

```java
for (int i = 0; i < 10; i++) {
    System.out.println(i);
}
```

> Las plantillas disponibles pueden cambiar según la versión del IDE, el contexto y la configuración. Si una abreviatura no funciona, búscala en **Settings → Editor → Live Templates**.

---

## 2. Atajos de teclado en IntelliJ IDEA

Estos atajos corresponden a la distribución de teclado predeterminada de Windows.

| Atajo                | Acción                                                           |
| -------------------- | ---------------------------------------------------------------- |
| `Alt + Enter`        | Mostrar acciones rápidas y sugerencias                           |
| `Ctrl + Space`       | Activar autocompletado de código                                 |
| `Ctrl + Alt + L`     | Formatear el código                                              |
| `Ctrl + /`           | Comentar o descomentar una línea                                 |
| `Shift + F10`        | Ejecutar la última configuración                                 |
| `Ctrl + Shift + F10` | Ejecutar el contexto actual, cuando sea compatible               |
| `Ctrl + B`           | Ir a la declaración de una clase, método o variable              |
| `Ctrl + Alt + V`     | Extraer una expresión a una variable                             |
| `Ctrl + Alt + M`     | Extraer código a un método                                       |
| `Ctrl + N`           | Buscar una clase                                                 |
| `Ctrl + Shift + N`   | Buscar un archivo                                                |
| `Ctrl + Alt + O`     | Optimizar las importaciones                                      |
| `Shift + Shift`      | Buscar archivos, clases, acciones y otros elementos              |
| `Ctrl + Z`           | Deshacer                                                         |
| `Ctrl + Shift + Z`   | Rehacer                                                          |
| `Ctrl + S`           | Guardar; normalmente IntelliJ guarda automáticamente los cambios |

### Los cinco que más utilizo

1. **`Alt + Enter`:** resolver advertencias, aplicar correcciones y generar acciones útiles.
2. **`Ctrl + Alt + L`:** ordenar automáticamente la presentación del código.
3. **`Ctrl + /`:** comentar una línea sin escribir los símbolos manualmente.
4. **`Shift + F10`:** volver a ejecutar el programa.
5. **`Shift + Shift`:** buscar rápidamente clases, archivos o funcionalidades del IDE.

---

## 3. Atajos de teclado en VS Code

Si trabajas con Java en Visual Studio Code, estos son algunos atajos habituales de Windows.

| Atajo              | Acción                                                    |
| ------------------ | --------------------------------------------------------- |
| `Ctrl + Shift + P` | Abrir la paleta de comandos                               |
| `Ctrl + P`         | Buscar y abrir un archivo                                 |
| `Ctrl + Space`     | Mostrar sugerencias de código                             |
| `Ctrl + /`         | Comentar o descomentar una línea                          |
| `Shift + Alt + F`  | Formatear el documento                                    |
| `F5`               | Iniciar o continuar la depuración, según la configuración |
| `Ctrl + Shift + F` | Buscar en todos los archivos del proyecto                 |
| `Ctrl + S`         | Guardar el archivo                                        |
| `Ctrl + Z`         | Deshacer                                                  |
| `Ctrl + Shift + Z` | Rehacer                                                   |

### ¿Y las abreviaturas de Java?

VS Code utiliza fragmentos (_snippets_) que pueden variar según las extensiones instaladas.

Por ejemplo, la extensión **Extension Pack for Java** incorpora herramientas para completar código, depurar y trabajar con proyectos Java.

Si quieres utilizar abreviaturas como `sout` o `psvm`, revisa los fragmentos disponibles en tu instalación o configura tus propios snippets.

---

## 4. Generación de código

Los IDE no solo permiten escribir menos: también pueden generar código por nosotros.

En IntelliJ IDEA, abre el menú **Code → Generate** o utiliza `Alt + Insert` en Windows para ver las opciones disponibles en el contexto actual.

Entre las opciones que pueden aparecer están:

- **Constructor:** generar un constructor.
- **Getters and Setters:** generar métodos para consultar y modificar atributos.
- **`toString()`:** generar una representación textual del objeto.
- **Override Methods:** sobrescribir métodos heredados.
- **Implement Methods:** implementar métodos exigidos por una interfaz o clase abstracta.

Ejemplo de una clase antes de generar métodos:

```java
public class Usuario {
    private String nombre;
    private int edad;
}
```

Después de utilizar las opciones de generación, el IDE puede ayudarte a crear constructores, getters y setters sin escribirlos manualmente.

---

## 5. Consejos para programar más rápido

- **Aprende primero los atajos que más utilizas.** No necesitas memorizarlos todos el primer día.
- **Utiliza el autocompletado.** Puede ayudarte a descubrir métodos y propiedades disponibles.
- **Aprovecha las acciones rápidas.** Cuando el IDE subraya algo, prueba `Alt + Enter`.
- **Mantén el código legible.** Escribir menos no significa escribir peor.
- **Comprueba qué genera cada plantilla.** Los atajos son herramientas para ahorrar tiempo, no sustitutos de la comprensión del código.

---

## 🎯 Mi objetivo

Estoy recopilando los atajos que me ayudan a desarrollar en Java de una forma más eficiente. La idea es utilizar esta documentación como referencia mientras practico y ampliarla con nuevos trucos a medida que avance.

**Programar más rápido empieza por comprender lo que escribimos y aprender a aprovechar nuestras herramientas.**

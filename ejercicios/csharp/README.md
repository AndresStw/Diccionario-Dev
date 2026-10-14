# 🎮 Ejercicios de C#

Mis primeros ejercicios en C#. Aquí guardo las soluciones que voy resolviendo mientras aprendo el lenguaje. 🚀

C# llegó a mi vida por Unity, pero también sirve para crear aplicaciones de escritorio, herramientas de automatización y mucho más.

---

## 📚 Ejercicios disponibles

| N.º | Ejercicio           | Tema                              | Dificultad |                   Código                    |
| :-: | ------------------- | --------------------------------- | :--------: | :-----------------------------------------: |
| 01  | Suma de dos números | Variables, `Console`, operaciones |  🟢 Fácil  | [Ver código](./soluciones/Sumar2Numeros.cs) |

---

## 🗺️ Estructura de esta carpeta

```

ejercicios/csharp/
├── README.md ← este archivo
└── soluciones/ ← código fuente
└── Sumar2Numeros.cs

```

---

## 📖 Sobre el ejercicio disponible

### 🟢 01 — Suma de dos números

El clásico universal. Pedimos dos números al usuario, los sumamos y mostramos el resultado en consola.

**Aprendes:**

- Estructura básica de un programa C# (`class`, `Main`, `namespace`)
- Cómo leer datos con `Console.ReadLine()`
- Convertir texto a número con `Convert.ToInt32()`
- Mostrar resultados con `Console.WriteLine()`
- La estructura `Datos → Entradas → Proceso → Salida`

**Estructura del código:**

```csharp
// Datos
int Numero1, Numero2, suma;

// Entradas
Console.Write("Ingrese el primer número: ");
Numero1 = Convert.ToInt32(Console.ReadLine());

// Proceso
suma = Numero1 + Numero2;

// Salida
Console.WriteLine("La suma es: " + suma);
```

> 📂 Ver código completo: [`Sumar2Numeros.cs`](./soluciones/Sumar2Numeros.cs)

---

## 🖥️ ¿Cómo compilar y ejecutar?

Si tienes el **.NET SDK** instalado, tienes varias opciones:

### Opción A — Desde la terminal

```bash
# Compilar y ejecutar
dotnet run
```

### Opción B — Desde Visual Studio

1. Abre el archivo `.cs` o crea un proyecto nuevo de consola.
2. Presiona **F5** o el botón **Run** ▶️.

### Opción C — Desde VS Code

1. Instala la extensión **C# Dev Kit**.
2. Abre el archivo.
3. Presiona **F5** para depurar o `Ctrl + F5` para ejecutar sin depurar.

> 💡 **¿No tienes .NET SDK?** Descárgalo aquí: [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)

---

## 🎯 Recomendaciones antes de mirar la solución

1. **Intenta resolverlo por tu cuenta primero.** Aunque sea en papel.
2. **Escribe el código a mano.** No hagas copy-paste; escribir te ayuda a memorizar la sintaxis.
3. **Provoca errores a propósito.** Escribe "hola" donde esperabas un número y observa qué dice el compilador.
4. **Experimenta con los tipos.** Cambia `int` por `double` y mira qué pasa.
5. **Compara soluciones.** La tuya puede ser distinta y estar perfecta.

---

## 🔍 Diferencias con Java y PSeInt

Viniendo de otros lenguajes, aquí hay algunas cosas que cambian:

| Concepto          | PSeInt                     | Java                   | C#                                    |
| ----------------- | -------------------------- | ---------------------- | ------------------------------------- |
| Estructura        | `Algoritmo...FinAlgoritmo` | `class...main`         | `class...Main` + `namespace`          |
| Declarar variable | `Definir x Como Entero`    | `int x;`               | `int x;`                              |
| Leer dato         | `Leer x`                   | `Scanner.nextInt()`    | `Convert.ToInt32(Console.ReadLine())` |
| Mostrar dato      | `Escribir`                 | `System.out.println()` | `Console.WriteLine()`                 |
| Método principal  | (implícito)                | `main`                 | `Main` (con M mayúscula)              |

> ⚠️ **Ojo con las mayúsculas:** en C# el punto de entrada es `Main` (con M mayúscula), no `main`. Y `Console` también va con mayúscula. C# es **case-sensitive**.

---

## 📌 Pendientes / En progreso

Estoy planeando portar más ejercicios de PSeInt a C#. Por ahora:

- [x] Suma de dos números
- [ ] Promedio de tres notas
- [ ] ¿Eres mayor de edad?
- [ ] Número par o impar
- [ ] Tabla de multiplicar
- [ ] Ciclo `for` básico
- [ ] Adivina el número

> 💡 Si quieres aportar una solución, revisa [`CONTRIBUTING.md`](../../CONTRIBUTING.md).

---

## 🔗 Enlaces útiles

- [📘 Apuntes de C#](../../apuntes/csharp/README.md)
- [📗 Sintaxis de C#](../../apuntes/csharp/sintaxis.md)
- [📂 Ejercicios de PSeInt](../pseint/README.md) — los originales
- [📘 Documentación oficial de C#](https://learn.microsoft.com/es-es/dotnet/csharp/)

---

_Un ejercicio a la vez. Un error a la vez. Un aprendizaje a la vez._

# ☕ Ejercicios de Java

Aquí estoy portando los ejercicios clásicos de PSeInt a Java, uno por uno. 🚀

La idea es simple: **la misma lógica, distinta sintaxis.** Si ya sabes resolver el problema en PSeInt, aquí solo aprendes cómo escribirlo en Java.

---

## 📚 Ejercicios disponibles

| N.º | Ejercicio                        | Tema                              |  Dificultad   |                      Código                      |
| :-: | -------------------------------- | --------------------------------- | :-----------: | :----------------------------------------------: |
| 01  | Suma de dos números              | Variables, `Scanner`, operaciones |   🟢 Fácil    |  [Ver código](./soluciones/Sumar2Numeros.java)   |
| 02  | Ciclo `for` (contar del 1 al 10) | Ciclos, contadores                |   🟢 Fácil    |     [Ver código](./soluciones/CicloFor.java)     |
| 03  | Tabla de multiplicar             | Ciclos, entrada del usuario       | 🟡 Intermedio | [Ver código](./soluciones/TablaMultiplicar.java) |

---

## 🗺️ Estructura de esta carpeta

```

ejercicios/Java/
├── README.md ← este archivo
└── soluciones/ ← código fuente de cada ejercicio
├── Sumar2Numeros.java
├── CicloFor.java
└── TablaMultiplicar.java

```

---

## 📖 Un poco sobre cada ejercicio

### 🟢 01 — Suma de dos números

El clásico universal. Pedimos dos números al usuario, los sumamos y mostramos el resultado.

**Aprendes:**

- Estructura básica de un programa Java (`class`, `main`)
- Cómo usar `Scanner` para leer datos
- Concatenación con `+`
- Cerrar el `Scanner` correctamente

**Estructura del código:**

```java
// Datos → Entradas → Proceso → Salida
```

> 📂 Ver código completo: [`Sumar2Numeros.java`](./soluciones/Sumar2Numeros.java)

---

### 🟢 02 — Ciclo `for` (contar del 1 al 10)

Un ciclo simple que imprime los números del 1 al 10, cada uno con un mensaje personalizado.

**Aprendes:**

- Cómo funciona un `for` con sus tres partes
- La diferencia con el `Para` de PSeInt
- Cómo imprimir texto y variable juntos

**Equivalencia PSeInt → Java:**

```pseint
Para i <- 1 Hasta 10 Hacer
    Escribir "Hola, soy el ciclo número: ", i
FinPara
```

```java
for (int i = 1; i <= 10; i++) {
    System.out.println("Hola, soy el ciclo número: " + i);
}
```

> 📂 Ver código completo: [`CicloFor.java`](./soluciones/CicloFor.java)

---

### 🟡 03 — Tabla de multiplicar

Pide un número al usuario y muestra su tabla del 1 al 10.

**Aprendes:**

- Combinar entrada de datos con ciclos
- Concatenar múltiples valores en una línea
- Aplicar la estructura `Datos → Entradas → Procesos → Salidas`

**Ejemplo de salida:**

```
Ingresa el número de la tabla: 3
3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
...
3 x 10 = 30
```

> 📂 Ver código completo: [`TablaMultiplicar.java`](./soluciones/TablaMultiplicar.java)

---

## 🎯 Recomendaciones antes de mirar las soluciones

1. **Intenta resolverlo por tu cuenta primero.** Aunque sea en papel.
2. **Ejecuta tu código.** No te fíes de "creo que funciona".
3. **Prueba con datos raros.** ¿Qué pasa si el usuario escribe un texto? ¿Y si escribe `0`? ¿Y un negativo?
4. **Lee los comentarios.** El código está estructurado en `Datos / Entradas / Procesos / Salidas` para que se entienda fácil.
5. **Compara tu solución con la mía.** Puede que la tuya sea distinta y esté bien. Hay mil formas de resolver lo mismo.

---

## 🔧 ¿Necesitas compilar y ejecutar?

Si es tu primera vez con Java, estos comandos te van a servir:

```bash
# Compilar (genera el .class)
javac Sumar2Numeros.java

# Ejecutar (después de compilar)
java Sumar2Numeros
```

O si usas un IDE como IntelliJ o VS Code, solo dale al botón de **Run** ▶️.

---

## 📌 Pendientes / En progreso

Estoy portando los 10 ejercicios de PSeInt a Java. Los que faltan:

- [ ] Promedio de tres notas
- [ ] Conversor de centímetros a pulgadas
- [ ] ¿Eres mayor de edad?
- [ ] Número par o impar
- [ ] El número mayor
- [ ] ¿Me levanto o sigo durmiendo?
- [ ] Ahorro semanal
- [ ] Adivina el número

> Si quieres aportar una solución, revisa [`CONTRIBUTING.md`](../../CONTRIBUTING.md).

---

## 🔗 Enlaces útiles

- [📘 Apuntes de Java](../../apuntes/java/README.md)
- [⚡ Truquitos de Java](../../apuntes/java/truquitos.md)
- [📂 Ejercicios de PSeInt](../pseint/README.md) — los originales
- [📘 Documentación oficial de Java](https://dev.java/)

---

_Un ejercicio a la vez. Un error a la vez. Un aprendizaje a la vez._

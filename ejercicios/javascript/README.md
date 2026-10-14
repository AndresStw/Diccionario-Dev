# 🟨 Ejercicios de JavaScript

Mis primeros pasos en JavaScript. Aquí guardo los ejercicios que voy resolviendo mientras aprendo el lenguaje.

> ⚠️ **Nota:** los scripts actuales están pensados para correr **desde el navegador**, no desde Node.js. Usan `prompt()` y `alert()`, que son funciones del navegador.

---

## 📚 Ejercicios disponibles

| N.º | Ejercicio           | Tema                             | Dificultad |                     Código                      |
| :-: | ------------------- | -------------------------------- | :--------: | :---------------------------------------------: |
| 01  | Suma de dos números | Variables, `prompt`, operaciones |  🟢 Fácil  | [Ver código](./soluciones/sumar-dos-numeros.js) |

---

## 🗺️ Estructura de esta carpeta

```

ejercicios/javascript/
├── README.md ← este archivo
└── soluciones/ ← código fuente
└── sumar-dos-numeros.js

```

---

## 📖 Sobre el ejercicio disponible

### 🟢 01 — Suma de dos números

El clásico universal. Pedimos dos números con `prompt()`, los sumamos y mostramos el resultado con `alert()` y `console.log()`.

**Aprendes:**

- Cómo declarar variables con `let`
- Cómo pedir datos con `prompt()`
- Convertir texto a número con `Number()`
- Mostrar resultados con `alert()` y `console.log()`
- La estructura `Datos → Entrada → Proceso → Salida`

**Estructura del código:**

```javascript
// Datos
let Numero1, Numero2, Suma;

// Entrada
Numero1 = Number(prompt("Ingrese el primer número:"));

// Proceso
Suma = Numero1 + Numero2;

// Salida
console.log("La suma es: " + Suma);
alert("La suma es: " + Suma);
```

> 📂 Ver código completo: [`sumar-dos-numeros.js`](./soluciones/sumar-dos-numeros.js)

---

## 🖥️ ¿Cómo ejecutar estos scripts?

Como los scripts usan funciones del navegador (`prompt` y `alert`), tienes dos opciones:

### Opción A — Desde el navegador (recomendado)

1. Abre las **DevTools** con `F12` en tu navegador.
2. Ve a la pestaña **Console**.
3. Copia y pega el código del archivo.
4. Presiona **Enter** y listo. 🎉

### Opción B — Desde un archivo HTML

1. Crea un archivo `index.html` en la misma carpeta.
2. Añade esto dentro:
   ```html
   <!DOCTYPE html>
   <html>
     <body>
       <script src="sumar-dos-numeros.js"></script>
     </body>
   </html>
   ```
3. Abre el archivo con **Live Server** en VS Code o directamente en el navegador.

---

## 🎯 Recomendaciones antes de mirar la solución

1. **Intenta resolverlo por tu cuenta primero.** Aunque sea en papel.
2. **Prueba en la consola del navegador.** Es el patio de juegos perfecto.
3. **Experimenta.** Cambia `Number()` por `parseInt()` y observa qué pasa.
4. **Rompe el código a propósito.** ¿Qué pasa si el usuario escribe "hola" en vez de un número?
5. **Compara soluciones.** La tuya puede ser distinta y estar perfecta.

---

## 🔍 Diferencias con PSeInt y Java

Viniendo de PSeInt o Java, aquí hay algunas cosas que cambian:

| Concepto          | PSeInt                  | Java                   | JavaScript                  |
| ----------------- | ----------------------- | ---------------------- | --------------------------- |
| Declarar variable | `Definir x Como Entero` | `int x;`               | `let x;`                    |
| Leer dato         | `Leer x`                | `Scanner.nextInt()`    | `prompt()`                  |
| Mostrar dato      | `Escribir`              | `System.out.println()` | `console.log()` / `alert()` |
| Concatenar        | `,`                     | `+`                    | `+`                         |

> 💡 **Nota clave:** en JavaScript **no declaras tipos**. `let x` puede guardar un número, un texto o un booleano, y el lenguaje lo maneja solo.

---

## 📌 Pendientes / En progreso

Tengo planeado portar más ejercicios. Por ahora:

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

- [📘 Apuntes de JavaScript](../../apuntes/javascript/README.md) 🚧 En progreso
- [📂 Ejercicios de PSeInt](../pseint/README.md) — los originales
- [📘 Documentación oficial de JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)

---

_Un ejercicio a la vez. Un error a la vez. Un aprendizaje a la vez._

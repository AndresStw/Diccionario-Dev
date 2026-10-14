# ☕ El universo Java: mi viaje desde PSeInt hasta uno de los lenguaje que domina el mundo

> Este apunte **no es de sintaxis**. Si buscas `public static void main` explicado palabra por palabra, ese es otro documento.
>
> Aquí hablo de **todo lo demás**: por qué Java es como es, qué significa "JVM", qué se siente al venir de PSeInt, cómo organizar la cabeza para no perderse, y por qué este lenguaje, aunque parezca gritón, tiene una razón para ser así.

---

## 🚀 Antes de empezar: mi punto de partida

Vengo de PSeInt. Aprendí a pensar algoritmos, a declarar variables, a usar condicionales y ciclos. La lógica ya la tengo.

Pero PSeInt es un **laboratorio**. Un lugar seguro donde no hay consecuencias si algo falla. En cambio, Java es el **mundo real**.

Y eso me daba miedo. Porque Java no te perdona: si te falta un `;`, se cae. Si el nombre del archivo no coincide con la clase, explota. Si escribes `system` en minúscula, ni siquiera arranca.

Este apunte es mi manera de procesar ese salto. No es un manual. Es un **diario de aprendizaje con reflexiones, comparaciones y decisiones**.

---

## 🧠 La primera gran diferencia: lógica vs ingeniería

En PSeInt, todo es lógica. En Java, la lógica sigue estando, pero **encima de ella hay ingeniería**.

Piénsalo así:

| PSeInt                    | Java                                             |
| ------------------------- | ------------------------------------------------ |
| Escribes un algoritmo     | Construyes un sistema                            |
| Un solo archivo           | Varios archivos organizados                      |
| Piensas en el problema    | Piensas en el problema **y** en cómo organizarlo |
| El compilador es un profe | El compilador es un jefe estricto                |

Eso significa que aprender Java no es solo aprender `if` y `for`. Es aprender a **estructurar**, **nombrar**, **organizar** y **pensar en el futuro del código**.

> 💡 **Reflexión personal:** PSeInt me enseñó a resolver. Java me va a enseñar a **construir**.

---

## 🔥 "Write Once, Run Anywhere": el lema que cambió la historia

Java nació en 1995 con una promesa que en ese momento era casi magia:

> **Escribe tu programa una vez, y córrelo en cualquier sistema operativo.**

Windows, Linux, Mac. Todo. Sin cambiar una línea.

### 🤔 ¿Y cómo rayos hace eso?

Aquí entra la pieza más importante de Java: la **JVM** (Java Virtual Machine).

Piensa en la JVM como un **traductor universal**. Tú escribes código en Java (`.java`), y el compilador lo convierte en un idioma intermedio llamado **bytecode** (`.class`).

Ese bytecode no es para tu PC. Es para la JVM. Y cada sistema operativo tiene su propia JVM que traduce ese bytecode a las instrucciones que su hardware entiende.

**En una imagen mental:**
Tú escribes El compilador La JVM traduce
código Java → lo convierte → a cada sistema
(HolaMundo.java) (HolaMundo.class) (Win/Mac/Linux)

> 🎯 **Por eso Java se usa en bancos, empresas y apps Android.** Porque el mismo código sirve en todos lados.

---

## 🧰 JDK, JRE, JVM: el trío que todo el mundo confunde

Cuando empiezas con Java, todos te dicen "instala el JDK". Y tú piensas _"¿y por qué no el JRE? ¿y qué es la JVM?"_.

Aquí va la explicación simple:

| Sigla   | Nombre completo          | ¿Qué es?                                                                    | Analogía                                               |
| ------- | ------------------------ | --------------------------------------------------------------------------- | ------------------------------------------------------ |
| **JVM** | Java Virtual Machine     | Ejecuta el bytecode                                                         | El motor del carro                                     |
| **JRE** | Java Runtime Environment | Todo lo necesario para **ejecutar** Java (incluye la JVM)                   | El carro completo                                      |
| **JDK** | Java Development Kit     | Todo lo necesario para **desarrollar** Java (incluye el JRE + herramientas) | El carro + taller mecánico + el mecánico incluido jaja |

### 🎯 ¿Qué necesitas tú?

Si vas a **programar**, necesitas el **JDK**. Porque necesitas el compilador (`javac`) y todas las herramientas de desarrollo.

Si solo vas a **correr** programas hechos por otros, te basta con el **JRE**.

Y la **JVM** viene incluida en el JRE. No la instalas aparte, viene de paquete.

> 💡 **Regla mental:** JDK > JRE > JVM. Cada uno contiene al siguiente, como muñecas rusas.

---

## 🏗️ Cómo se organiza un proyecto Java (esto no existe en PSeInt)

En PSeInt tenías un archivo y ya. En Java, los proyectos **reales** tienen estructura. Y cuando trabajes con proyectos medianos, esto deja de ser opcional.

### 📁 La estructura básica

MiProyecto/
├── src/ ← código fuente (.java)
│ ├── com/
│ │ └── miproyecto/
│ │ ├── Main.java
│ │ └── Persona.java
├── bin/ ← archivos compilados (.class)
└── lib/ ← librerías externas (si usas)

### 📦 ¿Qué es un "package"?

Un **package** es una carpeta que agrupa clases relacionadas. Es como poner apellido a tus archivos para evitar conflictos.

Por ejemplo, si dos programadores crean una clase llamada `Persona`, los packages las diferencian:

- `com.empresa.rh.Persona`
- `com.empresa.ventas.Persona`

Suena exagerado ahora. Pero cuando trabajes con proyectos grandes, agradecerás esta separación.

> 🎯 **Regla de oro:** los packages se nombran al revés del dominio. `github.com/AndresStw` → `com.andresstw.miproyecto`.

---

## 🧭 La mentalidad Java: por qué el código tiene que ser tan explícito

Aquí viene una reflexión que me tomó tiempo entender:

> Java no es "difícil". Es **desconfiado**.

Java cree que **tú eres un humano que se equivoca**, y por eso te obliga a decirle **todo, todo, todo** con lujo de detalle.

- Qué tipo de dato es cada variable.
- Qué devuelve cada método (o si no devuelve nada).
- Si el método es visible desde afuera o no.
- Qué librerías vas a usar antes de usarlas.

Esto es **verboso**, sí. Pero también es **predecible**. Y en proyectos grandes, la previsibilidad vale más que la brevedad.

### 🔍 Contrastando con otros lenguajes

| Lenguaje   | Estilo   | Ventaja                      | Desventaja                   |
| ---------- | -------- | ---------------------------- | ---------------------------- |
| Python     | Relajado | Escribes poco                | Errores aparecen al ejecutar |
| JavaScript | Flexible | Rápido de prototipar         | Errores raros y confusos     |
| **Java**   | Estricto | Errores aparecen al compilar | Más líneas de código         |

> 💡 **Conclusión personal:** Java te obliga a ser claro con tus ideas **antes** de que el programa corra. Y eso, aunque molesto al principio, me está volviendo más ordenado como programador.

---

## ✍️ Convenciones de nombres: cómo se llama cada cosa

Este es un tema que **nadie te explica al principio**, pero que marca la diferencia entre código amateur y código profesional.

| Tipo de cosa | Convención         | Ejemplo                           |
| ------------ | ------------------ | --------------------------------- |
| Clases       | `PascalCase`       | `CuentaBancaria`, `Usuario`       |
| Variables    | `camelCase`        | `nombreCompleto`, `edadUsuario`   |
| Métodos      | `camelCase`        | `calcularPromedio()`, `saludar()` |
| Constantes   | `UPPER_SNAKE_CASE` | `MAX_INTENTOS`, `PI`              |
| Packages     | `lowercase`        | `com.andresstw.utilidades`        |

### 🎯 ¿Por qué importa?

Porque en Java, cuando ves un nombre, **ya sabes qué tipo de cosa es** sin mirar la definición.

- `miVariable` → variable
- `MiClase` → clase
- `MI_CONSTANTE` → constante

Esto no es capricho. Es una **convención universal** que todos los programadores Java siguen. Si no la sigues, tu código huele raro.

> 🦨 _"Es el apestoso"_ — Luisito Comunica, 2026, Podcast The Wild Project #384, 40:05 min.

> ⚠️ **Ojo:** Java es **case-sensitive**. `usuario` y `Usuario` son cosas distintas. `System` y `system` también. Siempre.

---

## 📚 ¿Qué son las librerías y por qué siempre se importan?

Cuando escribes Java, muchas herramientas ya vienen incluidas. No las tienes que crear tú. Solo las **importas**.

Por ejemplo, `Scanner` (para leer datos), `String` (para textos), `ArrayList` (para listas), `Math` (para matemáticas) — todas vienen en el JDK.

### 🧠 La idea clave

Piensa en las librerías como **cajas de herramientas prefabricadas**:

- ¿Necesitas leer del teclado? → `java.util.Scanner`
- ¿Necesitas trabajar con listas? → `java.util.ArrayList`
- ¿Necesitas raíces cuadradas? → `java.lang.Math`
- ¿Necesitas fechas? → `java.time.LocalDate`

Antes de inventar la rueda, revisa si Java ya la tiene. Spoiler: **casi siempre la tiene**.

### 🔍 ¿Por qué a veces se importa y a veces no?

Las clases del paquete `java.lang` (como `String`, `System`, `Math`) se importan **automáticamente**. Las demás sí tienes que importarlas.

> 💡 **Truco:** si tu IDE subraya una clase en rojo, probablemente le falta el `import`. El IDE te lo puede autocompletar con `Alt + Enter` en IntelliJ.

---

## 🎯 Mi roadmap personal de Java

Este es el orden en el que yo voy a aprender Java. Lo escribo aquí para no perderme:

### 🟢 Fase 1 — Fundamentos

- [x] Estructura básica de un programa
- [x] Variables y tipos de datos
- [x] Entrada/salida con `Scanner`
- [x] Condicionales (`if`, `else`, `switch`)
- [x] Ciclos (`for`, `while`, `do-while`)

### 🟡 Fase 2 — Organización

- [ ] Métodos (funciones con y sin retorno)
- [ ] Arreglos (`int[]`, `String[]`)
- [ ] `ArrayList` (listas dinámicas)
- [ ] `String` vs `StringBuilder`
- [ ] Casting y conversión de tipos

### 🔴 Fase 3 — Programación Orientada a Objetos

- [ ] Clases y objetos
- [ ] Constructores
- [ ] Encapsulamiento (`private`, getters, setters)
- [ ] Herencia
- [ ] Polimorfismo
- [ ] Interfaces

### ⚫ Fase 4 — Nivel profesional

- [ ] Manejo de excepciones
- [ ] Colecciones (`HashMap`, `Set`)
- [ ] Archivos (lectura/escritura)
- [ ] Streams y lambdas
- [ ] Conexión a bases de datos (JDBC)
- [ ] Proyectos con Maven/Gradle

> 🎯 **Meta personal:** no quiero saber "de todo". Quiero **dominar cada nivel antes de pasar al siguiente**. La prisa mata el aprendizaje.

---

## 💭 Consejos para no frustrarse con Java

Aquí van las cosas que me repito cada vez que algo no compila:

### 1. El compilador no te odia

Cuando ves un error de compilación, no estás fallando. El compilador está haciendo su trabajo: **protegerte de errores más grandes**.

> 🎯 **Regla mental:** cada error de compilación es un bug que no vas a tener que depurar después.

### 2. Java premia la paciencia

No es un lenguaje para escribir rápido. Es un lenguaje para **pensar antes de escribir**.

- Si algo te toma más líneas que en Python, está bien.
- Si el IDE te subraya algo, revísalo.
- Si un `import` te falta, agrégalo.

### 3. La lógica que tienes de PSeInt sigue siendo tu mejor arma

El 80% del trabajo ya lo hiciste. Aprendiste a resolver problemas. Lo único nuevo es **cómo escribirlos en Java**.

> 💡 **Reflexión:** aprender Java no es aprender a programar de nuevo. Es aprender un **nuevo idioma** para expresar lo que ya sabes.

### 4. No compares Java con otros lenguajes todo el tiempo

Cada lenguaje tiene su personalidad. Java es verboso, sí. Pero también es **seguro**, **robusto** y **usado por empresas gigantes**.

Cuando te frustres, recuerda: **bancos, apps de Android, sistemas de la NASA**. Todo eso corre Java.

---

## 🚀 Conclusión

Java no es solo un lenguaje. Es una **filosofía**: claridad, orden y disciplina.

Viniendo de PSeInt, el salto es grande. La sintaxis cambia, las herramientas cambian, la mentalidad cambia. Pero la **lógica que ya tienes sigue siendo el 80% de tu trabajo**.

Este apunte es mi manera de entender **el universo** que rodea a Java: la JVM, el JDK, los packages, las convenciones, la mentalidad.

La sintaxis viene **después**. Y cuando llegue, ya no será un idioma raro. Será la forma de expresar todo lo que aquí aprendí a entender.

**No corras. Aprende a pensar Java primero. La sintaxis se aprende sola con práctica.**

---

_Apunte reflexivo de Java creado para Diccionario-Dev. Si encuentras un error o quieres aportar, abre un Issue o un Pull Request._

[Siguiente (Java Sintaxis) -> ](./JavaSintaxis.md)

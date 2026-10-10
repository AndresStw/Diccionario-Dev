# 💻 El Setup del Programador

> ¿Quieres empezar a programar, pero no sabes qué programas instalar, qué extensiones necesitas o por qué todo el mundo habla de las variables de entorno?
>
> ¡Tranquilo! 😂 Aquí encontrarás una guía para preparar tu entorno de desarrollo, instalar las herramientas necesarias y dejar tu computador listo para programar sin pelearte con él en el intento.

## 📌 ¿Qué encontrarás aquí?

- 🛠️ Editores de código e IDE recomendados.
- ☕ Herramientas para programar en Java.
- 🌐 Herramientas para desarrollo web: HTML, CSS y JavaScript.
- 🖥️ Herramientas para C# y aplicaciones de Windows.
- ⚙️ Configuración de variables de entorno.
- 🔌 Extensiones y complementos útiles.
- ✅ Recomendaciones para organizar tu entorno de desarrollo.

---

## 🛠️ 1. Editores de código e IDE

Primero, una pequeña aclaración:

- **Editor de código:** permite escribir y editar código; puedes ampliarlo mediante extensiones.
- **IDE:** entorno de desarrollo integrado que reúne herramientas para escribir, ejecutar, depurar y organizar proyectos.

En palabras simples: un editor es tu mesa de trabajo; un IDE es la mesa, las herramientas y el taller completo. 😂

### 🔹 Visual Studio Code (VS Code)

**Ideal para:** desarrollo web, JavaScript, TypeScript, HTML, CSS, Python y muchos otros lenguajes.

🌐 **Descargar:** https://code.visualstudio.com/

**¿Qué puedes hacer con él?**

- Crear páginas web con HTML y CSS.
- Programar con JavaScript y TypeScript.
- Desarrollar proyectos con React y Node.js.
- Trabajar con Java, Python y C# mediante las extensiones correspondientes.
- Usar Git y GitHub desde el editor.

**Extensiones recomendadas:**

| Extensión               | ¿Para qué sirve?                                                           |
| ----------------------- | -------------------------------------------------------------------------- |
| Live Server             | Ejecutar páginas web locales y recargarlas al guardar cambios.             |
| Prettier                | Formatear el código automáticamente.                                       |
| ESLint                  | Detectar problemas y aplicar reglas de calidad en JavaScript y TypeScript. |
| Extension Pack for Java | Reunir herramientas para desarrollar Java en VS Code.                      |
| C#                      | Soporte para desarrollar y depurar C#.                                     |
| GitLens                 | Facilitar la revisión del historial y los cambios de Git.                  |

> 😂 Consejo: no instales 50 extensiones porque un video diga que son imprescindibles. Instala las que realmente necesites.

### 🔹 Visual Studio

**Ideal para:** desarrollo con C#, .NET y aplicaciones de Windows.

🌐 **Descargar:** https://visualstudio.microsoft.com/

Visual Studio es un IDE completo, diferente de Visual Studio Code.

**¿Qué puedes desarrollar?**

- Aplicaciones de consola con C#.
- Aplicaciones de escritorio para Windows.
- Aplicaciones con Windows Forms o WPF.
- Aplicaciones web y servicios con ASP.NET Core.
- Proyectos empresariales con .NET.

**¿Qué debes instalar?**

Durante la instalación, selecciona las cargas de trabajo que correspondan a tus proyectos. Por ejemplo:

- **Desarrollo de escritorio de .NET:** para aplicaciones de escritorio y proyectos de C#.
- **Desarrollo de ASP.NET y web:** para aplicaciones y servicios web con .NET.

> ⚠️ No confundas Visual Studio con Visual Studio Code. Se parecen en el nombre, pero no son el mismo programa.

### 🔹 IntelliJ IDEA

**Ideal para:** desarrollo con Java, especialmente cuando trabajas con proyectos grandes o necesitas herramientas avanzadas.

🌐 **Descargar:** https://www.jetbrains.com/idea/

**¿Por qué utilizarlo?**

- Autocompletado inteligente.
- Depuración de programas.
- Administración de proyectos y dependencias.
- Integración con Maven y Gradle.
- Herramientas para pruebas y refactorización.

IntelliJ IDEA dispone de opciones gratuitas y comerciales según la edición y las funciones disponibles.

**¿Es obligatorio para programar Java?**

No. También puedes programar Java en VS Code o utilizar otros IDE. IntelliJ IDEA es una excelente alternativa si quieres profundizar en Java y trabajar con proyectos más completos.

---

## ☕ 2. Herramientas para programar en Java

Para ejecutar programas Java necesitas un entorno de ejecución adecuado y, para desarrollar, un kit de desarrollo.

### ¿Qué debes instalar?

1. **JDK (Java Development Kit):** incluye el compilador y las herramientas necesarias para desarrollar aplicaciones Java.
2. **IDE o editor:** IntelliJ IDEA, VS Code u otro entorno compatible.
3. **Git:** para controlar versiones y colaborar en proyectos.

🌐 **Descargar el JDK:** https://adoptium.net/

🌐 **Documentación oficial de Java:** https://dev.java/

### ¿Cómo comprobar la instalación?

Abre CMD o PowerShell y ejecuta:

```bash
java -version
```

Para comprobar si tienes el compilador disponible:

```bash
javac -version
```

Si ambos comandos muestran sus versiones, tienes disponibles esos comandos. Si aparece un error, revisa la instalación y las variables de entorno.

---

## 🌐 3. Herramientas para desarrollo web

Si quieres crear páginas web, aplicaciones y sitios interactivos, puedes comenzar con estas tecnologías:

| Tecnología | ¿Para qué sirve?                                       |
| ---------- | ------------------------------------------------------ |
| HTML       | Define la estructura de una página web.                |
| CSS        | Controla los estilos, colores, tamaños y distribución. |
| JavaScript | Añade interactividad y lógica a la página.             |
| Node.js    | Permite ejecutar JavaScript fuera del navegador.       |
| Git        | Controla las versiones de tu código.                   |

### Herramientas recomendadas

- **VS Code:** https://code.visualstudio.com/
- **Node.js:** https://nodejs.org/
- **Git:** https://git-scm.com/
- **GitHub:** https://github.com/

Para comenzar con HTML y CSS no necesitas instalar Node.js obligatoriamente. Puedes crear tus archivos y abrirlos en el navegador.

Node.js será útil cuando trabajes con herramientas como Vite, React y otros proyectos basados en JavaScript.

---

## 🖥️ 4. Herramientas para C# y aplicaciones de Windows

Si tu objetivo es programar en C#, tienes dos opciones principales:

### Opción A: Visual Studio

Recomendado si quieres desarrollar aplicaciones de escritorio, utilizar el diseñador visual de Windows Forms o trabajar en proyectos complejos de .NET.

Descarga: https://visualstudio.microsoft.com/

### Opción B: VS Code + .NET SDK

Una alternativa más ligera para desarrollar aplicaciones de consola, servicios web y otros proyectos compatibles con .NET.

Descarga el SDK: https://dotnet.microsoft.com/download

### Comprueba la instalación

En la terminal ejecuta:

```bash
dotnet --version
```

Si aparece un número de versión, el comando `dotnet` está disponible.

Para crear un proyecto de consola:

```bash
dotnet new console -n MiPrimerProyecto
```

Para entrar en la carpeta:

```bash
cd MiPrimerProyecto
```

Para ejecutar el programa:

```bash
dotnet run
```

> 😂 Si aparece un error, no le declares la guerra al computador todavía. Primero revisa el mensaje, la versión instalada y la ruta de tu proyecto.

---

## ⚙️ 5. Variables de entorno en Windows

Las variables de entorno son valores que Windows y los programas utilizan para encontrar herramientas, consultar configuraciones o acceder a determinadas opciones.

Una de las más importantes es `PATH`.

### ¿Qué es PATH?

`PATH` contiene una lista de directorios en los que Windows busca ejecutables cuando escribes comandos en una terminal.

Por ejemplo, cuando ejecutas:

```bash
java -version
```

Windows necesita encontrar el ejecutable de Java.

Si su ubicación no está disponible en `PATH`, puede aparecer un mensaje indicando que `java` no se reconoce como un comando.

### ¿Cómo configurar una variable de entorno?

1. Instala el programa que necesitas.
2. Busca en Windows: **Editar las variables de entorno del sistema**.
3. Abre la opción correspondiente.
4. Selecciona **Variables de entorno**.
5. Elige si necesitas configurar una variable de usuario o del sistema.
6. Para modificar `Path`, selecciónala y pulsa **Editar**.
7. Añade la ruta de la carpeta que contiene los ejecutables cuando sea necesario.
8. Guarda los cambios y abre una terminal nueva para comprobarlos.

### Ejemplo: Java

Algunas instalaciones de Java necesitan una variable `JAVA_HOME` que apunte a la carpeta principal del JDK.

Ejemplo de ruta ilustrativa:

```text
JAVA_HOME = C:\Program Files\Eclipse Adoptium\jdk-XX
```

Después, algunas herramientas pueden utilizar esta entrada en `Path`:

```text
%JAVA_HOME%\bin
```

**Importante:** sustituye la ruta de ejemplo por la ubicación real de tu JDK. No copies literalmente `jdk-XX`, porque no es el nombre real de una carpeta.

### ¿Debo crear JAVA_HOME, DOTNET_ROOT y otras variables?

No siempre. Cada herramienta tiene sus propios requisitos:

- `JAVA_HOME`: útil para herramientas Java que esperan esta variable.
- `PATH`: permite encontrar ejecutables desde la terminal.
- `DOTNET_ROOT`: puede ser necesaria en configuraciones específicas, pero no tienes que crearla automáticamente en todas las instalaciones de .NET.

> ⚠️ No borres entradas de `Path` que ya existen. Podrías hacer que otros programas dejen de funcionar.

---

## 🔧 6. Git y GitHub

Si quieres guardar tus proyectos, llevar un historial de cambios y colaborar con otros programadores, Git es una herramienta fundamental.

🌐 **Git:** https://git-scm.com/

🌐 **GitHub:** https://github.com/

Comprueba la instalación:

```bash
git --version
```

Configura tu nombre y correo para los nuevos commits:

```bash
git config --global user.name "TuNombre"
git config --global user.email "tu-correo@example.com"
```

Cambia esos valores por los que quieras utilizar en tus commits.

### Comandos básicos

```bash
git init
git status
git add .
git commit -m "Mi primer commit"
git push
```

Estos comandos tienen funciones diferentes. Por ejemplo, `git init` inicializa un repositorio local, mientras que `git push` envía commits a un repositorio remoto previamente configurado.

> 😂 Git es como una máquina del tiempo para tu código. Eso sí, primero tienes que guardar los cambios correctamente; Git todavía no lee mentes.

---

## 🧰 7. Otras herramientas recomendadas

| Herramienta      | Uso                                                          |
| ---------------- | ------------------------------------------------------------ |
| GitHub Desktop   | Administrar repositorios Git con una interfaz gráfica.       |
| Windows Terminal | Trabajar con distintas terminales desde una sola aplicación. |
| Postman          | Probar API y solicitudes HTTP.                               |
| Docker Desktop   | Ejecutar contenedores cuando tu proyecto lo requiera.        |
| DBeaver          | Administrar diferentes bases de datos compatibles.           |

No necesitas instalar todo desde el primer día. Elige las herramientas según el proyecto que estés desarrollando.

---

## ✅ 8. Checklist del programador

Antes de empezar un proyecto, comprueba lo siguiente:

- [ ] Instalé el editor o IDE adecuado.
- [ ] Instalé el lenguaje, compilador o SDK que necesito.
- [ ] Comprobé las versiones desde la terminal.
- [ ] Configuré las variables de entorno cuando son necesarias.
- [ ] Instalé Git.
- [ ] Abrí correctamente mi proyecto.
- [ ] Ejecuté un programa de prueba.
- [ ] Revisé la documentación oficial de las herramientas.

---

## 🚀 Conclusión

No existe un único setup perfecto para todos los programadores. Lo importante es tener las herramientas necesarias para tu tecnología, comprender cómo funcionan y saber solucionar los errores de configuración.

Empieza con lo básico, construye proyectos y amplía tu entorno a medida que aprendas.

**Recuerda:** un buen programador no es el que tiene más programas instalados, sino el que sabe utilizar las herramientas que necesita. 💻🔥

---

\*Documento creado para Diccionario-Dev. Si encuentras un error o quieres aportar una mejora, puedes proponer cambios mediante un Pull Request

# 🐛 Manual de supervivencia del programador

### Cómo detectar errores, escapar de los ciclos infinitos y evitar apagar el computador por desesperación

Todo iba bien. Escribiste tu código, presionaste **Ejecutar** y esperaste ver tu resultado.

Pero entonces…

```
- La consola empieza a imprimir el mismo número sin parar.
- El programa no responde.
- Aparece un error que parece escrito en otro idioma.
- Y tú llevas veinte minutos buscando un punto y coma que estaba delante de tus ojos.
```

Bienvenido al desarrollo de software. 😂

No te preocupes: equivocarse es parte del proceso. La diferencia está en aprender a reconocer qué ocurrió y saber cómo reaccionar.

En este apunte vamos a aprender a detectar errores, investigar qué está fallando y recuperar el control cuando nuestro programa decide tomar sus propias decisiones.

> **Regla número uno:** antes de entrar en pánico, guarda tus avances. Tu yo del futuro podría necesitar terapia, pero al menos tendrá una copia del código. 💀

Programar no consiste solamente en escribir código que funcione. También consiste en entender qué hacer cuando no funciona.

Un día tu programa no compila. Otro día calcula mal. Y, de repente, ejecutas un ciclo que nunca termina y descubres que tu computador está trabajando más que tú. 💀

Tranquilo, nos pasa a todos. Los errores forman parte del aprendizaje. Lo importante es aprender a encontrarlos, entenderlos y corregirlos sin entrar en pánico.

En esta guía encontrarás algunos consejos para detectar errores y recuperar el control cuando tu código se sale de lo esperado.

---

## 🚨 1. Tu programa no responde: ¿qué hago?

Imagina que ejecutas tu programa y este se queda congelado, no responde o comienza a consumir muchos recursos.

Puede que hayas creado un ciclo infinito, una operación demasiado pesada o un proceso que está tardando más de lo esperado.

### 🛠️ Tu mejor aliado: el Administrador de tareas

Si estás usando Windows, puedes abrirlo con:

- `Ctrl + Shift + Esc`: abre directamente el Administrador de tareas.
- `Ctrl + Alt + Supr`: muestra opciones de seguridad, entre ellas el Administrador de tareas.

Desde allí puedes buscar el programa que no responde, seleccionarlo y utilizar **Finalizar tarea** si necesitas cerrarlo.

**Importante:** cerrar un programa a la fuerza puede hacer que pierdas los cambios que no hayas guardado. Úsalo cuando sea necesario, no como primera opción ante cualquier demora.

### ¿Y si se congeló el entorno de desarrollo?

Si estás trabajando en Visual Studio Code, Visual Studio, IntelliJ IDEA u otro editor, intenta detener primero la ejecución desde el propio entorno.

Busca el botón de detener, normalmente representado por un cuadrado rojo, o utiliza el mecanismo de interrupción que ofrece tu entorno.

Si no responde, el Administrador de tareas puede ayudarte a cerrar el proceso correspondiente.
y si eso no sirve .....

### ☠️ El último recurso: la vieja confiable "Truco nuclear"🚨🚨🚨🚨

¿El programa no responde? ¿El Administrador de tareas tampoco te salva? ¿Windows decidió que hoy no va a colaborar?

Bueno… todavía queda una opción. 😭

> **La vieja confiable: mantener presionado el botón físico de encendido durante unos 10 segundos**, hasta que el equipo se apague.

Pero ojo: esto es el último recurso, no el primero. Un apagado forzado puede hacer que pierdas archivos sin guardar y, en algunos casos, causar problemas con los datos o el sistema.

Antes de recurrir a él, intenta detener el programa, cerrar la aplicación o reiniciar el equipo desde Windows si todavía responde.

Y si absolutamente nada funciona…

> _Presionas el botón de encendido, miras al horizonte y reflexionas sobre las decisiones que te llevaron a escribir ese ciclo._ 😭💀

**Moraleja:** guarda tus avances con frecuencia. Tu yo del futuro te lo agradecerá.

**Consejo:** no necesitas apagar el computador cada vez que un programa falla. Primero intenta detener la ejecución y recuperar el control.

---

## 🔁 2. Cómo reconocer un ciclo infinito

Un ciclo infinito ocurre cuando una repetición continúa indefinidamente porque su condición nunca deja de cumplirse o porque el programa nunca llega a una condición de salida.

Por ejemplo, en pseudocódigo:

```pseint
Mientras Verdadero Hacer
    Escribir "¡Sigo ejecutándome!"
FinMientras
```

Este ciclo no tiene una condición que cambie para terminar. Por eso seguirá repitiéndose mientras el programa continúe ejecutándose.

### Un error muy común: olvidar actualizar el contador

Observa este ejemplo:

```pseint
Algoritmo CicloInfinito
    contador <- 1

    Mientras contador <= 5 Hacer
        Escribir contador
    FinMientras
FinAlgoritmo
```

¿Qué ocurre?

1. `contador` comienza en `1`.
2. La condición `contador <= 5` es verdadera.
3. El programa muestra `1`.
4. Vuelve a comprobar la condición.
5. Como `contador` nunca cambia, la condición sigue siendo verdadera.

Resultado: el programa continúa mostrando `1` una y otra vez.

### ✅ ¿Cómo lo corregimos?

```pseint
Algoritmo CicloCorregido
    contador <- 1

    Mientras contador <= 5 Hacer
        Escribir contador
        contador <- contador + 1
    FinMientras
FinAlgoritmo
```

Ahora el contador aumenta en cada repetición. Cuando llega a `6`, la condición deja de cumplirse y el ciclo termina.

**Antes de ejecutar un ciclo, pregúntate:**

- ¿Cuál es la condición de entrada?
- ¿Qué variable cambia durante cada repetición?
- ¿Existe una forma de salir del ciclo?
- ¿Qué ocurre si la condición nunca se vuelve falsa?

Estas preguntas pueden ahorrarte más de un susto.

---

## 🔍 3. Cómo detectar errores en tu código

Cuando algo falla, no necesitas reescribir todo el programa inmediatamente. Primero debes averiguar qué está ocurriendo.

### 1. Lee el mensaje de error

No cierres la consola sin leer lo que aparece.

El mensaje puede indicarte:

- Qué tipo de error ocurrió.
- En qué archivo se encuentra.
- En qué línea está el problema.
- Qué esperaba encontrar el compilador o intérprete.

A veces el mensaje parece estar escrito en otro idioma, pero contiene pistas útiles.

**Consejo:** identifica la primera línea del mensaje que señala un error relevante. Los mensajes posteriores pueden ser consecuencias del problema inicial.

### 2. Revisa la línea señalada y las anteriores

Si el error aparece en la línea 20, no revises únicamente esa línea. En ocasiones, el problema comenzó en la línea 18 o 19.

Por ejemplo, puede que hayas olvidado cerrar un paréntesis, una llave o una cadena de texto.

```java
System.out.println("Hola mundo";
```

Aquí falta cerrar el paréntesis:

```java
System.out.println("Hola mundo");
```

Un pequeño detalle puede impedir que todo el programa compile.

### 3. Usa mensajes de prueba

Si el programa se ejecuta, pero hace algo inesperado, muestra los valores de las variables en distintos puntos.

```java
int precio = 100;
int cantidad = 3;

System.out.println("Precio: " + precio);
System.out.println("Cantidad: " + cantidad);

int total = precio * cantidad;

System.out.println("Total calculado: " + total);
```

Así puedes comprobar si las variables contienen los valores que esperabas.

En lugar de adivinar dónde está el problema, vas siguiendo el recorrido de los datos.

### 4. Divide el problema

Si tienes un programa de 200 líneas y algo falla, revisar todo de golpe puede ser complicado.

Prueba esto:

1. Identifica qué parte debería funcionar.
2. Comprueba las entradas.
3. Revisa los cálculos.
4. Verifica las condiciones.
5. Examina las salidas.

Si el programa tiene funciones o métodos, puedes probarlos por separado.

**Regla práctica:** reduce el problema hasta encontrar la parte que se comporta de manera inesperada.

---

## 🧠 4. Aprende a diferenciar los errores

No todos los errores se manifiestan de la misma manera.

| Tipo de error | ¿Qué ocurre?                                                | Ejemplo                                                             |
| ------------- | ----------------------------------------------------------- | ------------------------------------------------------------------- |
| Sintaxis      | El código no respeta las reglas del lenguaje.               | Olvidar un `;` cuando es obligatorio.                               |
| Ejecución     | El problema aparece mientras el programa se ejecuta.        | Intentar dividir entre cero en un contexto donde no está permitido. |
| Lógica        | El programa funciona, pero produce un resultado incorrecto. | Usar una suma cuando necesitabas una multiplicación.                |

### Ejemplo de error lógico

```java
int ancho = 5;
int alto = 3;

int area = ancho + alto;

System.out.println(area);
```

El programa puede compilar y mostrar `8`, pero si quieres calcular el área de un rectángulo, la operación correcta es multiplicar el ancho por el alto.

```java
int area = ancho * alto;
```

El detalle importante es que **un programa que se ejecuta sin errores no necesariamente está haciendo lo correcto**.

---

## 🐢 5. Mi programa está demasiado lento

No todo programa lento tiene un ciclo infinito. Puede estar realizando demasiadas operaciones, procesando una gran cantidad de datos o esperando una respuesta externa.

Antes de cerrarlo, observa:

- ¿Está consumiendo mucha CPU o memoria?
- ¿Está procesando datos que normalmente tardan en calcularse?
- ¿Se queda bloqueado siempre en el mismo punto?
- ¿El problema comenzó después de un cambio reciente?

Si estás haciendo una prueba sencilla, comienza con pocos datos. Si funciona con 10 elementos, prueba con 100 y después con una cantidad mayor.

Esto te ayuda a descubrir si el problema depende del tamaño de los datos.

No ejecutes repetidamente un programa que ya sabes que consume demasiados recursos sin revisar primero qué está ocurriendo.

---

## 🪲 6. Depurar: investigar en lugar de adivinar

La depuración, también conocida como _debugging_, consiste en examinar el comportamiento del programa para encontrar y corregir errores.

Si tu entorno lo permite, puedes utilizar un depurador para:

- Colocar puntos de interrupción (_breakpoints_).
- Ejecutar el programa paso a paso.
- Observar el valor de las variables.
- Comprobar qué condiciones se cumplen.
- Revisar qué funciones se ejecutan y en qué orden.

Por ejemplo, si una condición debería ser verdadera, pero el programa entra por la rama contraria, detente antes de ella y revisa los valores involucrados.

No necesitas dominar todas las herramientas desde el primer día. Empieza por observar las variables y seguir la ejecución.

---

## 🧯 7. ¿Qué hago cuando no encuentro el error?

A veces llevas veinte minutos mirando la misma línea y el problema parece invisible.

Prueba este pequeño procedimiento:

1. **Detente un momento.** Seguir cambiando cosas al azar puede empeorar el problema.
2. **Reproduce el error.** Comprueba qué pasos hacen que aparezca.
3. **Lee el mensaje completo.** Busca información útil, no solamente la primera palabra.
4. **Revisa el último cambio.** Si antes funcionaba, piensa qué modificaste.
5. **Simplifica el ejemplo.** Conserva solo las instrucciones necesarias para reproducir el problema.
6. **Consulta la documentación.** Comprueba cómo debe utilizarse la función o instrucción que está fallando.
7. **Pide ayuda con contexto.** Comparte el código relevante, el mensaje de error y lo que esperabas que ocurriera.

Si utilizas una herramienta de inteligencia artificial para ayudarte, no te limites a pedirle que corrija el código. Pregúntale también qué causó el error y por qué funciona la solución.

Entender la causa te servirá cuando aparezca un problema parecido.

---

## 💾 8. Guarda versiones de tu trabajo

Un consejo que parece sencillo, pero puede salvarte de muchos dolores de cabeza: guarda tus avances.

Si utilizas Git, puedes crear commits pequeños cuando tengas cambios que quieras conservar.

Así podrás consultar qué modificaste y comparar una versión anterior con la actual.

Antes de cambiar muchas partes de un programa que ya funcionaba, conserva una versión estable. Experimentar está bien; perder una tarde de trabajo por no guardar los avances es menos divertido.

---

## ✅ 9. Lista rápida antes de entrar en pánico

Cuando tu programa falle, revisa esta lista:

- [ ] ¿Leí el mensaje de error?
- [ ] ¿Revisé la línea señalada y las anteriores?
- [ ] ¿Comprobé los valores de las variables?
- [ ] ¿Verifiqué las condiciones de los ciclos?
- [ ] ¿Me aseguré de que los ciclos puedan terminar cuando corresponde?
- [ ] ¿Probé con datos sencillos?
- [ ] ¿Revisé los cambios recientes?
- [ ] ¿Guardé una versión del código que funcionaba?
- [ ] ¿Intenté detener la ejecución antes de cerrar todo?

---

## 🎯 La idea final

Programar no significa evitar todos los errores. Significa desarrollar la habilidad de encontrarlos, comprenderlos y corregirlos.

Un ciclo infinito no te convierte en un mal programador. Un error de sintaxis tampoco. Lo importante es aprender a investigar qué pasó y qué puedes hacer para solucionarlo.

Y recuerda: si tu programa comienza a imprimir el mismo mensaje diez mil veces, quizá sea momento de detenerlo antes de que escriba la secuela completa. 😂

**Un error a la vez. Una solución a la vez. Y, por favor, guarda tus avances.**

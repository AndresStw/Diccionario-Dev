# 🎮 C# Apuntes: de Unity a automatizar mi propia pereza

---

## <!-- Agregar indice  -->

Bienvenido a mis apuntes de C#. Aquí encontrarás conceptos, ejemplos y aprendizajes que voy recopilando mientras desarrollo software.

Pero antes de comenzar, una pequeña historia de cómo llegué a este lenguaje.

## 😂 ¿Por qué empecé con C#?

Mi aventura con C# comenzó por los videojuegos. Quería desarrollar juegos utilizando **Unity**, un motor que permite crear experiencias interactivas y que utiliza C# para programar gran parte de su lógica.

Empecé a familiarizarme con scripts, variables, condiciones, métodos y toda esa magia que hace que un personaje deje de ser solamente un modelo bonito y empiece a caminar, saltar o reaccionar a lo que sucede en el juego.

Después me fui interesando por el desarrollo de aplicaciones de escritorio. Y ahí descubrí que C# no tenía que quedarse solamente en los videojuegos: también podía utilizarlo para crear herramientas que resolvieran problemas cotidianos.

### 💻 Mi mini proyecto: automatizar mi propia pereza

Un día me cansé de tener que ajustar manualmente el brillo de la pantalla y el volumen dependiendo de lo que estuviera haciendo.

¿Estaba jugando? Quería una configuración.

¿Estaba viendo videos? Otra.

¿Estaba leyendo? Prefería una pantalla más cómoda.

¿Estaba escuchando música? El sonido debía ajustarse de otra manera.

Y claro, podía mover el mouse y cambiarlo todo manualmente… pero aparentemente esa tarea requería demasiada energía. JAJAJA. 😭

Así nació la idea de crear un pequeño programa que automatizara esos ajustes según la actividad que estuviera realizando.

La idea era sencilla: **que el computador se adaptara a mí, en lugar de tener que configurar todo manualmente cada vez.**

Este proyecto me hizo ver algo importante: no necesitas crear el próximo videojuego mundialmente famoso ni una aplicación con millones de usuarios para practicar programación. A veces, una pequeña herramienta que resuelve una molestia personal es suficiente para aprender muchísimo.

_Nota: esta es la idea general del proyecto. La forma de detectar cada actividad y modificar el brillo o el sonido depende de las funciones y herramientas que se utilicen._

Y así pasé de querer programar videojuegos a querer que mi computador hiciera el trabajo que me daba pereza hacer. Una evolución tecnológica cuestionable, pero bastante útil. 😂

---

## 🧠 1. ¿Qué es C#?

C# (se pronuncia aproximadamente «C sharp») es un lenguaje de programación desarrollado por Microsoft.

Se utiliza para crear distintos tipos de software, por ejemplo:

- 🎮 Videojuegos con Unity.
- 🖥️ Aplicaciones de escritorio.
- 🌐 Aplicaciones y servicios web.
- 🔌 Herramientas de automatización.
- 📱 Aplicaciones para distintas plataformas, según las tecnologías utilizadas.

C# es un lenguaje de tipado estático: normalmente debes declarar el tipo de una variable, y el compilador comprueba muchas incompatibilidades antes de ejecutar el programa.

## ⚙️ 2. Tu primer programa

```csharp
using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Hola, mundo!");
    }
}
```

¿Qué hace cada parte?

- `using System;`: permite utilizar tipos del espacio de nombres `System`, como `Console`.
- `class Program`: declara una clase llamada `Program`.
- `static void Main()`: define el punto de entrada tradicional de este programa.
- `Console.WriteLine()`: muestra un mensaje y termina la línea.
- Las llaves `{ }`: delimitan bloques de código.

La estructura exacta de entrada puede variar según la versión de C# y la plantilla del proyecto.

## 📦 3. Variables y tipos de datos

Las variables permiten almacenar valores para utilizarlos posteriormente.

```csharp
string nombre = "Andres";
int edad = 20;
double precio = 19.99;
bool estaJugando = true;
char inicial = 'A';
```

| Tipo     | Para qué sirve            | Ejemplo                      |
| -------- | ------------------------- | ---------------------------- |
| `int`    | Números enteros           | `int vidas = 3;`             |
| `double` | Números decimales         | `double brillo = 0.65;`      |
| `string` | Texto                     | `string actividad = "Leer";` |
| `bool`   | Valores verdadero o falso | `bool activo = true;`        |
| `char`   | Un carácter               | `char letra = 'A';`          |

**Consejo:** elige nombres que expliquen qué almacena cada variable. `volumenActual` es más descriptivo que `x`.

## 🔀 4. Condiciones

Las condiciones permiten que un programa tome decisiones.

```csharp
bool estaJugando = true;

if (estaJugando)
{
    Console.WriteLine("Aplicar configuración para jugar");
}
else
{
    Console.WriteLine("Aplicar otra configuración");
}
```

En este ejemplo, el programa comprueba el valor de `estaJugando` y ejecuta un bloque u otro.

También puedes utilizar `else if` cuando necesitas evaluar varias condiciones.

## 🔁 5. Ciclos

Los ciclos permiten repetir instrucciones.

### Ciclo `for`

Útil cuando conoces la estructura de repetición que necesitas.

```csharp
for (int i = 1; i <= 5; i++)
{
    Console.WriteLine($"Repetición: {i}");
}
```

### Ciclo `while`

Repite un bloque mientras una condición sea verdadera.

```csharp
int contador = 1;

while (contador <= 5)
{
    Console.WriteLine(contador);
    contador++;
}
```

Recuerda comprobar que la condición pueda dejar de cumplirse cuando corresponda. De lo contrario, puedes terminar con un ciclo infinito.

## 🧩 6. Métodos

Los métodos permiten organizar instrucciones en bloques reutilizables.

```csharp
static void MostrarMensaje()
{
    Console.WriteLine("¡Hora de programar!");
}
```

Puedes llamar al método desde otro lugar:

```csharp
MostrarMensaje();
```

También existen métodos que reciben parámetros y devuelven resultados.

```csharp
static int Sumar(int a, int b)
{
    return a + b;
}
```

Uso:

```csharp
int resultado = Sumar(5, 3);
Console.WriteLine(resultado);
```

## 🏗️ 7. Clases y objetos

C# utiliza clases para definir tipos que pueden agrupar datos y comportamientos.

```csharp
class Jugador
{
    public string Nombre = "";
    public int Vida = 100;

    public void RecibirDanio(int cantidad)
    {
        Vida -= cantidad;
    }
}
```

Puedes crear un objeto a partir de esa clase:

```csharp
Jugador jugador = new Jugador();

jugador.Nombre = "Alex";
jugador.RecibirDanio(20);

Console.WriteLine(jugador.Vida);
```

Resultado:

```
80
```

En proyectos reales, también conviene aprender sobre propiedades, constructores, modificadores de acceso y validación de datos.

## 🎮 8. C# en Unity

Si vienes del desarrollo de videojuegos, encontrarás conceptos familiares: variables, condiciones, métodos, clases y objetos.

Unity proporciona clases y componentes propios que permiten interactuar con la escena y los objetos del juego.

Por ejemplo:

```csharp
using UnityEngine;

public class Movimiento : MonoBehaviour
{
    public float velocidad = 5f;

    void Update()
    {
        float movimiento = Input.GetAxis("Horizontal");

        transform.Translate(
            Vector3.right * movimiento * velocidad * Time.deltaTime
        );
    }
}
```

Este ejemplo ilustra un movimiento horizontal básico mediante el sistema de entrada clásico de Unity. En proyectos que utilizan el nuevo Input System, la entrada se gestiona de otra manera.

Conceptos importantes para estudiar:

- `MonoBehaviour`: clase base que permite a un script utilizar los eventos habituales de Unity.
- `Start()`: se utiliza normalmente para inicializar el comportamiento.
- `Update()`: se ejecuta durante la actualización de los fotogramas.
- `Time.deltaTime`: permite expresar ciertos movimientos en función del tiempo transcurrido.
- `transform`: permite acceder a la posición, rotación y escala del objeto.

## 🖥️ 9. C# para aplicaciones de escritorio

C# también permite crear aplicaciones con interfaces gráficas.

Algunas tecnologías que puedes explorar son:

- **Windows Forms:** una opción para crear interfaces de escritorio para Windows.
- **WPF:** permite construir interfaces utilizando XAML y C#.
- **.NET MAUI:** permite crear aplicaciones para distintas plataformas compatibles.

Por ejemplo, una aplicación de escritorio puede tener botones para cambiar configuraciones, controles deslizantes para ajustar valores y opciones para guardar preferencias.

En el caso de mi proyecto de automatización, la interfaz sería solamente una parte del trabajo. También habría que investigar cómo detectar las actividades y cómo modificar de forma compatible el brillo y el volumen del sistema.

## 🧭 10. Ruta de aprendizaje recomendada

1. Domina variables, tipos de datos y operadores.
2. Aprende condiciones y ciclos.
3. Practica métodos, parámetros y valores de retorno.
4. Comprende clases, objetos y propiedades.
5. Aprende listas, arreglos y manejo de errores.
6. Practica programación orientada a objetos.
7. Explora Unity o el desarrollo de aplicaciones de escritorio, según tu objetivo.
8. Construye pequeños proyectos que resuelvan problemas reales.

## 🚀 Conclusión

C# me abrió una puerta al desarrollo de videojuegos, pero también me permitió explorar otras formas de crear software.

Lo interesante de aprender un lenguaje es descubrir que los mismos fundamentos pueden utilizarse en proyectos muy diferentes: desde controlar el movimiento de un personaje hasta automatizar tareas del computador.

Y si algún día construyes una herramienta únicamente para evitar hacer clic tres veces, no te avergüences.

Quizá no cambies el mundo, pero habrás aprendido algo nuevo y te habrás ahorrado tres clics.

**Un proyecto a la vez. Un error a la vez. Y una pequeña automatización para cada pereza que descubras.** 😂

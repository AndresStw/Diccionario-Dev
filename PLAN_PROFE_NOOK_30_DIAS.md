# PLAN PROFE NOOK - 30 DÍAS DE VIDEOS

**Objetivo:** Crear un canal de YouTube enseñando programación desde la perspectiva de un alumno SENA.

**Consigna:** Aprender + enseñar en paralelo. Practicar Java, JavaScript y C# mientras grabas.

**Frecuencia:** 1 video cada 3-4 días (total 8-10 videos en el mes)

---

## SEMANA 1: SETUP + INTRODUCCIÓN

### Video 1 (Día 1-2): "Quién es Profe Nook y por qué hago esto"
**Duración:** 5-7 minutos
**Tema:** Introducción personal

**Contenido:**
- Quién eres: alumno de SENA, 5to trimestre
- Por qué haces el canal: aprender enseñando
- Qué cubrirás: Java, JavaScript, C#
- Conexión con la audiencia: "Estoy donde estás tú"
- Call to action: sígueme en esta jornada

**Estructura:**
```
- Intro (30 seg): "Hola, soy Andres, bienvenido a Profe Nook"
- Por qué (2 min): Mi historia, por qué falté la evaluación
- Qué es esto (2 min): Vamos a aprender juntos
- Planes (1 min): Programación en la vida real
- Suscribete (30 seg)
```

**Setup:**
- OBS Studio grabando pantalla
- Micrófono en condiciones
- Fondo limpio
- NO necesitas cámara

**Tareas después:**
- Crear banner de YouTube
- Escribir descripción
- Crear lista de reproducción "Programación desde cero"

---

### Video 2 (Día 3-4): "Configurando mi ambiente - Java + IntelliJ"
**Duración:** 8-10 minutos
**Tema:** Setup técnico

**Contenido:**
- Por qué Java primero (porque SENA lo exige)
- Descargar JDK 17
- Descargar IntelliJ IDEA Community
- Crear primer proyecto
- "Hola mundo"

**Estructura:**
```
- Intro (30 seg): "Hoy configuramos todo"
- Descargar JDK (2 min): paso a paso
- Descargar IntelliJ (2 min): paso a paso
- Crear proyecto (2 min): en vivo
- Primer programa (2 min): System.out.println("Hola Mundo")
- Cierre (1 min): "Próximo video, variables"
```

**Importante:**
- Muestra donde descargar (Oracle, IntelliJ oficial)
- Muestra dónde instalar
- Explica qué es JDK y por qué lo necesitas

**Tareas después:**
- Sube el código a GitHub
- Linkea en descripción del video

---

### Video 3 (Día 5-6): "¿Qué es programar? Explicado con la vida real"
**Duración:** 12-15 minutos
**Tema:** Conceptos básicos

**Contenido:**
- Qué es un programa: instrucciones para la computadora
- Analogía: receta de cocina
- Ejemplo: rutina matutina
  - Variables: hora, clima
  - Condicionales: si es de mañana, hago esto
  - Funciones: desayunar, levantarse, estudiar
- Pseudocódigo: tu rutina en "código humano"

**Estructura:**
```
- Intro (1 min): "Hoy entendemos qué es programar"
- Analogía receta (2 min): ingredientes, pasos
- Tu rutina (3 min): que es un programa
- Pseudocódigo (5 min): escribes tu rutina en pseudocódigo
- Conclusión (2 min): "la próxima, lo convertimos en Java"
```

**Importante:**
- Dibuja en Paint o usa ejemplos visuales
- Explica sin tecnicismos
- Conecta con la vida real

**Tareas después:**
- Crea documento con el pseudocódigo
- Sube a GitHub

---

## SEMANA 2: JAVA BÁSICO

### Video 4 (Día 7-8): "Variables en Java - Guardando información"
**Duración:** 10-12 minutos
**Tema:** Variables

**Contenido:**
- Qué es una variable: una caja para guardar datos
- Tipos de datos: String, int, double, boolean
- Cómo declarar: `String nombre = "Andres";`
- Ejercicio: guardar tu nombre, edad, altura
- Traducción: qué es igual en JavaScript y C#

**Estructura:**
```
- Intro (1 min)
- Analogía caja (2 min)
- Tipos de datos (3 min): String, int, double, boolean con ejemplos
- Código en Java (3 min): declara variables
- Compara con JS y C# (2 min)
- Cierre (1 min)
```

**Código base:**
```java
public class Variables {
    public static void main(String[] args) {
        String nombre = "Andres";
        int edad = 20;
        double altura = 1.75;
        boolean estudia = true;

        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
        System.out.println("Altura: " + altura);
        System.out.println("¿Estudia? " + estudia);
    }
}
```

**Tareas después:**
- Sube código a GitHub
- Ejercicio: "crea variables para ti"

---

### Video 5 (Día 9-10): "Entrada de datos en Java - Leer información del usuario"
**Duración:** 12-14 minutos
**Tema:** Scanner y entrada

**Contenido:**
- Qué es entrada: pedirle datos al usuario
- Scanner en Java: cómo usarlo
- `nextLine()`, `nextInt()`, `nextDouble()`
- Ejercicio: pedir nombre y edad
- Traducción: JavaScript `prompt()`, C# `Console.ReadLine()`

**Estructura:**
```
- Intro (1 min)
- Qué es entrada (1 min)
- Scanner import (2 min): mostrar el código
- nextLine, nextInt, nextDouble (4 min): ejemplos en vivo
- Ejercicio: pedir datos (3 min)
- Comparar con JS y C# (2 min)
- Cierre (1 min)
```

**Código base:**
```java
import java.util.Scanner;

public class Entrada {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("¿Cuál es tu nombre? ");
        String nombre = sc.nextLine();

        System.out.print("¿Cuál es tu edad? ");
        int edad = sc.nextInt();

        System.out.println("Hola " + nombre + ", tienes " + edad + " años");
    }
}
```

**Tareas después:**
- Sube a GitHub
- Próximo video: condicionales

---

### Video 6 (Día 11-12): "If / Else en Java - Tomar decisiones"
**Duración:** 14-16 minutos
**Tema:** Condicionales

**Contenido:**
- Qué es un condicional: tomar decisiones
- Analogía: si llueve, llevar paraguas
- if, else if, else
- Operadores: ==, >, <, >=, <=, !=
- Ejercicio: determinar si mayor o menor de edad
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía lluvia (2 min)
- if / else (4 min): explicar y ejemplos
- Operadores (3 min): ==, >, <, >=, <=, !=
- Ejercicio en vivo (4 min): mayor de edad
- Comparar con JS y C# (2 min)
```

**Código base:**
```java
import java.util.Scanner;

public class Condicionales {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese su edad: ");
        int edad = sc.nextInt();

        if (edad >= 18) {
            System.out.println("Eres mayor de edad");
        } else if (edad >= 13) {
            System.out.println("Eres adolescente");
        } else {
            System.out.println("Eres menor");
        }
    }
}
```

**Tareas después:**
- Sube a GitHub
- Ejercicio: "crea tu propio condicional"

---

## SEMANA 3: JAVA INTERMEDIO

### Video 7 (Día 13-14): "Ciclos for y while - Repetir acciones"
**Duración:** 15-17 minutos
**Tema:** Ciclos

**Contenido:**
- Qué es un ciclo: repetir una acción
- Analogía: contar de 1 a 100
- for: cuando sabes cuántas veces repetir
- while: cuando dependes de una condición
- Ejercicio: tabla de multiplicar, contar dinero ahorrado
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía repetición (2 min)
- for (4 min): estructura y ejemplos
- while (4 min): estructura y ejemplos
- Ejercicio tabla (3 min): en vivo
- Comparar con JS y C# (2 min)
```

**Código base:**
```java
// For
System.out.println("Tabla del 5:");
for (int i = 1; i <= 10; i++) {
    System.out.println("5 x " + i + " = " + (5 * i));
}

// While
int dinero = 0;
int dia = 0;
while (dinero < 50000) {
    dinero = dinero + 5000;
    dia++;
    System.out.println("Día " + dia + ": $" + dinero);
}
```

**Tareas después:**
- Sube a GitHub
- Próximo video: arreglos

---

### Video 8 (Día 15-16): "Arreglos en Java - Guardar múltiples datos"
**Duración:** 12-14 minutos
**Tema:** Arrays

**Contenido:**
- Qué es un arreglo: lista de datos
- Analogía: canasta de frutas
- Declaración y uso
- Acceder a elementos
- Recorrer con for
- Ejercicio: lista de notas
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía canasta (2 min)
- Declarar arreglo (2 min)
- Acceder a elementos (2 min)
- Recorrer con for (3 min)
- Ejercicio promedio de notas (3 min)
- Comparar con JS y C# (1 min)
```

**Código base:**
```java
int[] notas = {85, 90, 78, 92, 88};

System.out.println("Notas: ");
int suma = 0;
for (int i = 0; i < notas.length; i++) {
    System.out.println("Nota " + (i + 1) + ": " + notas[i]);
    suma += notas[i];
}

double promedio = suma / notas.length;
System.out.println("Promedio: " + promedio);
```

**Tareas después:**
- Sube a GitHub
- Próximo video: funciones/métodos

---

### Video 9 (Día 17-18): "Funciones en Java - Reutilizar código"
**Duración:** 13-15 minutos
**Tema:** Métodos/Funciones

**Contenido:**
- Qué es una función: una acción reutilizable
- Analogía: receta que usas varias veces
- Parámetros: datos que recibe
- Retorno: dato que devuelve
- Ejercicio: función sumar, función saludar
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía receta (2 min)
- Estructura función (3 min)
- Parámetros y retorno (3 min)
- Ejercicio en vivo (3 min)
- Comparar con JS y C# (1 min)
```

**Código base:**
```java
public class Funciones {
    public static void saludar(String nombre) {
        System.out.println("Hola, " + nombre);
    }

    public static int sumar(int a, int b) {
        return a + b;
    }

    public static void main(String[] args) {
        saludar("Andres");
        System.out.println("5 + 3 = " + sumar(5, 3));
    }
}
```

**Tareas después:**
- Sube a GitHub
- Próximo video: clases

---

## SEMANA 4: PROGRAMACIÓN ORIENTADA A OBJETOS

### Video 10 (Día 19-20): "Clases y Objetos en Java - POO Parte 1"
**Duración:** 16-18 minutos
**Tema:** Clases (introducción)

**Contenido:**
- Qué es una clase: plantilla para crear objetos
- Qué es un objeto: una instancia de una clase
- Analogía: plano de una casa vs una casa real
- Atributos: características
- Métodos: acciones
- Ejercicio: clase Persona
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía plano (3 min)
- Componentes clase (4 min): atributos, métodos
- Crear clase Persona (5 min)
- Crear objeto y usarlo (3 min)
- Comparar con JS y C# (2 min)
```

**Código base:**
```java
class Persona {
    private String nombre;
    private int edad;

    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public void presentarse() {
        System.out.println("Hola, soy " + nombre + " y tengo " + edad + " años");
    }

    public void cumplirAños() {
        edad++;
        System.out.println(nombre + " ahora tiene " + edad + " años");
    }
}

public class Main {
    public static void main(String[] args) {
        Persona p1 = new Persona("Andres", 20);
        p1.presentarse();
        p1.cumplirAños();
    }
}
```

**Tareas después:**
- Sube a GitHub
- Ejercicio: "crea tu propia clase"

---

### Video 11 (Día 21-22): "Encapsulamiento y Getters/Setters"
**Duración:** 12-14 minutos
**Tema:** POO - Encapsulamiento

**Contenido:**
- Qué es encapsulamiento: proteger datos
- private, public, protected
- Getters y Setters: acceder y modificar datos de forma controlada
- Por qué es importante
- Ejercicio: clase CuentaBancaria

**Estructura:**
```
- Intro (1 min)
- Analogía cofre (2 min)
- private vs public (3 min)
- Getters y Setters (4 min)
- Ejercicio CuentaBancaria (4 min)
```

**Código base:**
```java
class CuentaBancaria {
    private double saldo;

    public CuentaBancaria(double saldoInicial) {
        this.saldo = saldoInicial;
    }

    public void depositar(double monto) {
        saldo += monto;
        System.out.println("Depositado: $" + monto);
    }

    public double getSaldo() {
        return saldo;
    }
}
```

**Tareas después:**
- Sube a GitHub
- Próximo video: herencia

---

### Video 12 (Día 23-24): "Herencia en Java - POO Parte 2"
**Duración:** 14-16 minutos
**Tema:** POO - Herencia

**Contenido:**
- Qué es herencia: reutilizar características de otra clase
- Analogía: hijo hereda de padre
- `extends`
- Método `super()`
- Ejercicio: Persona base, Estudiante y Profesor heredan
- Traducción: JS y C#

**Estructura:**
```
- Intro (1 min)
- Analogía herencia (2 min)
- Estructura herencia (4 min)
- Código en vivo (6 min): Persona, Estudiante, Profesor
- Comparar con JS y C# (2 min)
```

**Código base:**
```java
class Persona {
    protected String nombre;

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public void presentarse() {
        System.out.println("Soy " + nombre);
    }
}

class Estudiante extends Persona {
    private String matricula;

    public Estudiante(String nombre, String matricula) {
        super(nombre);
        this.matricula = matricula;
    }

    public void estudiar() {
        System.out.println(nombre + " está estudiando");
    }
}
```

**Tareas después:**
- Sube a GitHub
- Próximo video: proyecto final del mes

---

## SEMANA 5: PROYECTO FINAL + CIERRE

### Video 13 (Día 25-26): "Proyecto: Sistema Bancario Completo"
**Duración:** 20-25 minutos
**Tema:** Proyecto integrador

**Contenido:**
- Resumen de todo lo aprendido
- Crear sistema bancario:
  - Clase CuentaBancaria (encapsulamiento)
  - Clase Usuario (herencia de Persona)
  - Métodos: depositar, retirar, consultar saldo
  - Validaciones con if/else
  - Arreglo de cuentas
  - Menú con while
- Traducción a JavaScript y C#

**Estructura:**
```
- Intro (1 min): "Proyecto que usa TODO"
- Planificación (3 min): qué necesitamos
- Código CuentaBancaria (6 min)
- Código Usuario (4 min)
- Código Main con menú (8 min)
- Traducción JS (2 min): mostrar inicio
- Traducción C# (1 min)
- Cierre (1 min)
```

**Código base Java:**
```java
class CuentaBancaria {
    private double saldo;
    private String numeroCuenta;

    public CuentaBancaria(String numero, double saldoInicial) {
        this.numeroCuenta = numero;
        this.saldo = saldoInicial;
    }

    public void depositar(double monto) {
        saldo += monto;
        System.out.println("Depositado: $" + monto);
    }

    public boolean retirar(double monto) {
        if (monto <= saldo) {
            saldo -= monto;
            System.out.println("Retirado: $" + monto);
            return true;
        } else {
            System.out.println("Saldo insuficiente");
            return false;
        }
    }

    public double consultarSaldo() {
        return saldo;
    }
}

// ... Main con menú
```

**Tareas después:**
- Sube todo a GitHub
- Crea un README explicando el proyecto
- Linkea en descripción del video

---

### Video 14 (Día 27-28): "Reflexión: De Java a JavaScript a C#"
**Duración:** 10-12 minutos
**Tema:** Comparación

**Contenido:**
- Mostrar el mismo proyecto en los 3 lenguajes lado a lado
- Diferencias de sintaxis
- Similitudes de lógica
- Qué aprendiste en un mes
- Tips para seguir aprendiendo
- Call to action para siguiente mes

**Estructura:**
```
- Intro (1 min)
- Proyecto en Java (2 min): pantazo rápido
- Proyecto en JavaScript (2 min): misma lógica
- Proyecto en C# (2 min): misma lógica
- Reflexión: la lógica es lo mismo (2 min)
- Tips y cierre (1 min)
```

**Tareas después:**
- Crea comparativa en GitHub
- Linkea todo

---

### Video 15 (Día 29-30): "Resumen del Mes 1 + Planes del Mes 2"
**Duración:** 8-10 minutos
**Tema:** Recap y prospectiva

**Contenido:**
- Qué aprendiste este mes
- Errores que cometiste
- Lo que te sorprendió
- Plans para el próximo mes (BD, Spring, frameworks)
- Agradecimiento a suscriptores
- Motivación

**Estructura:**
```
- Intro (1 min)
- Aprendizajes (3 min): qué vimos
- Errores (2 min): qué no salió bien
- Próximos videos (2 min): qué viene
- Call to action (1 min)
```

---

## RESUMEN DEL PLAN:

| Semana | Tema | Videos | Duración Total |
|--------|------|--------|-----------------|
| 1 | Intro + Setup | 3 videos | ~30 min |
| 2 | Java Básico | 3 videos | ~40 min |
| 3 | Java Intermedio | 3 videos | ~40 min |
| 4 | POO | 3 videos | ~45 min |
| 5 | Proyecto + Cierre | 3 videos | ~45 min |

**Total: 15 videos en 30 días**

---

## RECOMENDACIONES FINALES:

### Frecuencia:
- Graba 2-3 videos a la vez
- Sube 1 cada 2-3 días
- Así no te estresa

### Setup mínimo:
- OBS Studio (gratis)
- IntelliJ IDEA Community (gratis)
- Micrófono decente
- Pantalla limpia

### Proceso de grabación:
1. Escribe el guion/puntos clave (10 min)
2. Graba (15-30 min según video)
3. Revisa y edita en OBS si es necesario
4. Sube a YouTube con descripción y tags
5. Linkea código en GitHub

### Código en GitHub:
- Un repo por video
- O carpeta por semana
- Siempre linkea en descripción del video

### Tags de YouTube recomendados:
- programación
- java
- javascript
- c#
- sena
- tutorial
- POO
- desde cero

### Descripción de video:
```
📚 [Tema del video]

En este video aprendemos [qué se aprende].

Código: [link GitHub]
Diccionario: [link Diccionario-Programacion]

Timestamps:
0:00 - Intro
0:30 - [sección 1]
[...]

Próximo video: [tema]

¡Suscríbete para seguir aprendiendo!
```

---

## DURANTE ESTOS 30 DÍAS:

**Paralelamente:**
- Sigue tu plan en SENA
- Practica ejercicios por tu cuenta
- Documenta tus errores (eso es content)
- Interactúa con comentarios (aunque sean pocos)

**Métricas a trackear:**
- Suscriptores (aunque sean 10)
- Views
- Engagement
- Qué videos funcionan más

**Beneficio para ti:**
- ✅ Practicas Java, JS, C# forzado
- ✅ Creas portafolio en vivo
- ✅ Te obligas a entender bien (porque explicas)
- ✅ Documentas tu progreso
- ✅ Diferenciador laboral a futuro

---

## MES 2 (Adelanto):

Si esto funciona, próximo mes:
- SQL + Bases de datos
- JDBC (conectar Java con BD)
- APIs REST básicas
- Proyectos más grandes
- Invitar a otros (como tu novia bióloga)

---

**¡A EMPEZAR, PROFE NOOK! 🚀**

"Recuerda: el primer video va a ser feo, el segundo mejor, el quinto ya lo controlas."

---

*Creado: 5 de Octubre, 2026*
*Por: Andres Stw (AndresStw)*
*Para: Profe Nook - Mi camino de programación*

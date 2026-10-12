Algoritmo El_numero_mayor
    // Dificultad: Intermedio
    // Enunciado: Solicita tres numeros y determina cual es el mayor.
    // Si dos o mas numeros son iguales, tambien debe contemplarlo.

    // Datos
    Definir N1, N2, N3 Como Entero;

    // Entradas
    Escribir 'Ingresa el primer numero:';
    Leer N1;
    Escribir 'Ingresa el segundo numero:';
    Leer N2;
    Escribir 'Ingresa el tercer numero:';
    Leer N3;

    // Procesos
    Si N1==N2 Y N2==N3 Entonces
        Escribir 'Los tres numeros son iguales: ', N1;
    SiNo
        Si N1>=N2 Y N1>=N3 Entonces
            Si N1==N2 O N1==N3 Entonces
                Escribir 'El mayor es ', N1, ' y hay empate en el valor maximo.';
            SiNo
                Escribir 'El mayor es ', N1;
            FinSi
        SiNo
            Si N2>=N1 Y N2>=N3 Entonces
                Si N2==N1 O N2==N3 Entonces
                    Escribir 'El mayor es ', N2, ' y hay empate en el valor maximo.';
                SiNo
                    Escribir 'El mayor es ', N2;
                FinSi
            SiNo
                Escribir 'El mayor es ', N3;
            FinSi
        FinSi
    FinSi

    // Salidas
    Escribir 'El primer numero fue: ', N1;
    Escribir 'El segundo numero fue: ', N2;
    Escribir 'El tercer numero fue: ', N3;
FinAlgoritmo
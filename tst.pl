% Especificaci�n: Complejos
% Tipo: Complejos
% Sintaxis:
% Crear: entero, entero -> Complejos
% Real: Complejos -> entero
% Imaginario: Complejos -> entero
% Suma: Complejos, Complejos -> Complejos
% Resta: Complejos, Complejos -> Complejos
% Multiplicaci�n: Complejos, Complejos -> Complejos
% Conjugado: Complejos -> Complejos
% IgualComplejos: Complejos, Complejos -> Booleano
% ValorAbsoluto: Complejos -> Entero

complejo(_,_).

parteReal(X,Y,X):-complejo(X,Y).

parteImaginaria(X,Y,Y):-complejo(X,Y).

suma(R1, I1, R2, I2, R3, I3):- complejo(R1,I1), complejo(R2,I2), R3 is R1+R2, I3 is I1+I2, display(R3),write(" + "), display(I3), write("i").

resta(R1, I1, R2, I2, R3, I3):- complejo(R1,I1), complejo(R2,I2), R3 is R1-R2, I3 is I1-I2, display(R3),write(" - "), display(I3), write("i").

% Multiplicaci�n de n�meros complejos: (a+bi)(c+di) = (ac-bd) + (ad+bc)i
multiplicacion(R1, I1, R2, I2, R3, I3):- complejo(R1,I1), complejo(R2,I2), R3 is (R1*R2)-(I1*I2), I3 is (R1*I2)+(I1*R2), display(R3),write(" + "), display(I3), write("i").

conjugado(R1, I1, R2, I2):- complejo(R1,I1), R2 is R1, I2 is -I1, display(R2),write(" + "), display(I2), write("i").

igualComplejos(R1, I1, R2, I2):- complejo(R1,I1), complejo(R2,I2), R1 =:= R2, I1 =:= I2, write("Son iguales").

valorAbsoluto(R1, I1, R2):- complejo(R1,I1), R2 is sqrt(R1^2+I1^2), display(R2).

% Comprobaci�n de la especificaci�n
comprobarSuma:- write("Ingrese el R2: "), read(R2), nl,
                write("Ingrese el I1: "),read(I1),nl,
                suma(0,I1,R2,0,RESR,RESI),((RESR==R2,write("Se cumple"));(RESI==I1),write("No Cumple")). 

comprobarResta:- write("Ingrese el R2: "), read(R2), nl,
                write("Ingrese el I1: "),read(I1),nl,
                resta(0,I1,R2,0,RESR,RESI),((RESR==R2, write("Se cumple"));(RESI==I1),write("No Cumple")).

comprobarMultiplicacion:- write("Ingrese el R2: "),read(R2),nl,
                        write("Ingrese el I1: "),read(I1),nl,
                        multiplicacion(0,I1,R2,0,RESR,RESI),((RESR==R2,write("Se cumple"));(RESI==I1),write("No Cumple")).

comprobarMultiplicacion2:- write("Ingrese el R2: "),read(R2),nl,
                        write("Ingrese el I1: "),read(I1),nl,
                        multiplicacion(0,I1,R2,0,RESR,RESI),((RESR==0,write("Se cumple"));(RESI==0),write("No Cumple")).


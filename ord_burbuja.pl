% ord_burbuja(+Lista,-R)
%es cierto si R unifica con una lista que contiene
%los elementos de Lista ordenados de menor a mayor
%Lista puede contener elementos repetidos.
ord_burbuja(Lista,R):- ordenada(R).
ord_burbuja(E1, E2|Resto).
% ordenada(+Lista)
% es cierto si los elementos de Lista estan ordenados de
% menor a mayor
ordenada([]).
ordenada([_]).
ordenada(Lista): E1 =< E2, ordenada([E2|Resto]).
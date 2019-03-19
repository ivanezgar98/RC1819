% ord_burbuja(+Lista,-R)
%es cierto si R unifica con una lista que contiene
%los elementos de Lista ordenados de menor a mayor
%Lista puede contener elementos repetidos.

% ordenada(+Lista)
% es cierto si los elementos de Lista estan ordenados de
% menor a mayor
ordenada([]).
ordenada([_]).
ordenada(Lista):- append(_, [E1, E2|_], Lista) , E1 =< E2.
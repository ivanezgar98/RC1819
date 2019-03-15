% reverse(+List, -ListR) que es cierto cuando ListR unifica con una 
% lista que contiene los mismos elementos que List pero en orden inverso.




% inserta_final(+E, +L,-R)
% es cierto si R unifica con una lista que contiene
% los elemenos de L en el mismo orden con E
% insertando al final 

insertar_final(E, [], [E]).

insertar_final(E, [Ca|Resto],[Ca|R] ):- insertar_final(E, Resto, R).
% reverse(L, R)
% es cierto si R unifica con una lista que 
%  contiene los elemenos de L en orde inverso

reverse([],[]).
reverse( [CaL|ReL], R) :- insertar_final(CaL, R2, R), reverse(ReL,R2).
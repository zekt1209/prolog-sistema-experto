Hechos
carrera(arquitectura).
carrera(ingenieria).
carrera(medicina).
carrera(administracion).
carrera(economia).
carrera(contabilidad).
carrera(derecho).
carrera(psicologia).
carrera(ciencias_computacionales).
carrera(ciencias_politicas).
carrera(ciencias_sociales).
carrera(artes_plasticas).
carrera(diseno_grafico).
carrera(publicidad).
carrera(cine).
carrera(teatro).
carrera(musica).
carrera(educacion).
carrera(comunicacion).
carrera(historia).


% Regla 1: ¿Le gusta trabajar con números?
pregunta1 :- write('¿Le gusta trabajar con números? (si/no)'), nl, 
read(Response), 
(Response = si).

% Regla 2: ¿Le gusta trabajar con personas?
pregunta2 :- write('¿Le gusta trabajar con personas? (si/no)'), nl, read(Response), (Response = si).

% Regla 3: ¿Le gusta trabajar con tecnología?
pregunta3 :- write('¿Le gusta trabajar con tecnología? (si/no)'), nl, read(Response), (Response = si).

% Regla 4: ¿Le gusta trabajar con arte y diseño?
pregunta4 :- write('¿Le gusta trabajar con arte y diseño? (si/no)'), nl, read(Response), (Response = si).

% Regla 5: ¿Le gusta el trabajo manual?
pregunta5 :- write('¿Le gusta el trabajo manual? (si/no)'), nl, read(Response), (Response = si).

% Regla 6: ¿Prefiere trabajar en equipo o en solitario?
pregunta6 :- write('¿Prefiere trabajar en equipo o en solitario? (equipo/solitario)'), nl, read(Response), (Response = equipo).

% Regla 7: ¿Le gusta la medicina?
pregunta7 :- write('¿Le gusta la medicina? (si/no)'), nl, 
read(Response), 
(Response = si).

% Regla 8: ¿Le gusta la política?
pregunta8 :- write('¿Le gusta la política? (si/no)'), nl, read(Response), (Response = si).

% Regla 9: ¿Le gusta enseñar?
pregunta9 :- write('¿Le gusta enseñar? (si/no)'), nl, read(Response), (Response = si).

% Regla 10: ¿Le gusta trabajar en el área de negocios?
pregunta10 :- write('¿Le gusta trabajar en el área de negocios? (si/no)'), nl, read(Response), (Response = si).

% Regla 11: ¿Le gusta trabajar en el área legal?
pregunta11 :- write('¿Le gusta trabajar en el área legal? (si/no)'), nl, read(Response), (Response = si).

% Regla 12: ¿Le gusta trabajar con tecnología de la información?
pregunta12 :- write('¿Le gusta trabajar con tecnología de la información? (si/no)'), nl, read(Response), (Response = si).

% Regla 13: ¿Le gusta trabajar con animales?
pregunta13 :- write('¿Le gusta trabajar con animales? (si/no)'), nl, read(Response), (Response = si).

% Regla 14: ¿Le gusta el deporte?
pregunta14 :- write('¿Le gusta el deporte? (si/no)'), nl, read(Response), (Response = si).

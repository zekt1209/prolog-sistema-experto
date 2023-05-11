% Carreras en ciencias exactas
carrera('Ingenieria Civil', [1, 2, 3]).
carrera('Ingenieria Quimica', [1, 2, 4]).
carrera('Ingenieria Industrial', [1, 2, 5]).
carrera('Fisica', [1, 2]).
carrera('Matematicas', [1]).

% Carreras en ciencias de la salud
carrera('Medicina', [2, 4, 6]).
carrera('Odontologia', [4, 6, 7]).
carrera('Enfermeria', [4, 6, 8]).
carrera('Psicologia', [9, 10, 11]).

% Carreras en administracion
carrera('Administracion de Empresas', [5, 12, 13]).
carrera('Contabilidad', [1, 5, 12]).
carrera('Negocios Internacionales', [5, 14, 15]).

% Carreras en artes y letras
carrera('Diseno Grafico', [16, 17, 18]).
carrera('Arquitectura', [1, 3, 16, 19]).
carrera('Literatura', [20, 21, 22]).

%preguntas
pregunta('1 - Te gusta lo relacionado con matematicas?').
pregunta('2 - Te gusta lo relacionado con fisica?').
pregunta('3 - Te gusta lo relacionado con dibujo tecnico?').
pregunta('4 - Te gusta lo relacionado con quimica?').
pregunta('5 - Te gusta lo relacionado con administracion?').
pregunta('6 - Te gusta lo relacionado con biologia?').
pregunta('7 - Te gusta lo relacionado con manuales?').
pregunta('8 - Te gusta lo relacionado con cuidado y atencion al paciente?').
pregunta('9 - Te gusta lo relacionado con psicologia?').
pregunta('10 - Te gusta lo relacionado con estadistica?').
pregunta('11 - Te gusta lo relacionado con comunicacion interpersonal?').
pregunta('12 - Te gusta lo relacionado con contabilidad?').
pregunta('13 - Te gusta lo relacionado con liderazgo?').
pregunta('14 - Te gusta lo relacionado con comercio internacional?').
pregunta('15 - Te gusta lo relacionado con idiomas?').
pregunta('16 - Te gusta lo relacionado con diseno?').
pregunta('17 - Te gusta lo relacionado con software diseno grafico?').
pregunta('18 - Te gusta lo relacionado con comunicacion visual?').
pregunta('19 - Te gusta lo relacionado con dibujo tecnico?').
pregunta('20 - Te gusta lo relacionado con escritura?').
pregunta('21 - Te gusta lo relacionado con analisis literario?').
pregunta('22 - Te gusta lo relacionado con comunicacion escrita?').



% Regla para hacer preguntas al usuario y sugerir carreras
empezar_test(Carrera) :-
    writeln('BIENVENIDO AL TEST DE ORIENTACION VOCACIONAL \n'),
    writeln('A continuacion se realizaran una serie de preguntas para determinar que carreras podrian gustarte: \n'),
    writeln('Responde todas las preguntas con "s"/"n" \n'),
    % Preguntar y guardar las respuestas
    mostrar_preguntas(Respuestas),
    sugerir_carreras(Respuestas).


% Predicado para mostrar los hechos de la base de conocimientos que sean preguntas
mostrar_preguntas(Respuestas) :-
    findall(Pregunta, pregunta(Pregunta), Preguntas),
    mostrar_preguntas_lista(Preguntas, Respuestas, 1).


% Predicado para mostrar los hechos de una lista de preguntas
mostrar_preguntas_lista([], [], _).
mostrar_preguntas_lista([Pregunta|Resto], [Respuesta|RestoRespuestas], Indice) :-
    write(Pregunta), nl,
    repeat, write('Respuesta: (s/n) '), read(Resp), atom(Resp), member(Resp, [s, n]), !,
    (Resp == s -> 
        Respuesta = Indice,
        NuevoIndice is Indice + 1,
        mostrar_preguntas_lista(Resto, RestoRespuestas, NuevoIndice)
    ;
        Respuesta = -1,
        NuevoIndice is Indice + 1,
        mostrar_preguntas_lista(Resto, RestoRespuestas, NuevoIndice)
    ).


sugerir_carreras(Respuestas) :-
    % Encontrar las carreras que requieren todas las habilidades que indicó el usuario
    findall(NombreCarrera, (carrera(NombreCarrera, Habilidades), incluye_todas(Habilidades, Respuestas)), CarrerasPosibles),
    % Imprimir las carreras sugeridas al usuario
    writeln('\n, Las carreras que podrian gustarte son: '),
    writeln(CarrerasPosibles).


% Verifica si todas las habilidades en la lista A están incluidas en la lista B
incluye_todas([], _).
incluye_todas([H|T], Respuestas) :-
    member(H, Respuestas),
    incluye_todas(T, Respuestas).




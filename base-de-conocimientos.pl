carrera(informatica, ciencias).
carrera(electronica, ingenieria).
carrera(arquitectura, arte).
carrera(medicina, salud).
carrera(administracion, negocios).
carrera(contabilidad, negocios).
carrera(ingenieria_ambiental, ciencias).
carrera(derecho, humanidades).
carrera(psicologia, ciencias).
carrera(comunicacion).

% Si al usuario le gusta trabajar con computadoras, se recomienda informática o electrónica.
recomendacion(X) :- gusto_computadoras(si), carrera(X, ciencias).
% Si al usuario le gustan las matemáticas, se recomienda ingeniería o contabilidad.
recomendacion(X) :- gustan_matematicas(si), carrera(X, ingenieria); carrera(X, negocios).
% Si al usuario quiere trabajar en el área de la salud, se recomienda medicina.
recomendacion(X) :- area_salud(si), carrera(X, salud).
% Si al usuario es creativo, se recomienda arquitectura o comunicación.
recomendacion(X) :- es_creativo(si), carrera(X, arte).
% Si al usuario le gusta trabajar con el medio ambiente, se recomienda ingeniería ambiental.
recomendacion(X) :- gusto_medio_ambiente(si), carrera(X, ciencias).
% Si al usuario quiere trabajar en el área de negocios, se recomienda administración o contabilidad.
recomendacion(X) :- area_negocios(si), carrera(X, negocios).
% Si al usuario es más humano, se recomienda derecho o psicología.
recomendacion(X) :- es_humano(si), carrera(X, humanidades).
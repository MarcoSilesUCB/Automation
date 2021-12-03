Feature: test filtrar por profesor
As Interesado en cursos en linea
I want Poder filtrar los cursos solo por el instructor 
So podre encontrar los cursorelacionados al instructor mas rapido

Scenario: Filtrar curso por instructor Sebastián    
  Given estoy en la pagina principal
  And hago click en "cursos"
  When Selecciono en el ultimo filtro "Sebastian"
  Then las tarjetas de cursos ahora solo muestran los cursos de "Sebastian".
 
 Scenario: Filtrar curso por instructor RottweilerAcademy    
  Given estoy en la pagina principal
  And hago click en "cursos"
  When Selecciono en el ultimo filtro "rottweilergroupbolivia"
  Then las tarjetas de cursos ahora solo muestran los cursos de "rottweilergroupbolivia".
 
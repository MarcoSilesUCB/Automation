Feature: test filtrar por profesor
As Interesado en cursos en linea
I want Poder filtrar los cursos solo por el instructor Sebastian
So podre encontrar los curso del profesor Sebastian mas rapido

Scenario: Filtrar curso por instructor     
  Given estoy en la pagina pricipal
  And hago click en "cursos"
  When Selecciono en el ultimo filtro "Sebastian"
  Then las tarjetas de cursos ahora solo muestran los cursos de Sebastian.
 
Feature: test Acceder a la seccion de cursos
As Interesado en cursos en linea
I want Poder acceder al la seccion cursos con rapidez
So podre ver todos los cursos

Scenario: acceder a cursos   
  Given estoy en la pagina principal
  When hago click en el texto "cursos"
  Then estoy en la pagina de "cursos"
 
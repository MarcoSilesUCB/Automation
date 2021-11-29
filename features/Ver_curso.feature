Feature: test ver curso
As Interesado en cursos en linea
I want Poder ver informacion del curso "como hacer milkshakes"
So podre saber mas sobre el

Scenario: Ver curso "como hacer milkshakes"  
  Given estoy en la pagina pricipal
  And hago click en "cursos"
  When hago click en la tarjeta "como hacer milkshakes"
  Then Ahora estoy en la pagina "Como hacer milkshakes"
 
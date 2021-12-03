Feature: test buscar curso por nombre
As Interesado en cursos en linea
I quiero buscar cursos de Adobe
So poder ver si existe cursos de Adobe

Scenario: buscar curso 
Given estoy en la pagina principal
  And hago click en "cursos"
  When hago click en el buscador
  And escribo en el buscador "Adobe"
  Then ahora solo veo el curso con nombre "Adobe illustrator"
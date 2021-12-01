Feature: test acceso de los links de home 
As usuario de la aplicacion
    I quiero poder hacer uso de los botones de esta pagina
    So podre acceder a los cursos/eventos/experiencias

Scenario: Acceder a cursos por el boton de Home  
  Given estoy en la pagina principal
  When hago click en la opcion "Cursos"
  Then me encuentro en la pagina de "Cursos"

Scenario: Acceder a eventos por el boton de Home  
  Given estoy en la pagina principal
  When hago click en la opcion "Eventos"
  Then me encuentro en la pagina de "Eventos"

Scenario: Acceder a experiencias por el boton de Home  
  Given estoy en la pagina principal
  When hago click en la opcion "Experiencias"
  Then me encuentro en la pagina de "Experiencias"



 
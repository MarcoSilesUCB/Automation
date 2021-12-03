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

Scenario: Acceder al curso de Marketing Digital  
  Given estoy en la pagina principal
  When hago click en la opcion "Marketing digital"
  Then me encuentro en la pagina de "Marketing digital"

Scenario: Acceder a la experiencia de Preparacion de Brownies  
  Given estoy en la pagina principal
  When hago click en la opcion "Prepara Brownies"
  Then me encuentro en la pagina de "Prepara Brownies"

Scenario: Acceder al evento El consumidor digital  
  Given estoy en la pagina principal
  When hago click en la opcion "El consumidor digital"
  Then me encuentro en la pagina de "El consumidor digital"



 
Feature: test acceso de los links de home 
As usuario de la aplicacion
    I quiero poder hacer uso de los botones de acceso de Pagina Inicio
    So podre acceder a los al los curos mostrados en esta pagina

Scenario: Acceder al curso "Curso" desde la pagina de inicio 
  Given estoy en la pagina principal
  And hago click en "Inicio"
  When hago click en la opcion "Curso"
  Then me encuentro en la pagina de "Curso"


 
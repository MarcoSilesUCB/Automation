Feature: test acceso de los links de home 
As usuario de la aplicacion
    I quiero Unirme a RottweilerAcademy
    So podre recibir un formulario para poder ser parte RottweilerAcademy

Scenario: Acceder al curso "Curso" desde la pagina de inicio 
  Given estoy en la pagina principal
  And hago click en "Inicio"
  And hago click en "Unirse"
  When introduzco el nombre "soy un test"
  And introduzco el correo "soyuntest.0123@gmail.com"
  And introduzco el celular "78787878"
  And introduzco el Mensaje "Quisiera ser parte de RottweilerAcademy"
  And presiono el boton hecho
  Then veo que emerge un mensaje de exito


 
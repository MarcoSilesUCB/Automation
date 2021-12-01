Feature: test iniciar sesion  
As usuario de la aplicacion
    I quiero poder iniciar sesion
    So podre hacer uso de los servicios de la aplicacion


Scenario: Iniciar sesion    
  Given estoy en la pagina principal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  Then reviso el que el nombre de la cuenta aparezca en la parte superior de la pantalla


Scenario: Iniciar sesion con correo incorrecto   
  Given estoy en la pagina principal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  Then veo que emerge un mensaje de error


 Scenario: Iniciar sesion con clave incorrecto   
  Given estoy en la pagina principal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0"
  And presiono el boton acceder
  Then veo que emerge un mensaje de error
  And mi correo sigue escrito "soyuntest.0123@gmail.com"

 
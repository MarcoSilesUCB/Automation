Feature: test iniciar sesion  
As usuario de la aplicacion
    I want poder iniciar sesion
    So podre hacer uso de los servicios de la aplicacion


Scenario: Iniciar sesion    
  Given estoy en la pagina pricipal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  Then veo la pagina principal con la cuenta iniciada


Scenario: Iniciar sesion con correo incorrecto   
  Given estoy en la pagina pricipal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  Then veo que se me nego el acceso


 Scenario: Iniciar sesion con clave incorrecto   
  Given estoy en la pagina pricipal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0"
  And presiono el boton acceder
  Then veo que se me nego el acceso
  And mi correo sigue escrito "soyuntest.0123@gmail.com"

 
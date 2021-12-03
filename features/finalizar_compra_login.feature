Feature: test Finalizar compra
As persona que finalizo la seleccion de cursos
I quiero ir a la pagina finalizar la compra
So finalizar el proceso de añadir cursos al carrito.

Scenario: Finalizar compra  
  Given estoy en la pagina principal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  And hago click en el texto "cursos"
  And hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  And hago click en el boton "finalizar compra" dentro del icono de carrito
  Then Ahora puedo llenar los detalles de facturación.
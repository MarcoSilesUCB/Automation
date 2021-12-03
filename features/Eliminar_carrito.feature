Feature: test ver el total de 2 productos en el carrito
As Interesado en cursos en linea
I want Poder añadir 2 curos en mi carrito
So podre ver el total en mi carrito

Scenario: añadir el curso "como hacer milkshakes" y "Curso completo de Photoshop desde Cero"    
  Given estoy en la pagina principal
  And hago click en "iniciar sesion"
  When introduzco la cuenta "soyuntest.0123@gmail.com"
  And introduzco la clave "soyuntest.0123"
  And presiono el boton acceder
  And hago click en "cursos"
  And hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  And hago click en "cursos"
  And hago click en la tarjeta "Curso completo de Photoshop desde Cero"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  And hago click en el boton "ver carrito" dentro del icono de carrito
  And hago click en el boton de eliminar el producto "como hacer milkshakes"
  Then Ahora en mi carrito solo tiene 5
  
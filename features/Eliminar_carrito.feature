Feature: test eliminar un producto
As persona que ya añadio cursos a su carrito
I quiero eliminar 1 curso
So podre qeudarme solo con el curso en el que estoy interesado

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
  Then Ahora en mi carrito solo tiene 1 cursos
  
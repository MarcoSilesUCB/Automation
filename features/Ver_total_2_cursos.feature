Feature: test ver el total de 2 productos en el carrito
As Interesado en cursos en linea
I want Poder añadir 2 curos en mi carrito
So podre ver el total en mi carrito

Scenario: Ver el precio total de añadir el curso "como hacer milkshakes" y "Curso completo de Photoshop desde Cero"    
  Given estoy en la pagina principal
  And hago click en "cursos"
  When hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  And hago click en "cursos"
  And hago click en la tarjeta "Curso completo de Photoshop desde Cero"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  And hago click en el boton "ver carrito" dentro del icono de carrito
  Then Ahora en mi carrito veo el precio toal de "51.00Bs."
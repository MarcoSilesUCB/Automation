Feature: test añadir a un curso
As Interesado en cursos en linea
I want Poder añadir el curso "como hacer milkshakes" a mi carrito
So podre tenerlo guardado en mi carrito

Scenario: añadir el curso por primera vez    
  Given estoy en la pagina principal
  And hago click en "cursos"
  When hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  Then Ahora mi carrito tiene el icono de "1"

 Scenario: añadir el curso por segunda vez    
  Given estoy en la pagina principal
  And hago click en "cursos"
  When hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  And hago click en el boton "añadir al carrito"
  Then Ahora mi carrito tiene el icono de "1"
  And no puedo añadir otro curso igual
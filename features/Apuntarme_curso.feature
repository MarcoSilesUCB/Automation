Feature: test Apuntarme a un curso
As Interesado en cursos en linea
I want Poder apuntarme al curso "como hacer milkshakes"
So podre tenerlo en mi carrito

Scenario: Apuntarme al curso por primera vez    
  Given estoy en la pagina pricipal
  And hago click en "cursos"
  When hago click en la tarjeta "como hacer milkshakes"
  And hago click en el boton "apuntarme"
  Then Ahora estoy en la pagina "Como hacer milkshakes"
 
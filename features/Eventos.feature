Feature: Explorar eventos.
As Interesado de ver un evento
I want ver eventos
So ver los eventos que tiene la pagina.

Scenario: Buscar una palabra erronea
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Busco la palabra "Hola"
  Then Deberia ver "Próximos Eventos"

Scenario: Usar el formulario de fecha      
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono "11/29/2021"
  Then Veo en el calendario "diciembre 2021"

Scenario: Buscar una palabra en blanco
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Buscar Eventos"
  Then Veo el mensaje: "No se ha encontrado ningún resultado."


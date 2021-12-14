Feature: Mostrar eventos por filtros.
As Interesado de ver un evento
I want ver eventos
So ver los eventos segun su filtro

Scenario: filtro de mes
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Lista"
  And Clickeo en: "Mes"
  Then Veo el mensaje "Eventos en diciembre 2021"

Scenario: filtro de semana
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Lista"
  And Clickeo en: "Semana"
  Then Veo el mensaje de semana "Eventos para semana del diciembre 13, 2021"


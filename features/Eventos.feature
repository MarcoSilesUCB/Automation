Feature: Pruebas en la pagina de Eventos.
As Usuario
I want to probar la pagina de eventos
So Ver como funciona.

Scenario: Buscar una palabra erronea
  Given Visito la pagina de "eventos"
  When Busco la palabra "Hola"
  Then Deberia ver "Próximos Eventos"

Scenario: Usar el formulario de fecha      
  Given Visito la pagina de "eventos"
  When Preciono "11/29/2021"
  Then Veo en el calendario "diciembre 2021"

Scenario: Buscar una palabra en blanco
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Buscar Eventos"
  Then Veo el mensaje: "No se ha encontrado ningún resultado."

Scenario: Click en el filtro de mes
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Lista"
  And Clickeo en: "Mes"
  Then Veo el mensaje "Eventos en diciembre 2021"

Scenario: Click en el filtro de semana
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Lista"
  And Clickeo en: "Semana"
  Then Veo el mensaje de semana "Eventos para semana del noviembre 29, 2021"

Scenario: Click en eventos anteriores
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  Then Veo el mensaje "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

Scenario: Click en un evento
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  Then Veo el titulo de: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

@maximize
Scenario: Click en el boton de proximo evento estando en un evento 
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And Clickeo en: "Next Event"
  Then Veo el titulo de: "MASTERCLASS “Transformación Digital para tu Negocio”"

Scenario: Click en el boton de anterior evento estando en un evento 
  Given Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And Clickeo en: "Next Event"
  And Clickeo en: "Previous Event"
  Then Veo el titulo de: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

Scenario: Click en una fecha especifica
  Given Visito la pagina de "eventos"
  When Preciono "11/29/2021"
  And Clickeo en: "diciembre 2021"
  And Clickeo en: "2021"
  And Clickeo en: "2020"
  And Clickeo en: "Ene"
  And Clickeo en: "1"
  Then Veo el titulo de: "NOVIEMBRE 2020"
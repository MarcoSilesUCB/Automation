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

Feature: Ver eventos especificos
As Interesado de ver un evento
I want ver eventos
So ver un evento especifico

Scenario: eventos anteriores
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  Then Veo el mensaje "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

Scenario: un evento
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  Then Veo el titulo de: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

@maximize
Scenario: boton de proximo evento estando en un evento 
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And Clickeo en: "Next Event"
  Then Veo el titulo de: "MASTERCLASS “Transformación Digital para tu Negocio”"

Scenario: boton de anterior evento estando en un evento 
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  And Clickeo en: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And Clickeo en: "Next Event"
  And Clickeo en: "Previous Event"
  Then Veo el titulo de: "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

Scenario: fecha especifica
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono "11/29/2021"
  And Clickeo en: "diciembre 2021"
  And Clickeo en: "2021"
  And Clickeo en: "2020"
  And Clickeo en: "Ene"
  And Clickeo en: "1"
  Then Veo el titulo de: "NOVIEMBRE 2020"

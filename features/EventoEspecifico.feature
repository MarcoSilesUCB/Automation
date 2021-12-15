Feature: Ver eventos especificos
As Interesado de ver un evento
I want ver eventos
So ver un evento especifico

Scenario: eventos anteriores
  Given estoy en la pagina principal
  And Visito la pagina de "eventos"
  When Preciono el boton de: "Eventos anteriores"
  Then Veo el mensaje "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

Scenario: Ingresar en un evento
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

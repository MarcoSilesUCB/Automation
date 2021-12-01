Feature: Event page tests
As a User
I want to test the event page
So I see the erros.

@maximize
Scenario: search wrong word
  Given I visit "https://www.r-acad.com/eventos/"
  When I search for "Hola"
  Then I should see results "Próximos Eventos"


@maximize
Scenario: Click on date      
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "11/29/2021"
  Then I see calendar message "diciembre 2021"

@maximize
Scenario: Click on buscar when I don't have anything to find
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Buscar Eventos" button
  Then I see message "No se ha encontrado ningún resultado."

@maximize
Scenario: Click on filter by month
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Lista" button
  And I click "Mes"
  Then I see the message "Eventos en diciembre 2021"

@maximize
Scenario: Click on filter by week
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Lista" button
  And I click "Semana"
  Then I see the message in week "Eventos para semana del noviembre 29, 2021"

@maximize
Scenario: Click on previous events
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Eventos anteriores" button
  Then I see the message "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

@maximize
Scenario: Click on "Next Event" button a specific event
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Eventos anteriores" button
  And I click "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  Then I see the title "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

@maximize
Scenario: Click on "Next Event" button a specific event
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Eventos anteriores" button
  And I click "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And I click "Next Event"
  Then I see the title "MASTERCLASS “Transformación Digital para tu Negocio”"

@maximize
Scenario: Click on "Previous Event" button a specific event
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Eventos anteriores" button
  And I click "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  And I click "Next Event"
  And I click "Previous Event"
  Then I see the title "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"

@maximize
Scenario: Click on a specific date      
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "11/29/2021"
  And I click "diciembre 2021"
  And I click "2021"
  And I click "2020"
  And I click "Ene"
  And I click "1"
  Then I see the title "NOVIEMBRE 2020"
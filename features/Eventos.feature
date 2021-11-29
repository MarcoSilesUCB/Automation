Feature: I enter to eventos page

@maximize
Scenario: search wrong word
  Given I visit "https://www.r-acad.com/eventos/"
  When I search for "Hola"
  Then I should see results "Próximos Eventos"


@maximize
Scenario: Click on date      
  Given I visit "https://www.r-acad.com/eventos/"
  And Press the "11/29/2021"
  Then I see calendar message "noviembre 2021"

@maximize
Scenario: Click on buscar
  Given I visit "https://www.r-acad.com/eventos/"
  And Press the "Buscar Eventos" button
  Then I see message "No se ha encontrado ningún resultado."

@maximize
Scenario: Click on filter by month
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Lista" button
  And I click "Mes"
  Then I see the message "Eventos en noviembre 2021"

@maximize
Scenario: Click on filter by week
  Given I visit "https://www.r-acad.com/eventos/"
  When Press the "Lista" button
  And I click "Semana"
  Then I see the message in week "Eventos para semana del noviembre 29, 2021"
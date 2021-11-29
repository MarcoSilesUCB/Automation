
When('hago click en el texto {string}') do |string|
  page.find("#menu-item-196").click
end
Then('estoy en la pagina de {string}') do |string|
  expect(page).to have_content("Cursos")
end

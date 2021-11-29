
When('hago click en el boton {string}') do |string|
  page.find('#btn-join').click
end
Then('Ahora estoy en la pagina de carrito {string}') do |string|
  expect(page).to have_content("Como hacer milkshakes")
end

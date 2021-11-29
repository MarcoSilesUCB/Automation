When('hago click en el boton {string}') do |string|
 
  if string == "apuntarme"
    page.find('#btn-join').click
  elsif string == "añadir al carrito"
    click_button('add-to-cart')
  end
end
Then('Ahora estoy en la pagina de carrito {string}') do |string|
  expect(page).to have_content("Como hacer milkshakes")
end

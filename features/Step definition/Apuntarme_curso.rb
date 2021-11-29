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
Then('no puedo añadir otro curso igual') do 
  click_button('add-to-cart')
  expect(page).to have_content("No puedes añadir otro «Como hacer milkshakes» a tu carrito.")
  cont = page.find('#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a > span > span')
  expect(cont).to have_content("1")
end
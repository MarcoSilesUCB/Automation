Then('Ahora mi carrito tiene el icono de {string}') do |string|
  if string == "1"
    cont = page.find('#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a > span > span')
    expect(cont).to have_content("1")
  elsif string == "2"
    cont = page.find('#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a > span > span')
    expect(cont).to have_content("2")
  end

end
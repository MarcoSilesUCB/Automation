When('hago click en el boton {string} dentro del icono de carrito') do |string|
  carro = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a"
  if string == "ver carrito"
    ver ="#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children.selected > section > div > p.woocommerce-mini-cart__buttons.buttons > a:nth-child(1)"
    find(:css, carro ).click
    find(:css, ver).click
  elsif string == "finalizar compra"
    finalizar = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children.selected > section > div > p.woocommerce-mini-cart__buttons.buttons > a.button.checkout.wc-forward"
    find(:css, carro ).click
    find(:css, finalizar).click
  end
end
 

Then('Ahora en mi carrito veo el precio toal de {string}') do |string|
  total = "#post-29 > div > div > div.cart-collaterals > div > table > tbody > tr.order-total > td > strong > span > bdi"
  expect(find(:css, total).text).to have_content(string)
end
When('hago click en el boton de eliminar el producto {string}') do |string|

 page.find("#post-29 > div > div > form > table > tbody > tr:nth-child(1) > td.product-remove > a").click
end

Then /^Ahora en mi carrito solo tiene (\d+) cursos$/  do |n|
  a = n.to_i + 2
  within('#post-29 > div > div > form > table > tbody') do
    expect(all('tr').count).to eq(a)
  end
end

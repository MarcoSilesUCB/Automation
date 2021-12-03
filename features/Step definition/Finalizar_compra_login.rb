Then('Ahora puedo llenar los detalles de facturación.') do
 titulo = "#customer_details > div.col-1 > div > h3"
  expect(page).to have_content("Finalizar compra")
  expect( find(:css, titulo)).to have_content("DETALLES DE FACTURACIÓN")
  campo_nombre = "#billing_first_name_field > label"
  find(campo_nombre)=="Nombre"
  campo_apellido = "#billing_last_name_field > label"
  find(campo_apellido)=="Apellidos"
  campo_direccion = "#billing_address_1_field > label"
  find(campo_direccion) == "Dirección de la calle"
  campo_ciudad = "#billing_city_field > label"
  find(campo_ciudad) == "Localidad / Ciudad "
end
#post-29 > div > div > form > table > tbody > tr:nth-child(2) > td.product-remove
Then('Ahora puedo llenar los detalles de facturación.') do
 titulo = "#customer_details > div.col-1 > div > h3"
 expect(page).to have_content("Finalizar compra")
  expect( find(:css, titulo)).to have_content("DETALLES DE FACTURACIÓN")
end
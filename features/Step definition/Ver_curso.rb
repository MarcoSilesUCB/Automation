When('hago click en la tarjeta {string}') do |string|
 page.find('#course-dir-list > ul > li:nth-child(3) > div > div.bb-card-course-details > h2 > a').click
end

Then('Ahora estoy en la pagina {string}') do |string|
  expect(page).to have_content("Como hacer milkshakes")
end

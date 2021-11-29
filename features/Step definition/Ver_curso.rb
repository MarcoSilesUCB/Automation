When('hago click en la tarjeta {string}') do |string|
  if string =="como hacer milkshakes"
    page.find('#course-dir-list > ul > li:nth-child(3) > div > div.bb-card-course-details > h2 > a').click
  elsif string == "Curso completo de Photoshop desde Cero"
    page.find('#course-dir-list > ul > li:nth-child(6) > div > div.bb-card-course-details > h2 > a').click
  end

end

Then('Ahora estoy en la pagina {string}') do |string|
  expect(page).to have_content("Como hacer milkshakes")
end

Given(/^estoy en la pagina pricipal$/) do
  	page.driver.browser.manage.window.maximize
    visit 'https://www.r-acad.com/'

end

Given('hago click en {string}') do |string|
  page.find("#menu-item-196").click
 
end

When('Selecciono en el ultimo filtro {string}') do |string|
  page.find('#sfwd_instructors-order-by').find(:xpath, 'option[2]').click

end


Then('las tarjetas de cursos ahora solo muestran los cursos de Sebastian.')do 
puts('Falta completar')
 
end
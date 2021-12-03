

When('introduzco el nombre {string}') do |string|
  fill_in 'nf-field-6', :with => string
end

When('introduzco el correo {string}') do |string|
  fill_in 'nf-field-7', :with => string
end

When('introduzco el celular {string}') do |string|
  fill_in 'nf-field-10', :with => string
end

When('introduzco el Mensaje {string}') do |string|
  fill_in 'nf-field-8', :with => string
end

When('presiono el boton hecho') do
  click_on ('nf-field-9')
end

Then('veo que emerge un mensaje de exito') do
  page.has_selector?('#nf-form-2-cont > div > div.nf-response-msg > p')
  
end
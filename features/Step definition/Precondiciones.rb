Given(/^estoy en la pagina principal$/) do
  page.driver.browser.manage.window.maximize
  visit 'https://www.r-acad.com/'

end

Given('hago click en {string}') do |string|
  if string == "cursos"
    page.find("#menu-item-196").click
  elsif string == "iniciar sesion"
    page.find("#header-aside > div > div.bb-header-buttons > a.button.small.outline.signin-button.link").click
  end
end

Given('Visito la pagina de {string}') do |string|
  if string == "eventos"
    visit 'https://www.r-acad.com/eventos/'
  end
end
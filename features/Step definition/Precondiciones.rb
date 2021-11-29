Given(/^estoy en la pagina pricipal$/) do
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
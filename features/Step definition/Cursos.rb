Given(/^estoy en la pagina pricipal$/) do
  page.driver.browser.manage.window.maximize
  visit 'https://www.r-acad.com/'

end

Given('hago click en {string}') do |string|
page.find("#menu-item-196").click

end
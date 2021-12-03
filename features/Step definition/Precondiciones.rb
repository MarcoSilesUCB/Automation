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
  elsif string == "Inicio"
    page.find("#menu-item-191 > a").click
  elsif string == "Unirse"
    page.find("#content > div > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-77a28960.elementor-section-height-min-height.elementor-section-content-top.elementor-section-items-stretch.elementor-section-stretched.elementor-section-full_width.elementor-section-height-default.elementor-motion-effects-element.elementor-motion-effects-element-type-background > div.elementor-container.elementor-column-gap-wide > div > div.elementor-column.elementor-col-50.elementor-top-column.elementor-element.elementor-element-13a841cb > div > div > div.elementor-element.elementor-element-44ecdf72.elementor-align-center.elementor-tablet-align-center.elementor-widget.elementor-widget-button.animated.fadeInUp > div > div > a > span > span").click
  end
end
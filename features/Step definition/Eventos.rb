When(/^Busco la palabra "([^"]*)"$/) do |valueToSearch|
  fill_in('tribe-bar-search',:with => valueToSearch).native.send_keys(:return)
end
      
Then(/^Deberia ver "([^"]*)"$/) do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
  if message.text != string
    raise "result should be "+string
  end
end

When(/^Preciono "([^"]*)"$/) do |buttonName|
  find('input[name="tribe-bar-date"]').click
  end

Then(/^Veo en el calendario "([^"]*)"$/) do |string|
  message = find(:xpath, '/html/body/div[5]/div[1]/table/thead/tr[2]/th[2]')
  if message.text != string
    raise "result should be "+string
  end
end

When('Preciono el boton de: {string}') do |string|
  if string =="Lista"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[2]/form/div[2]/div/button').click
  elsif string ==  "Buscar Eventos"
    find('input[name="submit-bar"]').click
  end
  if string == "Eventos anteriores"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[3]/nav/ul/li/a').click
  end
end

Then(/^Veo el mensaje: "([^"]*)"$/) do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[1]/ul/li')
  if message.text != string
    raise "result should be "+string
  end
end


Then(/^Veo el mensaje "([^"]*)"$/) do |string|
  if string=="Eventos en diciembre 2021"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
    if message.text != string
      raise "result should be "+string
    end
  elsif string=="CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div/h2/a')
    if message.text != string
      raise "result should be "+string
    end
  end
end

Then(/^Veo el mensaje de semana "([^"]*)"$/) do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
  if message.text != string
    raise "result should be "+string
  end
end

Then('Veo el titulo de: {string}') do |string|
  if string == "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[2]/div[2]/div[1]/h1')
    if message.text != string
      raise "result should be "+string
    end
  elsif string == "MASTERCLASS “Transformación Digital para tu Negocio”"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[2]/div[2]/div[1]/h1')
    if message.text != string
      raise "result should be "+string
    end
  end
  if string == "NOVIEMBRE 2020"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[2]/h2[1]/span')~
    if message.text != string
      raise "result should be "+string
    end
  end
end

When(/^Clickeo en: "([^"]*)"$/) do |buttonName|
  if buttonName == "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div/h2/a').click
  elsif buttonName=="Semana"
    find('li[id="tribe-bar-views-option-week"]').click
  end 
  if buttonName =="Mes"
    find('li[id="tribe-bar-views-option-month"]').click
  end
  if buttonName == "Next Event"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[5]/ul/li[2]/a').click
  end
  if buttonName == "Previous Event"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[5]/ul/li[1]/a').click
  end
  if buttonName == "diciembre 2021"
    find(:xpath, '/html/body/div[5]/div[1]/table/thead/tr[2]/th[2]').click
  end
  if buttonName == "2021"
    find(:xpath, '/html/body/div[5]/div[2]/table/thead/tr[2]/th[2]').click
  end
  if buttonName == "2020"
    find(:xpath, '/html/body/div[5]/div[3]/table/tbody/tr/td/span[2]').click
  end
  if buttonName == "Ene"
    find(:xpath, '/html/body/div[5]/div[2]/table/tbody/tr/td/span[1]').click
  end
  if buttonName == "1"
    find(:xpath, '/html/body/div[5]/div[1]/table/tbody/tr[1]/td[3]').click
  end
end
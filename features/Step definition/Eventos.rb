Given('I visit {string}') do |string|
    visit string
  end

  When(/^I search for "([^"]*)"$/) do |valueToSearch|
  fill_in('tribe-bar-search',:with => valueToSearch).native.send_keys(:return)
  end
      
  Then(/^I should see results "([^"]*)"$/) do |string|
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
    if message.text != string
      raise "result should be "+string
    end
  end

When(/^Press the "([^"]*)"$/) do |buttonName|
  find('input[name="tribe-bar-date"]').click
  end

  Then(/^I see calendar message "([^"]*)"$/) do |string|
  message = find(:xpath, '/html/body/div[5]/div[1]/table/thead/tr[2]/th[2]')
  if message.text != string
    raise "result should be "+string
  end
end

When(/^Press the "([^"]*) button"$/) do |buttonName|
find('input[name="submit-bar"]').click
end

Then(/^I see message "([^"]*)"$/) do |string|
message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[1]/ul/li')
if message.text != string
  raise "result should be "+string
end
end

When(/^Press the "([^"]*) button"$/) do |buttonName|
find('input[id="tribe-bar-views-toggle"]').click
end

When(/^I click "([^"]*)"$/) do |buttonName|
find('li[id="tribe-bar-views-option-month"]').click
end

Then(/^I see the message "([^"]*)"$/) do |string|
message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
if message.text != string
  raise "result should be "+string
end
end

When(/^I click "([^"]*)"$/) do |buttonName|
find('li[id="tribe-bar-views-option-week"]').click
end

Then(/^I see the message in week "([^"]*)"$/) do |string|
message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[1]/h1')
if message.text != string
  raise "result should be "+string
end
end
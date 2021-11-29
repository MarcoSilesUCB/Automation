

Given('presiono en {string}') do |string|
    page.find("#header-aside > div > div.bb-header-buttons > a.button.small.outline.signin-button.link").click
    @correo=""
end

When('introduzco la cuenta {string}') do |string|
    fill_in 'user_login', :with => string
    @correo=string

end

When('introduzco la clave {string}') do |string|
    fill_in 'user_pass', :with => string
end

When('presiono el boton acceder') do 
    click_on ('wp-submit')
end

Then('veo la pagina principal con la cuenta iniciada') do
    page.has_selector?('#header-aside > div > div.user-wrap.user-wrap-container.menu-item-has-children > a > span')

end


Then('veo que se me nego el acceso') do
    page.has_selector?('#login_error')
    
end

Then('mi correo sigue escrito') do
    page.has_selector?('#login_error')
    if find_field('user_login').value == @correo
        raise "No mantiene el correo introducido"
    end
end
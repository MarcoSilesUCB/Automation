
When('Selecciono en el ultimo filtro {string}') do |string|
  page.find('#sfwd_instructors-order-by').find(:xpath, 'option[2]').click

end


Then('las tarjetas de cursos ahora solo muestran los cursos de Sebastian.')do 
for a in 1..8 do
  curso =find(:css, "#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid > li:nth-child(#{a})> div > div.bb-card-course-details > div.bb-course-meta > strong > a")
  if  curso.text != "Sebastián"
    raise "no se filtro bien"
  end
   
 end

end

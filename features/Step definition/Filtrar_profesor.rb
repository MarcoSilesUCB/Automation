
When('Selecciono en el ultimo filtro {string}') do |string|
  page.find('#sfwd_instructors-order-by').find(:xpath, 'option[2]').click

end


Then('las tarjetas de cursos ahora solo muestran los cursos de Sebastian.')do 

list = Array.new 
list = find('#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid').all('li.bb-course-item-wrap') 

puts(list.size)
  for a in 1..list.size  do
    
    curso =find(:css, "#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid > li:nth-child(#{a})> div > div.bb-card-course-details > div.bb-course-meta > strong > a")
    puts(curso)
    if  curso.text != "Sebastián"
      raise "no se filtro bien"
    end
    
  end

end

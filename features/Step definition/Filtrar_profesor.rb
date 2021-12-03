
When('Selecciono en el ultimo filtro {string}') do |string|

  if string =="Sebastian"
    page.find('#sfwd_instructors-order-by').find(:xpath, 'option[2]').click
  elsif string == "rottweilergroupbolivia"
    page.find('#sfwd_instructors-order-by').find(:xpath, 'option[3]').click
  end
  

end


Then('las tarjetas de cursos ahora solo muestran los cursos de {string}.')do |string|
  if string == "Sebastian"
    list = Array.new 
    list = find('#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid').all('li.bb-course-item-wrap') 
      for a in 1..list.size  do
        
        curso =find(:css, "#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid > li:nth-child(#{a})> div > div.bb-card-course-details > div.bb-course-meta > strong > a")

        if  curso.text != "Sebastián"
          raise "no se filtro bien"
        end
        
      end
  elsif string == "rottweilergroupbolivia"
    list = Array.new 
    list = find('#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid').all('li.bb-course-item-wrap') 
      for a in 1..list.size  do
        
        curso =find(:css, "#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid > li:nth-child(#{a})> div > div.bb-card-course-details > div.bb-course-meta > strong > a")

<<<<<<< HEAD
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

=======
        if  curso.text != "rottweilergroupbolivia"
          raise "no se filtro bien"
        end
        
      end
  end
>>>>>>> eac8d5d5f34e01457e4d840e342bc203a5f75003
end

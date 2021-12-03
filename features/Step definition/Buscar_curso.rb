When('hago click en el buscador') do
 page.find("#bs_members_search").click
end

When('escribo en el buscador {string}') do |string|
  fill_in 'search', :with => string
  find(:id, 'bs_members_search').native.send_keys(:enter)
end

Then('ahora solo veo el curso con nombre {string}') do |string|
  buscado = "#course-dir-list > ul.bb-card-list.bb-course-items.grid-view.bb-grid > li > div > div.bb-card-course-details > h2 > a"
  find(buscado)==string
  
end
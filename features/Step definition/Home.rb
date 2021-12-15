


When('hago click en la opcion {string}') do |string|
    if string == "Cursos"
        page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-724e068e.elementor-section-full_width.elementor-section-height-min-height.elementor-section-stretched.elementor-section-height-default.elementor-section-items-middle > div.elementor-container.elementor-column-gap-wide > div > div.elementor-column.elementor-col-50.elementor-top-column.elementor-element.elementor-element-6a2eae92 > div > div > section > div.elementor-container.elementor-column-gap-default > div > div.elementor-column.elementor-col-33.elementor-inner-column.elementor-element.elementor-element-72f92542 > div > div > div > div > div > div.elementor-cta__content").click
    elsif string == "Eventos"
      page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-724e068e.elementor-section-full_width.elementor-section-height-min-height.elementor-section-stretched.elementor-section-height-default.elementor-section-items-middle > div.elementor-container.elementor-column-gap-wide > div > div.elementor-column.elementor-col-50.elementor-top-column.elementor-element.elementor-element-6a2eae92 > div > div > section > div.elementor-container.elementor-column-gap-default > div > div.elementor-column.elementor-col-33.elementor-inner-column.elementor-element.elementor-element-3cfe5088 > div > div > div > div > div > div.elementor-cta__content").click
    elsif string == "Experiencias"
      page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-724e068e.elementor-section-full_width.elementor-section-height-min-height.elementor-section-stretched.elementor-section-height-default.elementor-section-items-middle > div.elementor-container.elementor-column-gap-wide > div > div.elementor-column.elementor-col-50.elementor-top-column.elementor-element.elementor-element-6a2eae92 > div > div > section > div.elementor-container.elementor-column-gap-default > div > div.elementor-column.elementor-col-33.elementor-inner-column.elementor-element.elementor-element-276a69c2 > div > div > div > div > div > div.elementor-cta__content").click
    elsif string == "Marketing digital"
      page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-86dbaba.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section > div > div > div.elementor-column.elementor-col-25.elementor-inner-column.elementor-element.elementor-element-e869c48 > div > div").click
    elsif string == "Prepara Brownies"
      page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-461af112.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-5192ee2f.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div.elementor-column.elementor-col-33.elementor-inner-column.elementor-element.elementor-element-1c802609 > div > div").click
    elsif string == "El consumidor digital"
      page.find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-346f3099.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div.elementor-container.elementor-column-gap-default > div > div > div > div").find("#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-346f3099.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div.elementor-container.elementor-column-gap-default > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-a1ff39e.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default.animated.fadeInUp > div > div > div > div > div").click
    elsif string == "Curso"
      page.find("#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(1) > div > div.bb-card-course-details > h2 > a").click
    end
  end
  

  Then('me encuentro en la pagina de {string}') do |string|
      if string == "Cursos"
        if (has_no_current_path?("https://www.r-acad.com/courses/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "Eventos"
        if (has_no_current_path?("https://www.r-acad.com/eventos/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "Experiencias"
        if (has_no_current_path?("https://www.r-acad.com/experiencias/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "Prepara Brownies"
        if (has_no_current_path?("https://www.r-acad.com/courses/prepara-brownies/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "El consumidor digital"
        if (has_no_current_path?("https://www.r-acad.com/evento/el-consumidor-digital-en-bolivia/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "Marketing digital"
        if (has_no_current_path?("https://www.r-acad.com/courses/marketing-digital/"))
          raise "No Me redirigio a la pagina esperada"
        end
      elsif string == "Curso"
        if (has_no_current_path?("https://www.r-acad.com/courses/curso/"))
          raise "No Me redirigio a la pagina esperada"
        end
      end
  end
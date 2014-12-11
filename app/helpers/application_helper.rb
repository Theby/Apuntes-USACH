module ApplicationHelper


	# Transforma un texto en MarkDown a html
	def markdown(text)
		options = {
			filter_html:          				false,   # No acepta tags html en el output
			with_toc_data:        				true,    # Agrega anchors a cada header para tener links a las secciones
			hard_wrap:            				false,   # Permite que un enter en markdown sea un <br> en el output
			prettify:             				true,    # Permite que las etiquetas <code> tengan colores adecuados para el lenguaje
			link_attributes: 					{rel: "nofollow"}, # Permite agregar atributos a las etiquetas <a></a>
			xhtml: true,			
		}

		extensions = {
			fenced_code_blocks:   				true,    # Permite agregar <code> tags con ~~~.lenguaje
			disable_indented_code_blockes:  	true,	 # Permite desactivar que se generen bloques de codigos al usar identación(4 espacios o más), recomendado con fenced_code_blocks: true
			autolink:             				true,    # Permite crear autolinks sin necesidad de <>
			strikethrough:        				true,	 # Permite tachar palabras con ~~texto~~
			space_after_headers:  				true,    # Obliga a que haya un sepacio despues de un #titulo
			superscript:          				true,    # Permite que 2^(n) se vea como dos elevado a n
			underline:            				true,    # Permite que _texto_ subraye el texto
			quote: 				  				true,    # Permite tener citas con "cita"
			footnotes:            				true,    # Permite tener notas a pie de pagina y referencias con [^1] y [^1]:
			highlight: 							true,	 # Permite que ==resaltado== cree un texto resaltado
		}


		# The HTML renderer has an alternate version, Redcarpet::Render::HTML_TOC, 
		# which will output a table of contents in HTML based on the headers of the 
		# Markdown document.
		#
		# When instantiating this render object, you can optionally pass a nesting_level
		# option which takes an integer and allows you to make it render only headers 
		# until a specific level.
		renderer = Redcarpet::Render::HTML.new(options)
		markdown = Redcarpet::Markdown.new(renderer, extensions)

		markdown.render(text).html_safe
	end

	# Crea una lista con links a todos los titulos encontrados en el texto pasado
	# El texto pasado como argumento debe estar en formato MarkDown
	def markdownToc(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML_TOC, extensions = {})

		markdown.render(text).html_safe
	end	
end

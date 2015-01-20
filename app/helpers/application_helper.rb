module ApplicationHelper

	# Transforma un texto en MarkDown a html
	def markdown(text)
		options = {
			filter_html:          				false,   # No acepta tags html en el output
			with_toc_data:        				true,    # Agrega anchors a cada header para tener links a las secciones
			hard_wrap:            				false,   # Permite que un enter en markdown sea un <br> en el output
			prettify:             				true,    # Permite que las etiquetas <code> tengan colores adecuados para el lenguaje usando google-code-prettify.
			link_attributes: 	      {rel: "nofollow"}, # Permite agregar atributos a las etiquetas <a></a>
			xhtml:                              true,    # Permite hacer render de código ruby en .erb
		}

		extensions = {
			fenced_code_blocks:   				true,    # Permite agregar <code> tags con ~~~.lenguaje
			disable_indented_code_blockes:  	true,	 # Permite desactivar que se generen bloques de codigos al usar identación(4 espacios o más), recomendado con fenced_code_blocks: true
			autolink:             				true,    # Permite crear autolinks sin necesidad de <>
			strikethrough:        				true,	 # Permite tachar palabras con ~~texto~~
			space_after_headers:  				true,    # Obliga a que haya un espacio despues de un #titulo
			superscript:          				true,    # Permite que 2^(n) se vea como dos elevado a n
			underline:            				true,    # Permite que _texto_ subraye el texto
			quote: 				  				true,    # Permite tener citas con "cita"
			footnotes:            				true,    # Permite tener notas a pie de pagina y referencias con [^1] y [^1]:
			highlight: 							true,	 # Permite que ==resaltado== cree un texto resaltado
			no_intra_emphasis:            		true,    # Evita que se haga render de simbolos cuando esta entre palabras, como por ejemplo foo_bar_baz
		}


		renderer = Redcarpet::Render::HTML.new(options)
		markdown = Redcarpet::Markdown.new(renderer, extensions)

		markdown.render(text).html_safe
	end

	# Crea una lista con links a todos los titulos encontrados en el texto pasado
	# El texto pasado como argumento debe estar en formato MarkDown
	def markdownToc(text)
		options = {
			filter_html:          				true,   # No acepta tags html en el output.
			nesting_level:  					   4,	# Asigna hasta que nivel se crean los links
		}

		extensions = {		
			autolink:             				true,    # Permite crear autolinks sin necesidad de <>
			strikethrough:        				true,	 # Permite tachar palabras con ~~texto~~
			superscript:          				true,    # Permite que 2^(n) se vea como dos elevado a n
			underline:            				true,    # Permite que _texto_ subraye el texto
			quote: 				  				true,    # Permite tener citas con "cita"
			highlight: 							true,	 # Permite que ==resaltado== cree un texto resaltado
			no_intra_emphasis:            		true,    # Evita que se haga render de simbolos cuando esta entre palabras, como por ejemplo foo_bar_baz
		}

		# Al renderizar un texto crea un indice con los titulos
		renderer = Redcarpet::Render::HTML_TOC.new(options)
		markdown = Redcarpet::Markdown.new(renderer, extensions)

		checkHtml(markdown.render(text)).html_safe
	end	


	# Quita todos los tag <u> y <small> de los tags <a>
	def checkHtml(html)
		doc = Nokogiri::HTML(html)
		doc.search("//a").each do |link|
			htmlLimpio = link.content
			htmlLimpio = htmlLimpio.sub('<small>','')
			htmlLimpio = htmlLimpio.sub('</small>','')
			htmlLimpio = htmlLimpio.sub('<u>','')
			htmlLimpio = htmlLimpio.sub('</u>','')

			link.content = htmlLimpio
		end

		doc.to_s
	end
end

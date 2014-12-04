module SectionsHelper

	# Retorna una lista con todos las secciones de la base de datos
	def allSections
		Section.all
	end
end

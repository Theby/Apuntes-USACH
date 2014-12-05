class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	helper_method :allSections, :allPublicaciones, :allExpositores, :allEntries

  	# Retorna una lista con todos las secciones de la base de datos
	def allSections
		Section.all
	end

	# Retorna una lista con todos las publicaciones de la base de datos
	def allPublicaciones
		Publicacion.all
	end

	# Retorna una lista con todos los expositores de la base de datos
	def allExpositores
		Expositor.all
	end

	# Retorna una lista con todos las entries de la base de datos
	def allEntries
		Entry.all
	end
end

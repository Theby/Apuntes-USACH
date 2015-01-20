class ApuntesController < ApplicationController
	before_action :set_apuntes, :only => :show
	before_action :set_index, :only => :index

	# GET /apuntes/:id
	def show
	end

	# GET /publicacion/:id
	def index
	end

	private
	  # Use callbacks to share common setup or constraints between actions.
		def set_apuntes
			@entry = Entry.find(params[:id])
			@publicacion = Publicacion.find(@entry.publicacion_id)
		end

		def set_index
			@publicacion = Publicacion.find(params[:id])
		end
end

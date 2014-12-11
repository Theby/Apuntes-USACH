class ApuntesController < ApplicationController
	before_action :set_apuntes, :only => :show

	# GET /apuntes/:id
	def show
	end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_apuntes
	  	@entry = Entry.find(params[:id])
	  	@publicacion = Publicacion.find(@entry.publicacion_id)
	  	@expositor = Expositor.find_by :publicacion_id => @entry.publicacion_id
	  end
end

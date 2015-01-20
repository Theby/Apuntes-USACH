class ExpositorsController < ApplicationController
  before_action :set_expositor, only: [:show, :edit, :update, :destroy]
  before_action :set_new_form, only: [:new]
  before_action :authenticate_user!

  # GET /expositors
  # GET /expositors.json
  def index
    @expositors = Expositor.all
  end

  # GET /expositors/1
  # GET /expositors/1.json
  def show
  end

  # GET /expositors/new
  def new
    @expositor = Expositor.new
    if(!@publicacion.blank?)
      @expositor.publicacion_id = @publicacion.id
    end
  end

  # GET /expositors/1/edit
  def edit
  end

  # POST /expositors
  # POST /expositors.json
  def create
    @expositor = Expositor.new(expositor_params)

    respond_to do |format|
      if @expositor.save
        format.html { redirect_to @expositor, notice: 'Expositor was successfully created.' }
        format.json { render :show, status: :created, location: @expositor }
      else
        format.html { render :new }
        format.json { render json: @expositor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expositors/1
  # PATCH/PUT /expositors/1.json
  def update
    respond_to do |format|
      if @expositor.update(expositor_params)
        format.html { redirect_to @expositor, notice: 'Expositor was successfully updated.' }
        format.json { render :show, status: :ok, location: @expositor }
      else
        format.html { render :edit }
        format.json { render json: @expositor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expositors/1
  # DELETE /expositors/1.json
  def destroy
    @expositor.destroy
    respond_to do |format|
      format.html { redirect_to expositors_url, notice: 'Expositor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expositor
      @expositor = Expositor.find(params[:id])
    end

    def set_new_form
      if(params[:id] == "blank" || params[:id].to_i < 0)
        @publicacion = nil
      else
        @publicacion = Publicacion.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expositor_params
      params.require(:expositor).permit(:nombre, :publicacion_id)
    end
end

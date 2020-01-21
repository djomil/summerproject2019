class GrassesController < ApplicationController
  before_action :set_grass, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end

  # GET /grasses
  # GET /grasses.json
  def index
     @grasses = Grass.all
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
        respond_to do |format|
          format.html 
           format.csv {send_data @grasses.to_csv} 
        end
   end

  # GET /grasses/1
  # GET /grasses/1.json
  def show
  end

  # GET /grasses/new
  def new
    @grass = Grass.new
  end

  # GET /grasses/1/edit
  def edit
  end

  # POST /grasses
  # POST /grasses.json
  def create
    @grass = Grass.new(grass_params)

    respond_to do |format|
      if @grass.save
        format.html { redirect_to @grass, notice: 'Grass was successfully created.' }
        format.json { render :show, status: :created, location: @grass }
      else
        format.html { render :new }
        format.json { render json: @grass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grasses/1
  # PATCH/PUT /grasses/1.json
  def update
    respond_to do |format|
      if @grass.update(grass_params)
        format.html { redirect_to @grass, notice: 'Grass was successfully updated.' }
        format.json { render :show, status: :ok, location: @grass }
      else
        format.html { render :edit }
        format.json { render json: @grass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grasses/1
  # DELETE /grasses/1.json
  def destroy
    @grass.destroy
    respond_to do |format|
      format.html { redirect_to grasses_url, notice: 'Grass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grass
      @grass = Grass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grass_params
      params.require(:grass).permit(:grass_id, :grass_type)
    end
end

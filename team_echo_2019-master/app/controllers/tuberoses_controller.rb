class TuberosesController < ApplicationController
  before_action :set_tuberose, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end
  # GET /tuberoses
  # GET /tuberoses.json
  def index
    @tuberoses = Tuberose.all
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
       respond_to do |format|
          format.html 
           format.csv {send_data @tuberoses.to_csv} 
           
  end
  end

  # GET /tuberoses/1
  # GET /tuberoses/1.json
  def show
  end

  # GET /tuberoses/new
  def new
    @tuberose = Tuberose.new
  end

  # GET /tuberoses/1/edit
  def edit
  end

  # POST /tuberoses
  # POST /tuberoses.json
  def create
    @tuberose = Tuberose.new(tuberose_params)

    respond_to do |format|
      if @tuberose.save
        format.html { redirect_to @tuberose, notice: 'Tuberose was successfully created.' }
        format.json { render :show, status: :created, location: @tuberose }
      else
        format.html { render :new }
        format.json { render json: @tuberose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuberoses/1
  # PATCH/PUT /tuberoses/1.json
  def update
    respond_to do |format|
      if @tuberose.update(tuberose_params)
        format.html { redirect_to @tuberose, notice: 'Tuberose was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuberose }
      else
        format.html { render :edit }
        format.json { render json: @tuberose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuberoses/1
  # DELETE /tuberoses/1.json
  def destroy
    @tuberose.destroy
    respond_to do |format|
      format.html { redirect_to tuberoses_url, notice: 'Tuberose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuberose
      @tuberose = Tuberose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuberose_params
      params.require(:tuberose).permit(:tuberose_id, :tuberose_type)
    end
end

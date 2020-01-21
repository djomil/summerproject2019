class TuberoseAllocationsController < ApplicationController
  before_action :set_tuberose_allocation, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end

  # GET /tuberose_allocations
  # GET /tuberose_allocations.json
  def index
    @cannonball = TuberoseAllocation.page params[:page]  
    @tuberose_allocations = TuberoseAllocation.all 
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
      respond_to do |format|
          format.html 
           format.csv {send_data @tuberose_allocations.to_csv} 
        end  
    
  end

  # GET /tuberose_allocations/1
  # GET /tuberose_allocations/1.json
  def show
  end

  # GET /tuberose_allocations/new
  def new
    @tuberose_allocation = TuberoseAllocation.new
  end

  # GET /tuberose_allocations/1/edit
  def edit
  end

  # POST /tuberose_allocations
  # POST /tuberose_allocations.json
  def create
    @tuberose_allocation = TuberoseAllocation.new(tuberose_allocation_params)

    respond_to do |format|
      if @tuberose_allocation.save
        format.html { redirect_to @tuberose_allocation, notice: 'Tuberose allocation was successfully created.' }
        format.json { render :show, status: :created, location: @tuberose_allocation }
      else
        format.html { render :new }
        format.json { render json: @tuberose_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuberose_allocations/1
  # PATCH/PUT /tuberose_allocations/1.json
  def update
    respond_to do |format|
      if @tuberose_allocation.update(tuberose_allocation_params)
        format.html { redirect_to @tuberose_allocation, notice: 'Tuberose allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuberose_allocation }
      else
        format.html { render :edit }
        format.json { render json: @tuberose_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuberose_allocations/1
  # DELETE /tuberose_allocations/1.json
  def destroy
    @tuberose_allocation.destroy
    respond_to do |format|
      format.html { redirect_to tuberose_allocations_url, notice: 'Tuberose allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuberose_allocation
      @tuberose_allocation = TuberoseAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuberose_allocation_params
      params.require(:tuberose_allocation).permit(:tuberose_allocation_id, :tuberose_id, :plotsubplot_id, :year_observation, :swede_and_pots_fwt, :percentage_root_dm, :percentage_100_dm_swede_leaf_dm_y, :percentage_crop_s, :percentage_root_s, :percentage_tug_s, :percentage_tw_s, :percentage_tug_a, :percentage_tw_a, :ph, :p, :k, :mg, :om, :replication, :rotation)
    end
end

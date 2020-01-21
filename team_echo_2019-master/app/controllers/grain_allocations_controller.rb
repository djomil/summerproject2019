class GrainAllocationsController < ApplicationController
  before_action :set_grain_allocation, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end

  # GET /grain_allocations
  # GET /grain_allocations.json
  def index
    @paginated = GrainAllocation.page params[:page]
    @grain_allocations = GrainAllocation.all
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
      respond_to do |format|
          format.html 
           format.csv {send_data @grain_allocations.to_csv} 
        end
  end

  # GET /grain_allocations/1
  # GET /grain_allocations/1.json
  def show
  end

  # GET /grain_allocations/new
  def new
    @grain_allocation = GrainAllocation.new
  end

  # GET /grain_allocations/1/edit
  def edit
  end

  # POST /grain_allocations
  # POST /grain_allocations.json
  def create
    @grain_allocation = GrainAllocation.new(grain_allocation_params)

    respond_to do |format|
      if @grain_allocation.save
        format.html { redirect_to @grain_allocation, notice: 'Grain allocation was successfully created.' }
        format.json { render :show, status: :created, location: @grain_allocation }
      else
        format.html { render :new }
        format.json { render json: @grain_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grain_allocations/1
  # PATCH/PUT /grain_allocations/1.json
  def update
    respond_to do |format|
      if @grain_allocation.update(grain_allocation_params)
        format.html { redirect_to @grain_allocation, notice: 'Grain allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @grain_allocation }
      else
        format.html { render :edit }
        format.json { render json: @grain_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grain_allocations/1
  # DELETE /grain_allocations/1.json
  def destroy
    @grain_allocation.destroy
    respond_to do |format|
      format.html { redirect_to grain_allocations_url, notice: 'Grain allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grain_allocation
      @grain_allocation = GrainAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grain_allocation_params
      params.require(:grain_allocation).permit(:grain_allocation_id, :grain_id, :plotsubplot_id, :year_observation, :percentage_85_dm_grain_y, :percentage_85_dm_straw_y, :spec_wt, :tgw, :tillers, :grain_on_ear, :length, :percentage_crop_s, :percentage_prg_s, :percentage_rc_s, :percentage_wc_s, :percentage_tug_s, :percentage_tw_s, :percentage_prg_a, :percentage_wc_a, :percentage_rc_a, :percentage_tug_a, :percentage_tw_a, :ph, :p, :k, :mg, :om, :replication, :rotation )
    end
end

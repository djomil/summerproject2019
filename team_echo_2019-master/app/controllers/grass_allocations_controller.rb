class GrassAllocationsController < ApplicationController
  before_action :set_grass_allocation, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end
  # GET /grass_allocations
  # GET /grass_allocations.json
  def index
      @beck =GrassAllocation.page params[:page]
      @grass_allocations = GrassAllocation.all
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
        respond_to do |format|
          format.html 
           format.csv {send_data @grass_allocations.to_csv} 
        end  
  end

  # GET /grass_allocations/1
  # GET /grass_allocations/1.json
  def show
  end

  # GET /grass_allocations/new
  def new
    @grass_allocation = GrassAllocation.new
  end

  # GET /grass_allocations/1/edit
  def edit
  end

  # POST /grass_allocations
  # POST /grass_allocations.json
  def create
    @grass_allocation = GrassAllocation.new(grass_allocation_params)

    respond_to do |format|
      if @grass_allocation.save
        format.html { redirect_to @grass_allocation, notice: 'Grass allocation was successfully created.' }
        format.json { render :show, status: :created, location: @grass_allocation }
      else
        format.html { render :new }
        format.json { render json: @grass_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grass_allocations/1
  # PATCH/PUT /grass_allocations/1.json
  def update
    respond_to do |format|
      if @grass_allocation.update(grass_allocation_params)
        format.html { redirect_to @grass_allocation, notice: 'Grass allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @grass_allocation }
      else
        format.html { render :edit }
        format.json { render json: @grass_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grass_allocations/1
  # DELETE /grass_allocations/1.json
  def destroy
    @grass_allocation.destroy
    respond_to do |format|
      format.html { redirect_to grass_allocations_url, notice: 'Grass allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grass_allocation
      @grass_allocation = GrassAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grass_allocation_params
      params.require(:grass_allocation).permit(:grass_allocation_id, :grass_id, :plotsubplot_id, :year_observation, :percentage_100_dm_gm1, :percentage_100_dm_gm2, :percentage_100_dm_gm3, :percentage_100_dm_gm4, :percentage_100_dm_gm5, :percentage_100_dm_gm6, :percentage_100_dm_silage1, :percentage_100_dm_silage2, :d_value_1, :d_value_2, :me_1, :me_2, :lugd, :percentage_prg_a, :percentage_tim_a, :percentage_wc_a, :percentage_tug_a, :percentage_tw_a, :ph, :p, :k, :mg, :om, :replication, :rotation)
    end
end

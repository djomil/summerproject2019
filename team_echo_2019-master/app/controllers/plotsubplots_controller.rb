class PlotsubplotsController < ApplicationController
  before_action :set_plotsubplot, only: [:show, :edit, :update, :destroy]
    before_action  do
    redirect_to home_index_path, notice: 'Must be an admin to add records' unless current_user && current_user.admin
     end

  # GET /plotsubplots
  # GET /plotsubplots.json
  def index
      @kaleo = Plotsubplot.page params[:page]
    @plotsubplots = Plotsubplot.all
      #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
       respond_to do |format|
          format.html 
           format.csv {send_data @plotsubplots.to_csv} 
        end
      
  end

  # GET /plotsubplots/1
  # GET /plotsubplots/1.json
  def show
  end

  # GET /plotsubplots/new
  def new
    @plotsubplot = Plotsubplot.new
  end

  # GET /plotsubplots/1/edit
  def edit
  end

  # POST /plotsubplots
  # POST /plotsubplots.json
  def create
    @plotsubplot = Plotsubplot.new(plotsubplot_params)

    respond_to do |format|
      if @plotsubplot.save
        format.html { redirect_to @plotsubplot, notice: 'Plotsubplot was successfully created.' }
        format.json { render :show, status: :created, location: @plotsubplot }
      else
        format.html { render :new }
        format.json { render json: @plotsubplot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plotsubplots/1
  # PATCH/PUT /plotsubplots/1.json
  def update
    respond_to do |format|
      if @plotsubplot.update(plotsubplot_params)
        format.html { redirect_to @plotsubplot, notice: 'Plotsubplot was successfully updated.' }
        format.json { render :show, status: :ok, location: @plotsubplot }
      else
        format.html { render :edit }
        format.json { render json: @plotsubplot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plotsubplots/1
  # DELETE /plotsubplots/1.json
  def destroy
    @plotsubplot.destroy
    respond_to do |format|
      format.html { redirect_to plotsubplots_url, notice: 'Plotsubplot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plotsubplot
      @plotsubplot = Plotsubplot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plotsubplot_params
      params.require(:plotsubplot).permit(:plotsubplot_id, :plot_id, :subplot_id)
    end
end

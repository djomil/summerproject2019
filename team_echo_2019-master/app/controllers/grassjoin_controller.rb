include GrassjoinHelper
class GrassjoinController < ApplicationController
    before_action  do
    redirect_to grass_converter_chart_path, notice: 'Must be logged in to view all records, contact the center' unless current_user
     end
  
    
  def index
      #return the results of the query assigned to grassdata that is a join of grass table, grass allocations and plotsubplot
      @Grassdata = grassdata
  
  end
    
    end


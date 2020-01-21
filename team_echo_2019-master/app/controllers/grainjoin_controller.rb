include GrainjoinHelper

class GrainjoinController < ApplicationController
 
     before_action  do
    redirect_to grain_converter_chart_path, notice: 'Must be logged in to view all records, contact the center' unless current_user
    
     end
    def index
#return the results of the query assigned to graindata that is a join of grain table, grain allocations and plotsubplots
  @Graindata = graindata 
  end
    
    
    
end

include TuberosejoinHelper
class TuberosejoinController < ApplicationController
    

    
     before_action  do
    redirect_to tuber_chart_path, notice: 'Must be logged in to view all records, contact the center' unless current_user
      
     end
  def index
  #return the results of the query assigned to tuberdata that is a join of tuberose table, tuberose allocation and plotsubplot
      @Tuberdata = tuberdata
     
  end
     
    
      
end


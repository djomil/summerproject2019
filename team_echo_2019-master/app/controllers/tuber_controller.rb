include TuberHelper
class TuberController < ApplicationController
 
    def index
     
     
  end
    
    def chart
        @Swedefreshweight = swedefreshweight
        @Potatofreshweight= potatofreshweight
        @Soilvaluest1 = soilvaluest1
         @Soilvaluest2 = soilvaluest2
       
    end
end


include GrainConverterHelper
class GrainConverterController < ApplicationController
  def index
      
     
  end
    
    def chart
         @Oatyield  =  oatyield 
        @Barleyyield = barleyyield
        @Grainsoilvaluest1  = grainsoilvaluest1 
        @Grainsoilvaluest2 = grainsoilvaluest2
        @Oattilleryield = oattilleryield
        @Barleytilleryield =  barleytilleryield
        @Oatspecweight = oatspecweight
        @Barleyspecweight = barleyspecweight
        @Springoatsdrymattergrain = springoatsdrymattergrain
        @Barleydrymattergrain =barleydrymattergrain
        @Springoatsdrymatterstraw = springoatsdrymatterstraw
        @Barleydrymatterstraw = barleydrymatterstraw
    end

end



include GrassConverterHelper
class GrassConverterController < ApplicationController

    
    def chart
        #return the following queries 
        @Grasssoilvaluet1 = grasssoilvaluet1
        @Grasssoilvaluet2 = grasssoilvaluet2
         @Grasswhitecloverdrymatter = grasswhitecloverdrymatter
        @Grassredcloverdrymatter = grassredcloverdrymatter
    end
end

require 'rails_helper'

RSpec.describe GrassConverterController, type: :controller do
# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
  
it "returns the correct helper method in chart method" do
    include GrassConverterHelper
       def chart
      @Grasssoilvaluet1 = grasssoilvaluet1

        @Grasssoilvaluet2 = grasssoilvaluet2

         @Grasswhitecloverdrymatter = grasswhitecloverdrymatter

        @Grassredcloverdrymatter = grassredcloverdrymatter
    end
    expect(  @Grasssoilvaluet1) === (grasssoilvaluet1)
    expect(   @Grasssoilvaluet2 ) === (grasssoilvaluet2 )
    expect(  @Grasswhitecloverdrymatter ) === ( grasswhitecloverdrymatter)
    expect( @Grassredcloverdrymatter ) === (  grassredcloverdrymatter)
end
end

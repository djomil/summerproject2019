require 'rails_helper'

RSpec.describe GrainConverterController, type: :controller do
   #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher

  

 # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
it "returns the correct helper method in chart method" do
    include GrainConverterHelper
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

    expect( @Oatyield) === (oatyield)
    expect( @Barleyyield) === (barleyyield)
    expect( @Grainsoilvaluest1) === ( grainsoilvaluest1)
    expect( @Grainsoilvaluest2) === ( grainsoilvaluest2)
    expect(@Oattilleryield) === (oattilleryield)
    expect( @Barleytilleryield) === ( barleytilleryield)
    expect( @Oatspecweight) === ( oatspecweight)
    expect( @Barleyspecweight) === ( barleyspecweight)
    expect(@Springoatsdrymattergrain) === (springoatsdrymattergrain)
    expect(@Barleydrymattergrain) === (barleydrymattergrain)
    expect(@Springoatsdrymatterstraw) === (springoatsdrymatterstraw)
    expect(@Barleydrymatterstraw) === (barleydrymatterstraw)
end
end

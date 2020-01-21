require 'rails_helper'

RSpec.describe TuberController, type: :controller do


# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

it "returns the correct helper method in chart method" do
    include TuberHelper
       def chart
        @Swedefreshweight = swedefreshweight

        @Potatofreshweight= potatofreshweight

        @Soilvaluest1 = soilvaluest1

         @Soilvaluest2 = soilvaluest2
    end
    expect(@Swedefreshweight) === (swedefreshweight)
    expect(@Potatofreshweight) === (potatofreshweight)
    expect( @Soilvaluest1) === ( soilvaluest1)
    expect(@Soilvaluest2) === (soilvaluest2)
end


end

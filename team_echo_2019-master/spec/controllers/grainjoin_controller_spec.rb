require 'rails_helper'
#
RSpec.describe GrainjoinController, type: :controller do
     #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
it "routes  /grainjoins to the GrainjoinController index method" do
    expect(:get => "/grainjoin/index").to route_to(:controller => "grainjoin", :action => "index" )
end

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
it "returns the correct helper method in index method" do
    include GrainjoinHelper
       def index
     @Graindata = graindata
     
  end
    expect(@Graindata) === (graindata)
end
end

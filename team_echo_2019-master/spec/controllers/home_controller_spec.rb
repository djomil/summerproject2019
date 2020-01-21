require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    #source for routing test in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
it "routes  / to the HomeController index method" do
    expect(:get => "/").to route_to(:controller => "home", :action => "index")
end 

end

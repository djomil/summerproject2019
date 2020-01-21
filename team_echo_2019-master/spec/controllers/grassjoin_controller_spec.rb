require 'rails_helper'

RSpec.describe GrassjoinController, type: :controller do
  
 #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher

  describe "GET #index" do
    it "returns http 302 since user is not logged in" do
      get :index
      expect(response).to have_http_status(302) 
    end
  end
  
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
it "returns the correct helper method in index method" do
    include GrassjoinHelper
       def index
        @Grassdata = grassdata
     
  end
    expect(@Grassdata) === (grassdata)
end
end

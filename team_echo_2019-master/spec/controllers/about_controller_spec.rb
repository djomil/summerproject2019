require 'rails_helper'

RSpec.describe AboutController, type: :controller do

    #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
    describe "about controller route test" do
  it 'routes to #new' do
 expect(get: '/about/index').to route_to(:controller=>"about", :action=>"index" )
    end
    end


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end

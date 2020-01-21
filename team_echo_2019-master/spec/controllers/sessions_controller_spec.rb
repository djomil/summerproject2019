require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
  describe "GET #create" do
    it "returns http success - redirects if not user" do
      get :create
      expect(response).to have_http_status(302)
    end
  end
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
  describe "GET #destroy" do
    it "returns http success - redirects if not user" do
      get :destroy
      expect(response).to have_http_status(302)
    end
  end

end

require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
     #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher

    describe "about controller route test"
  it 'routes to #new' do
 expect(get: '/contacts/index').to route_to("controller"=>"contacts", "action"=>"index" )

    end
end

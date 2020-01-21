require 'rails_helper'

RSpec.describe GrainAllocationsController, type: :controller do
     #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
it "routes  /grain_allocations to the GrainAllocationsController index method" do
    expect(:get => "/grain_allocations").to route_to(:controller => "grain_allocations", :action => "index" )
end


it 'routes to #new' do
 expect(get: '/grain_allocations/new').to route_to(:controller=>"grain_allocations", :action=>"new" )

    end





 it "should have proper routes" do
    {:get => "/grain_allocations/new" }.should be_routable
              
  end

it "routes  /grain_allocations/edit to the GraiAllocationsController edit method" do
    
    expect(:get => "/grain_allocations/edit").to route_to("controller"=>"grain_allocations", "action"=>"show", "id"=>"edit")
end
it "routes  /grain_allocations/create to the GraiAllocationsController create method" do
    expect(:post => "/grain_allocations").to route_to(:controller => "grain_allocations", :action => "create" )
end
it "routes  /grains/update to the GraiAllocationsController update method" do
    expect(:put => "/grain_allocations/update").to route_to("controller"=>"grain_allocations", "action"=>"update", "id"=>"update" )
end
it "routes  /grains/delete to the GraiAllocationsController delete method" do
    expect(:put => "/grain_allocations/delete").to route_to("controller"=>"grain_allocations", "action"=>"update", "id"=>"delete")
end


end

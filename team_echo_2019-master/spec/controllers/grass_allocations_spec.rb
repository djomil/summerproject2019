require 'rails_helper'

RSpec.describe GrassAllocationsController, type: :controller do
    #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
it "routes  /grass_allocations to the grassAllocationsController index method" do
    expect(:get => "/grass_allocations").to route_to(:controller => "grass_allocations", :action => "index" )
end


it 'routes to #new' do
 expect(get: '/grass_allocations/new').to route_to(:controller=>"grass_allocations", :action=>"new" )

    end

 it "should have proper routes" do
    {:get => "/grass_allocations/new" }.should be_routable
              
  end

it "routes  /grass_allocations/edit to the GrassAllocationsController edit method" do
    
    expect(:get => "/grass_allocations/edit").to route_to("controller"=>"grass_allocations", "action"=>"show", "id"=>"edit")
end
it "routes  /grass_allocations/create to the GrassAllocationsController create method" do
    expect(:post => "/grass_allocations").to route_to(:controller => "grass_allocations", :action => "create" )
end
it "routes  /grasss/update to the GrassAllocationsController update method" do
    expect(:put => "/grass_allocations/update").to route_to("controller"=>"grass_allocations", "action"=>"update", "id"=>"update" )
end
it "routes  /grasss/delete to the GrassAllocationsController delete method" do
    expect(:put => "/grass_allocations/delete").to route_to("controller"=>"grass_allocations", "action"=>"update", "id"=>"delete")
end

#testing index https://github.com/desmondmonster/rspec-style-guide
describe "Index do" do
    context "GET #index" do
    before :each do
     
      get :index
          response.should render_template :index

    end  
end 
end

#testing show https://github.com/desmondmonster/rspec-style-guide
describe "show do" do
    context "GET #show" do
    before :each do
     
      get :show
          response.should render_template :show

    end  
end 
end

#testing new https://github.com/desmondmonster/rspec-style-guide
describe "new do" do
    context "GET #new" do
    before :each do
     
      get :new
          response.should render_template :new

    end  
end 
end

#testing create https://github.com/desmondmonster/rspec-style-guide
describe "create do" do
    context "GET #create" do
    before :each do
      get :create
          response.should render_template :create

    end  
end 
end

# https://github.com/desmondmonster/rspec-style-guide
describe 'GET #index' do
    context 'when user is logged in' do
       :user
      before do
        sign_in user
        get :index
      end
    end
 end


 describe "create a new grain_allocation" do 
     describe 'POST#create' do
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    context 'with valid attributes' do
        grass_allocation = GrassAllocation.new(grass_allocation_id: 1,grass_id: 1)
     
      end

      it 'saves the new grain in the database' do

        expect do
           https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
          post :create, params:[:grass_allocation]
            @grass_allocation = GrassAllocation.new(grass_allocation_params)
             expect {:grass_allocation}.to change{ GrassAllocation.new}.by(1)
            expect {:grass_allocation}.new.to { GrassAllocation.new}.by(1)
     
      end
    
    
     
   
end
end


end
end

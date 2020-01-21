require 'rails_helper'

RSpec.describe GrassesController, type: :controller do

   # https://stackoverflow.com/questions/23882002/format-json-render-json-product-errors-status-unprocessable-entity
it "should create a new record" do
    
    respond_to do |format|
      if @grass.save
        format.html { redirect_to @grass, notice: 'Grass was successfully created.' }
        format.json { render :show, status: :created, location: @grass }
      else
        format.html { render :new }
        format.json { render json: @grass.errors, status: :unprocessable_entity }
        end 
    end
end
 
#https://stackoverflow.com/questions/23882002/format-json-render-json-product-errors-status-unprocessable-entity
it "should update grasses records" do
 
     respond_to do |format|
      if @grass.update(grass_params)
        format.html { redirect_to @grass, notice: 'Grass was successfully updated.' }
        format.json { render :show, status: :ok, location: @grass }
      else
        format.html { render :edit }
        format.json { render json: @grass.errors, status: :unprocessable_entity }
      end
     end
   
end

     #source for routing tests in the file https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher



it "routes  /grasses to the GrassesController index method" do
    expect(:get => "/grasses").to route_to(:controller => "grasses", :action => "index" )
end 
it "routes  /grasses/new to the GrassesController new method" do
    expect(:get => "/grasses/new").to route_to(:controller => "grasses", :action => "new" )
end

it "routes  /grasses/edit to the GrassesController edit method" do
   
    expect(:get => "/grasses/edit").to route_to("controller"=>"grasses", "action"=>"show", "id"=>"edit")
end
it "routes  /grasses/create to the GrassesController create method" do
    expect(:post => "/grasses").to route_to(:controller => "grasses", :action => "create" )
end



it "routes  /grasses/update to the GrassesController update method" do
    expect(:put => "/grasses/update").to route_to("controller"=>"grasses", "action"=>"update", "id"=>"update" )
end
it "routes  /grasses/delete to the GrassesController delete method" do
    expect(:put => "/grasses/delete").to route_to("controller"=>"grasses", "action"=>"update", "id"=>"delete")
end

end


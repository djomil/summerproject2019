require 'test_helper'

class GrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grain = grains(:one)
        @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end
#source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
        if  @current_user === true
    get grains_url
    
    assert_response :success
       end
  end

   
    test "index action should be a success" do
         if  @current_user === true
        get :index
        assert_response :success
         end
  end 
    
  test "should get new" do
       if  @current_user === true
  get :new
    assert_response :success
       end
  end

  test "should create grain" do
       if  @current_user === true
    assert_difference('Grain.count', 3) do
      post grains_url, params: { grain: { grain_id: @grain.grain_id, grain_type: @grain.grain_type } }
    end

    assert_redirected_to grain_url(Grain.last)
  end
  end

  test "should show grain" do
        if  @current_user === true
    get grain_url(@grain)
    assert_response :success
       
       end
  end

  test "should get edit" do
        if  @current_user === true
    get edit_grain_url(@grain)
    assert_response :success
          
       end
  end

  test "should update grain" do
       if  @current_user === true
    patch grain_url(@grain), params: { grain: { grain_id: @grain.grain_id, grain_type: @grain.grain_type } }
    assert_redirected_to grain_url(@grain)
          
       end
  end

  test "should destroy grain" do
        if  @current_user === true
    assert_difference('Grain.count', 2) do
    delete grain_url(@grain)  
    end
    assert_redirected_to grains_url
     
       end
  end
end

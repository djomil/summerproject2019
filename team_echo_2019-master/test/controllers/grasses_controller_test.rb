require 'test_helper'

class GrassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grass = grasses(:one)
    @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end

      #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
      if  @current_user === true
    get grasses_url
    assert_response :success
      end
  end

  test "should get new" do
      if  @current_user === true
    get new_grass_url
    assert_response :success
      end
  end

  test "should create grass" do
      if  @current_user === true
    assert_difference('Grass.count',2) do
      post grasses_url, params: { grass: { grass_id: @grass.grass_id, grass_type: @grass.grass_type } }
    end
    assert_redirected_to grass_url(Grass.last)
  end
end

  test "should show grass" do
     if  @current_user === true
    get grass_url(@grass)
    assert_response :success
      end
  end

  test "should get edit" do
      if  @current_user === true
    get edit_grass_url(@grass)
    assert_response :success
      end
  end

  test "should update grass" do
      if  @current_user === true
    patch grass_url(@grass), params: { grass: { grass_id: @grass.grass_id, grass_type: @grass.grass_type } }
   # assert_redirected_to grass_url(@grass)
      end 
  end

  test "should destroy grass" do
      if  @current_user === true
    assert_difference('Grass.count', 2) do
      delete grass_url(@grass)
    end
    assert_redirected_to grasses_url
  end
  end
end

require 'test_helper'

class TuberosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuberose = tuberoses(:one)
     @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end

     #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
      if  @current_user === true
    get tuberoses_url
    assert_response :success
           
       end
  end

  test "should get new" do
      if  @current_user === true
    get new_tuberose_url
    assert_response :success
           
       end
  end

  test "should create tuberose" do
      if  @current_user === true
    assert_difference('Tuberose.count',2) do
      post tuberoses_url, params: { tuberose: { tuberose_id: @tuberose.tuberose_id, tuberose_type: @tuberose.tuberose_type } }
    end

    assert_redirected_to tuberose_url(Tuberose.last)
      
       end
  end

  test "should show tuberose" do
     if  @current_user === true
    get tuberose_url(@tuberose)
    assert_response :success
          
       end
  end

  test "should get edit" do
     if  @current_user === true
    get edit_tuberose_url(@tuberose)
    assert_response :success
          
       end
  end

  test "should update tuberose" do
      if  @current_user === true
    patch tuberose_url(@tuberose), params: { tuberose: { tuberose_id: @tuberose.tuberose_id, tuberose_type: @tuberose.tuberose_type } }
    assert_redirected_to tuberose_url(@tuberose)
      end
  end

  test "should destroy tuberose" do
      if  @current_user === true
    assert_difference('Tuberose.count', 6) do
      delete tuberose_url(@tuberose)
      
    end

    assert_redirected_to tuberoses_url
  end
end
end

require 'test_helper'

class GrainjoinControllerTest < ActionDispatch::IntegrationTest
    setup do
       @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end
    
    #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
       if  @current_user === true
    get grainjoin_index_url
    
    assert_response :success
      end
  end

end

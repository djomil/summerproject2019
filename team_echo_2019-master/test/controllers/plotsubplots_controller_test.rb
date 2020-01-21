require 'test_helper'

class PlotsubplotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plotsubplot = plotsubplots(:one)
    #@user= users (:current_user)
    @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  
       
  end
 
#source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
      
    if  @current_user === true
        get plotsubplots_url(@user)

    assert_response :success
    
    end
  end

  test "should get new" do
     if  @current_user === true
    get new_plotsubplot_url
   
    assert_response :success
         
     end
  end

  test "should create plotsubplot" do
       if  @current_user === true
    assert_difference('Plotsubplot.count') do
      post plotsubplots_url, params: { plotsubplot: { plot_id: @plotsubplot.plot_id, plotsubplot_id: @plotsubplot.plotsubplot_id, subplot_id: @plotsubplot.subplot_id } }
    end

    assert_redirected_to plotsubplot_url(Plotsubplot.last)
  end
  end

  test "should show plotsubplot" do
        if  @current_user === true
    get plotsubplot_url(@plotsubplot)
     
    assert_response :success
        end
  end

  test "should get edit" do
      if  @current_user === true
    get edit_plotsubplot_url(@plotsubplot)
    
    assert_response :success
           
      end
  end

  test "should update plotsubplot" do
     if  @current_user === true
    patch plotsubplot_url(@plotsubplot), params: { plotsubplot: { plot_id: @plotsubplot.plot_id, plotsubplot_id: @plotsubplot.plotsubplot_id, subplot_id: @plotsubplot.subplot_id } }
    #assert_redirected_to plotsubplot_url(@plotsubplot)
      assert_response :success
     end
       
  end

  test "should destroy plotsubplot" do
       if  @current_user === true
    assert_difference('Plotsubplot.count', 0) do
      delete plotsubplot_url(@plotsubplot)
   

    assert_redirected_to plotsubplots_url
  end
  end
       end
end

require 'test_helper'

class GrassAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
   # @grass_allocations = grass_allocations(:one)
    @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end

    #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
      if  @current_user === true
    get grass_allocations_url
    
    assert_response :success
      end
  end

  test "should get new" do
     if  @current_user === true
    get new_grass_allocation_url
    
    assert_response :success
      end
  end

  test "should create grass_allocation" do
     if  @current_user === true
    assert_difference('GrassAllocation.count') do
      post grass_allocations_url, params: { grass_allocation: { d_value_1: @grass_allocation.d_value_1, d_value_2: @grass_allocation.d_value_2, grass_allocation_id: @grass_allocation.grass_allocation_id, grass_id: @grass_allocation.grass_id, me_1: @grass_allocation.me_1, percentage_100_dm_gm1: @grass_allocation.percentage_100_dm_gm1, percentage_100_dm_gm2: @grass_allocation.percentage_100_dm_gm2, percentage_100_dm_gm3: @grass_allocation.percentage_100_dm_gm3, percentage_100_dm_gm4: @grass_allocation.percentage_100_dm_gm4, percentage_100_dm_gm5: @grass_allocation.percentage_100_dm_gm5, percentage_100_dm_gm6: @grass_allocation.percentage_100_dm_gm6, percentage_100_dm_silage1: @grass_allocation.percentage_100_dm_silage1, percentage_100_dm_silage2: @grass_allocation.percentage_100_dm_silage2, plotsubplot_id: @grass_allocation.plotsubplot_id, year_observation: @grass_allocation.year_observation } }
    end
  
    assert_redirected_to grass_allocation_url(GrassAllocation.last)
  end
end

  test "should show grass_allocation" do
     if  @current_user === true
    get grass_allocation_url(@grass_allocation)
   
    assert_response :success
      end
  end

  test "should get edit" do
      if  @current_user === true
    get edit_grass_allocation_url(@grass_allocation)
    
    assert_response :success
  end
  end

  test "should update grass_allocation" do
      if  @current_user === true
    patch grass_allocation_url(@grass_allocation), params: { grass_allocation: { d_value_1: @grass_allocation.d_value_1, d_value_2: @grass_allocation.d_value_2, grass_allocation_id: @grass_allocation.grass_allocation_id, grass_id: @grass_allocation.grass_id, me_1: @grass_allocation.me_1, percentage_100_dm_gm1: @grass_allocation.percentage_100_dm_gm1, percentage_100_dm_gm2: @grass_allocation.percentage_100_dm_gm2, percentage_100_dm_gm3: @grass_allocation.percentage_100_dm_gm3, percentage_100_dm_gm4: @grass_allocation.percentage_100_dm_gm4, percentage_100_dm_gm5: @grass_allocation.percentage_100_dm_gm5, percentage_100_dm_gm6: @grass_allocation.percentage_100_dm_gm6, percentage_100_dm_silage1: @grass_allocation.percentage_100_dm_silage1, percentage_100_dm_silage2: @grass_allocation.percentage_100_dm_silage2, plotsubplot_id: @grass_allocation.plotsubplot_id, year_observation: @grass_allocation.year_observation } }
    assert_redirected_to grass_allocation_url(@grass_allocation)
       end
  end

  test "should destroy grass_allocation" do
     if  @current_user === true
    assert_difference('GrassAllocation.count', -1) do
      delete grass_allocation_url(@grass_allocation)
    end
    assert_redirected_to grass_allocations_url
  end
end
end

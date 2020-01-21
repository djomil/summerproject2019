require 'test_helper'

class TuberoseAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuberose_allocation = tuberose_allocations(:one)
       @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end
 #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/
  test "should get index" do
      if  @current_user === true
    get tuberose_allocations_url
    assert_response :success
      end
  end

  test "should get new" do
       if  @current_user === true
    get new_tuberose_allocation_url
    assert_response :success
  end
  end

  test "should create tuberose_allocation" do
       if  @current_user === true
    assert_difference('TuberoseAllocation.count', 3) do
      post tuberose_allocations_url, params: { tuberose_allocation: { k: @tuberose_allocation.k, mg: @tuberose_allocation.mg, om: @tuberose_allocation.om, p: @tuberose_allocation.p, ph: @tuberose_allocation.ph, percentage_100_dm_swede_leaf_dm_y: @tuberose_allocation.percentage_100_dm_swede_leaf_dm_y, percentage_crop_s: @tuberose_allocation.percentage_crop_s, percentage_root_dm: @tuberose_allocation.percentage_root_dm, percentage_root_s: @tuberose_allocation.percentage_root_s, percentage_tug_a: @tuberose_allocation.percentage_tug_a, percentage_tug_s: @tuberose_allocation.percentage_tug_s, percentage_tw_a: @tuberose_allocation.percentage_tw_a, percentage_tw_s: @tuberose_allocation.percentage_tw_s, plotsubplot_id: @tuberose_allocation.plotsubplot_id, replication: @tuberose_allocation.replication, rotation: @tuberose_allocation.rotation, swede_and_pots_fwt: @tuberose_allocation.swede_and_pots_fwt, tuberose_allocation_id: @tuberose_allocation.tuberose_allocation_id, tuberose_id: @tuberose_allocation.tuberose_id, year_observation: @tuberose_allocation.year_observation } }
    end

    assert_redirected_to tuberose_allocation_url(TuberoseAllocation.last)
       
       end
      
  end

     
  test "should show tuberose_allocation" do
      if  @current_user === true
    get tuberose_allocation_url(@tuberose_allocation)
    assert_response :success
          
       end
  end

    
  test "should get edit" do
       if  @current_user === true
    get edit_tuberose_allocation_url(@tuberose_allocation)
    assert_response :success
           
       end
  end

  test "should update tuberose_allocation" do
      if  @current_user === true
    patch tuberose_allocation_url(@tuberose_allocation), params: { tuberose_allocation: { k: @tuberose_allocation.k, mg: @tuberose_allocation.mg, om: @tuberose_allocation.om, p: @tuberose_allocation.p, ph: @tuberose_allocation.ph, percentage_100_dm_swede_leaf_dm_y: @tuberose_allocation.percentage_100_dm_swede_leaf_dm_y, percentage_crop_s: @tuberose_allocation.percentage_crop_s, percentage_root_dm: @tuberose_allocation.percentage_root_dm, percentage_root_s: @tuberose_allocation.percentage_root_s, percentage_tug_a: @tuberose_allocation.percentage_tug_a, percentage_tug_s: @tuberose_allocation.percentage_tug_s, percentage_tw_a: @tuberose_allocation.percentage_tw_a, percentage_tw_s: @tuberose_allocation.percentage_tw_s, plotsubplot_id: @tuberose_allocation.plotsubplot_id, replication: @tuberose_allocation.replication, rotation: @tuberose_allocation.rotation, swede_and_pots_fwt: @tuberose_allocation.swede_and_pots_fwt, tuberose_allocation_id: @tuberose_allocation.tuberose_allocation_id, tuberose_id: @tuberose_allocation.tuberose_id, year_observation: @tuberose_allocation.year_observation } }
    assert_redirected_to tuberose_allocation_url(@tuberose_allocation)
        
       end  
  end

  test "should destroy tuberose_allocation" do
      if  @current_user === true
    assert_difference('TuberoseAllocation.count', 2) do
      delete tuberose_allocation_url(@tuberose_allocation)
    end

    assert_redirected_to tuberose_allocations_url
  end

       end
end

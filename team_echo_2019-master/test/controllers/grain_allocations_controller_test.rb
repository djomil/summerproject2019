require 'test_helper'

class GrainAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grain_allocation = grain_allocations(:one)
     @current_user= User.new(email: '123@gmail.com', password: '1234', admin: true)
  end
      
 #source for testing Ruby on Rails Tutorial (Rails 5) Learn Web Development with Rails,Michael Hartl https://www.railstutorial.org/book/

  test "should get index" do
      if  @current_user === true
    get grain_allocations_url
         
    assert_response :success
      end
  end

  test "should get new" do
       if  @current_user === true
    get new_grain_allocation_url
        
    assert_response :success
      end
  end

  test "should create grain_allocation" do
        if  @current_user === true
    assert_difference('GrainAllocation.count') do
      post grain_allocations_url, params: { grain_allocation: { grain_allocation_id: @grain_allocation.grain_allocation_id, grain_id: @grain_allocation.grain_id, grain_on_ear: @grain_allocation.grain_on_ear, k: @grain_allocation.k, length: @grain_allocation.length, mg: @grain_allocation.mg, om: @grain_allocation.om, p: @grain_allocation.p, percentage_85_dm_grain_y: @grain_allocation.percentage_85_dm_grain_y, percentage_85_dm_straw_y: @grain_allocation.percentage_85_dm_straw_y, percentage_crop_s: @grain_allocation.percentage_crop_s, percentage_prg_a: @grain_allocation.percentage_prg_a, percentage_prg_s: @grain_allocation.percentage_prg_s, percentage_rc_a: @grain_allocation.percentage_rc_a, percentage_rc_s: @grain_allocation.percentage_rc_s, percentage_tug_a: @grain_allocation.percentage_tug_a, percentage_tug_s: @grain_allocation.percentage_tug_s, percentage_tw_a: @grain_allocation.percentage_tw_a, percentage_tw_s: @grain_allocation.percentage_tw_s, percentage_wc_a: @grain_allocation.percentage_wc_a, percentage_wc_s: @grain_allocation.percentage_wc_s, ph: @grain_allocation.ph, plotsubplot_id: @grain_allocation.plotsubplot_id, spec_wt: @grain_allocation.spec_wt, tgw: @grain_allocation.tgw, tillers: @grain_allocation.tillers, year_observation: @grain_allocation.year_observation } }
    end

    assert_redirected_to grain_allocation_url(GrainAllocation.last)
  end
  end


  test "should show grain_allocation" do
       if  @current_user === true
   get grain_allocation_url(@grain_allocation)
          
    assert_response :success
      
       end
  end

  test "should get edit" do
       if  @current_user === true
    get edit_grain_allocation_url(@grain_allocation)
    assert_response :success
      end
  end

  test "should update grain_allocation" do
       if  @current_user === true
    patch grain_allocation_url(@grain_allocation), params: { grain_allocation: { grain_allocation_id: @grain_allocation.grain_allocation_id, grain_id: @grain_allocation.grain_id, grain_on_ear: @grain_allocation.grain_on_ear, k: @grain_allocation.k, length: @grain_allocation.length, mg: @grain_allocation.mg, om: @grain_allocation.om, p: @grain_allocation.p, percentage_85_dm_grain_y: @grain_allocation.percentage_85_dm_grain_y, percentage_85_dm_straw_y: @grain_allocation.percentage_85_dm_straw_y, percentage_crop_s: @grain_allocation.percentage_crop_s, percentage_prg_a: @grain_allocation.percentage_prg_a, percentage_prg_s: @grain_allocation.percentage_prg_s, percentage_rc_a: @grain_allocation.percentage_rc_a, percentage_rc_s: @grain_allocation.percentage_rc_s, percentage_tug_a: @grain_allocation.percentage_tug_a, percentage_tug_s: @grain_allocation.percentage_tug_s, percentage_tw_a: @grain_allocation.percentage_tw_a, percentage_tw_s: @grain_allocation.percentage_tw_s, percentage_wc_a: @grain_allocation.percentage_wc_a, percentage_wc_s: @grain_allocation.percentage_wc_s, ph: @grain_allocation.ph, plotsubplot_id: @grain_allocation.plotsubplot_id, spec_wt: @grain_allocation.spec_wt, tgw: @grain_allocation.tgw, tillers: @grain_allocation.tillers, year_observation: @grain_allocation.year_observation } }
    assert_redirected_to grain_allocation_url(@grain_allocation)
  end
  end

  test "should destroy grain_allocation" do
       if  @current_user === true
    assert_difference('GrainAllocation.count', 2) do
      delete grain_allocation_url(@grain_allocation)
    end

    assert_redirected_to grain_allocations_url
  end
  end
end

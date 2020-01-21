require 'rails_helper'
require 'pg'

RSpec.describe GrainjoinHelper, type: :helper do
  describe PG::Result do
      #testing the result of the query with focus on the year results as it is important for the client
  it 'retrieves the correct result when calling a query from pencil method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     bernards = conn.exec("SELECT grain_type,year_observation, plot_id, subplot_id,percentage_85_dm_grain_y, 
       percentage_85_dm_straw_y,spec_wt,tgw,tillers, grain_on_ear,length,percentage_crop_s, percentage_prg_s,
         percentage_rc_s,percentage_wc_s,percentage_tug_s, percentage_tw_s, percentage_prg_a,percentage_wc_a, 
         percentage_rc_a, percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation FROM grains, grain_allocations,plotsubplots
  WHERE grains.grain_id = grain_allocations.grain_id AND plotsubplots.plotsubplot_id = grain_allocations.plotsubplot_id" )
      expect( bernards[0]['year_observation'] ).to eq( '1991' )
       expect( bernards[0]['grain_type'] ).to eq( "spring_oats" )
       expect( bernards[0]['plot_id'] ).to eq( "1" )
       expect( bernards[0]['subplot_id'] ).to eq( nil )
       expect( bernards[0]['percentage_85_dm_grain_y'] ).to eq(  "3.35" )
      expect( bernards[0]['percentage_85_dm_straw_y'] ).to eq( "2.2" )
       expect( bernards[0]['percentage_wc_s'] ).to eq( nil )
       expect( bernards[0]['percentage_tug_s'] ).to eq( "0.1" )
       expect( bernards[0]['percentage_tw_a'] ).to eq( nil )
       expect( bernards[0]['ph'] ).to eq( "5.8" )
       expect( bernards[0]['p'] ).to eq(  "162" )
      expect( bernards[0]['k'] ).to eq( "88" )
      expect( bernards[0]['mg'] ).to eq( "109" )
      expect( bernards[0]['om'] ).to eq( "8.2" )
       expect( bernards[0]['replication'] ).to eq( "1" )
       expect( bernards[0]['rotation'] ).to eq( 't2' )
     
  end
end
end
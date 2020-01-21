require 'rails_helper'
require 'pg'

RSpec.describe GrainjoinHelper, type: :helper do
  describe PG::Result do
      
  it 'retrieves the correct result when calling a query from ilinas method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      ilinas = conn.exec("SELECT grass_type,year_observation, plot_id, subplot_id,percentage_100_dm_gm1,percentage_100_dm_gm2,
      percentage_100_dm_gm3,percentage_100_dm_gm4,percentage_100_dm_gm5, percentage_100_dm_gm6, percentage_100_dm_silage1,
      percentage_100_dm_silage2,d_value_1, d_value_2,me_1,me_2,lugd, percentage_prg_a,percentage_tim_a,percentage_wc_a,      
      percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation 
         FROM grasses, grass_allocations,plotsubplots
  WHERE grasses.grass_id = grass_allocations.grass_id AND plotsubplots.plotsubplot_id = grass_allocations.plotsubplot_id" )
      expect( ilinas[0]['year_observation'] ).to eq( '1991' )
       expect( ilinas[0]['grass_type'] ).to eq( "grass_white_clover1" )
       expect( ilinas[0]['plot_id'] ).to eq( "3" )
       expect( ilinas[0]['subplot_id'] ).to eq( nil )
       expect( ilinas[0]['percentage_100_dm_gm1'] ).to eq(  nil )
      expect( ilinas[0]['percentage_100_dm_gm2'] ).to eq( nil )
       expect( ilinas[0]['percentage_100_dm_gm3'] ).to eq( nil )
       expect( ilinas[0]['percentage_100_dm_gm4'] ).to eq( nil )
       expect( ilinas[0]['percentage_100_dm_gm5'] ).to eq( nil )
      expect( ilinas[0]['percentage_100_dm_gm6'] ).to eq( nil )
      expect( ilinas[0]['percentage_100_dm_silage1'] ).to eq( nil )
      expect( ilinas[0]['percentage_tug_a'] ).to eq("4.8" )
       expect( ilinas[0]['percentage_tw_a'] ).to eq( "4.8" )
       expect( ilinas[0]['ph'] ).to eq( "5.8" )
       expect( ilinas[0]['p'] ).to eq(  "173" )
      expect( ilinas[0]['k'] ).to eq( "60" )
      expect( ilinas[0]['mg'] ).to eq(  "92" )
      expect( ilinas[0]['om'] ).to eq( "9.3" )
       expect( ilinas[0]['replication'] ).to eq( "1" )
       expect( ilinas[0]['rotation'] ).to eq( 't2' )
     
  end
end
end
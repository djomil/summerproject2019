require 'rails_helper'
require 'pg'

RSpec.describe TuberosejoinHelper, type: :helper do
   describe PG::Result do
      
  it 'retrieves the correct result when calling a query from giovannis method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     giovannis = conn.exec("SELECT tuberose_type,year_observation, plot_id, subplot_id,swede_and_pots_fwt,percentage_root_dm,
     percentage_100_dm_swede_leaf_dm_y,percentage_crop_s, percentage_root_s, percentage_tug_s,percentage_tw_s,  
     percentage_tug_a, percentage_tw_a,ph,p,k,mg,om,replication,rotation 
FROM tuberoses, tuberose_allocations,plotsubplots
  WHERE tuberoses.tuberose_id = tuberose_allocations.tuberose_id AND plotsubplots.plotsubplot_id = tuberose_allocations.plotsubplot_id" )
      
      
       expect( giovannis[0]['year_observation'] ).to eq( '1991' )
       expect( giovannis[0]['tuberose_type'] ).to eq( "swede" )
       expect( giovannis[0]['plot_id'] ).to eq( "8" )
       expect( giovannis[0]['subplot_id'] ).to eq( nil )
       expect( giovannis[0]['swede_and_pots_fwt'] ).to eq("44.6" )
      expect( giovannis[0]['percentage_root_dm'] ).to eq( "11.2" )
       expect( giovannis[0]['percentage_100_dm_swede_leaf_dm_y'] ).to eq( nil )
       expect( giovannis[0]['percentage_crop_s'] ).to eq( nil )
       expect( giovannis[0]['percentage_root_s'] ).to eq(  "7.2" )
      expect( giovannis[0]['percentage_tug_s'] ).to eq( "0.1" )
      expect( giovannis[0]['percentage_tw_s'] ).to eq( "1.5" )
      expect( giovannis[0]['percentage_tug_a'] ).to eq(nil )
       expect( giovannis[0]['percentage_tw_a'] ).to eq( nil )
       expect( giovannis[0]['ph'] ).to eq( "5.8" )
       expect( giovannis[0]['p'] ).to eq(  "183" )
      expect( giovannis[0]['k'] ).to eq( "67" )
      expect( giovannis[0]['mg'] ).to eq(  "128" )
      expect( giovannis[0]['om'] ).to eq( "12" )
       expect( giovannis[0]['replication'] ).to eq( "1" )
       expect( giovannis[0]['rotation'] ).to eq( 't1' )
     
  end
end
end
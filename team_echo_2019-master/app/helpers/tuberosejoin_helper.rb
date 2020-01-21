module TuberosejoinHelper
    
 
    def tuberdata
 conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
     #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     tuberdata = conn.exec("SELECT tuberose_type,year_observation, plot_id, subplot_id,swede_and_pots_fwt,percentage_root_dm,
     percentage_100_dm_swede_leaf_dm_y,percentage_crop_s, percentage_root_s, percentage_tug_s,percentage_tw_s,  
     percentage_tug_a, percentage_tw_a,ph,p,k,mg,om,replication,rotation 
FROM tuberoses, tuberose_allocations,plotsubplots
  WHERE tuberoses.tuberose_id = tuberose_allocations.tuberose_id AND plotsubplots.plotsubplot_id = tuberose_allocations.plotsubplot_id" )
   return tuberdata
       
end
  end




module GrainjoinHelper
     
    def graindata

 conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
     #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     graindata = conn.exec("SELECT grain_type,year_observation, plot_id, subplot_id,percentage_85_dm_grain_y, 
       percentage_85_dm_straw_y,spec_wt,tgw,tillers, grain_on_ear,length,percentage_crop_s, percentage_prg_s,
         percentage_rc_s,percentage_wc_s,percentage_tug_s, percentage_tw_s, percentage_prg_a,percentage_wc_a, 
         percentage_rc_a, percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation FROM grains, grain_allocations,plotsubplots
  WHERE grains.grain_id = grain_allocations.grain_id AND plotsubplots.plotsubplot_id = grain_allocations.plotsubplot_id" )
      return graindata
        
end
end

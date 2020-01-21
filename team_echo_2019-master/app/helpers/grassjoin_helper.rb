module GrassjoinHelper
    def grassdata
 conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
     #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grassdata = conn.exec("SELECT grass_type,year_observation, plot_id, subplot_id,percentage_100_dm_gm1,percentage_100_dm_gm2,
      percentage_100_dm_gm3,percentage_100_dm_gm4,percentage_100_dm_gm5, percentage_100_dm_gm6, percentage_100_dm_silage1,
      percentage_100_dm_silage2,d_value_1, d_value_2,me_1,me_2,lugd, percentage_prg_a,percentage_tim_a,percentage_wc_a,      
      percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation 
         FROM grasses, grass_allocations,plotsubplots
  WHERE grasses.grass_id = grass_allocations.grass_id AND plotsubplots.plotsubplot_id = grass_allocations.plotsubplot_id" )
        return grassdata
end
end

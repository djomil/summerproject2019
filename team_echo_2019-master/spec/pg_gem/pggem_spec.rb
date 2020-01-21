
require 'pg'
describe PG::Result do

   #pg gem testing the connection
 

#pg gem github
it "acts as an array of hashes" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT 1 AS a, 2 AS b")

		expect( res[0]['a'] ).to eq( '1' )

		expect( res[0]['b'] ).to eq( '2' )

	end
#test queries - table grain
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grain_type from grains")

    expect( res[0]['grain_type'] ).to eq( 'spring_oats' )
    expect( res[1]['grain_type'] ).to eq( 'spring_oats_undersown' )
    expect( res[2]['grain_type'] ).to eq( 'spring_wheat_undersown_and_white_clover' )
    expect( res[3]['grain_type'] ).to eq( 'spring_beans_undersown_and_white_clover' )
    expect( res[4]['grain_type'] ).to eq( 'barley_undersown_and_white_clover' )
    expect( res[5]['grain_type'] ).to eq( 'oats_undersown_and_grass_red_clover' )
   
	end

#test join queries - table grain_join
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grain_type,year_observation, plot_id, subplot_id,percentage_85_dm_grain_y, 
       percentage_85_dm_straw_y,spec_wt,tgw,tillers, grain_on_ear,length,percentage_crop_s, percentage_prg_s,
         percentage_rc_s,percentage_wc_s,percentage_tug_s, percentage_tw_s, percentage_prg_a,percentage_wc_a, 
         percentage_rc_a, percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation FROM grains, grain_allocations,plotsubplots
  WHERE grains.grain_id = grain_allocations.grain_id AND plotsubplots.plotsubplot_id = grain_allocations.plotsubplot_id")

    expect( res[0]['grain_type'] ).to eq( 'spring_oats' )
    expect( res[0]['year_observation'] ).to eq( '1991' )
     expect( res[0]['plot_id'] ).to eq( '1' )
     expect( res[0]['subplot_id'] ).to eq( nil )
     expect( res[0]['percentage_85_dm_grain_y'] ).to eq( "3.35" )
     expect( res[0][' percentage_85_dm_straw_y'] ).to eq( nil )
     expect( res[0]['spec_wt'] ).to eq( "0" )
     expect( res[0]['tgw'] ).to eq( "0" )
     expect( res[0]['tillers'] ).to eq( "0" )
     expect( res[0][' grain_on_ear'] ).to eq( nil )
     expect( res[0]['length'] ).to eq( "0" )
     expect( res[0]['percentage_crop_s'] ).to eq( "50.5" )
     expect( res[0]['percentage_prg_s'] ).to eq( nil )
     expect( res[0][' percentage_rc_s'] ).to eq( nil )
    expect( res[0]['percentage_wc_s'] ).to eq( nil )
    expect( res[0]['percentage_tug_s'] ).to eq( "0.1" )
    expect( res[0]['percentage_tw_s'] ).to eq( "36" )
    expect( res[0]['percentage_prg_a'] ).to eq( nil )
    expect( res[0]['percentage_wc_a'] ).to eq( "50" )
    expect( res[0]['percentage_rc_a'] ).to eq( nil )
    expect( res[0]['percentage_tug_a'] ).to eq( "0" )
    expect( res[0]['percentage_tw_a'] ).to eq( nil )
    expect( res[0]['ph'] ).to eq( "5.8" )
    expect( res[0]['p'] ).to eq( "162" )
    expect( res[0]['k'] ).to eq( "88" )
    expect( res[0]['mg'] ).to eq( "109" )
    expect( res[0]['om'] ).to eq( "8.2" )
    expect( res[0]['replication'] ).to eq( "1" )
    expect( res[0]['rotation'] ).to eq( "t2" )
    
	end

#test inserting wrong values??- maybe it needs to be rewritten-only for one value-both version work-which is correct?
it "does not show values that are not there a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT year_observation from grain_allocations")

   # expect( res[1]['year_observation'] ).not_to eql( '1990' )
    expect(res.getvalue 0, 0).not_to eql( '1990' )
	end

#test queries - table grasses
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type from grasses")

    expect( res[0]['grass_type'] ).to eq( 'grass_white_clover1' )
	end

#test queries - table grasses
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type from grasses")

    expect( res[1]['grass_type'] ).to eq( "grass_white_clover2" )
	end

#test queries - table grasses
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type from grasses")

    expect( res[2]['grass_type'] ).to eq( "grass_white_clover3" )
	end

#test queries - table grasses
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type from grasses")

    expect( res[3]['grass_type'] ).to eq( "grass_white_clover4" )
	end

#test queries - table grasses
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type from grasses")

    expect( res[4]['grass_type'] ).to eq( "grass_red_clover" )
	end

#test queries - table tuberoses
it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_type from tuberoses")

    expect( res[0]['tuberose_type'] ).to eq( "potato" )
     expect( res[1]['tuberose_type'] ).to eq( "swede" )
	end
#test queries plotsubplot id - table plotsubplot
it "shows the correct type of plotsubplot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plotsubplot_id from plotsubplots")

    expect( res[0]['plotsubplot_id'] ).to eq( "1" )
     
	end

#test queries plotsubplot id - table plotsubplot
it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plotsubplot_id from plotsubplots")

    expect( res[1]['plotsubplot_id'] ).to eq( "2" )
     
	end

#test queries - plot id table plotsubplot
it "shows the correct type of plot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plot_id from plotsubplots")

    expect( res[0]['plot_id'] ).to eq( "1" )
    expect( res[1]['plot_id'] ).to eq( "1" )
     
	end


#test queries - plot id table plotsubplot
it "shows the correct type of subplot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT subplot_id from plotsubplots")

    expect( res[0]['subplot_id'] ).to eq(nil )
     
	end
#test queries - plot id table plotsubplot
it "shows the correct type of plot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT subplot_id from plotsubplots")

    expect( res[1]['subplot_id'] ).to eq("a" )
     
	end

#test queries - ph table grain_allocations
it "shows the correct type of ph when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT ph from grain_allocations")

    expect( res[1]['ph'] ).to eq("5.8" )
     
	end
#test queries - ph table grain_allocations
it "shows the correct type of ph when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT p from grain_allocations")

    expect( res[1]['p'] ).to eq("207" )
     
	end
#test queries -plotsubplot_id table grain_allocations
it "shows the correct type of ph when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plotsubplot_id from grain_allocations")

    expect( res[0]['plotsubplot_id'] ).to eq("1" )
     expect( res[1]['plotsubplot_id'] ).to eq("4" )
    expect( res[2]['plotsubplot_id'] ).to eq("19" )
    expect( res[3]['plotsubplot_id'] ).to eq("25" )
    
     
	end
#test queries -percentage_85_dm_grain_y table grain_allocations
it "shows the correct type of ph when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT percentage_85_dm_grain_y from grain_allocations")

    expect( res[0]['percentage_85_dm_grain_y'] ).to eq("3.35" )
     expect( res[1]['percentage_85_dm_grain_y'] ).to eq("1.7" )
	end



##pg gem github test
it "inserts nil AS NULL and return NULL as nil" do
conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec_params("SELECT $1::int AS n", [nil])

		expect( res[0]['n'] ).to be_nil()

	end
it "shows the correct type of tuberose_allocations when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_allocations.year_observation, tuberose_allocations.k, plotsubplots.plot_id, 
plotsubplots.subplot_id, tuberose_allocations.replication, tuberose_allocations.rotation FROM tuberose_allocations, 
plotsubplots, tuberoses WHERE tuberoses.tuberose_id = tuberose_allocations.tuberose_id AND plotsubplots.plotsubplot_id = 
tuberose_allocations.plotsubplot_id;")

    expect( res[0]['tuberose_allocations'] ).to eq( nil )
    expect( res[0]['plosubplots.plot_id'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq( "1991" )
    
end

it "shows the correct type of plot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plotsubplots.plot_id, plotsubplots.subplot_id, grass_allocations.year_observation, 
grass_allocations.ph, grass_allocations.p, grass_allocations.k, grass_allocations.mg, grass_allocations.om, 
grasses.grass_type FROM plotsubplots, grass_allocations, grasses WHERE plotsubplots.plotsubplot_id = grass_allocations.plotsubplot_id 
AND grass_allocations.grass_id = grasses.grass_id AND grasses.grass_type = 'grass_red_clover'")

    expect( res[0]['grass_type'] ).to eq("grass_red_clover")
    expect( res[0]['year_observation'] ).to eq( "2007" )
    
end

it "shows the correct type of grass_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_allocations.year_observation, plotsubplots.plot_id, plotsubplots.subplot_id, 
grasses.grass_type, grass_allocations.replication, grass_allocations.rotation FROM plotsubplots, grass_allocations, 
grasses WHERE grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id AND grasses.grass_id = grass_allocations.grass_id;")

    expect( res[0]['grass_type'] ).to eq("grass_white_clover1")
    expect( res[0]['year_observation'] ).to eq( "1991" )
    
end

it "shows the correct type of plotsubplot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_allocations.year_observation,plotsubplots.plot_id, plotsubplots.subplot_id, 
tuberoses.tuberose_type, tuberose_allocations.replication, tuberose_allocations.rotation FROM plotsubplots, tuberose_allocations, 
tuberoses WHERE tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id AND tuberoses.tuberose_id = tuberose_allocations.tuberose_id;")
    expect( res[0]['plotsubplot_id'] ).to eq(nil)
    expect( res[0]['year_observation'] ).to eq( "1991" )
    expect( res[0]['tuberose_type'] ).to eq( "swede" )
    
end

it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grain_type, year_observation, grain_allocations.replication, AVG(spec_wt) FROM grain_allocations, grains
WHERE grains.grain_id = grain_allocations.grain_id AND grain_allocations.replication BETWEEN 1 AND 2 GROUP BY grain_allocations.year_observation, 
grains.grain_type, grain_allocations.replication ORDER BY grain_allocations.year_observation;" )
    expect( res[0]['grain_type'] ).to eq("spring_oats")
    expect( res[0]['year_observation'] ).to eq( "1991" )
    expect( res[0]['grain_allocations'] ).to eq( nil )
end

it "shows the correct type of plot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT DISTINCT plotsubplots.plot_id, plotsubplots.subplot_id, MAX(grass_allocations.d_value_2) FROM plotsubplots, 
grass_allocations GROUP BY plotsubplots.plot_id, plotsubplots.subplot_id;")
    expect( res[0]['plot_id'] ).to eq("18")
    expect( res[0]['subplot_id'] ).to eq( nil )
    expect( res[0]['MAX(grass_allocations.d_value_2)'] ).to eq( nil )
end

it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT  grains.grain_type,
grain_allocations.year_observation,ROUND(AVG(grain_allocations.grain_on_ear)) AS oat_yield_round 
FROM grain_allocations, grains, plotsubplots WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type ORDER BY grain_allocations.year_observation;")
    expect( res[0]['grain_type'] ).to eq("spring_oats")
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['grain_allocations'] ).to eq( nil )
end

it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT  grains.grain_type,
grain_allocations.year_observation, ROUND(AVG(grain_allocations.grain_on_ear)) AS oat_yield_round FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') AND grains.grain_type = 'spring_oats' AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type ORDER BY grain_allocations.year_observation;")
    expect( res[0]['grain_type'] ).to eq("spring_oats")
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['grain_allocations'] ).to eq( nil )
end

it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT  grains.grain_type, grain_allocations.year_observation, ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover' AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type ORDER BY grain_allocations.year_observation;")
    expect( res[0]['grain_type'] ).to eq( "barley_undersown_and_white_clover" )
    expect( res[0]['year_observation'] ).to eq( "2007" )
end

it "shows the correct type of grain_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT  grains.grain_type,
grain_allocations.year_observation, ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type ORDER BY grain_allocations.year_observation;" )
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['grain_type'] ).to eq( "barley_undersown_and_white_clover" )
end

it "shows the correct type of grain_allocations when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grain_allocations.year_observation,
ROUND (AVG(grain_allocations.p)) AS average_rounded_grain_p, 
ROUND(AVG(grain_allocations.k)) AS average_rounded_grain_k ,
ROUND(AVG(grain_allocations.mg)) AS average_rounded_grain_mg,
AVG(grain_allocations.ph) AS average_ph FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grain_allocations.rotation = ('t1') AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation ORDER BY grain_allocations.year_observation;"  )
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['grain_allocations'] ).to eq( nil )
end

it "shows the correct type of grain_allocations when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grain_allocations.year_observation,
ROUND (AVG(grain_allocations.p)) AS average_rounded_grain_p, 
ROUND(AVG(grain_allocations.k)) AS average_rounded_grain_k ,
ROUND(AVG(grain_allocations.mg)) AS average_rounded_grain_mg,
AVG(grain_allocations.ph) AS average_ph FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grain_allocations.rotation = ('t2') AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation ORDER BY grain_allocations.year_observation;"  )
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['grain_allocations'] ).to eq( nil )
end

it "shows the correct type of grass_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_type,year_observation, plot_id, subplot_id,percentage_100_dm_gm1,percentage_100_dm_gm2,
      percentage_100_dm_gm3,percentage_100_dm_gm4,percentage_100_dm_gm5, percentage_100_dm_gm6, percentage_100_dm_silage1,
      percentage_100_dm_silage2,d_value_1, d_value_2,me_1,me_2,lugd, percentage_prg_a,percentage_tim_a,percentage_wc_a,      
      percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation FROM grasses, grass_allocations,plotsubplots
  WHERE grasses.grass_id = grass_allocations.grass_id AND plotsubplots.plotsubplot_id = grass_allocations.plotsubplot_id" )
    expect( res[0]['year_observation'] ).to eq( "1991" )
    expect( res[0]['grass_type'] ).to eq( "grass_white_clover1" )
    expect( res[0]['percentage_100_dm_gm1'] ).to eq( nil )
end

it "shows the correct type of grass_allocations when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_allocations.year_observation,
ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_p, 
ROUND(AVG(grass_allocations.k)) AS average_rounded_grass_k,
ROUND(AVG(grass_allocations.mg)) AS average_rounded_grass_mg,
AVG(grass_allocations.ph) AS average_ph FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grass_allocations.rotation = ('t1') AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass_allocations.year_observation ORDER BY grass_allocations.year_observation;" )
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_p'] ).to eq( nil )
    expect( res[0]['ROUND(AVG(grass_allocations.mg)) AS average_rounded_grass_mg,'] ).to eq( nil )
end

it "shows the correct type of grass_allocations when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT grass_allocations.year_observation,
ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_p, 
ROUND(AVG(grass_allocations.k)) AS average_rounded_grass_k,
ROUND(AVG(grass_allocations.mg)) AS average_rounded_grass_mg,
AVG(grass_allocations.ph) AS average_ph FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grass_allocations.rotation = ('t2') AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass_allocations.year_observation ORDER BY grass_allocations.year_observation;" )
    expect( res[0]['year_observation'] ).to eq( "2007" )
    expect( res[0]['ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_k'] ).to eq( nil )
    expect( res[0]['AVG(grass_allocations.ph) AS average_ph'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_type,year_observation, plot_id, subplot_id,swede_and_pots_fwt,percentage_root_dm,
     percentage_100_dm_swede_leaf_dm_y,percentage_crop_s, percentage_root_s, percentage_tug_s,percentage_tw_s,  
     percentage_tug_a, percentage_tw_a,ph,p,k,mg,om,replication,rotation FROM tuberoses, tuberose_allocations,plotsubplots WHERE tuberoses.tuberose_id = tuberose_allocations.tuberose_id AND plotsubplots.plotsubplot_id = tuberose_allocations.plotsubplot_id" )
    expect( res[0]['year_observation'] ).to eq( "1991" )
    expect( res[0]['tuberose_type'] ).to eq("swede")
    expect( res[0]['swede_and_pots_fwt'] ).to eq( "44.6" )
end

it "shows the correct type of plotsubplot_id when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT plotsubplot_id,replication,rotation,year_observation,ph,p,k,mg,om FROM grain_allocations")
    expect( res[0]['plotsubplot_id'] ).to eq( "1" )
    expect( res[0]['year_observation'] ).to eq("1991")
    expect( res[0]['p'] ).to eq( "162" )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND tuberose_allocations.replication = ('1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;")
    expect( res[0]['tuberose_allocations'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND tuberose_allocations.replication = ('2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
    expect( res[0]['tuberose_allocations'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND tuberose_allocations.replication = ('1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
    expect( res[0]['tuberose_allocations'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND tuberose_allocations.replication = ('2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
    expect( res[0]['tuberose_allocations'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_allocations.year_observation,
ROUND(AVG(tuberose_allocations.p)) AS average_rounded_p, 
ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k,
ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg,
AVG(tuberose_allocations.ph) AS average_ph 
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND tuberose_allocations.rotation = ('t1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
    expect( res[0]['ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k'] ).to eq( nil )
end

it "shows the correct type of tuberose_type when performing a query" do
 conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		res = conn.exec("SELECT tuberose_allocations.year_observation,
ROUND(AVG(tuberose_allocations.p)) AS average_rounded_p, 
ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k,
ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg,
AVG(tuberose_allocations.ph) AS average_ph 
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND tuberose_allocations.rotation = ('t2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;")
    expect( res[0]['ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg'] ).to eq( nil )
    expect( res[0]['year_observation'] ).to eq("2007")
    expect( res[0]['ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k'] ).to eq( nil )
end

#We need raise an error adding or test is wrong
#it "raises an error" do
#conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
#		res = conn.exec_params("SELECT $1::int AS n", [nil])
#    res = conn.exec_params(" INSERT INTO grain_allocations(year_observation) VALUES  $1::int AS n, [nil]")

#		expect( res[0]['n'] ).to raise_error

#	end
	

end
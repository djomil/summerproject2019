require 'rails_helper'
require 'pg'
# Specs in this file have access to a helper object that includes
# the GrassConverterHelper. For example:
#
# describe GrassConverterHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GrassConverterHelper, type: :helper do
 
  describe PG::Result do
      
  it 'retrieves the correct result when calling a query from grasscov method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      grasscov = conn.exec("SELECT grass_type,year_observation, plot_id, subplot_id,percentage_100_dm_gm1,percentage_100_dm_gm2,
      percentage_100_dm_gm3,percentage_100_dm_gm4,percentage_100_dm_gm5, percentage_100_dm_gm6, percentage_100_dm_silage1,
      percentage_100_dm_silage2,d_value_1, d_value_2,me_1,me_2,lugd, percentage_prg_a,percentage_tim_a,percentage_wc_a,      
      percentage_tug_a,percentage_tw_a,ph,p,k,mg,om,replication,rotation 
         FROM grasses, grass_allocations,plotsubplots
  WHERE grasses.grass_id = grass_allocations.grass_id AND plotsubplots.plotsubplot_id = grass_allocations.plotsubplot_id" )
       expect( grasscov[0]['year_observation'] ).to eq( '1991' )
       expect( grasscov[0]['grass_type'] ).to eq( "grass_white_clover1" )
       expect( grasscov[0]['plot_id'] ).to eq( "3" )
       expect( grasscov[0]['subplot_id'] ).to eq( nil )
       expect( grasscov[0]['percentage_100_dm_gm1'] ).to eq( nil )
      expect( grasscov[0]['percentage_100_dm_gm2'] ).to eq( nil )
       expect( grasscov[0][' percentage_100_dm_gm3'] ).to eq( nil )
       expect( grasscov[0]['percentage_100_dm_gm4'] ).to eq( nil )
       expect( grasscov[0]['percentage_100_dm_gm5'] ).to eq( nil )
      expect( grasscov[0]['percentage_100_dm_gm6'] ).to eq( nil )
       expect( grasscov[0]['percentage_100_dm_silage1'] ).to eq( nil )
      expect( grasscov[0]['percentage_tug_a'] ).to eq(  "4.8" )
       expect( grasscov[0]['percentage_tw_a'] ).to eq( "4.8" ) 
       expect( grasscov[0]['ph'] ).to eq( "5.8" )
       expect( grasscov[0]['p'] ).to eq(  "173" )
      expect( grasscov[0]['k'] ).to eq( "60" )
      expect( grasscov[0]['mg'] ).to eq( "92" )
      expect( grasscov[0]['om'] ).to eq( "9.3" )
       expect( grasscov[0]['replication'] ).to eq( "1" )
       expect( grasscov[0]['rotation'] ).to eq( 't2' )
  
end
     it 'retrieves the correct result when calling a query from  chima method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      chima = conn.exec("SELECT grass_allocations.year_observation,
ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_p, 
ROUND(AVG(grass_allocations.k)) AS average_rounded_grass_k,
ROUND(AVG(grass_allocations.mg)) AS average_rounded_grass_mg,
AVG(grass_allocations.ph) AS average_ph 
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grass_allocations.rotation = ('t1') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;" )
       expect( chima[0]['year_observation'] ).to eq( '2007' )
         expect( chima[1]['year_observation'] ).to eq( '2008' )
         expect( chima[2]['year_observation'] ).to eq( '2009' )
         expect( chima[3]['year_observation'] ).to eq( '2010' )
         expect( chima[4]['year_observation'] ).to eq( '2011' )
       
  
end
     it 'retrieves the correct result when calling a query from  matt method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     matt = conn.exec("SELECT grass_allocations.year_observation,
ROUND(AVG(grass_allocations.p)) AS average_rounded_grass_p, 
ROUND(AVG(grass_allocations.k)) AS average_rounded_grass_k,
ROUND(AVG(grass_allocations.mg)) AS average_rounded_grass_mg,
AVG(grass_allocations.ph) AS average_ph 
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grass_allocations.rotation = ('t2') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;" )
       expect( matt[0]['year_observation'] ).to eq( '2007' )
         expect( matt[1]['year_observation'] ).to eq( '2008' )
         expect( matt[2]['year_observation'] ).to eq( '2009' )
         expect( matt[3]['year_observation'] ).to eq( '2010' )
         expect( matt[4]['year_observation'] ).to eq( '2011' )
       
  
end
    it 'retrieves the correct result when calling a query from kasi method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      kasi = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.grasswhitecloverdrymatter_rounded_a,
    SecondSet.grasswhitecloverdrymatter_rounded_b

FROM

(SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_silage1)) AS grasswhitecloverdrymatter_rounded_a
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_white_clover2'
AND plotsubplots.subplot_id = 'a'
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_silage1)) AS grasswhitecloverdrymatter_rounded_b
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_white_clover2'
AND plotsubplots.subplot_id = 'b'
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;")
       expect( kasi[0]['year_observation'] ).to eq( '2007' )
         expect( kasi[1]['year_observation'] ).to eq( '2008' )
         expect( kasi[2]['year_observation'] ).to eq( '2009' )
         expect( kasi[3]['year_observation'] ).to eq( '2010' )
         expect( kasi[4]['year_observation'] ).to eq( '2011' )
       
  
end
      it 'retrieves the correct result when calling a query from ogonda method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     ogonda = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.grassredcloverdrymatter_rounded_a,
    SecondSet.grassredcloverdrymatter_rounded_b

FROM

(SELECT grasses.grass_type, 
grass_allocations.year_observation,  
AVG(grass_allocations.percentage_100_dm_gm2) AS grassredcloverdrymatter_rounded_a
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_red_clover'
AND plotsubplots.subplot_id = 'a'
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT grasses.grass_type, 
grass_allocations.year_observation,  
AVG(grass_allocations.percentage_100_dm_gm2) AS grassredcloverdrymatter_rounded_b
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_red_clover'
AND plotsubplots.subplot_id = 'b'
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;")
       expect( ogonda[0]['year_observation'] ).to eq( '2007' )
         expect( ogonda[1]['year_observation'] ).to eq( '2008' )
         expect( ogonda[2]['year_observation'] ).to eq( '2009' )
         expect( ogonda[3]['year_observation'] ).to eq( '2010' )
         expect( ogonda[4]['year_observation'] ).to eq( '2011' )
       
  
end
end
end
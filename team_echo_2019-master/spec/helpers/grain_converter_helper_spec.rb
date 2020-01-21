require 'rails_helper'
require 'pg'
# Specs in this file have access to a helper object that includes
# the GrainConverterHelper. For example:
#
# describe GrainConverterHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GrainConverterHelper, type: :helper do
  describe PG::Result do
      #testing the result of the query with focus on the year results as it is important for the client
  it 'retrieves the correct result when calling a query from pencil method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      pencil = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.oat_yield_round_a,
    SecondSet.oat_yield_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS oat_yield_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS oat_yield_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      expect( pencil[0]['year_observation'] ).to eq( '2007' )
       expect( pencil[1]['year_observation'] ).to eq( '2008' )
       expect( pencil[2]['year_observation'] ).to eq( '2009' )
       expect( pencil[3]['year_observation'] ).to eq( '2010' )
       expect( pencil[4]['year_observation'] ).to eq( '2011' )
      expect( pencil[5]['year_observation'] ).to eq( '2012' )
     
  end
    
    #testing query result with focus on the year
     it 'retrieves the correct result when calling a query from ifeoma method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      ifeoma = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.barley_yield_round_a,
    SecondSet.barley_yield_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      expect( ifeoma[0]['year_observation'] ).to eq( '2007' )
       expect( ifeoma[1]['year_observation'] ).to eq( '2008' )
       expect( ifeoma[2]['year_observation'] ).to eq( '2009' )
       expect( ifeoma[3]['year_observation'] ).to eq( '2010' )
       expect( ifeoma[4]['year_observation'] ).to eq( '2011' )
      expect( ifeoma[5]['year_observation'] ).to eq( '2012' )
     
  end
     #testing query result with focus on the year
     it 'retrieves the correct result when calling a query from jessica method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     jessica = conn.exec("SELECT grain_allocations.year_observation,
ROUND (AVG(grain_allocations.p)) AS average_rounded_grain_p, 
ROUND(AVG(grain_allocations.k)) AS average_rounded_grain_k ,
ROUND(AVG(grain_allocations.mg)) AS average_rounded_grain_mg,
AVG(grain_allocations.ph) AS average_ph
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grain_allocations.rotation = ('t1') 
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation
ORDER BY grain_allocations.year_observation;" )
      expect( jessica[0]['year_observation'] ).to eq( '2007' )
         expect( jessica[1]['year_observation'] ).to eq( '2008' )
         expect( jessica[2]['year_observation'] ).to eq( '2009' )
         expect( jessica[3]['year_observation'] ).to eq( '2010')
         expect( jessica[4]['year_observation'] ).to eq( '2011')
          expect( jessica[5]['year_observation'] ).to eq( '2012')
end
     it 'retrieves the correct result when calling a query from kwabena' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      kwabena = conn.exec("SELECT grain_allocations.year_observation,
ROUND (AVG(grain_allocations.p)) AS average_rounded_grain_p, 
ROUND(AVG(grain_allocations.k)) AS average_rounded_grain_k ,
ROUND(AVG(grain_allocations.mg)) AS average_rounded_grain_mg,
AVG(grain_allocations.ph) AS average_ph
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND grain_allocations.rotation = ('t2') 
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation
ORDER BY grain_allocations.year_observation;" )
      expect( kwabena[0]['year_observation'] ).to eq( '2007' )
         expect( kwabena[1]['year_observation'] ).to eq( '2008' )
         expect( kwabena[2]['year_observation'] ).to eq( '2009' )
         expect( kwabena[3]['year_observation'] ).to eq( '2010')
         expect( kwabena[4]['year_observation'] ).to eq( '2011')
          expect( kwabena[5]['year_observation'] ).to eq( '2012')
         
end
     it 'retrieves the correct result when calling a query from kwame' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      kwame = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.barley_tillers_round_a,
    SecondSet.barley_tillers_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS barley_tillers_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS barley_tillers_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation; " )
      expect( kwame[0]['year_observation'] ).to eq( '2007' )
         expect( kwame[1]['year_observation'] ).to eq( '2008' )
         expect( kwame[2]['year_observation'] ).to eq( '2009' )
         expect( kwame[3]['year_observation'] ).to eq( '2010')
         expect( kwame[4]['year_observation'] ).to eq( '2011')
          expect( kwame[5]['year_observation'] ).to eq( '2012')
         
end
    it 'retrieves the correct result when calling a query from adjoa' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      adjoa = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.springoats_tillers_round_a,
    SecondSet.springoats_tillers_round_b 

FROM

(SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS springoats_tillers_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS springoats_tillers_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )

      expect( adjoa[0]['year_observation'] ).to eq( '2007' )
         expect( adjoa[1]['year_observation'] ).to eq( '2008' )
         expect( adjoa[2]['year_observation'] ).to eq( '2009' )
         expect( adjoa[3]['year_observation'] ).to eq( '2010')
         expect( adjoa[4]['year_observation'] ).to eq( '2011')
          expect( adjoa[5]['year_observation'] ).to eq( '2012')
         
end
     it 'retrieves the correct result when calling a query from dent method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       dent = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.barley_specificweight_round_a,
    SecondSet.barley_specificweight_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS barley_specificweight_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS barley_specificweight_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )

      expect( dent[0]['year_observation'] ).to eq( '2007' )
         expect( dent[1]['year_observation'] ).to eq( '2008' )
         expect( dent[2]['year_observation'] ).to eq( '2009' )
         expect( dent[3]['year_observation'] ).to eq( '2010')
         expect( dent[4]['year_observation'] ).to eq( '2011')
          expect( dent[5]['year_observation'] ).to eq( '2012')
         
end
    
    it 'retrieves the correct result when calling a query from chidi method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       
chidi = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.springoats_specificweight_round_a,
    SecondSet.springoats_specificweight_round_b 

FROM

(SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS springoats_specificweight_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS springoats_specificweight_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      expect( chidi[0]['year_observation'] ).to eq( '2007' )
         expect( chidi[1]['year_observation'] ).to eq( '2008' )
         expect( chidi[2]['year_observation'] ).to eq( '2009' )
         expect( chidi[3]['year_observation'] ).to eq( '2010')
         expect( chidi[4]['year_observation'] ).to eq( '2011')
          expect( chidi[5]['year_observation'] ).to eq( '2012')
         
end
     it 'retrieves the correct result when calling a query from ola method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       
ola = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.barley_drymattergrain_round_a,
    SecondSet.barley_drymattergrain_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS barley_drymattergrain_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
  AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS barley_drymattergrain_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
  AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      expect( ola[0]['year_observation'] ).to eq( '2007' )
         expect( ola[1]['year_observation'] ).to eq( '2008' )
         expect( ola[2]['year_observation'] ).to eq( '2009' )
         expect( ola[3]['year_observation'] ).to eq( '2010')
         expect( ola[4]['year_observation'] ).to eq( '2011')
          expect( ola[5]['year_observation'] ).to eq( '2012')
         
end
      it 'retrieves the correct result when calling a query from dami method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       
 dami = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.barley_drymatterstraw_round_a,
    SecondSet.barley_drymatterstraw_round_b

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS barley_drymatterstraw_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
  AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS barley_drymatterstraw_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;")
      expect( dami[0]['year_observation'] ).to eq( '2007' )
         expect( dami[1]['year_observation'] ).to eq( '2008' )
         expect( dami[2]['year_observation'] ).to eq( '2009' )
         expect( dami[3]['year_observation'] ).to eq( '2010')
         expect( dami[4]['year_observation'] ).to eq( '2011')
          expect( dami[5]['year_observation'] ).to eq( '2012')
         
end
       it 'retrieves the correct result when calling a query from buki method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       
 buki = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.springoats_drymattergrain_round_a,
    SecondSet.springoats_drymattergrain_round_b 

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS springoats_drymattergrain_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS springoats_drymattergrain_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      expect( buki[0]['year_observation'] ).to eq( '2007' )
         expect( buki[1]['year_observation'] ).to eq( '2008' )
         expect( buki[2]['year_observation'] ).to eq( '2009' )
         expect( buki[3]['year_observation'] ).to eq( '2010')
         expect( buki[4]['year_observation'] ).to eq( '2011')
          expect( buki[5]['year_observation'] ).to eq( '2012')
         
end
       it 'retrieves the correct result when calling a query from steve method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
       
steve = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.springoats_drymatterstraw_round_a,
    SecondSet.springoats_drymatterstraw_round_b

FROM

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS springoats_drymatterstraw_round_a 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'a'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS springoats_drymatterstraw_round_b 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
 AND plotsubplots.subplot_id = 'b'
AND grains.grain_type = 'spring_oats_undersown'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;")
      expect( steve[0]['year_observation'] ).to eq( '2007' )
         expect( steve[1]['year_observation'] ).to eq( '2008' )
         expect( steve[2]['year_observation'] ).to eq( '2009' )
         expect( steve[3]['year_observation'] ).to eq( '2010')
         expect( steve[4]['year_observation'] ).to eq( '2011')
          expect( steve[5]['year_observation'] ).to eq( '2012')
         
end
end
end


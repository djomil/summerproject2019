module GrainConverterHelper
    require 'pg'
begin
    
    def oatyield 
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      oatyield = conn.exec("SELECT 
  
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
      return  oatyield 
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end
    
   
    
     begin
    
    def barleyyield
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     barleyyield = conn.exec("SELECT 
  
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
      return barleyyield
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end
    
    
    
    begin
     def grainsoilvaluest1 
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grainsoilvaluest1 = conn.exec("SELECT grain_allocations.year_observation,
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
      return grainsoilvaluest1 
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end
    
   
    begin
     def grainsoilvaluest2
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grainsoilvaluest2 = conn.exec("SELECT grain_allocations.year_observation,
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
      return grainsoilvaluest2
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
    
    #today
     begin
     def barleytilleryield
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
      # conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      barleytilleryield = conn.exec("SELECT 
  
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
order by FirstSet.year_observation;" )
      return  barleytilleryield
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
     begin
     def oattilleryield
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     oattilleryield = conn.exec("SELECT 
  
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
      return oattilleryield
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
     begin
     def barleyspecweight
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
      # conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     barleyspecweight = conn.exec("SELECT 
  
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
      return barleyspecweight
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
    begin
     def oatspecweight
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     oatspecweight= conn.exec("SELECT 
  
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
      return oatspecweight
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end   
    
     begin
     def barleydrymattergrain
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
      # conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      barleydrymattergrain= conn.exec("SELECT 
  
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
      return barleydrymattergrain
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end   
    
    
    
    
    
     
     begin
     def barleydrymatterstraw
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     barleydrymatterstraw = conn.exec("SELECT 
  
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
      return barleydrymatterstraw
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end   
    
     begin
     def springoatsdrymattergrain
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     springoatsdrymattergrain = conn.exec("SELECT 
  
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
      return springoatsdrymattergrain
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end   
    

     begin
     def springoatsdrymatterstraw
          conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     springoatsdrymatterstraw = conn.exec("SELECT 
  
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
      return springoatsdrymatterstraw
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end   
    
    
end

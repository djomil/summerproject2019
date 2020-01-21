module GrassConverterHelper
      require 'pg'

    
   begin
    
    def grasssoilvaluet1
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grasssoilvaluet1 = conn.exec("SELECT grass_allocations.year_observation,
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
      return grasssoilvaluet1
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end  
   
     begin
    def grasssoilvaluet2
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
      # conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
    grasssoilvaluet2  = conn.exec("SELECT grass_allocations.year_observation,
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
      return grasssoilvaluet2
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
    
     begin
    def grasswhitecloverdrymatter
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grasswhitecloverdrymatter = conn.exec("SELECT 
  
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
      return grasswhitecloverdrymatter
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
    
    
    
      begin
    def grassredcloverdrymatter
         conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
       #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     grassredcloverdrymatter = conn.exec("SELECT 
  
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
      return grassredcloverdrymatter
    rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
        end
end 
   
end
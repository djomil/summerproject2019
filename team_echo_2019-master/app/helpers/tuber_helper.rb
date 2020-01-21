module TuberHelper
    require 'pg'
begin
    def swedefreshweight
 conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
        #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
        #add parameter so ton include grain_allocations.spec_wt and modify text
        swedefreshweight = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.fwt_a,
    SecondSet.fwt_b

FROM

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_a
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND plotsubplots.subplot_id = 'a'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_b
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND plotsubplots.subplot_id = 'b'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
        return swedefreshweight
        rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
    end
end
   
    begin
    def potatofreshweight
    conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
        #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
        #add parameter so ton include grain_allocations.spec_wt and modify text
        potatofreshweight = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.fwt_a,
    SecondSet.fwt_b

FROM

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_a
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND plotsubplots.subplot_id = 'a'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_b
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND plotsubplots.subplot_id = 'b'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
        return potatofreshweight
        rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
    end
end
    
    
 
     begin
    def soilvaluest1
       conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
        #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
        #add parameter so ton include grain_allocations.spec_wt and modify text
        soilvaluest1 = conn.exec("SELECT tuberose_allocations.year_observation,
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
        return soilvaluest1
        rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
    end
end
 
     begin
    def soilvaluest2
  conn =PG.connect("dbname=d1h9nidivjul9l host=ec2-54-217-219-235.eu-west-1.compute.amazonaws.com port=5432 user=qyijfkuhmdwinv
 password=dd2a452a71dd32aa46180e8f076d23eb3b128b80c00a388f8ac0898264488ff4 sslmode=require")
        #conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
        #add parameter so ton include grain_allocations.spec_wt and modify text
        soilvaluest2 = conn.exec("SELECT tuberose_allocations.year_observation,
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
ORDER BY tuberose_allocations.year_observation;" )
        return soilvaluest2
        rescue PG::Error => e
        puts e.message
        ensure
        conn.close if conn
    end
end
    
    
end
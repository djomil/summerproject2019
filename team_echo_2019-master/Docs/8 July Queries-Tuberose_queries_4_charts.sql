/* 
SWEDE
*/


/*
Replication 1
*/

SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND tuberose_allocations.replication = ('1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;  


/*
Replication 2
*/

SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND tuberose_allocations.replication = ('2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;  


/*
POTATO
*/

/*
Replication 1
*/

SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND tuberose_allocations.replication = ('1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;  

/*
Replication 2
*/

SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt))
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND tuberose_allocations.replication = ('2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;  



/*
I want to know the average values of potassium, pH 
magnesium and phosphorus for tuberoses,
between 2007 and 2018
where rotation T1 was applied
*/

SELECT tuberose_allocations.year_observation,
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
ORDER BY tuberose_allocations.year_observation;  



/*
I want to know the values of potassium, pH 
magnesium and phosphorus for tuberoses,
between 2007 and 2018
where rotation T2 was applied
*/

SELECT tuberose_allocations.year_observation,
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
ORDER BY tuberose_allocations.year_observation;

































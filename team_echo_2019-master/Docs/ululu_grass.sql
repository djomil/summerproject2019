/*
WRITTEN ON 8TH JULY
*/


/*
I want to know the values of potassium, 
magnesium and phosphorus for grasses,
between 2007 and 2018
where rotation T1 was applied
*/

SELECT grass_allocations.year_observation,
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
ORDER BY grass_allocations.year_observation;  


/*
I want to know the values of potassium, 
magnesium and phosphorus for grasses,
between 2007 and 2018
where rotation T2 was applied
*/

SELECT grass_allocations.year_observation,
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
ORDER BY grass_allocations.year_observation;  



/*
Replication 1
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.))
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = ''
AND grass_allocations.replication = ('1') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;  

/*
Replication 2
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.))
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = ''
AND grass_allocations.replication = ('2') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grass.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;  

/* 
THE QUERIES BELOW WERE WRITTEN ON 9TH JULY 2019
*/

/*
GRASS_WHITE_CLOVER_2 
*/

/* THIS IS FOR SILAGE ONLY */

/*
I want to know the average of the first dry matter of silage
for grass and white clover 2
between years 2007 and 2018
for replication 1
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_silage1)) AS GrassWhiteCloverDryMatter_rounded
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_white_clover2'
AND grass_allocations.replication = ('1') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;  

/*
I want to know the average of the first dry matter of silage
for grass and white clover 2
between years 2007 and 2018
for replication 2
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_silage1)) AS GrassWhiteCloverDryMatter_rounded
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_white_clover2'
AND grass_allocations.replication = ('1') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;  



/*
GRASS_RED_CLOVER
*/


/* THIS IS FOR GRASS MATTER ONLY */

/*
I want to know the average of second dry matter of grass
for grass and red clover
between years 2007 and 2018
for replication 1
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_gm2)) AS GrassRedCloverDryMatter_rounded
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_red_clover'
AND grass_allocations.replication = ('1') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;  


/*
I want to know the average of second dry matter of grass
for grass and red clover
between years 2007 and 2018
for replication 2
*/

SELECT grasses.grass_type, 
grass_allocations.year_observation,  
ROUND(AVG(grass_allocations.percentage_100_dm_gm2)) AS GrassRedCloverDryMatter_rounded
FROM grass_allocations, grasses, plotsubplots 
WHERE grass_allocations.grass_id = grasses.grass_id 
AND grass_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grasses.grass_type = 'grass_red_clover'
AND grass_allocations.replication = ('2') 
AND grass_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grasses.grass_type, grass_allocations.year_observation
ORDER BY grass_allocations.year_observation;


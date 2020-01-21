/*
I want to know the values of potassium, magnesium and phosphorus for grains,
between 2007 and 2018
where rotation T1 was applied
*/

SELECT grain_allocations.year_observation,
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
ORDER BY grain_allocations.year_observation;


/*
I want to know the values of potassium, magnesium and phosphorus for grains,
between 2007 and 2018
where rotation T2 was applied
*/

SELECT grain_allocations.year_observation,
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
ORDER BY grain_allocations.year_observation;

/*
BARLEY UNDERSOWN AND WHITE CLOVER
*/

/* THE PART BELOW WAS WRITTEN ON 9TH JULY*/

/*
I want to know the average value of tillers 
of barley undersown and white clover, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS barley_tillers_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of tillers 
of barley undersown and white clover, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS barley_tillers_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of specific weight 
of barley undersown and white clover, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS barley_specificWeight_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/*
I want to know the average value of specific weight 
of barley undersown and white clover, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS barley_specificWeight_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM grain y 
of barley undersown and white clover, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS barley_DryMatterGrain_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;



/*
I want to know the average value of DM grain y 
of barley undersown and white clover, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS barley_DryMatterGrain_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM straw y 
of barley undersown and white clover, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS barley_DryMatterStraw_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM straw y 
of barley undersown and white clover, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS barley_DryMatterStraw_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/* THE PART BELOW WAS WRITTEN ON 8TH JULY*/

/*
I want to know the value of grain on ear 
of barley undersown and white clover, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;



/*
I want to know the value of grain on ear, 
and specific weight of barley undersown and white clover, 
between 2007 and 2018, 
where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'barley_undersown_and_white_clover'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/*
SPRING OATS 
*/

/* THE PART BELOW WAS WRITTEN ON 9TH JULY*/

/*
I want to know the average value of tillers 
of spring oats, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS SpringOats_tillers_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of tillers 
of spring oats, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.tillers)) AS SpringOats_tillers_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of specific weight 
of spring oats, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS SpringOats_specificWeight_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/*
I want to know the average value of specific weight 
of spring oats, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.spec_wt)) AS SpringOats_specificWeight_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM grain y 
of spring oats, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS SpringOats_DryMatterGrain_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;



/*
I want to know the average value of DM grain y 
of spring oats, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_grain_y)) AS SpringOats_DryMatterGrain_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM straw y 
of spring oats, 
between 2007 and 2018, where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS SpringOats_DryMatterStraw_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;


/*
I want to know the average value of DM straw y 
of spring oats, 
between 2007 and 2018, where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.percentage_85_dm_straw_y)) AS SpringOats_DryMatterStraw_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/* THE PART BELOW WAS WRITTEN ON 8TH JULY*/


/*
I want to know the value of grain on ear, 
and specific weight of spring oats, 
between 2007 and 2018, 
where replication 1 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('1') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;

/*
I want to know the value of grain on ear, 
and specific weight of spring oats, 
between 2007 and 2018, 
where replication 2 was applied
*/

SELECT  grains.grain_type,
grain_allocations.year_observation,
ROUND(AVG(grain_allocations.grain_on_ear)) AS barley_yield_round 
FROM grain_allocations, grains, plotsubplots 
WHERE grain_allocations.grain_id = grains.grain_id 
AND grain_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND grain_allocations.replication = ('2') 
AND grains.grain_type = 'spring_oats'
AND grain_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY grain_allocations.year_observation, grains.grain_type
ORDER BY grain_allocations.year_observation;
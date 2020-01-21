CREATE TABLE plotsubplots (
plotsubplot_id SERIAL UNIQUE PRIMARY KEY,
plot_id INTEGER NOT NULL,
subplot_id VARCHAR
);

INSERT INTO "plotsubplots" VALUES
    (DEFAULT, 1, null ),
    (DEFAULT, 1, 'a' ),
    (DEFAULT, 1, 'b' ),
    (DEFAULT, 2, null),
    (DEFAULT, 2, 'a'),
    (DEFAULT, 2, 'b'),
    (DEFAULT, 3, null),
    (DEFAULT, 3, 'a'),
    (DEFAULT, 3, 'b'),
    (DEFAULT, 4, null),
    (DEFAULT, 4, 'a'),
    (DEFAULT, 4, 'b'),
    (DEFAULT, 5, null),
    (DEFAULT, 5, 'a'),
    (DEFAULT, 5, 'b'),
    (DEFAULT, 6, null),
    (DEFAULT, 6, 'a'),
    (DEFAULT, 6, 'b'),
    (DEFAULT, 7, null),
    (DEFAULT, 7, 'a'),
    (DEFAULT, 7, 'b'),
    (DEFAULT, 8, null),
    (DEFAULT, 8, 'a'),
    (DEFAULT, 8, 'b'),
    (DEFAULT, 9, null),
    (DEFAULT, 9, 'a'),
    (DEFAULT, 9, 'b'),
    (DEFAULT, 10, null),
    (DEFAULT, 10, 'a'),
    (DEFAULT, 10, 'b'),
    (DEFAULT, 11, null),
    (DEFAULT, 11, 'a'),
    (DEFAULT, 11, 'b'),
    (DEFAULT, 12, null),
    (DEFAULT, 12, 'a'),
    (DEFAULT, 12, 'b'),
    (DEFAULT, 13, null),
    (DEFAULT, 13, 'a'),
    (DEFAULT, 13, 'b'),
    (DEFAULT, 14, null),
    (DEFAULT, 14, 'a'),
    (DEFAULT, 14, 'b'),
    (DEFAULT, 15, null),
    (DEFAULT, 15, 'a'),
    (DEFAULT, 15, 'b'),
    (DEFAULT, 16, null),
    (DEFAULT, 16, 'a'),
    (DEFAULT, 16, 'b'),
    (DEFAULT, 17, null),
    (DEFAULT, 17, 'a'),
    (DEFAULT, 17, 'b'),
    (DEFAULT, 18, null),
    (DEFAULT, 18, 'a'),
    (DEFAULT, 18, 'b'),
    (DEFAULT, 19, null),
    (DEFAULT, 19, 'a'),
    (DEFAULT, 19, 'b'),
    (DEFAULT, 20, null),
    (DEFAULT, 20, 'a'),
    (DEFAULT, 20, 'b'),
    (DEFAULT, 21, null),
    (DEFAULT, 21, 'a'),
    (DEFAULT, 21, 'b'),
    (DEFAULT, 22, null),
    (DEFAULT, 22, 'a'),
    (DEFAULT, 22, 'b'),
    (DEFAULT, 23, null),
    (DEFAULT, 23, 'a'),
    (DEFAULT, 23, 'b'),
    (DEFAULT, 24, null),
    (DEFAULT, 24, 'a'),
    (DEFAULT, 24, 'b');
    
    
CREATE TABLE tuberoses (
tuberose_id SERIAL UNIQUE PRIMARY KEY,
tuberose_type VARCHAR(70)
);



INSERT INTO "tuberoses" VALUES
(DEFAULT, 'potato'),
(DEFAULT, 'swede');


CREATE TABLE grains (
grain_id SERIAL UNIQUE NOT NULL PRIMARY KEY,
grain_type VARCHAR(70)
);

INSERT INTO "grains" VALUES
(DEFAULT, 'spring_oats'),
(DEFAULT, 'spring_oats_undersown'),
(DEFAULT, 'spring_wheat_undersown_and_white_clover'),
(DEFAULT, 'spring_beans_undersown_and_white_clover'),
(DEFAULT, 'barley_undersown_and_white_clover'),
(DEFAULT,'oats_undersown_and_grass_red_clover');

CREATE TABLE grasses (
grass_id SERIAL UNIQUE NOT NULL PRIMARY KEY,
grass_type VARCHAR(50)
);

INSERT INTO "grasses" VALUES
(DEFAULT, 'grass_white_clover1'),
(DEFAULT, 'grass_white_clover2'),
(DEFAULT, 'grass_white_clover3'),
(DEFAULT, 'grass_white_clover4'),
(DEFAULT, 'grass_red_clover');


CREATE TABLE tuberose_allocations (
tuberose_allocation_id SERIAL UNIQUE PRIMARY KEY,
tuberose_id INTEGER REFERENCES tuberoses (tuberose_id),
plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
year_observation VARCHAR(5) NOT NULL,
swede_and_pots_fwt DECIMAL,
percentage_root_dm DECIMAL,
percentage_100_dm_swede_leaf_dm_y DECIMAL,
percentage_crop_s DECIMAL,
percentage_root_s DECIMAL,
percentage_tug_s DECIMAL,
percentage_tw_s DECIMAL,
percentage_tug_a DECIMAL,
percentage_tw_a DECIMAL,
ph DECIMAL,
p DECIMAL,
k DECIMAL,
mg DECIMAL,
om DECIMAL,
replication integer,
rotation varchar (4));


CREATE TABLE grain_allocations (
  grain_allocation_id SERIAL UNIQUE PRIMARY KEY,
grain_id INTEGER REFERENCES grains (grain_id),
plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
year_observation VARCHAR(5) NOT NULL,
percentage_85_DM_grain_y REAL,
percentage_85_DM_straw_y DECIMAL,
spec_wt DECIMAL,
tgw DECIMAL,
tillers DECIMAL,
grain_on_ear DECIMAL,
length DECIMAL,
percentage_crop_s DECIMAL,
percentage_prg_s DECIMAL,
percentage_rc_s DECIMAL,
percentage_wc_s DECIMAL,
percentage_tug_s DECIMAL,
percentage_tw_s DECIMAL,
percentage_prg_a DECIMAL,
percentage_wc_a DECIMAL,
percentage_rc_a DECIMAL,
percentage_tug_a DECIMAL,
percentage_tw_a DECIMAL,
ph DECIMAL,
p DECIMAL,
k DECIMAL,
mg DECIMAL,
om DECIMAL,
replication INTEGER,
rotation VARCHAR(4));



CREATE TABLE grass_allocations (
  grass_allocation_id SERIAL UNIQUE PRIMARY KEY,
  grass_id INTEGER REFERENCES grasses (grass_id),
  plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
  year_observation VARCHAR(5) NOT NULL,
  percentage_100_dm_gm1 DECIMAL,
  percentage_100_dm_gm2 DECIMAL,
  percentage_100_dm_gm3 DECIMAL,
  percentage_100_dm_gm4 DECIMAL,
  percentage_100_dm_gm5 DECIMAL,
  percentage_100_dm_gm6 DECIMAL,
  percentage_100_dm_silage1 DECIMAL,
  percentage_100_dm_silage2 DECIMAL,
  d_value_1 DECIMAL,
  d_value_2 DECIMAL,
  me_1 DECIMAL,
  me_2 DECIMAL,
  lugd DECIMAL,
  percentage_prg_a DECIMAL,
  percentage_tim_a DECIMAL,
  percentage_wc_a DECIMAL,
  percentage_tug_a DECIMAL,
  percentage_tw_a DECIMAL,
  ph DECIMAL,
  p DECIMAL,
  k DECIMAL,
  mg DECIMAL,
  om DECIMAL,

 
  replication integer,
  rotation varchar (4));

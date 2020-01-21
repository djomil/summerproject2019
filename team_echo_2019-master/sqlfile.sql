--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: grain_allocations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.grain_allocations (
    grain_allocation_id integer NOT NULL,
    grain_id integer,
    plotsubplot_id integer,
    year_observation character varying(5) NOT NULL,
    percentage_85_dm_grain_y double precision,
    percentage_85_dm_straw_y numeric,
    spec_wt numeric,
    tgw numeric,
    tillers numeric,
    grain_on_ear numeric,
    length numeric,
    percentage_crop_s numeric,
    percentage_prg_s numeric,
    percentage_rc_s numeric,
    percentage_wc_s numeric,
    percentage_tug_s numeric,
    percentage_tw_s numeric,
    percentage_prg_a numeric,
    percentage_wc_a numeric,
    percentage_rc_a numeric,
    percentage_tug_a numeric,
    percentage_tw_a numeric,
    ph numeric,
    p numeric,
    k numeric,
    mg numeric,
    om numeric,
    replication integer,
    rotation character varying(4)
);


--
-- Name: grain_allocations_grain_allocation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grain_allocations_grain_allocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: grain_allocations_grain_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grain_allocations_grain_allocation_id_seq OWNED BY public.grain_allocations.grain_allocation_id;


--
-- Name: grains; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.grains (
    grain_id integer NOT NULL,
    grain_type character varying(70)
);


--
-- Name: grains_grain_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grains_grain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: grains_grain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grains_grain_id_seq OWNED BY public.grains.grain_id;


--
-- Name: grass_allocations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.grass_allocations (
    grass_allocation_id integer NOT NULL,
    grass_id integer,
    plotsubplot_id integer,
    year_observation character varying(5) NOT NULL,
    percentage_100_dm_gm1 numeric,
    percentage_100_dm_gm2 numeric,
    percentage_100_dm_gm3 numeric,
    percentage_100_dm_gm4 numeric,
    percentage_100_dm_gm5 numeric,
    percentage_100_dm_gm6 numeric,
    percentage_100_dm_silage1 numeric,
    percentage_100_dm_silage2 numeric,
    d_value_1 numeric,
    d_value_2 numeric,
    me_1 numeric,
    me_2 numeric,
    lugd numeric,
    percentage_prg_a numeric,
    percentage_tim_a numeric,
    percentage_wc_a numeric,
    percentage_tug_a numeric,
    percentage_tw_a numeric,
    ph numeric,
    p numeric,
    k numeric,
    mg numeric,
    om numeric,
    replication integer,
    rotation character varying(4)
);


--
-- Name: grass_allocations_grass_allocation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grass_allocations_grass_allocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: grass_allocations_grass_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grass_allocations_grass_allocation_id_seq OWNED BY public.grass_allocations.grass_allocation_id;


--
-- Name: grasses; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.grasses (
    grass_id integer NOT NULL,
    grass_type character varying(50)
);


--
-- Name: grasses_grass_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grasses_grass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: grasses_grass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grasses_grass_id_seq OWNED BY public.grasses.grass_id;


--
-- Name: plotsubplots; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.plotsubplots (
    plotsubplot_id integer NOT NULL,
    plot_id integer NOT NULL,
    subplot_id character varying
);


--
-- Name: plotsubplots_plotsubplot_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plotsubplots_plotsubplot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plotsubplots_plotsubplot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plotsubplots_plotsubplot_id_seq OWNED BY public.plotsubplots.plotsubplot_id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: tuberose_allocations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.tuberose_allocations (
    tuberose_allocation_id integer NOT NULL,
    tuberose_id integer,
    plotsubplot_id integer,
    year_observation character varying(5) NOT NULL,
    swede_and_pots_fwt numeric,
    percentage_root_dm numeric,
    percentage_100_dm_swede_leaf_dm_y numeric,
    percentage_crop_s numeric,
    percentage_root_s numeric,
    percentage_tug_s numeric,
    percentage_tw_s numeric,
    percentage_tug_a numeric,
    percentage_tw_a numeric,
    ph numeric,
    p numeric,
    k numeric,
    mg numeric,
    om numeric,
    replication integer,
    rotation character varying(4)
);


--
-- Name: tuberose_allocations_tuberose_allocation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuberose_allocations_tuberose_allocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tuberose_allocations_tuberose_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuberose_allocations_tuberose_allocation_id_seq OWNED BY public.tuberose_allocations.tuberose_allocation_id;


--
-- Name: tuberoses; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE public.tuberoses (
    tuberose_id integer NOT NULL,
    tuberose_type character varying(70)
);


--
-- Name: tuberoses_tuberose_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuberoses_tuberose_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tuberoses_tuberose_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuberoses_tuberose_id_seq OWNED BY public.tuberoses.tuberose_id;


--
-- Name: grain_allocation_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grain_allocations ALTER COLUMN grain_allocation_id SET DEFAULT nextval('public.grain_allocations_grain_allocation_id_seq'::regclass);


--
-- Name: grain_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grains ALTER COLUMN grain_id SET DEFAULT nextval('public.grains_grain_id_seq'::regclass);


--
-- Name: grass_allocation_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grass_allocations ALTER COLUMN grass_allocation_id SET DEFAULT nextval('public.grass_allocations_grass_allocation_id_seq'::regclass);


--
-- Name: grass_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grasses ALTER COLUMN grass_id SET DEFAULT nextval('public.grasses_grass_id_seq'::regclass);


--
-- Name: plotsubplot_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plotsubplots ALTER COLUMN plotsubplot_id SET DEFAULT nextval('public.plotsubplots_plotsubplot_id_seq'::regclass);


--
-- Name: tuberose_allocation_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuberose_allocations ALTER COLUMN tuberose_allocation_id SET DEFAULT nextval('public.tuberose_allocations_tuberose_allocation_id_seq'::regclass);


--
-- Name: tuberose_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuberoses ALTER COLUMN tuberose_id SET DEFAULT nextval('public.tuberoses_tuberose_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	test	2019-06-19 13:25:48.754714	2019-06-19 13:25:48.754714
\.


--
-- Data for Name: grain_allocations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.grain_allocations (grain_allocation_id, grain_id, plotsubplot_id, year_observation, percentage_85_dm_grain_y, percentage_85_dm_straw_y, spec_wt, tgw, tillers, grain_on_ear, length, percentage_crop_s, percentage_prg_s, percentage_rc_s, percentage_wc_s, percentage_tug_s, percentage_tw_s, percentage_prg_a, percentage_wc_a, percentage_rc_a, percentage_tug_a, percentage_tw_a, ph, p, k, mg, om, replication, rotation) FROM stdin;
\.


--
-- Name: grain_allocations_grain_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grain_allocations_grain_allocation_id_seq', 1, false);


--
-- Data for Name: grains; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.grains (grain_id, grain_type) FROM stdin;
\.


--
-- Name: grains_grain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grains_grain_id_seq', 1, false);


--
-- Data for Name: grass_allocations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.grass_allocations (grass_allocation_id, grass_id, plotsubplot_id, year_observation, percentage_100_dm_gm1, percentage_100_dm_gm2, percentage_100_dm_gm3, percentage_100_dm_gm4, percentage_100_dm_gm5, percentage_100_dm_gm6, percentage_100_dm_silage1, percentage_100_dm_silage2, d_value_1, d_value_2, me_1, me_2, lugd, percentage_prg_a, percentage_tim_a, percentage_wc_a, percentage_tug_a, percentage_tw_a, ph, p, k, mg, om, replication, rotation) FROM stdin;
\.


--
-- Name: grass_allocations_grass_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grass_allocations_grass_allocation_id_seq', 1, false);


--
-- Data for Name: grasses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.grasses (grass_id, grass_type) FROM stdin;
\.


--
-- Name: grasses_grass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grasses_grass_id_seq', 1, false);


--
-- Data for Name: plotsubplots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.plotsubplots (plotsubplot_id, plot_id, subplot_id) FROM stdin;
\.


--
-- Name: plotsubplots_plotsubplot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plotsubplots_plotsubplot_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
0
\.


--
-- Data for Name: tuberose_allocations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tuberose_allocations (tuberose_allocation_id, tuberose_id, plotsubplot_id, year_observation, swede_and_pots_fwt, percentage_root_dm, percentage_100_dm_swede_leaf_dm_y, percentage_crop_s, percentage_root_s, percentage_tug_s, percentage_tw_s, percentage_tug_a, percentage_tw_a, ph, p, k, mg, om, replication, rotation) FROM stdin;
\.


--
-- Name: tuberose_allocations_tuberose_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuberose_allocations_tuberose_allocation_id_seq', 1, false);


--
-- Data for Name: tuberoses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tuberoses (tuberose_id, tuberose_type) FROM stdin;
\.


--
-- Name: tuberoses_tuberose_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuberoses_tuberose_id_seq', 1, false);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: grain_allocations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.grain_allocations
    ADD CONSTRAINT grain_allocations_pkey PRIMARY KEY (grain_allocation_id);


--
-- Name: grains_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.grains
    ADD CONSTRAINT grains_pkey PRIMARY KEY (grain_id);


--
-- Name: grass_allocations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.grass_allocations
    ADD CONSTRAINT grass_allocations_pkey PRIMARY KEY (grass_allocation_id);


--
-- Name: grasses_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.grasses
    ADD CONSTRAINT grasses_pkey PRIMARY KEY (grass_id);


--
-- Name: plotsubplots_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.plotsubplots
    ADD CONSTRAINT plotsubplots_pkey PRIMARY KEY (plotsubplot_id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tuberose_allocations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.tuberose_allocations
    ADD CONSTRAINT tuberose_allocations_pkey PRIMARY KEY (tuberose_allocation_id);


--
-- Name: tuberoses_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY public.tuberoses
    ADD CONSTRAINT tuberoses_pkey PRIMARY KEY (tuberose_id);


--
-- Name: grain_allocations_grain_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grain_allocations
    ADD CONSTRAINT grain_allocations_grain_id_fkey FOREIGN KEY (grain_id) REFERENCES public.grains(grain_id);


--
-- Name: grain_allocations_plotsubplot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grain_allocations
    ADD CONSTRAINT grain_allocations_plotsubplot_id_fkey FOREIGN KEY (plotsubplot_id) REFERENCES public.plotsubplots(plotsubplot_id);


--
-- Name: grass_allocations_grass_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grass_allocations
    ADD CONSTRAINT grass_allocations_grass_id_fkey FOREIGN KEY (grass_id) REFERENCES public.grasses(grass_id);


--
-- Name: grass_allocations_plotsubplot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grass_allocations
    ADD CONSTRAINT grass_allocations_plotsubplot_id_fkey FOREIGN KEY (plotsubplot_id) REFERENCES public.plotsubplots(plotsubplot_id);


--
-- Name: tuberose_allocations_plotsubplot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuberose_allocations
    ADD CONSTRAINT tuberose_allocations_plotsubplot_id_fkey FOREIGN KEY (plotsubplot_id) REFERENCES public.plotsubplots(plotsubplot_id);


--
-- Name: tuberose_allocations_tuberose_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuberose_allocations
    ADD CONSTRAINT tuberose_allocations_tuberose_id_fkey FOREIGN KEY (tuberose_id) REFERENCES public.tuberoses(tuberose_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


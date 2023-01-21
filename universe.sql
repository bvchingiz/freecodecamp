--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying,
    constellation_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    mass numeric
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    galaxy_types text,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    mass numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    planet_id integer,
    distance_from_planet integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    mass numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    mass numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    galaxy_id integer,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean,
    mass numeric NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('virgo', 1, 73999940, true, true, 39999003);
INSERT INTO public.constellation VALUES ('taurus', 2, 8848995, true, false, 8884955);
INSERT INTO public.constellation VALUES ('aquarius', 3, 74788895, false, true, 9940000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'eliptical', 20000, 20000000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'lmc', 'eliptical', 1, 800000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'smc', 'eliptical', 1, 500000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'black eye', 'spherical', 3000, 12300000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'sombrero', 'round', 5000, 12700000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'whirlpool', 'eliptical', 6000, 22700000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'cigar', 'line', 7000, 269800000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Milky way', 'eliptical', 400000000, 1, false, true, 100000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'agharna', 5, 6566684, 66774, true, true, 777884);
INSERT INTO public.moon VALUES (6, 'aibek', 4, 777403, 838999, false, true, 9499003);
INSERT INTO public.moon VALUES (7, 'anningan', 3, 89499499, 7478788, false, true, 9993004);
INSERT INTO public.moon VALUES (8, 'apollo', 4, 65888448, 8993993, true, true, 877758);
INSERT INTO public.moon VALUES (9, 'arche', 5, 6566684, 66774, true, true, 777884);
INSERT INTO public.moon VALUES (10, 'aibek', 41, 477403, 538999, false, true, 3499003);
INSERT INTO public.moon VALUES (11, 'caliban', 42, 39499499, 2478788, false, true, 4993004);
INSERT INTO public.moon VALUES (12, 'chandra', 44, 5888448, 993993, true, true, 477758);
INSERT INTO public.moon VALUES (17, 'dal', 44, 26566684, 266774, true, true, 977884);
INSERT INTO public.moon VALUES (18, 'deimos', 43, 3477403, 3538999, false, true, 499003);
INSERT INTO public.moon VALUES (19, 'elatha', 46, 59499499, 2478788, false, true, 4293004);
INSERT INTO public.moon VALUES (20, 'halo', 42, 3888448, 493993, true, true, 2377758);
INSERT INTO public.moon VALUES (21, 'isildur', 4, 46566684, 236774, true, true, 975884);
INSERT INTO public.moon VALUES (22, 'jerichass', 43, 3477403, 3538999, false, true, 499003);
INSERT INTO public.moon VALUES (23, 'elatha', 46, 59499499, 2478788, false, true, 4293004);
INSERT INTO public.moon VALUES (24, 'halo', 42, 3888448, 493993, true, true, 2377758);
INSERT INTO public.moon VALUES (25, 'isildur', 4, 46566684, 236774, true, true, 975884);
INSERT INTO public.moon VALUES (26, 'jerichass', 43, 3477403, 3538999, false, true, 499003);
INSERT INTO public.moon VALUES (27, 'elatha', 46, 59499499, 2478788, false, true, 4293004);
INSERT INTO public.moon VALUES (28, 'halo', 42, 3888448, 493993, true, true, 2377758);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'earth', 1, true, false, 200000000);
INSERT INTO public.planet VALUES (4, 'mercury', 1, false, false, 30000000);
INSERT INTO public.planet VALUES (5, 'venus', 1, false, false, 40000000);
INSERT INTO public.planet VALUES (6, 'mars', 1, false, false, 60000000);
INSERT INTO public.planet VALUES (7, 'mars', 1, false, false, 60000000);
INSERT INTO public.planet VALUES (8, 'jupiter', 1, false, false, 70000000);
INSERT INTO public.planet VALUES (41, 'ganimed', 4, true, true, 734222899);
INSERT INTO public.planet VALUES (42, 'kentavr', 3, true, true, 634222899);
INSERT INTO public.planet VALUES (43, 'apofiz', 6, true, true, 4334222899);
INSERT INTO public.planet VALUES (44, 'bullshead', 2, true, true, 8334222899);
INSERT INTO public.planet VALUES (46, 'sharkshead', 4, true, true, 3334222899);
INSERT INTO public.planet VALUES (47, 'pringle', 6, true, true, 654222899);
INSERT INTO public.planet VALUES (48, 'leo', 5, true, true, 66454222899);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 8, 2000000000, 400000000, false, false, 304004000);
INSERT INTO public.star VALUES (2, 'centauri', 8, 900000000, 400643000, false, false, 764004000);
INSERT INTO public.star VALUES (3, 'aldebaran', 6, 800000000, 830643000, false, false, 4004000);
INSERT INTO public.star VALUES (4, 'vega', 3, 300000000, 643000, false, false, 7004000);
INSERT INTO public.star VALUES (5, 'pegasus', 2, 640000000, 6778000, false, false, 3464000);
INSERT INTO public.star VALUES (6, 'betelgeuse', 5, 88393000, 83948000, false, false, 933334000);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_mass_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_mass_key UNIQUE (mass);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


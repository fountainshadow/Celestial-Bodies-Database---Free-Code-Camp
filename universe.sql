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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text NOT NULL,
    age_in_millions_of_years numeric(2,1) NOT NULL,
    is_galaxy_safe boolean NOT NULL
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
-- Name: galaxy_planet_star_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_planet_star_moon (
    galaxy_planet_star_moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.galaxy_planet_star_moon OWNER TO freecodecamp;

--
-- Name: galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq OWNED BY public.galaxy_planet_star_moon.galaxy_planet_star_moon_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_of_moon integer NOT NULL,
    moon_description text,
    landed_on boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(40) NOT NULL,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_of_star integer NOT NULL,
    description character varying(100) NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_planet_star_moon galaxy_planet_star_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet_star_moon ALTER COLUMN galaxy_planet_star_moon_id SET DEFAULT nextval('public.galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'red galaxy', 3.4, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'blue galaxy', 4.8, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'yellow galaxy', 4.3, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'red galaxy', 1.9, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'blue galaxy', 3.1, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'yellow galaxy', 9.3, false);


--
-- Data for Name: galaxy_planet_star_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_planet_star_moon VALUES (1, 'gpsm1', 1, 25, 1, 1);
INSERT INTO public.galaxy_planet_star_moon VALUES (2, 'gpsm2', 2, 26, 2, 2);
INSERT INTO public.galaxy_planet_star_moon VALUES (3, 'gpsm3', 3, 27, 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon1', 12, 'Big', true, 25);
INSERT INTO public.moon VALUES (3, 'moon2', 12, 'Big', true, 25);
INSERT INTO public.moon VALUES (4, 'moon3', 12, 'Big', true, 26);
INSERT INTO public.moon VALUES (5, 'moon4', 12, 'Big', true, 26);
INSERT INTO public.moon VALUES (6, 'moon5', 12, 'Big', true, 27);
INSERT INTO public.moon VALUES (7, 'moon6', 12, 'Big', true, 28);
INSERT INTO public.moon VALUES (8, 'moon7', 12, 'Big', true, 29);
INSERT INTO public.moon VALUES (9, 'moon8', 12, 'Big', true, 30);
INSERT INTO public.moon VALUES (10, 'moon9', 12, 'Big', true, 31);
INSERT INTO public.moon VALUES (11, 'moon10', 12, 'Big', true, 32);
INSERT INTO public.moon VALUES (12, 'moon11', 12, 'Big', true, 33);
INSERT INTO public.moon VALUES (13, 'moon12', 12, 'Big', true, 34);
INSERT INTO public.moon VALUES (14, 'moon13', 12, 'Big', true, 35);
INSERT INTO public.moon VALUES (15, 'moon14', 12, 'Big', true, 36);
INSERT INTO public.moon VALUES (17, 'moon15', 12, 'Big', true, 36);
INSERT INTO public.moon VALUES (18, 'moon16', 12, 'Big', true, 35);
INSERT INTO public.moon VALUES (19, 'moon17', 12, 'Big', true, 34);
INSERT INTO public.moon VALUES (20, 'moon18', 12, 'Big', true, 33);
INSERT INTO public.moon VALUES (21, 'moon19', 12, 'Big', true, 32);
INSERT INTO public.moon VALUES (22, 'moon20', 12, 'Big', true, 31);
INSERT INTO public.moon VALUES (23, 'moon21', 12, 'Big', true, 30);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'planet1', true, 'Circular', 1);
INSERT INTO public.planet VALUES (26, 'planet2', true, 'Square', 2);
INSERT INTO public.planet VALUES (27, 'planet3', false, 'Rectangular', 3);
INSERT INTO public.planet VALUES (28, 'planet4', true, 'Cube', 4);
INSERT INTO public.planet VALUES (29, 'planet5', false, 'Circular', 5);
INSERT INTO public.planet VALUES (30, 'planet6', false, 'Square', 6);
INSERT INTO public.planet VALUES (31, 'planet7', true, 'Rectangular', 7);
INSERT INTO public.planet VALUES (32, 'planet8', false, 'Cube', 8);
INSERT INTO public.planet VALUES (33, 'planet9', false, 'Circular', 9);
INSERT INTO public.planet VALUES (34, 'planet10', true, 'Square', 10);
INSERT INTO public.planet VALUES (35, 'planet11', false, 'Rectangular', 11);
INSERT INTO public.planet VALUES (36, 'planet12', false, 'Cube', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 45, 'Ball of Fire');
INSERT INTO public.star VALUES (2, 'star2', 2, 56, 'Ball of Gas');
INSERT INTO public.star VALUES (3, 'star3', 3, 389, 'Ball of Ice');
INSERT INTO public.star VALUES (4, 'star4', 4, 69, 'Ball of Gas');
INSERT INTO public.star VALUES (5, 'star5', 5, 90, 'Ball of Ice');
INSERT INTO public.star VALUES (6, 'star6', 6, 75, 'Ball of Fire');
INSERT INTO public.star VALUES (7, 'star7', 6, 56, 'Ball of Fire');
INSERT INTO public.star VALUES (8, 'star8', 5, 987, 'Ball of Ice');
INSERT INTO public.star VALUES (9, 'star9', 4, 6543, 'Ball of Gas');
INSERT INTO public.star VALUES (10, 'star10', 3, 6467, 'Ball of Ice');
INSERT INTO public.star VALUES (11, 'star11', 2, 3968, 'Ball of Gas');
INSERT INTO public.star VALUES (12, 'star12', 1, 6531, 'Ball of Fire');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_planet_star_moon_galaxy_planet_star_moon_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_planet_star_moon galaxy_planet_star_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet_star_moon
    ADD CONSTRAINT galaxy_planet_star_moon_name_key UNIQUE (name);


--
-- Name: galaxy_planet_star_moon galaxy_planet_star_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet_star_moon
    ADD CONSTRAINT galaxy_planet_star_moon_pkey PRIMARY KEY (galaxy_planet_star_moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

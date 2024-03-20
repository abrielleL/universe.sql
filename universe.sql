--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_tail boolean NOT NULL,
    comet_type character varying(100),
    distance_from_earth integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    galaxy_type character varying(100),
    distance_from_earth numeric(15,2),
    age_in_millions_of_years integer
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
    name character varying(100) NOT NULL,
    moon_type character varying(100),
    size_lbs numeric(20,2) NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer
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
    name character varying(100) NOT NULL,
    planet_type character varying(100),
    size_lbs numeric(20,2) NOT NULL,
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(100) NOT NULL,
    star_type character varying(100),
    size_lbs numeric(20,2) NOT NULL,
    temp_f integer,
    is_spherical boolean NOT NULL,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley Comet', 'Most famous comet', true, 'Short Period', 0);
INSERT INTO public.comet VALUES (2, 'Ross', 'Dino man', false, 'Break', 44);
INSERT INTO public.comet VALUES (3, 'Rachel', 'Loves ross', true, 'Not a break', 40);
INSERT INTO public.comet VALUES (4, 'Phoebe', 'Unique', true, 'Singer', 30);
INSERT INTO public.comet VALUES (5, 'Joey', 'How you doin', true, 'Actor', 20);
INSERT INTO public.comet VALUES (6, 'Chandler', 'Sarcastic', false, 'Married', 66);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing our solar system', true, 'Spiral', 1000000.00, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Largest galaxy in the Local Group', false, 'Spiral', 1500000.00, 20000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical galaxy with a supermassive black hole', false, 'Elliptical', 5500000.00, 13000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral galaxy in the Local Group', false, 'Spiral', 900000.00, 5000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a prominent dust lane', false, 'Spiral', 2900000.00, 10000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral galaxy with a classic grand design', false, 'Spiral', 3100000.00, 14000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (81, 'Luna', 'Natural satellite', 1737.00, true, 25);
INSERT INTO public.moon VALUES (82, 'Phobos', 'Natural satellite', 11.00, false, 26);
INSERT INTO public.moon VALUES (83, 'Deimos', 'Natural satellite', 6.00, false, 27);
INSERT INTO public.moon VALUES (84, 'Ganymede', 'Natural satellite', 2634.00, true, 28);
INSERT INTO public.moon VALUES (85, 'Titan', 'Natural satellite', 2576.00, true, 29);
INSERT INTO public.moon VALUES (86, 'Europa', 'Natural satellite', 15604.79, true, 30);
INSERT INTO public.moon VALUES (87, 'Callisto', 'Natural satellite', 24001.03, true, 31);
INSERT INTO public.moon VALUES (88, 'Io', 'Natural satellite', 18218.90, true, 32);
INSERT INTO public.moon VALUES (89, 'Triton', 'Natural satellite', 13532.10, true, 33);
INSERT INTO public.moon VALUES (90, 'Titania', 'Natural satellite', 78843.51, true, 34);
INSERT INTO public.moon VALUES (91, 'Rhea', 'Natural satellite', 7642.30, true, 35);
INSERT INTO public.moon VALUES (92, 'Iapetus', 'Natural satellite', 73561.80, true, 36);
INSERT INTO public.moon VALUES (93, 'Dione', 'Natural satellite', 56141.09, true, 27);
INSERT INTO public.moon VALUES (94, 'Tethys', 'Natural satellite', 53116.17, true, 28);
INSERT INTO public.moon VALUES (95, 'Enceladus', 'Natural satellite', 25211.08, true, 27);
INSERT INTO public.moon VALUES (96, 'Miranda', 'Natural satellite', 23586.20, true, 35);
INSERT INTO public.moon VALUES (97, 'Ariel', 'Natural satellite', 57891.35, true, 26);
INSERT INTO public.moon VALUES (98, 'Umbriel', 'Natural satellite', 58471.17, true, 36);
INSERT INTO public.moon VALUES (99, 'Charon', 'Natural satellite', 6001.51, true, 25);
INSERT INTO public.moon VALUES (100, 'Proteus', 'Natural satellite', 20805.05, true, 35);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Earth', 'Terrestrial', 5.97, true, 1);
INSERT INTO public.planet VALUES (26, 'Mars', 'Terrestrial', 6.30, false, 1);
INSERT INTO public.planet VALUES (27, 'Jupiter', 'Gas giant', 1.80, false, 1);
INSERT INTO public.planet VALUES (28, 'Saturn', 'Gas giant', 5.68, false, 1);
INSERT INTO public.planet VALUES (29, 'Uranus', 'Ice giant', 8.68, false, 1);
INSERT INTO public.planet VALUES (30, 'Neptune', 'Ice giant', 1.02, false, 1);
INSERT INTO public.planet VALUES (31, 'Kepler-442b', 'Exoplanet', 2.30, false, 6);
INSERT INTO public.planet VALUES (32, 'Proxima Centauri b', 'Exoplanet', 1.30, true, 6);
INSERT INTO public.planet VALUES (33, 'Gliese 581g', 'Exoplanet', 3.10, false, 6);
INSERT INTO public.planet VALUES (34, 'Trappist-1d', 'Exoplanet', 2.50, true, 6);
INSERT INTO public.planet VALUES (35, 'HD 40307g', 'Exoplanet', 5.17, false, 6);
INSERT INTO public.planet VALUES (36, 'LHS 1140b', 'Exoplanet', 6.60, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence', 1.98, 5778, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type main-sequence', 2.06, 9940, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Binary star system', 2.18, 5790, false, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant', 1.41, 3600, false, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'A-type main-sequence', 2.13, 9600, true, 2);
INSERT INTO public.star VALUES (6, 'Arcturus', 'Red giant', 1.81, 4286, true, 3);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 100, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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


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
    name character varying(20) NOT NULL,
    nr_of_stars integer NOT NULL,
    size_in_lightyears numeric(8,3),
    seen_from_earth boolean,
    description text,
    nr_of_livable_planets integer
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
    name character varying(20) NOT NULL,
    description text,
    planet_id integer,
    size_in_km integer NOT NULL,
    has_life boolean,
    distance_from_planet_in_km numeric(8,3),
    circumference_in_km integer NOT NULL
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
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL,
    size_in_km integer,
    distance_from_earth numeric(8,3),
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(20) NOT NULL,
    planet_id integer,
    planet_types_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    galaxy_id integer,
    alive boolean NOT NULL,
    nr_of_planets_in_system integer,
    distance_from_earth_in_lightyears numeric(8,3),
    size_in_lightyears integer
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

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 834855, 3453.456, false, 'no', 0);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 4857, 9058.234, false, 'no', 0);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 93756938, 23.456, false, 'no', 0);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 47572334, 25.987, false, 'no', 0);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 238495, 23.567, false, 'no', 0);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 10000, 90000.000, true, 'A hazy band of light seen in the night sky formed from starts that cannot be individually distinguished by the naked eye', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, 1, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, 2, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, 3, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, 4, 234, NULL, NULL, 2345);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, 4, 234, NULL, NULL, 2345);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, 345, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, 3454, false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, 3454, false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, 3454, false, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, 3454, false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, 3454, false, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, 3454, false, NULL, NULL, 6);
INSERT INTO public.planet VALUES (9, 'planet8', NULL, 3454, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (10, 'planet9', NULL, 3454, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'planet10', NULL, 3454, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'planet11', NULL, 3454, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (13, 'planet12', NULL, 3454, true, NULL, NULL, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('type1', 1, 1);
INSERT INTO public.planet_types VALUES ('type2', 2, 2);
INSERT INTO public.planet_types VALUES ('type3', 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, 1, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', NULL, 2, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', NULL, 3, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', NULL, 4, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', NULL, 5, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, 6, true, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_type_id_key UNIQUE (planet_types_id);


--
-- Name: planet_types planet_types_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_type_key UNIQUE (name);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet_types planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


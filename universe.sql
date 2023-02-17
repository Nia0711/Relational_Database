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
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text
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
    name character varying(30) NOT NULL,
    dist_from_earth character varying(30),
    year_of_discovery integer,
    shape character varying(10)
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
    name character varying(30) NOT NULL,
    diameter_km numeric,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    planet_types character varying(30) NOT NULL,
    has_moon boolean,
    has_rings boolean,
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
    name character varying(30) NOT NULL,
    dist_from_sun_ly integer,
    galaxy_id integer,
    constellation_id integer
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

INSERT INTO public.constellation VALUES (1, 'Sagittarius', 7, 'Its name is Latin for "archer". Commonly represented as a centaur pulling back a bow.');
INSERT INTO public.constellation VALUES (2, 'Andromeda', 8, 'Named for Andromeda, daughter of Cassiopeia, in the Greek myth.');
INSERT INTO public.constellation VALUES (3, 'Carina', 4, 'Its name is Latin for the keel of a ship, and it was the southern foundation of the larger constellation of Argo Navis.');
INSERT INTO public.constellation VALUES (4, 'Orion', 5, 'It is named after Orion, a hunter in Greek mythology. Visible throughout the world.');
INSERT INTO public.constellation VALUES (5, 'Canis Major', 2, 'Its name is Latin for "greater dog", commonly represented as following the constellation of Orion the hunter through the sky.');
INSERT INTO public.constellation VALUES (6, 'Aquila', 6, 'Its name is Latin for "eagle" and it represents the bird that carried Zeus/Jupiter thunderbolts in Greek-Roman mythology');
INSERT INTO public.constellation VALUES (7, 'Lyra', 3, 'Is a small constellation, visible in temperate northern latitudes shortly after midnight at the start of summer.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', '0 ly', 1610, 'Sb');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', '2.5M ly', 1612, 'Sa');
INSERT INTO public.galaxy VALUES (3, 'Messier 82', '11.5M ly', 1774, 'I0');
INSERT INTO public.galaxy VALUES (4, 'Tadpole', '420M ly', 1982, 'SB');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', '20M870k ly', 1781, 'SAB');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', '29M350K ly', 1781, 'unclear');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', '30M ly', 1773, 'SA');
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', '61M ly', 1835, 'SB');
INSERT INTO public.galaxy VALUES (9, 'Hoags Object', '600M ly', 1950, 'E0');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3476, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 23, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, false, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 3138, true, 6);
INSERT INTO public.moon VALUES (5, 'Callisto', 4800, true, 6);
INSERT INTO public.moon VALUES (6, 'Amalthea', 167, false, 6);
INSERT INTO public.moon VALUES (7, 'Pandora', 4800, false, 7);
INSERT INTO public.moon VALUES (8, 'Dione', 1120, true, 7);
INSERT INTO public.moon VALUES (9, 'Titan', 1346, true, 7);
INSERT INTO public.moon VALUES (10, 'Phoebe', 220, false, 7);
INSERT INTO public.moon VALUES (11, 'Titania', 35, true, 8);
INSERT INTO public.moon VALUES (12, 'Oberon', 35, true, 8);
INSERT INTO public.moon VALUES (13, 'Umbriel', 13, true, 8);
INSERT INTO public.moon VALUES (14, 'Galatea', 150, false, 9);
INSERT INTO public.moon VALUES (15, 'Triton', 220, true, 9);
INSERT INTO public.moon VALUES (16, 'Nereid', 340, false, 9);
INSERT INTO public.moon VALUES (17, 'Charon', 1200, true, 10);
INSERT INTO public.moon VALUES (18, 'Nix', 46, false, 10);
INSERT INTO public.moon VALUES (19, 'Kerberos', 28, false, 10);
INSERT INTO public.moon VALUES (20, 'Namaka', 170, false, 11);
INSERT INTO public.moon VALUES (21, 'Hiʻiaka', 310, false, 11);
INSERT INTO public.moon VALUES (22, 'MK2', 160, false, 12);
INSERT INTO public.moon VALUES (23, 'Dysnomia', 600, true, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Ceres', 'dwarf planet', false, false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'gas giant', true, true, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'gas giant', true, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'ice giant', true, true, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'ice giant', true, true, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'dwarf planet', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'dwarf planet', true, true, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'dwarf planet', true, false, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 'dwarf planet', true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 9, 1, 5);
INSERT INTO public.star VALUES (3, 'Vega', 25, 1, 7);
INSERT INTO public.star VALUES (4, 'Canopus', 310, 1, 3);
INSERT INTO public.star VALUES (5, 'Rigel', 860, 1, 4);
INSERT INTO public.star VALUES (6, 'Altair', 17, 1, 6);
INSERT INTO public.star VALUES (7, 'Nunki', 228, 1, 1);
INSERT INTO public.star VALUES (8, 'Alpheratz', 97, 1, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


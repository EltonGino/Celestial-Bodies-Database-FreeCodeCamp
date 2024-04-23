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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric NOT NULL,
    is_supermassive boolean NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    name character varying(255) NOT NULL
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
    planet_id integer NOT NULL,
    is_satellite boolean NOT NULL,
    distance_from_planet numeric,
    has_atmosphere boolean,
    name character varying(255) NOT NULL
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
    star_id integer NOT NULL,
    planet_type character varying(255),
    is_habitable boolean NOT NULL,
    age_in_millions_of_years integer,
    name character varying(255) NOT NULL
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
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    name character varying(255) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 4310000, true, 'Sagittarius A*');
INSERT INTO public.black_hole VALUES (2, 2, 6500000000, true, 'Messier 87*');
INSERT INTO public.black_hole VALUES (3, 3, 14.8, false, 'Cygnus X-1');
INSERT INTO public.black_hole VALUES (4, 1, 9.47, false, 'V404 Cygni');
INSERT INTO public.black_hole VALUES (5, 1, 6.3, false, 'GRO J1655-40');
INSERT INTO public.black_hole VALUES (6, 2, 17000000, true, 'NGC 1365');
INSERT INTO public.black_hole VALUES (7, 3, 2300000000, true, 'IC 310');
INSERT INTO public.black_hole VALUES (8, 1, 1580000000, true, '3C 48');
INSERT INTO public.black_hole VALUES (9, 1, 2500000000, true, '3C 273');
INSERT INTO public.black_hole VALUES (10, 1, 6.6, false, 'A0620-00');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Our home galaxy', true, 13000, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'Nearest spiral galaxy to the Milky Way', false, 10000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Third-largest galaxy in the Local Group', false, 5000, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Sample Galaxy 1', true, 2000, 'Sample1');
INSERT INTO public.galaxy VALUES (5, 'Sample Galaxy 2', false, 3000, 'Sample2');
INSERT INTO public.galaxy VALUES (6, 'Sample Galaxy 3', true, 4000, 'Sample3');
INSERT INTO public.galaxy VALUES (7, 'Sample
Galaxy 4', false, 5000, 'Sample4');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, true, 384400, false, 'Moon');
INSERT INTO public.moon VALUES (2, 2, true, 9377, false, 'Phobos');
INSERT INTO public.moon VALUES (3, 2, true, 23460, false, 'Deimos');
INSERT INTO public.moon VALUES (4, 7, true, 1070, true, 'Ganymede');
INSERT INTO public.moon VALUES (5, 6, true, 1221.9, true, 'Titan');
INSERT INTO public.moon VALUES (6, 9, true, 354800, true, 'Triton');
INSERT INTO public.moon VALUES (7, 10, true, 191087, false, 'Ariel');
INSERT INTO public.moon VALUES (8, 11, true, 384400, false, 'Proxima Centauri b Moon');
INSERT INTO public.moon VALUES (9, 12, true, 384400, false, 'Trappist-1d Moon');
INSERT INTO public.moon VALUES (10, 12, true, 384400, false, 'HD 209458 b Moon');
INSERT INTO public.moon VALUES (11, 1, true, 384400, false, 'Moon 2');
INSERT INTO public.moon VALUES (12, 2, true, 9377, false, 'Phobos 2');
INSERT INTO public.moon VALUES (13, 2, true, 23460, false, 'Deimos 2');
INSERT INTO public.moon VALUES (14, 7, true, 1070, true, 'Ganymede 2');
INSERT INTO public.moon VALUES (15, 6, true, 1221.9, true, 'Titan 2');
INSERT INTO public.moon VALUES (16, 9, true, 354800, true, 'Triton 2');
INSERT INTO public.moon VALUES (17, 10, true, 191087, false, 'Ariel 2');
INSERT INTO public.moon VALUES (18, 11, true, 384400, false, 'Proxima Centauri b Moon 2');
INSERT INTO public.moon VALUES (19, 12, true, 384400, false, 'Trappist-1d Moon 2');
INSERT INTO public.moon VALUES (20, 12, true, 384400, false, 'HD 209458 b Moon 2');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Terrestrial', true, 4500, 'Earth');
INSERT INTO public.planet VALUES (2, 1, 'Terrestrial', false, 4000, 'Mars');
INSERT INTO public.planet VALUES (3, 1, 'Terrestrial', false, 4600, 'Venus');
INSERT INTO public.planet VALUES (4, 2, 'Terrestrial', true, 3500, 'Kepler-186f');
INSERT INTO public.planet VALUES (5, 2, 'Super Earth', true, 3500, 'HD 219134 b');
INSERT INTO public.planet VALUES (6, 1, 'Gas Giant', false, 4600, 'Jupiter');
INSERT INTO public.planet VALUES (7, 1, 'Gas Giant', false, 4500, 'Saturn');
INSERT INTO public.planet VALUES (8, 1, 'Ice Giant', false, 5000, 'Neptune');
INSERT INTO public.planet VALUES (9, 1, 'Ice Giant', false, 4500, 'Uranus');
INSERT INTO public.planet VALUES (10, 2, 'Terrestrial', true, 3500, 'Proxima Centauri b');
INSERT INTO public.planet VALUES (11, 3, 'Terrestrial', true, 3500, 'Trappist-1d');
INSERT INTO public.planet VALUES (12, 4, 'Hot Jupiter', false, 3000, 'HD 209458 b');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, true, 0, 'SUN');
INSERT INTO public.star VALUES (2, 1, false, 4.24, 'Proxima Centauri');
INSERT INTO public.star VALUES (3, 1, false, 4.37, 'Alpha Centauri A');
INSERT INTO public.star VALUES (4, 1, false, 4.37, 'Alpha Centauri B');
INSERT INTO public.star VALUES (5, 2, false, 5.96, 'Barnard''s Star');
INSERT INTO public.star VALUES (6, 1, true, 25.05, 'Vega');
INSERT INTO public.star VALUES (7, 1, true, 8.6, 'Sirius');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- PostgreSQL database dump complete
--

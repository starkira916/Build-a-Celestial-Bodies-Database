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
    name character varying(40),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: summary; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.summary (
    name character varying(40),
    description text NOT NULL,
    summary_id integer NOT NULL
);


ALTER TABLE public.summary OWNER TO freecodecamp;

--
-- Name: summary_summary_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.summary_summary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.summary_summary_id_seq OWNER TO freecodecamp;

--
-- Name: summary_summary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.summary_summary_id_seq OWNED BY public.summary.summary_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: summary summary_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary ALTER COLUMN summary_id SET DEFAULT nextval('public.summary_summary_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'A', false, true, 100000, 23123124);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'M', false, true, 101231000, 23154543124);
INSERT INTO public.galaxy VALUES (3, 'Comet Galaxy', 'C', false, true, 14671000, 23158843124);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 'BG', false, true, 1421000, 23123124);
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxy', 'BFG', false, true, 1421500, 23173124);
INSERT INTO public.galaxy VALUES (6, 'Needle Galaxy', 'NG', false, true, 1421700, 23193124);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', '1111', false, true, 1111, 22222, 2);
INSERT INTO public.moon VALUES (2, '2', '2222', false, true, 1311, 2232, 10);
INSERT INTO public.moon VALUES (3, '3', '2322', false, true, 1211, 132, 11);
INSERT INTO public.moon VALUES (4, 'SF', '2522', false, true, 1251, 1324, 12);
INSERT INTO public.moon VALUES (6, 'AS', '2722', false, true, 1351, 1524, 6);
INSERT INTO public.moon VALUES (8, 'WT', '27772', false, true, 13512, 1334, 7);
INSERT INTO public.moon VALUES (9, 'ASDW', '212312772', false, true, 132512, 13354, 8);
INSERT INTO public.moon VALUES (10, 'ASwwaW', 'dfgdfg', false, true, 138882, 1777354, 9);
INSERT INTO public.moon VALUES (11, 'ASzxczaW', 'dfgdfg', false, true, 1312321882, 1732324, 13);
INSERT INTO public.moon VALUES (12, 'ASfghfgzaW', 'zzzzdfg', false, true, 14489742, 6544, 2);
INSERT INTO public.moon VALUES (13, 'ASfasdaaW', 'zzggggg', false, true, 14668468, 5654, 5);
INSERT INTO public.moon VALUES (14, 'A123123W', 'zzdgsdfggg', false, true, 1466468, 56456, 9);
INSERT INTO public.moon VALUES (15, 'A11113W', 'zzffffg', false, true, 14634538, 512356, 9);
INSERT INTO public.moon VALUES (16, 'Aasd13W', 'z333fffg', false, true, 14634668, 517756, 10);
INSERT INTO public.moon VALUES (17, 'Aafdgsdf13W', 'z3dfgsdfffg', false, true, 14635555, 51232356, 12);
INSERT INTO public.moon VALUES (18, 'Aafdggfhjgh13W', 'z3dfgghjgfhjfffg', false, true, 1468888, 51444456, 1);
INSERT INTO public.moon VALUES (19, 'Aafddfghdfg13W', 'z3dfgasdadafhjfffg', false, true, 143388, 53334456, 7);
INSERT INTO public.moon VALUES (20, 'Aag13W', 'z3dfdafhjfffg', false, true, 1458, 53335466, 3);
INSERT INTO public.moon VALUES (21, 'Afff13W', 'z3aaahjfffg', false, true, 142258, 53466, 6);
INSERT INTO public.moon VALUES (22, 'hhhh13W', 'zzzsshjfffg', false, true, 177758, 58866, 5);
INSERT INTO public.moon VALUES (23, 'hhhhhheeeeW', 'zzzsweeeeeshjfffg', false, true, 172228, 582226, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Z', 'Planet Z', false, true, 2000, 5000, 2);
INSERT INTO public.planet VALUES (2, 'Y', 'Planet Y', false, true, 3000, 6000, 1);
INSERT INTO public.planet VALUES (3, 'X', 'Planet X', false, true, 6000, 11000, 3);
INSERT INTO public.planet VALUES (5, 'Q', 'Planet Q', false, true, 2500, 33000, 4);
INSERT INTO public.planet VALUES (6, 'G', 'Planet G', false, true, 2700, 32000, 5);
INSERT INTO public.planet VALUES (7, 'H', 'Planet H', false, true, 3700, 55000, 6);
INSERT INTO public.planet VALUES (8, ':', 'Planet L', false, true, 3800, 75000, 5);
INSERT INTO public.planet VALUES (9, 'UI', 'Planet UI', false, true, 3900, 723000, 5);
INSERT INTO public.planet VALUES (10, 'XZ', 'Planet XZ', false, true, 35500, 726000, 3);
INSERT INTO public.planet VALUES (11, 'XYZ', 'Planet XYZ', false, true, 32500, 626000, 1);
INSERT INTO public.planet VALUES (12, 'ABC', 'Planet ABC', false, true, 32100, 68000, 2);
INSERT INTO public.planet VALUES (13, 'FGH', 'Planet FGH', true, true, 312600, 99000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 'Star 1', false, true, 1000, 2000, 1);
INSERT INTO public.star VALUES (2, 'B', 'Star 2', false, true, 1100, 2200, 2);
INSERT INTO public.star VALUES (3, 'C', 'Star 3', false, true, 1200, 2300, 3);
INSERT INTO public.star VALUES (4, 'D', 'Star 4', false, true, 1300, 2400, 4);
INSERT INTO public.star VALUES (5, 'E', 'Star 5', false, true, 1400, 2500, 5);
INSERT INTO public.star VALUES (6, 'F', 'Star 6', false, true, 1500, 2600, 6);


--
-- Data for Name: summary; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.summary VALUES ('SET A', 'Test for A', 1);
INSERT INTO public.summary VALUES ('SET B', 'Test for B', 2);
INSERT INTO public.summary VALUES ('SET C', 'Test for C', 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: summary_summary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.summary_summary_id_seq', 3, true);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: summary summary_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_name_key UNIQUE (name);


--
-- Name: summary summary_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_pkey PRIMARY KEY (summary_id);


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
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--


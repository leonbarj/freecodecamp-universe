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
    name character varying(20),
    million_stars boolean,
    type text NOT NULL,
    gas boolean NOT NULL
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
    name character varying(20),
    distance_planet integer NOT NULL,
    rotation_time integer NOT NULL,
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
    name character varying(20),
    distance_earth integer NOT NULL,
    moon_number integer NOT NULL,
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
    name character varying(20),
    hd_catalogue numeric,
    hip integer NOT NULL,
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
-- Name: sun_distance; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun_distance (
    sun_distance_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    km integer NOT NULL,
    miles integer NOT NULL
);


ALTER TABLE public.sun_distance OWNER TO freecodecamp;

--
-- Name: sun_distance_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_distance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_distance_id_seq OWNER TO freecodecamp;

--
-- Name: sun_distance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_distance_id_seq OWNED BY public.sun_distance.sun_distance_id;


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
-- Name: sun_distance sun_distance_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_distance ALTER COLUMN sun_distance_id SET DEFAULT nextval('public.sun_distance_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda I', true, 'spiral', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda II', true, 'spherical', true);
INSERT INTO public.galaxy VALUES (3, 'via lactea', true, 'spiral', true);
INSERT INTO public.galaxy VALUES (4, 'centaurus A', true, 'lenticular', true);
INSERT INTO public.galaxy VALUES (5, 'antennae', true, 'eliptica', true);
INSERT INTO public.galaxy VALUES (6, 'arp 299', true, 'irregular barrada', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 384400, 27, 3);
INSERT INTO public.moon VALUES (2, 'fobos', 9377, 1, 4);
INSERT INTO public.moon VALUES (3, 'deimos', 23460, 1, 4);
INSERT INTO public.moon VALUES (4, 'europa', 671100, 3, 5);
INSERT INTO public.moon VALUES (5, 'ganimedes', 1070400, 7, 5);
INSERT INTO public.moon VALUES (6, 'io', 421800, 2, 5);
INSERT INTO public.moon VALUES (7, 'calisto', 1882700, 17, 5);
INSERT INTO public.moon VALUES (8, 'leda', 11165000, 241, 5);
INSERT INTO public.moon VALUES (9, 'adrastea', 128900, 1, 5);
INSERT INTO public.moon VALUES (10, 'titan', 1221900, 16, 6);
INSERT INTO public.moon VALUES (11, 'encelado', 238100, 1, 6);
INSERT INTO public.moon VALUES (12, 'mimas', 185600, 1, 6);
INSERT INTO public.moon VALUES (13, 'japeto', 3560800, 79, 6);
INSERT INTO public.moon VALUES (14, 'rea', 527100, 4, 6);
INSERT INTO public.moon VALUES (15, 'tetis', 294700, 2, 6);
INSERT INTO public.moon VALUES (16, 'miranda', 129800, 1413, 7);
INSERT INTO public.moon VALUES (17, 'titania', 435840, 8706, 7);
INSERT INTO public.moon VALUES (18, 'oberon', 582600, 13, 7);
INSERT INTO public.moon VALUES (19, 'triton', 354800, 6, 8);
INSERT INTO public.moon VALUES (20, 'proteo', 117647, 1, 8);
INSERT INTO public.moon VALUES (21, 'hipocampo', 105283, 1, 8);
INSERT INTO public.moon VALUES (22, 'larisa', 48800, 1, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 149597900, 0, 10);
INSERT INTO public.planet VALUES (2, 'venus', 40000000, 0, 10);
INSERT INTO public.planet VALUES (3, 'tierra', 0, 1, 10);
INSERT INTO public.planet VALUES (4, 'marte', 57600000, 2, 10);
INSERT INTO public.planet VALUES (5, 'jupiter', 965600000, 4, 10);
INSERT INTO public.planet VALUES (6, 'saturno', 1300000000, 5, 10);
INSERT INTO public.planet VALUES (7, 'urano', 272100000, 27, 10);
INSERT INTO public.planet VALUES (8, 'neptuno', 43450000, 14, 10);
INSERT INTO public.planet VALUES (9, 'pluton', 600000000, 5, 10);
INSERT INTO public.planet VALUES (10, 'makemake', 561000000, 1, 10);
INSERT INTO public.planet VALUES (11, 'eris', 1431600000, 1, 10);
INSERT INTO public.planet VALUES (12, 'haumea', 13000000, 2, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'a and', 358, 677, 1);
INSERT INTO public.star VALUES (4, 'b and', 6860, 5447, 1);
INSERT INTO public.star VALUES (5, 'a cen a', 128620, 71683, 4);
INSERT INTO public.star VALUES (6, 'b cen', 122451, 68702, 4);
INSERT INTO public.star VALUES (7, 'u and', 9826, 7513, 2);
INSERT INTO public.star VALUES (8, 'a ant', 750, 8432, 5);
INSERT INTO public.star VALUES (9, 'arp 3', 6812, 4561, 6);
INSERT INTO public.star VALUES (10, 'sun', 5643, 352, 3);


--
-- Data for Name: sun_distance; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun_distance VALUES (1, 'earth', 3, 150, 93);
INSERT INTO public.sun_distance VALUES (2, 'mars', 4, 228, 142);
INSERT INTO public.sun_distance VALUES (3, 'jupit', 5, 778, 484);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: sun_distance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_distance_id_seq', 3, true);


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
-- Name: sun_distance sun_distance_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_distance
    ADD CONSTRAINT sun_distance_name_key UNIQUE (name);


--
-- Name: sun_distance sun_distance_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun_distance
    ADD CONSTRAINT sun_distance_pkey PRIMARY KEY (sun_distance_id);


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


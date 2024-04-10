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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    "numeric" numeric NOT NULL,
    text text,
    boolean1 boolean,
    boolean2 boolean,
    name character varying(20),
    int1 integer,
    int2 integer,
    c integer
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
    name character varying(20),
    int1 integer,
    int2 integer,
    "numeric" numeric NOT NULL,
    text text,
    boolean2 boolean,
    boolean1 boolean,
    moon_id integer NOT NULL,
    planet_id integer,
    c integer
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
    int1 integer,
    int2 integer,
    "numeric" numeric NOT NULL,
    text text,
    boolean1 boolean,
    boolean2 boolean,
    star_id integer,
    c integer
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
    "numeric" numeric NOT NULL,
    text text,
    boolean1 boolean,
    boolean2 boolean,
    galaxy_id integer,
    int1 integer,
    int2 integer,
    c integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_primary_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_primary_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_primary_key_seq OWNER TO freecodecamp;

--
-- Name: star_primary_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_primary_key_seq OWNED BY public.star.star_id;


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_primary_key_seq'::regclass);


--
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1.0, '1', true, true, 'a', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 1.0, '1', true, true, 'a', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 1.0, '1', true, true, 'a', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 2.0, '2', false, false, 'b', 2, 2, NULL);
INSERT INTO public.galaxy VALUES (5, 2.0, '2', false, false, 'b', 2, 2, NULL);
INSERT INTO public.galaxy VALUES (6, 2.0, '2', false, false, 'b', 2, 2, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 1, 1, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 2, 2, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 3, 3, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 4, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 5, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 6, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 7, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 8, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 9, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 10, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 11, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 12, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 13, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 14, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 15, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 16, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 17, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 18, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 19, 4, NULL);
INSERT INTO public.moon VALUES ('a', 1, 1, 1.0, 'a', true, false, 20, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, 1, 1.0, 'a', true, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'a', 1, 1, 1.0, 'a', true, true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'a', 1, 1, 1.0, 'a', true, true, 3, NULL);
INSERT INTO public.planet VALUES (4, 'b', 2, 2, 2.0, 'b', false, false, 4, NULL);
INSERT INTO public.planet VALUES (5, 'b', 2, 2, 2.0, 'b', false, false, 5, NULL);
INSERT INTO public.planet VALUES (6, 'b', 2, 2, 2.0, 'b', false, false, 6, NULL);
INSERT INTO public.planet VALUES (7, 'b', 2, 2, 2.0, 'b', false, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'b', 2, 2, 2.0, 'b', false, false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'b', 2, 2, 2.0, 'b', false, false, 3, NULL);
INSERT INTO public.planet VALUES (10, 'b', 2, 2, 2.0, 'b', false, false, 4, NULL);
INSERT INTO public.planet VALUES (11, 'b', 2, 2, 2.0, 'b', false, false, 5, NULL);
INSERT INTO public.planet VALUES (12, 'b', 2, 2, 2.0, 'b', false, false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1.0, 'a', true, false, 1, 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'a', 1.0, 'a', true, false, 2, 1, 1, NULL);
INSERT INTO public.star VALUES (3, 'a', 1.0, 'a', true, false, 3, 1, 1, NULL);
INSERT INTO public.star VALUES (4, 'b', 2.0, 'b', false, true, 4, 2, 2, NULL);
INSERT INTO public.star VALUES (5, 'b', 2.0, 'b', false, true, 5, 2, 2, NULL);
INSERT INTO public.star VALUES (6, 'b', 2.0, 'b', false, true, 6, 2, 2, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_primary_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_primary_key_seq', 6, true);


--
-- Name: galaxy galaxy_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_c_key UNIQUE (c);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_c_key UNIQUE (c);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_c_key UNIQUE (c);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_c_key UNIQUE (c);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planetid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planetid_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


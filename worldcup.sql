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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (142, 2018, 'Final', 886, 887, 4, 2);
INSERT INTO public.games VALUES (143, 2018, 'Third Place', 888, 889, 2, 0);
INSERT INTO public.games VALUES (144, 2018, 'Semi-Final', 887, 889, 2, 1);
INSERT INTO public.games VALUES (145, 2018, 'Semi-Final', 886, 888, 1, 0);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 887, 892, 3, 2);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 889, 893, 2, 0);
INSERT INTO public.games VALUES (148, 2018, 'Quarter-Final', 888, 894, 2, 1);
INSERT INTO public.games VALUES (149, 2018, 'Quarter-Final', 886, 895, 2, 0);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 889, 896, 2, 1);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 893, 897, 1, 0);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 888, 898, 3, 2);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 894, 899, 2, 0);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 887, 900, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 892, 901, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 895, 902, 2, 1);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 886, 903, 4, 3);
INSERT INTO public.games VALUES (158, 2014, 'Final', 904, 903, 1, 0);
INSERT INTO public.games VALUES (159, 2014, 'Third Place', 906, 894, 3, 0);
INSERT INTO public.games VALUES (160, 2014, 'Semi-Final', 903, 906, 1, 0);
INSERT INTO public.games VALUES (161, 2014, 'Semi-Final', 904, 894, 7, 1);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 906, 910, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 903, 888, 1, 0);
INSERT INTO public.games VALUES (164, 2014, 'Quarter-Final', 894, 896, 2, 1);
INSERT INTO public.games VALUES (165, 2014, 'Quarter-Final', 904, 886, 1, 0);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 894, 914, 2, 1);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 896, 895, 2, 0);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 886, 916, 2, 0);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 904, 917, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 906, 899, 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 910, 919, 2, 1);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 903, 897, 1, 0);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 888, 921, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (886, 'France');
INSERT INTO public.teams VALUES (887, 'Croatia');
INSERT INTO public.teams VALUES (888, 'Belgium');
INSERT INTO public.teams VALUES (889, 'England');
INSERT INTO public.teams VALUES (892, 'Russia');
INSERT INTO public.teams VALUES (893, 'Sweden');
INSERT INTO public.teams VALUES (894, 'Brazil');
INSERT INTO public.teams VALUES (895, 'Uruguay');
INSERT INTO public.teams VALUES (896, 'Colombia');
INSERT INTO public.teams VALUES (897, 'Switzerland');
INSERT INTO public.teams VALUES (898, 'Japan');
INSERT INTO public.teams VALUES (899, 'Mexico');
INSERT INTO public.teams VALUES (900, 'Denmark');
INSERT INTO public.teams VALUES (901, 'Spain');
INSERT INTO public.teams VALUES (902, 'Portugal');
INSERT INTO public.teams VALUES (903, 'Argentina');
INSERT INTO public.teams VALUES (904, 'Germany');
INSERT INTO public.teams VALUES (906, 'Netherlands');
INSERT INTO public.teams VALUES (910, 'Costa Rica');
INSERT INTO public.teams VALUES (914, 'Chile');
INSERT INTO public.teams VALUES (916, 'Nigeria');
INSERT INTO public.teams VALUES (917, 'Algeria');
INSERT INTO public.teams VALUES (919, 'Greece');
INSERT INTO public.teams VALUES (921, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 173, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 921, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


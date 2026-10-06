--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2026-10-01 17:50:36

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

ALTER TABLE ONLY public.places DROP CONSTRAINT places_type_of_recreation_fkey;
ALTER TABLE ONLY public.places DROP CONSTRAINT places_type_of_place_fkey;
ALTER TABLE ONLY public.opening_hours DROP CONSTRAINT opening_hours_place_id_fkey;
ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_place_id_fkey;
ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_district_id_fkey;
ALTER TABLE ONLY public.types_of_recreation DROP CONSTRAINT types_of_recreation_pkey;
ALTER TABLE ONLY public.types_of_place DROP CONSTRAINT types_of_place_pkey;
ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
ALTER TABLE ONLY public.opening_hours DROP CONSTRAINT opening_hours_pkey;
ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pkey;
DROP TABLE public.types_of_recreation;
DROP TABLE public.types_of_place;
DROP TABLE public.places;
DROP TABLE public.opening_hours;
DROP TABLE public.locations;
DROP TABLE public.districts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 73856)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 73863)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 73880)
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    place_id integer NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL,
    address text,
    district_id integer
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 73872)
-- Name: opening_hours; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opening_hours (
    id integer NOT NULL,
    place_id integer NOT NULL,
    opens_at time without time zone,
    closes_at time without time zone,
    crosses_midnight boolean DEFAULT false,
    is_24_7 boolean DEFAULT false NOT NULL
);


ALTER TABLE public.opening_hours OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 73900)
-- Name: opening_hours_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.opening_hours ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.opening_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 73840)
-- Name: places; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.places (
    id integer NOT NULL,
    name text NOT NULL,
    type_of_place integer,
    type_of_recreation integer,
    budget integer DEFAULT 0,
    communication text
);


ALTER TABLE public.places OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 73855)
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.places ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 73901)
-- Name: types_of_place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_of_place (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.types_of_place OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 73915)
-- Name: types_of_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.types_of_place ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.types_of_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 73908)
-- Name: types_of_recreation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_of_recreation (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.types_of_recreation OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 73917)
-- Name: types_of_recreation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.types_of_recreation ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.types_of_recreation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3203 (class 2606 OID 73862)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 73876)
-- Name: opening_hours opening_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opening_hours
    ADD CONSTRAINT opening_hours_pkey PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 73848)
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 73907)
-- Name: types_of_place types_of_place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_of_place
    ADD CONSTRAINT types_of_place_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 73914)
-- Name: types_of_recreation types_of_recreation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_of_recreation
    ADD CONSTRAINT types_of_recreation_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 73885)
-- Name: locations locations_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_district_id_fkey FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- TOC entry 3214 (class 2606 OID 73890)
-- Name: locations locations_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);


--
-- TOC entry 3212 (class 2606 OID 73895)
-- Name: opening_hours opening_hours_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opening_hours
    ADD CONSTRAINT opening_hours_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);


--
-- TOC entry 3210 (class 2606 OID 73930)
-- Name: places places_type_of_place_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_type_of_place_fkey FOREIGN KEY (type_of_place) REFERENCES public.types_of_place(id);


--
-- TOC entry 3211 (class 2606 OID 73935)
-- Name: places places_type_of_recreation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_type_of_recreation_fkey FOREIGN KEY (type_of_recreation) REFERENCES public.types_of_recreation(id);


-- Completed on 2026-10-01 17:50:36

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2026-10-01 17:52:25

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

--
-- TOC entry 3359 (class 0 OID 73856)
-- Dependencies: 216
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Нижегородский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Советский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Приокский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Сормовский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Московский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Канавинский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (7, 'Ленинский');
INSERT INTO public.districts (id, name) OVERRIDING SYSTEM VALUE VALUES (8, 'Автозаводский');


--
-- TOC entry 3362 (class 0 OID 73880)
-- Dependencies: 219
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.locations (place_id, latitude, longitude, address, district_id) VALUES (4, 56.284369, 43.846715, 'ул. Гороховецкая, 1Г', 6);


--
-- TOC entry 3361 (class 0 OID 73872)
-- Dependencies: 218
-- Data for Name: opening_hours; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.opening_hours (id, place_id, opens_at, closes_at, crosses_midnight, is_24_7) OVERRIDING SYSTEM VALUE VALUES (1, 4, '09:00:00', '18:00:00', false, false);


--
-- TOC entry 3357 (class 0 OID 73840)
-- Dependencies: 214
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.places (id, name, type_of_place, type_of_recreation, budget, communication) OVERRIDING SYSTEM VALUE VALUES (4, 'Паровозы России', 2, 2, 300, 'https://gzd.rzd.ru/ru/10081?ysclid=li4dwvadvk329717879');


--
-- TOC entry 3364 (class 0 OID 73901)
-- Dependencies: 221
-- Data for Name: types_of_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types_of_place (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'парк');
INSERT INTO public.types_of_place (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'музей');
INSERT INTO public.types_of_place (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'спортивное пространство');


--
-- TOC entry 3365 (class 0 OID 73908)
-- Dependencies: 222
-- Data for Name: types_of_recreation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types_of_recreation (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'активный');
INSERT INTO public.types_of_recreation (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'пассивный');


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 217
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 8, true);


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 220
-- Name: opening_hours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opening_hours_id_seq', 1, true);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 215
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.places_id_seq', 4, true);


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 223
-- Name: types_of_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_place_id_seq', 3, true);


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 224
-- Name: types_of_recreation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_recreation_id_seq', 2, true);


-- Completed on 2026-10-01 17:52:25

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2026-10-19 12:46:51

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
-- TOC entry 3383 (class 0 OID 73945)
-- Dependencies: 226
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attributes (id, name) FROM stdin;
1	Свидание
2	Сводить ребенка
3	Только совершеннолетние
\.


--
-- TOC entry 3378 (class 0 OID 73901)
-- Dependencies: 221
-- Data for Name: types_of_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_of_place (id, name) FROM stdin;
1	парк
2	музей
3	спортивное пространство
\.


--
-- TOC entry 3379 (class 0 OID 73908)
-- Dependencies: 222
-- Data for Name: types_of_recreation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_of_recreation (id, name) FROM stdin;
1	активный
2	пассивный
\.


--
-- TOC entry 3371 (class 0 OID 73840)
-- Dependencies: 214
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.places (id, name, type_of_place, type_of_recreation, budget, communication, description, img) FROM stdin;
4	Паровозы России	2	2	300	https://gzd.rzd.ru/ru/10081?ysclid=li4dwvadvk329717879	Железнодорожный музей Нижнего Новгорода «Паровозы России» располагается под открытым небом на окраине города, возле Сортировочного озера. На территории можно увидеть 20 единиц отреставрированной техники разного производства. Вход совершенно бесплатный. Возле каждого паровоза есть специальные таблички с минимальной информацией об объекте. В большую часть локомотивов можно залезть, сделать фотографии паровоза изнутри, пощупать их руками — дети будут в восторге. Недалеко открыта историческая часть музея с макетами старых вокзалов, поездов и много другого, с чем вас познакомят опытные экскурсоводы.	1245_800_fixedwidth_retina.jpg
5	Нижегородская ярмарка	2	2	0	http://www.yarmarka.ru/	Нижегородская ярмарка – бренд Нижнего Новгорода с богатой историей. Нижний Новгород всегда был центром инноваций, а Нижегородская ярмарка – его главной «витриной», неизменно изумлявшей гостей своими диковинами. Здесь продавали экзотические товары, придумывали необычные развлечения и внедряли новейшие изобретения для нужд этого размашистого торжища, подарившего Нижнему Новгороду звание «кармана России». Проследите исторический путь Ярмарки от «Кармана России» в XIX веке до крупнейшего конгрессно-выставочного центра Поволжья в XXI.	8x2c7fo74fwaqzt9nup0obabtkgkmn8a.jpg
\.


--
-- TOC entry 3382 (class 0 OID 73942)
-- Dependencies: 225
-- Data for Name: attributes_of_places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attributes_of_places (place_id, attribute_id) FROM stdin;
\.


--
-- TOC entry 3373 (class 0 OID 73856)
-- Dependencies: 216
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.districts (id, name) FROM stdin;
1	Нижегородский
2	Советский
3	Приокский
4	Сормовский
5	Московский
6	Канавинский
7	Ленинский
8	Автозаводский
\.


--
-- TOC entry 3376 (class 0 OID 73880)
-- Dependencies: 219
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (place_id, latitude, longitude, address, district_id) FROM stdin;
4	56.284369	43.846715	ул. Гороховецкая, 1Г	6
5	56.328370	43.961215	Совнаркомовская ул., 13	6
\.


--
-- TOC entry 3375 (class 0 OID 73872)
-- Dependencies: 218
-- Data for Name: opening_hours; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opening_hours (id, place_id, opens_at, closes_at, crosses_midnight, is_24_7) FROM stdin;
1	4	09:00:00	18:00:00	f	f
2	5	\N	\N	\N	t
\.


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 227
-- Name: attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attributes_id_seq', 3, true);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 217
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 8, true);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 220
-- Name: opening_hours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opening_hours_id_seq', 2, true);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 215
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.places_id_seq', 5, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 223
-- Name: types_of_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_place_id_seq', 3, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 224
-- Name: types_of_recreation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_recreation_id_seq', 2, true);


-- Completed on 2026-10-19 12:46:51

--
-- PostgreSQL database dump complete
--


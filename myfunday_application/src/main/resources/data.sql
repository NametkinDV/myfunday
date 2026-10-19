--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2026-10-19 19:47:24

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
6	ресторан
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
33	Парк имени 777-летия Нижнего Новгорода	1	2	0	+7 (831) 256-59-35	\N	\N
4	Паровозы России	2	2	300	https://gzd.rzd.ru/ru/10081?ysclid=li4dwvadvk329717879	Железнодорожный музей Нижнего Новгорода «Паровозы России» располагается под открытым небом на окраине города, возле Сортировочного озера. На территории можно увидеть 20 единиц отреставрированной техники разного производства. Вход совершенно бесплатный. Возле каждого паровоза есть специальные таблички с минимальной информацией об объекте. В большую часть локомотивов можно залезть, сделать фотографии паровоза изнутри, пощупать их руками — дети будут в восторге. Недалеко открыта историческая часть музея с макетами старых вокзалов, поездов и много другого, с чем вас познакомят опытные экскурсоводы.	1245_800_fixedwidth_retina.jpg
5	Нижегородская ярмарка	2	2	0	http://www.yarmarka.ru/	Нижегородская ярмарка – бренд Нижнего Новгорода с богатой историей. Нижний Новгород всегда был центром инноваций, а Нижегородская ярмарка – его главной «витриной», неизменно изумлявшей гостей своими диковинами. Здесь продавали экзотические товары, придумывали необычные развлечения и внедряли новейшие изобретения для нужд этого размашистого торжища, подарившего Нижнему Новгороду звание «кармана России». Проследите исторический путь Ярмарки от «Кармана России» в XIX веке до крупнейшего конгрессно-выставочного центра Поволжья в XXI.	8x2c7fo74fwaqzt9nup0obabtkgkmn8a.jpg
27	Музей занимательных наук "Кварки"	2	2	800	https://kvarky.ru/	\N	\N
28	Усадьба Рукавишниковых	2	2	500	http://ngiamz.ru/usadba-rukavishnikovykh	\N	\N
29	Музей детства А. М. Горького Домик Каширина	2	2	300	https://museumgorkogo.ru/muzej-detstva-a-m-gorkogo-domik-kashirina/	\N	\N
30	Музей-квартира А.М.Горького	2	2	300	http://museumgorkogo.ru/muzej-kvartira-a-m-gorkogo	\N	\N
31	Технический музей	2	2	350	https://ngiamz.ru/	\N	\N
32	Автозаводский парк	1	2	0	https://parkinnov.ru/park-svetloyarskij	\N	\N
34	Парк Культбаза	1	2	0	https://yandex.ru/maps/org/park_kultbaza/6732926510/	\N	\N
35	Парк культуры и отдыха имени 1 Мая	1	2	0	https://parkinnov.ru/	\N	\N
36	Парк имени Маяковского	1	2	0	https://yandex.ru/maps/org/park_imeni_mayakovskogo/55483141695/	\N	\N
37	Дубки	1	2	0	https://parkinnov.ru/park-dubki	\N	\N
38	Парк Швейцария	1	2	0	swissparknn.ru	\N	\N
39	Парк Приокский	1	2	0	https://yandex.ru/maps/org/park_priokskiy/191160706260/	\N	\N
40	Анкудиновский лесопарк	1	2	0	https://yandex.ru/maps/org/ankudinovskiy_lesopark/32349097972/	\N	\N
41	Городской ландшафтный парк культуры и отдыха имени А. С. Пушкина	1	2	0	https://yandex.ru/maps/org/gorodskoy_landshaftny_park_kultury_i_otdykha_imeni_a_s_pushkina/212117638778/	\N	\N
42	Парк имени Кулибина	1	2	0	https://yandex.ru/maps/org/park_imeni_kulibina/163492502432/	\N	\N
43	Парк Светлоярский	1	2	0	https://parkinnov.ru/park-svetloyarskij	\N	\N
44	Сормовский парк культуры и отдыха	1	2	0	sormovopark.ru	\N	\N
46	ННГУ им. Н.И. Лобачевского, ботанический сад	1	2	0	www.unn.ru	\N	\N
47	Горадром	3	1	500	https://vk.ru/goradrom	\N	\N
45	Кусто	6	2	3000	https://custo.rest/	\N	\N
\.


--
-- TOC entry 3382 (class 0 OID 73942)
-- Dependencies: 225
-- Data for Name: attributes_of_places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attributes_of_places (place_id, attribute_id) FROM stdin;
27	2
32	2
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
27	56.320218	43.946338	ул. Фильченкова, 10	6
28	56.329333	44.016239	Верхне-Волжская набережная, 7	1
29	56.323897	43.990733	Почтовый съезд, 21	1
30	56.322769	44.018617	ул. Семашко, 19	1
31	56.318136	43.995234	ул. Большая Покровская, 43	1
33	56.262644	43.875322	ул. Дьяконова	8
35	56.309597	43.936146	ул. Октябрьской Революции, 31	7
36	56.276674	43.938530	ул. Перекопская	7
44	56.340000	43.860000	бул. Юбилейный, 31	4
45	56.324265	44.005963	ул. Пискунова, 16	1
47	56.326576	44.039943	Набережная Гребного канала, 108г	1
32	56.241828	43.858547	историческая территория Соцгород Автозавода	8
34	56.263120	43.890522	парк Культбаза	8
37	56.268866	43.922435	парк Дубки	7
38	56.271791	43.975747	парк Швейцария	3
39	56.230597	43.945078	Диск-гольф парк Приокский	3
40	56.252977	44.031270	памятник природы регионального значения Дубрава Ботанического сада университета	3
41	56.307960	43.999675	Городской ландшафтный парк культуры и отдыха имени А.С. Пушкина	2
42	56.316103	44.006048	парк имени Кулибина	2
43	56.356298	43.827130	парк Светлоярский 46	4
46	56.255419	44.005947	памятник природы регионального значения Ботанический сад ННГУ имени Н.И. Лобачевского	3
\.


--
-- TOC entry 3375 (class 0 OID 73872)
-- Dependencies: 218
-- Data for Name: opening_hours; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opening_hours (id, place_id, opens_at, closes_at, crosses_midnight, is_24_7) FROM stdin;
1	4	09:00:00	18:00:00	f	f
2	5	\N	\N	\N	t
3	27	10:00:00	19:00:00	f	f
4	28	10:00:00	20:00:00	f	f
5	29	09:00:00	17:00:00	f	f
6	30	09:00:00	17:00:00	f	f
7	31	11:00:00	18:00:00	f	f
8	32	\N	\N	\N	t
9	33	06:00:00	00:00:00	f	f
10	34	05:00:00	02:00:00	t	f
11	35	05:30:00	23:00:00	f	f
12	36	\N	\N	\N	t
13	37	\N	\N	\N	t
14	38	05:00:00	23:00:00	f	f
15	39	\N	\N	\N	t
16	40	\N	\N	\N	t
17	41	\N	\N	\N	t
18	42	\N	\N	\N	t
19	43	\N	\N	\N	t
20	44	10:00:00	22:00:00	f	f
21	45	12:00:00	00:00:00	f	f
22	46	09:00:00	17:00:00	f	f
23	47	13:00:00	21:00:00	f	f
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

SELECT pg_catalog.setval('public.opening_hours_id_seq', 23, true);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 215
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.places_id_seq', 47, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 223
-- Name: types_of_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_place_id_seq', 6, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 224
-- Name: types_of_recreation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_of_recreation_id_seq', 2, true);


-- Completed on 2026-10-19 19:47:24

--
-- PostgreSQL database dump complete
--


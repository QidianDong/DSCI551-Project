--
-- PostgreSQL database dump
--

\restrict oErvhaHfbaRu7gmmWbBHGJ46GBU2Jz5G25ODHR8dXBCVpqJv4VzFbpmtonKWcNc

-- Dumped from database version 16.13
-- Dumped by pg_dump version 16.13

-- Started on 2026-04-20 09:34:35

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
-- TOC entry 216 (class 1259 OID 16400)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customerid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: customers_customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customerid_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 215
-- Name: customers_customerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;


--
-- TOC entry 218 (class 1259 OID 16407)
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    inventoryid integer NOT NULL,
    bouquetname character varying(100),
    stockquantity integer,
    price numeric(10,2)
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16406)
-- Name: inventory_inventoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_inventoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventory_inventoryid_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 217
-- Name: inventory_inventoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_inventoryid_seq OWNED BY public.inventory.inventoryid;


--
-- TOC entry 221 (class 1259 OID 16426)
-- Name: orderline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderline (
    orderid integer NOT NULL,
    inventoryid integer NOT NULL,
    quantity integer
);


ALTER TABLE public.orderline OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16414)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    orderdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    totalamount numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16413)
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_orderid_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 219
-- Name: orders_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;


--
-- TOC entry 4749 (class 2604 OID 16403)
-- Name: customers customerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 16410)
-- Name: inventory inventoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory ALTER COLUMN inventoryid SET DEFAULT nextval('public.inventory_inventoryid_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 16417)
-- Name: orders orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);


--
-- TOC entry 4908 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customerid, firstname, lastname, email) FROM stdin;
1	Haley	Sanders	ruiztiffany@example.net
2	Amanda	Hernandez	nicholas47@example.net
3	Jason	Grimes	katiebrown@example.net
4	Jon	Berger	baileytimothy@example.org
5	Alexander	Hardy	nicoleanderson@example.com
6	Ashley	Patterson	ajackson@example.org
7	Steven	Taylor	jonesconnie@example.org
8	Ronald	Marshall	kristin06@example.org
9	Scott	Spencer	martinjoseph@example.net
10	Mary	White	bruce78@example.org
11	Patricia	Rosales	thomasalison@example.org
12	Karen	Bradley	uaguilar@example.com
13	Anthony	Brown	littlepatricia@example.com
14	Brandi	Wells	sarah91@example.net
15	Craig	Dickson	cburke@example.org
16	Brian	Gutierrez	angelbarry@example.com
17	Alan	Wolf	hsmith@example.net
18	Christopher	Green	meyersdaniel@example.net
19	Christy	Bryant	egrant@example.com
20	Michael	Wilson	pparsons@example.com
21	Trevor	Cunningham	brittany25@example.org
22	Todd	Dennis	loristark@example.com
23	Amber	Roberts	clarksteven@example.com
24	Gregory	Lopez	yallen@example.net
25	Stephen	Norman	kleonard@example.org
26	Jose	Ho	christopher56@example.net
27	Christopher	Richardson	phill@example.net
28	Stacy	Williams	tammyayers@example.net
29	Michael	Kim	krowe@example.net
30	Derek	Shaw	cbrewer@example.net
31	William	Bradley	velliott@example.com
32	Alan	Gillespie	chrishudson@example.com
33	Sarah	Hardy	xjohnson@example.com
34	Deborah	Turner	lindsay93@example.net
35	Jack	Orr	rebekahsmith@example.org
36	Michelle	Lucas	jonesjake@example.net
37	Amanda	Adams	ggutierrez@example.org
38	Roy	Smith	gclark@example.com
39	Ashley	Richardson	jimenezshannon@example.org
40	Diana	Jensen	houseemily@example.net
41	Rodney	Gonzalez	claudia92@example.net
42	James	Cox	leemichael@example.net
43	James	Lopez	ihawkins@example.com
44	Bruce	Lloyd	nunezgail@example.com
45	David	Davis	wpadilla@example.org
46	Brad	Wise	thomasbaker@example.org
47	Chris	Mayo	thomasstephen@example.net
48	Rachel	Figueroa	timothy04@example.com
49	Brenda	Black	kmartin@example.net
50	Kyle	Williams	davejones@example.org
51	Kenneth	Brown	nthompson@example.net
52	Robert	Calderon	johnchambers@example.net
53	Janet	Oconnell	madeline28@example.org
54	Elizabeth	Mckenzie	doughertyrobert@example.org
55	Sarah	Miller	morganrichard@example.org
56	Kelly	Richardson	dwood@example.net
57	Brenda	Parks	pamela46@example.net
58	Ryan	Bennett	larryallen@example.net
59	Heidi	Rodriguez	dstewart@example.net
60	Christine	Mcdonald	williamslisa@example.net
61	Allen	Lee	chanlisa@example.net
62	Mark	Beard	mendozaalice@example.net
63	Andrew	Wood	maria77@example.com
64	Samantha	Lee	tmcintosh@example.org
65	Christopher	Hernandez	baileyrobert@example.org
66	Molly	Burgess	simpsonadam@example.org
67	John	Newton	garciavalerie@example.com
68	Angela	Gardner	johnsonjonathan@example.net
69	Angela	Foster	mandydudley@example.net
70	Samantha	Hunt	vwillis@example.com
71	Cody	Johnson	rothjason@example.org
72	Richard	Walker	xbishop@example.net
73	Melissa	Bennett	michaelgarner@example.org
74	Keith	Osborne	wandamacias@example.net
75	Toni	Bauer	edwardschristopher@example.net
76	Stacy	Williams	qavila@example.org
77	Eric	Mills	stephanie24@example.net
78	Matthew	Blair	thomas84@example.net
79	Emily	Bradford	matthewramos@example.com
80	Joshua	Alvarez	marshamy@example.net
81	Charles	Rogers	ukidd@example.com
82	Mark	Graham	icunningham@example.com
83	Jeffrey	Jenkins	ryan41@example.org
84	Douglas	Jennings	mary55@example.com
85	Jason	Miller	saraschneider@example.net
86	Anthony	Bryant	jacksonmiller@example.com
87	John	Solomon	sean34@example.org
88	Donna	Villarreal	stephanie91@example.net
89	Renee	Smith	xparker@example.com
90	Micheal	Allen	wilsonloretta@example.net
91	Jennifer	Kennedy	heather78@example.com
92	Rebecca	Barrett	creed@example.net
93	Michael	Miller	lidiana@example.net
94	Christian	Hill	jillwright@example.org
95	Joseph	Orr	kaitlin82@example.com
96	Lisa	Santiago	luis04@example.com
97	Scott	Horn	hortonrebecca@example.com
98	Ashley	Trujillo	shannonbarbara@example.net
99	Hannah	Mcdonald	usmith@example.org
100	Ashley	Barber	nmarsh@example.com
101	Jessica	Zamora	david57@example.net
102	Danielle	Jackson	jose93@example.net
103	Christina	Buchanan	zsolomon@example.org
104	Michelle	Davis	melanie58@example.net
105	Ashley	Williams	wattsmichelle@example.net
106	Jonathan	Roberts	jamespeters@example.com
107	Stephanie	Hamilton	branchtara@example.com
108	Kimberly	Simpson	ericamontgomery@example.net
109	Manuel	Morgan	brianmorris@example.net
110	Kim	Mcdonald	jeffreydean@example.com
111	William	Steele	bkim@example.org
112	Joseph	Montoya	mario86@example.net
113	Jill	Wilson	nicole97@example.net
114	Ryan	Thomas	daryl76@example.com
115	Justin	Jones	taylorjohnson@example.com
116	Kyle	Rose	tateemma@example.net
117	Nancy	Weber	qtate@example.org
118	Kathleen	Roach	mjohnson@example.net
119	Melinda	Shepherd	vgibson@example.com
120	Kelly	Buckley	andradeashley@example.com
121	Edward	Nolan	gabriellasmith@example.org
122	Kristen	Zuniga	esanford@example.com
123	Crystal	Quinn	kurt29@example.net
124	Vanessa	Palmer	dharris@example.net
125	Megan	Molina	amydelgado@example.com
126	Kelly	Hartman	mjackson@example.com
127	Todd	Morton	lisa97@example.org
128	Theresa	Thomas	michaelnelson@example.org
129	Tara	Johnson	lesliejones@example.net
130	Matthew	Sanders	rebeccagonzalez@example.org
131	Johnathan	Williams	aprilholmes@example.com
132	Lucas	Morris	browntimothy@example.com
133	Ann	Hall	thompsonhenry@example.org
134	Louis	Poole	christian60@example.net
135	Thomas	Bright	kharrell@example.com
136	Jose	Torres	amysmith@example.org
137	Clifford	Spence	cpage@example.com
138	Scott	Stevenson	april41@example.com
139	Joseph	Gardner	mcdanielwilliam@example.com
140	Andrea	Christensen	williamsallen@example.com
141	Crystal	Graves	bmckenzie@example.com
142	Tyler	Chang	michaelavila@example.net
143	Kelsey	Jensen	sarahrodriguez@example.net
144	Peter	Scott	katherine47@example.com
145	Justin	Rodriguez	lbrown@example.org
146	Alicia	Bennett	davenportjose@example.net
147	Debbie	Calderon	xmccoy@example.org
148	Carol	Peterson	scottsheila@example.com
149	Michael	Oconnor	christopher40@example.org
150	Jeffrey	Travis	michaelberger@example.org
151	Krystal	Camacho	gregoryhicks@example.com
152	Larry	Brooks	kevincannon@example.com
153	Ian	Harris	ywilliams@example.com
154	Jennifer	Williams	lynn17@example.com
155	Rhonda	Cruz	jennahayes@example.com
156	Victor	Gilbert	paulpratt@example.org
157	Albert	Lee	daybeth@example.com
158	Ryan	Carlson	tstone@example.com
159	Lori	Morris	erobertson@example.net
160	Patricia	Duffy	aburch@example.com
161	Jennifer	Fox	martinrachel@example.com
162	Jonathan	Schwartz	tracey14@example.net
163	Barbara	Ramirez	nhughes@example.com
164	Marissa	Erickson	james12@example.net
165	Kim	Woods	derek41@example.org
166	Marisa	Michael	hernandezwilliam@example.net
167	Brian	Anderson	ufloyd@example.org
168	Aaron	Gutierrez	rsparks@example.net
169	Michelle	Turner	lwalsh@example.com
170	Yvette	Mcguire	omar61@example.org
171	Christina	Martinez	anitaharris@example.com
172	David	Palmer	ronaldhatfield@example.net
173	Holly	Valdez	bartonjacob@example.org
174	Gregg	Park	shannon68@example.org
175	Karl	Gonzalez	matthewhudson@example.com
176	Elizabeth	Thompson	zpeters@example.org
177	Keith	Rogers	ecooper@example.com
178	Alicia	Avery	ricky22@example.org
179	Gloria	Compton	briandavis@example.net
180	David	Hughes	jameselaine@example.com
181	Bobby	Wright	cberry@example.com
182	Mary	Burton	pfoley@example.com
183	Vanessa	Howell	ingramjillian@example.org
184	Connor	Clark	leedavid@example.org
185	Andrew	Holt	rbrown@example.com
186	Nathan	Cruz	jasondavis@example.org
187	Justin	Brown	mirandaharper@example.com
188	David	Valenzuela	jeanne94@example.org
189	Molly	Knight	hunterlori@example.com
190	Angel	Liu	graveslaurie@example.com
191	Sara	Coleman	timothyarellano@example.org
192	Morgan	Perez	amanda18@example.com
193	Barbara	Blake	allen57@example.com
194	Aaron	Avila	jennifer41@example.com
195	Dawn	Harper	amanda67@example.com
196	Todd	Arnold	smithmichelle@example.com
197	Andre	Johnson	ydouglas@example.net
198	Wesley	Nichols	darlene95@example.com
199	Ian	Ryan	mccoyjordan@example.org
200	George	Lewis	monroejohn@example.net
201	Thomas	Thompson	ewilliams@example.org
202	David	Evans	seanvalentine@example.org
203	Richard	Hernandez	mooretiffany@example.org
204	Paul	Michael	taylorbrenda@example.com
205	Alexandria	Shaw	sylvia28@example.com
206	Elijah	Trevino	brenda84@example.net
207	Lance	Johnson	bryan36@example.net
208	Courtney	Li	christopherscott@example.org
209	John	Bass	owenjames@example.org
210	Lisa	Thomas	christopherhall@example.net
211	Michael	Lamb	smithbrandon@example.net
212	Lisa	Green	igarner@example.org
213	Alexis	Rojas	hmiller@example.net
214	Melissa	Dawson	taylor46@example.org
215	Betty	Hanson	barbarajohnson@example.net
216	Tina	Johnson	andrew39@example.org
217	Samuel	Gates	ecarr@example.com
218	Leroy	Copeland	groth@example.net
219	Shane	Hogan	lori84@example.net
220	Allison	Moran	kentcharles@example.org
221	Michael	Cooper	jonathan79@example.com
222	Rodney	Maxwell	fergusonjoseph@example.net
223	Linda	Evans	delgadodonna@example.com
224	Rebecca	Walton	laura00@example.com
225	Jason	Hansen	anthonyramirez@example.net
226	Blake	Ibarra	haleycarr@example.org
227	John	Kirk	brewermegan@example.com
228	Ashley	Stephens	amy00@example.com
229	Christopher	Gonzales	alexandrabartlett@example.org
230	Lisa	Riley	kyle62@example.net
231	Daniel	Brooks	lauriecummings@example.net
232	Daniel	Thompson	garymann@example.com
233	Mathew	Martinez	mherrera@example.org
234	William	Davis	joshuathompson@example.com
235	Patricia	Love	amy96@example.org
236	Barbara	Miller	bschmitt@example.net
237	Lindsay	Becker	marc36@example.org
238	Melissa	Atkins	mollysalinas@example.com
239	Michael	Holland	davidcross@example.net
240	Kathleen	Dixon	kristenfriedman@example.com
241	Craig	Jones	allenbenjamin@example.net
242	Corey	Nguyen	wagnermichael@example.com
243	Christopher	Baker	qcox@example.net
244	Molly	Holmes	bartlettjoseph@example.net
245	Dustin	Ali	jenniferwong@example.net
246	Jason	Fuentes	ballardnicholas@example.com
247	Jason	Burke	cooperwilliam@example.org
248	William	Kelly	courtneybrown@example.org
249	Paul	Pineda	rebeccale@example.net
250	Francisco	Harris	reynoldskatherine@example.com
251	Calvin	Archer	goodwinholly@example.org
252	Brian	Roberts	brandy82@example.com
253	Vanessa	Little	robertwaller@example.com
254	Karen	Mckee	cheryl04@example.org
255	Jennifer	Nunez	osbornedenise@example.net
256	Alexis	Taylor	jonathan11@example.net
257	Ronald	Fox	tamara28@example.net
258	Amy	Long	richard01@example.com
259	Cindy	Welch	carpenteradam@example.net
260	Timothy	Moore	wardlynn@example.com
261	Kaitlin	Johnson	boyerjennifer@example.net
262	Wayne	Garcia	patriciagarcia@example.org
263	Mary	Ellis	clarkalexandra@example.org
264	Sharon	Higgins	estradapaul@example.com
265	Jennifer	Wagner	kcline@example.net
266	Amy	Cook	ryan85@example.com
267	Jessica	Olson	xavier97@example.org
268	Jason	Nguyen	nathanmills@example.com
269	William	Ward	imedina@example.net
270	Laura	Hardy	rebeccadorsey@example.org
271	Gina	Woods	xdavis@example.net
272	Lauren	Robinson	imorgan@example.org
273	Lindsey	Smith	billypatel@example.org
274	Duane	Lopez	hoffmankathleen@example.com
275	Beth	Price	walkerjennifer@example.com
276	Larry	Fisher	jason07@example.com
277	Matthew	Sanchez	zcastillo@example.org
278	Natalie	Tate	ijohnson@example.com
279	James	Peters	amy63@example.org
280	Sandy	Miller	shuffman@example.net
281	Veronica	Clark	lopezrhonda@example.org
282	Samuel	Ward	rmyers@example.org
283	Christina	Simmons	huangjerry@example.org
284	David	Peters	bradley98@example.net
285	Jeffrey	Ross	barrerasteven@example.org
286	Erin	Scott	brandon20@example.org
287	Leslie	Ford	xkemp@example.com
288	Taylor	Roberson	ortegalance@example.com
289	Raymond	Wheeler	eric51@example.com
290	Ricky	Lowe	mhall@example.com
291	Randy	Welch	gilbertmeredith@example.org
292	Brittany	Lewis	kaitlyn45@example.net
293	Nicole	Cruz	colepatrick@example.org
294	Anna	Johnson	qsummers@example.com
295	Mary	Lowe	anthonysalinas@example.org
296	Connie	Thomas	valerierojas@example.com
297	Holly	Rocha	carlosmendez@example.com
298	Kyle	Chavez	tammy43@example.org
299	Melissa	Norris	walexander@example.com
300	Christina	Brady	marcuspope@example.org
301	Danielle	Hancock	danielwatkins@example.org
302	James	Koch	istanley@example.org
303	John	Best	rebeccaadkins@example.com
304	Elizabeth	Gates	chad24@example.com
305	Jason	Pollard	nortiz@example.com
306	Lori	Frazier	rvaughan@example.net
307	Kevin	Poole	smithlauren@example.com
308	Christopher	Roach	iweber@example.net
309	Kathryn	Henry	michellehall@example.net
310	Christina	Roberts	vfoster@example.net
311	Christopher	Ryan	opark@example.net
312	Helen	Thompson	johnsonmichael@example.com
313	Jacqueline	Torres	xroberts@example.org
314	Amanda	Daniels	edwardsdustin@example.org
315	Rose	Wood	kennethpowell@example.org
316	Nicholas	Anderson	alexanderlucas@example.org
317	Gregory	Gibson	kelly88@example.com
318	Barbara	Callahan	cware@example.net
319	Tracey	Snow	fgordon@example.net
320	Eric	King	bobby33@example.com
321	Robert	Austin	tiffanyrobinson@example.net
322	David	Bates	reyesjessica@example.com
323	Theresa	Walker	autumnrodriguez@example.net
324	Catherine	Watts	leachheather@example.org
325	Elizabeth	Henderson	thomascarlson@example.com
326	Michael	Wells	davissydney@example.net
327	Micheal	Robinson	kristi87@example.net
328	Andrew	Cook	kristina78@example.net
329	Theresa	Thompson	allenmichael@example.net
330	Christina	Stafford	jraymond@example.net
331	Daniel	Bell	shawnhardin@example.com
332	Andrea	Manning	mandy62@example.com
333	David	Gordon	veronica67@example.net
334	Donna	Cortez	jeffersonlori@example.com
335	Robert	Perez	williamsjimmy@example.net
336	Stephen	Wright	jessica01@example.net
337	Brandi	Richardson	lrodriguez@example.net
338	Grace	Reed	marie96@example.com
339	Charles	Oneill	emilysims@example.com
340	Mike	Adams	hayeskristen@example.org
341	Nicholas	Gonzalez	donovanwilliam@example.org
342	Jonathan	Anderson	douglasmiller@example.org
343	Nathaniel	Klein	lydiamccall@example.net
344	Tara	Cooper	mossthomas@example.net
345	Jacqueline	Parker	sandrawagner@example.com
346	Jonathan	Thompson	pcox@example.org
347	Nancy	Mathews	thomasmoody@example.com
348	Sean	Clarke	garyhill@example.org
349	Monica	Gutierrez	okim@example.net
350	Joseph	Garner	andrew16@example.net
351	Valerie	Daugherty	dustincampbell@example.org
352	Lauren	Riley	mnichols@example.com
353	Matthew	Owens	kendraedwards@example.org
354	Bethany	Larson	swilliams@example.com
355	Erika	Wiggins	lewisangela@example.net
356	Cassidy	Young	carolynfoster@example.com
357	Jason	Allison	sjackson@example.com
358	Erika	Silva	julie42@example.com
359	Jody	Sawyer	browntroy@example.net
360	Christine	Schmitt	maria72@example.com
361	Gabriel	Hernandez	gwilliams@example.com
362	Jerome	Hendricks	daniellehenry@example.net
363	Courtney	Torres	zedwards@example.com
364	Brenda	Waller	ethompson@example.net
365	Jamie	Nash	xbowman@example.com
366	Mark	Alexander	patrick81@example.net
367	Karen	Jennings	brittany54@example.org
368	Robert	Martin	aliciacobb@example.org
369	Larry	Camacho	bmcdowell@example.org
370	Jessica	Vargas	acruz@example.net
371	Judy	Smith	dhamilton@example.net
372	Victoria	Patel	michael76@example.org
373	Lindsey	Lynch	kathleenperez@example.com
374	Lauren	Roman	nathangonzalez@example.org
375	Caitlyn	Jones	jwaters@example.net
376	Michael	Meyer	melissa81@example.org
377	Brittany	Pierce	xobrien@example.net
378	Daniel	Haney	ysnyder@example.com
379	Martin	Campbell	miguel38@example.com
380	Carmen	Flowers	sally00@example.com
381	Brittany	Richard	tarajohns@example.com
382	John	Terry	christopheralvarado@example.net
383	Carrie	Frazier	williamle@example.org
384	Michelle	Carlson	ronaldschneider@example.org
385	Robert	Crosby	derekmiller@example.org
386	Brian	Thomas	jacksonmatthew@example.com
387	Daniel	Lee	michaelcannon@example.net
388	Dwayne	Miller	williambranch@example.com
389	Robert	Moore	jennifercarr@example.net
390	Kevin	Price	ngregory@example.org
391	Steven	Harris	malloryshelton@example.net
392	Christina	Richards	masonsherman@example.com
393	Lori	Kim	scottkelly@example.net
394	Michael	Mcknight	davidsmith@example.org
395	Kathleen	Wilkerson	robert93@example.net
396	Michele	King	umann@example.org
397	Janet	Moore	matthewjohns@example.com
398	Amber	Smith	juliehernandez@example.com
399	James	Powell	dsantiago@example.org
400	Victoria	Diaz	christopher57@example.org
401	Kathleen	Lewis	rivastamara@example.org
402	Olivia	Johnson	martinezjay@example.com
403	Mark	Choi	mary64@example.net
404	Loretta	Mcdonald	davisricardo@example.net
405	Nancy	Young	johnstonsteven@example.com
406	James	Tran	ambertrujillo@example.com
407	Jennifer	Mueller	sheena07@example.org
408	Carol	Robinson	neallisa@example.com
409	Benjamin	Stone	laura75@example.com
410	Valerie	Allen	samanthaward@example.org
411	Jody	Smith	johnrose@example.com
412	Desiree	Paul	bmarshall@example.org
413	Katrina	Bond	scott36@example.com
414	Martin	Smith	wilkinsoncatherine@example.com
415	Shannon	Brown	whoward@example.com
416	Austin	Hernandez	courtneycampbell@example.com
417	Jeremy	Clark	danaflores@example.net
418	Timothy	Daniels	jeffrey62@example.com
419	Paul	Smith	kristin96@example.org
420	Devon	Perez	sara04@example.net
421	Brian	Fuller	gdickson@example.net
422	Jennifer	Lynch	wlopez@example.net
423	Monique	Floyd	chasewyatt@example.net
424	Frank	Grant	fcline@example.org
425	Michael	Johns	laurenbailey@example.net
426	Deborah	Rodriguez	donaldwilliams@example.org
427	Benjamin	Cummings	morenokimberly@example.org
428	Adrian	Welch	zalexander@example.net
429	Amy	Wright	alejandro21@example.org
430	Jennifer	Carter	rodneyevans@example.net
431	Courtney	Bolton	ihansen@example.com
432	William	James	michaelhaynes@example.net
433	Aaron	Cardenas	leelinda@example.org
434	Scott	Zhang	michelle28@example.com
435	Lee	Williams	nortoncharles@example.org
436	Amy	Riley	diane92@example.net
437	Ricky	Jackson	hernandezstephanie@example.org
438	William	Wagner	michael97@example.com
439	Michelle	Mccoy	john31@example.org
440	Charles	Cooper	mgonzalez@example.com
441	Krista	Harmon	hernandezdaniel@example.org
442	Jerome	Reyes	victormatthews@example.com
443	Shannon	White	jroberts@example.org
444	Natalie	Dean	snowjames@example.net
445	William	Powell	michaelrich@example.org
446	Joshua	Peters	robinjones@example.org
447	Ashley	Davidson	josephwong@example.net
448	Cassandra	Ashley	ywise@example.net
449	Daniel	Potts	smithjacob@example.com
450	Tyler	Johnson	perezrobert@example.com
451	Leah	Chavez	melissaross@example.net
452	Teresa	Ritter	zwilliams@example.com
453	James	Thomas	pruittmarisa@example.com
454	Julie	Guerrero	sherihays@example.net
455	Brandon	Smith	victor38@example.net
456	Robin	Williams	felicia19@example.org
457	Joseph	Booth	rchristensen@example.org
458	Amy	Wilson	patricia77@example.org
459	William	Carr	melissalin@example.net
460	Logan	Campbell	bobby23@example.com
461	Eugene	Donaldson	fgarcia@example.net
462	Suzanne	Villegas	dillonrichard@example.org
463	Cindy	Lawson	duncanshelley@example.org
464	Mark	Wells	martindavid@example.net
465	Robert	Chen	mwhite@example.org
466	Hayley	Greene	vgarcia@example.net
467	Calvin	Martinez	holly18@example.net
468	Dylan	Wright	thomasjacob@example.com
469	Robert	Tran	jennifer55@example.com
470	Oscar	Jackson	mccoyclarence@example.net
471	Nathan	Ortiz	sarah95@example.net
472	David	Taylor	jennifercarter@example.com
473	Lisa	Turner	washingtondonna@example.net
474	David	Orr	qcole@example.net
475	Stacey	Clay	pfrench@example.org
476	Robert	Allen	bryan95@example.com
477	Evelyn	Chen	ghess@example.com
478	Tiffany	Andrews	joseph52@example.net
479	Sean	Villarreal	samuelchen@example.com
480	Troy	Horton	nmoyer@example.org
481	Sabrina	Christian	uwinters@example.com
482	Alexis	Levy	jacquelinestrickland@example.com
483	Destiny	Rose	thomaschristopher@example.net
484	Juan	Williams	ashley98@example.com
485	Jaime	Byrd	mmartinez@example.org
486	Sue	Washington	howardflowers@example.net
487	Sean	Horne	browncorey@example.net
488	Blake	Singh	daviskevin@example.org
489	Susan	Gomez	rodriguezelizabeth@example.com
490	Chelsea	Lamb	emilybryant@example.net
491	Danielle	Mcguire	cwang@example.net
492	Mark	Mitchell	kenneth04@example.net
493	Maria	Donovan	david38@example.org
494	Vanessa	Jimenez	aguilarangelica@example.org
495	Audrey	Rogers	kcardenas@example.net
496	Matthew	Fisher	john48@example.net
497	Joshua	Cole	ehurley@example.net
498	Rachel	Tucker	cindy75@example.org
499	Sabrina	Morrison	qbradley@example.org
500	William	Diaz	sbridges@example.com
501	Bryan	Young	carlsondanny@example.org
502	Melissa	Contreras	rfernandez@example.net
503	Pamela	Roth	luissmith@example.org
504	Christopher	Humphrey	austinlee@example.net
505	Melissa	Hurley	rramos@example.com
506	Melissa	Knight	elizabethrivera@example.org
507	Scott	Hughes	munozmason@example.net
508	Donna	Pitts	jaclynsantana@example.net
509	Cassie	Gonzales	garrettleslie@example.net
510	David	Wallace	fcooper@example.com
511	Crystal	Randall	zmiddleton@example.com
512	Traci	Hill	kbrooks@example.com
513	Andrew	Rivas	rpollard@example.com
514	Andrew	Cook	rachaelbird@example.org
515	Susan	Munoz	elizabethmueller@example.net
516	Johnny	Chen	xfletcher@example.net
517	Michael	Thompson	taylorlisa@example.net
518	Curtis	Ramirez	william09@example.org
519	Sarah	Smith	jennifer28@example.com
520	Cheryl	Russell	anthonyfarmer@example.net
521	Lisa	Larsen	sarahperez@example.com
522	Connie	Moses	collinsdavid@example.org
523	Lauren	Wilson	vsmith@example.net
524	Laura	Jones	campbelldavid@example.org
525	Hannah	Bradley	kristenjackson@example.com
526	Heather	Murphy	seanmorgan@example.net
527	Jeffrey	Ferguson	markjenkins@example.com
528	Kimberly	Welch	riosmanuel@example.net
529	Donna	Miles	donna91@example.org
530	Alexis	Downs	kennethmartinez@example.org
531	Thomas	Murray	samuelcrawford@example.com
532	Colleen	Jennings	arroyozachary@example.com
533	Kathy	Flores	brockdouglas@example.com
534	Mark	Chapman	bwhite@example.com
535	Carol	Turner	melissamullen@example.net
536	Jerry	Gibson	ulopez@example.org
537	Lucas	Callahan	palvarado@example.com
538	Ryan	Davis	xdyer@example.net
539	Richard	Jones	diana14@example.com
540	Isaiah	Mendoza	erinbrewer@example.org
541	Amy	Sharp	bakerpam@example.net
542	Scott	Peterson	sarah98@example.net
543	Brittany	Morris	twalters@example.com
544	John	Steele	ronald21@example.com
545	Sheri	Hernandez	brenda73@example.com
546	Crystal	Kennedy	ramoskimberly@example.com
547	Scott	Farrell	tcollins@example.net
548	Wayne	Johnson	ramirezdaniel@example.org
549	Brian	Sutton	kwatts@example.com
550	Mary	Sanders	ghopkins@example.net
551	Danielle	Smith	nataliemoore@example.com
552	Rhonda	Smith	eugene78@example.com
553	Ashley	Simpson	fernandezaaron@example.org
554	Tanner	Miller	lterry@example.net
555	Jennifer	Morton	obrown@example.org
556	Taylor	Warren	lisa76@example.com
557	Jacqueline	Cole	omeyer@example.net
558	Lee	White	bryanchang@example.com
559	Jacob	Patterson	isabelsilva@example.org
560	Michael	Walsh	michellecox@example.com
561	Michelle	Bray	william38@example.org
562	Elizabeth	Williams	andrew67@example.net
563	Chelsea	Jones	kevinandrade@example.org
564	Ashley	Herring	jmiller@example.org
565	Thomas	Duran	qlopez@example.net
566	Roger	Wong	eforbes@example.net
567	Andrea	Anderson	cblake@example.com
568	Joseph	Martinez	erikbates@example.org
569	Joseph	Russell	juanmontoya@example.org
570	Christina	Decker	ejones@example.org
571	Mark	Roberts	qbryan@example.com
572	Debbie	Acevedo	bakerdavid@example.org
573	Gabriel	Cummings	tracyblack@example.net
574	Zachary	Williams	dgarcia@example.com
575	Michele	Brewer	xnguyen@example.org
576	Emily	Garcia	srichards@example.org
577	Stephanie	Wright	diazbarbara@example.net
578	Sean	Bell	brittanysherman@example.org
579	Emily	Green	bbrown@example.com
580	Richard	Long	davismark@example.org
581	Ryan	Jacobson	madisonlove@example.com
582	Christopher	Frank	ana49@example.org
583	Todd	Fleming	hansonzachary@example.org
584	Katrina	Brock	henryodom@example.org
585	Shelby	Sanchez	andrewaguirre@example.org
586	Susan	Austin	kellythomas@example.com
587	Anna	Roth	vthompson@example.net
588	Dennis	Berg	carpenterdiane@example.net
589	Eric	Contreras	jessica88@example.net
590	Linda	Lee	cjones@example.com
591	Justin	Nelson	lyonsaaron@example.org
592	Randall	Robinson	william32@example.net
593	Natalie	Johnson	jeffreyjarvis@example.com
594	John	Gilbert	longlisa@example.org
595	Theresa	Santos	brandon76@example.com
596	Mark	Cruz	hamptonadriana@example.org
597	Yvette	Beard	madeline74@example.net
598	Jaclyn	Harmon	kelleydavid@example.net
599	Jillian	Young	ntaylor@example.com
600	Martin	Hernandez	lkidd@example.org
601	Logan	Mendez	robertchapman@example.org
602	Thomas	Waters	jessica96@example.org
603	Laura	Carpenter	patrick43@example.com
604	Derrick	Wallace	alexis87@example.net
605	Jason	Hobbs	rsimpson@example.net
606	Sharon	Young	connor76@example.net
607	Maria	West	ianderson@example.org
608	Jennifer	Norris	raymondfrances@example.com
609	Tammy	Davis	barnettmaria@example.org
610	Eric	Beasley	patelolivia@example.net
611	Richard	Norman	josephruiz@example.com
612	Alexandra	Carlson	johnstokes@example.net
613	Jennifer	Myers	camposkimberly@example.org
614	Aaron	Taylor	keith16@example.net
615	Donna	Shea	davisisaac@example.net
616	Gregory	Lopez	kimberlykey@example.com
617	Angela	Garrett	bassandrew@example.net
618	Dana	Todd	fhowell@example.com
619	Alexandria	Marsh	wardsydney@example.com
620	Justin	Harrell	davisbrad@example.net
621	Daniel	Taylor	lanesteven@example.net
622	Jesse	Torres	andrewpowell@example.com
623	Scott	Doyle	daniel02@example.com
624	Jon	Johnson	maurice58@example.org
625	Regina	Curtis	anthony16@example.org
626	Steven	Lewis	jpennington@example.org
627	Laura	Maynard	qhamilton@example.com
628	Kelsey	Thomas	nthomas@example.com
629	Kurt	Peters	davidwatkins@example.com
630	Wesley	Guzman	robertgill@example.net
631	Ian	Ochoa	jenniferbrown@example.com
632	Sheri	Holloway	gonzalezjeffrey@example.com
633	Keith	Rich	esampson@example.org
634	Kevin	Smith	matthewcabrera@example.net
635	Andrea	Miranda	todd16@example.com
636	Tara	Rivera	thompsonkrista@example.com
637	Charlotte	Spencer	farmercassandra@example.com
638	Alexandra	Evans	carlyrivera@example.org
639	Lucas	Terry	qharper@example.net
640	Eric	Zamora	lancehess@example.com
641	Kyle	Dunn	david80@example.net
642	David	Wright	leon03@example.net
643	Kenneth	Contreras	walkerdaniel@example.org
644	Michael	Tran	craigharding@example.net
645	Alyssa	Roman	aleclee@example.com
646	Alvin	Armstrong	katherinekelly@example.org
647	Frank	Chambers	samuelobrien@example.org
648	Heather	Hill	diazjennifer@example.com
649	Susan	Henderson	katherine98@example.org
650	Yvonne	Marshall	clinton70@example.net
651	Malik	Mckinney	ndawson@example.com
652	Veronica	Harper	robertsholly@example.com
653	David	Walker	gabriellelopez@example.net
654	Howard	Gutierrez	zmiller@example.com
655	Eric	Burke	danielgalloway@example.org
656	Diana	Aguilar	melanieharper@example.com
657	Kenneth	Velasquez	thompsoncourtney@example.net
658	Rachael	Herman	patrickthompson@example.com
659	Paul	Martinez	jennifer80@example.net
660	Brenda	Barnes	hicksamanda@example.net
661	Dennis	Sharp	ejones@example.com
662	Alejandra	Brown	kingmatthew@example.net
663	Alejandro	Martin	jporter@example.org
664	Meagan	Morris	ericconrad@example.com
665	Kenneth	Yates	joelwilson@example.org
666	Cody	Evans	anna81@example.com
667	Jamie	Bryant	brittneymoore@example.net
668	William	David	cortezcrystal@example.com
669	Melissa	Robertson	youngbethany@example.org
670	Justin	Walsh	johnellison@example.org
671	Patricia	Mitchell	jarvistravis@example.net
672	Donna	Kemp	zjenkins@example.net
673	Richard	Jacobson	johnanderson@example.net
674	Madeline	Griffin	gordontate@example.org
675	Bradley	Montoya	zacharygutierrez@example.com
676	Jeremy	Hamilton	bcohen@example.net
677	Patrick	Hayes	shanepadilla@example.org
678	Kevin	Flores	carolinejohnston@example.org
679	Michael	Turner	matthew18@example.net
680	Sierra	Griffin	georgemarisa@example.com
681	Michele	Harding	garrettdennis@example.net
682	Allison	Carter	moorestephen@example.org
683	Jason	Zimmerman	zavalatiffany@example.com
684	John	Mccoy	twright@example.org
685	Zachary	Hoffman	nelsondonna@example.net
686	Sarah	Allen	bradley59@example.net
687	Daisy	Horn	amy68@example.org
688	Erica	Baker	michael93@example.net
689	Vanessa	Oliver	donnabass@example.net
690	Joshua	Roberts	troycrane@example.com
691	Robert	Mcpherson	dalewilson@example.net
692	Richard	Weaver	robertdonovan@example.net
693	Eugene	Klein	rperez@example.com
694	Kristin	Crawford	hpoole@example.com
695	Alicia	Ford	barnettmichael@example.com
696	Christina	Russo	ingramwilliam@example.com
697	Amy	Jimenez	alyssa11@example.org
698	Norma	Adams	andersonlaura@example.com
699	Corey	Haley	hmcclain@example.com
700	Colin	Turner	tonymiller@example.com
701	Lance	Hernandez	jasminedavidson@example.net
702	Cheryl	Hughes	richardmerritt@example.com
703	Jeffrey	Ramirez	anthonyberry@example.org
704	Kimberly	Jones	jesse20@example.com
705	Matthew	Smith	william24@example.org
706	Brian	Sloan	charlesparsons@example.com
707	Kevin	Curtis	christopher06@example.com
708	Carol	Harrison	jonesdaniel@example.org
709	Stephanie	Hernandez	randallsarah@example.net
710	Thomas	Boone	gregory82@example.net
711	Brenda	Lee	dwayne78@example.com
712	Gary	Porter	david47@example.org
713	Jillian	Collins	mortonjerry@example.net
714	Bruce	Martinez	brownjoseph@example.com
715	Marcia	Smith	daniellerobinson@example.com
716	Michael	Branch	zimmermanjeffrey@example.com
717	Steven	Wilson	wwilliams@example.net
718	Tracy	Gonzalez	ingramsheila@example.net
719	Peter	Burton	pattersonpaul@example.com
720	Dawn	Lyons	gonzalezwesley@example.org
721	Donna	Norton	amy81@example.net
722	Savannah	Jackson	jessicagonzalez@example.com
723	Amy	Dyer	jason47@example.com
724	Kellie	Hughes	fjames@example.com
725	Matthew	Mills	sjensen@example.org
726	Jesus	Gates	sandralopez@example.com
727	Crystal	Schultz	arnoldcody@example.com
728	Timothy	Ramirez	dwayne87@example.net
729	Stephen	Martin	zlloyd@example.org
730	Christine	Boone	choiandrea@example.com
731	Robert	Melendez	tzhang@example.org
732	Darrell	Novak	moodyjason@example.com
733	Richard	Hughes	frank81@example.org
734	Ashley	Carpenter	rachelrivera@example.com
735	Angela	Garcia	pcarpenter@example.com
736	Frances	Little	chughes@example.com
737	Erin	White	john13@example.org
738	Thomas	Decker	garnerjacob@example.org
739	Denise	Robles	moseskevin@example.com
740	Jeremy	Ramos	smithtanya@example.com
741	Angela	Rosales	bruceweaver@example.net
742	Michael	Grant	dianarobinson@example.net
743	Jonathan	Taylor	leejeremy@example.com
744	Rita	Allen	wevans@example.org
745	Carolyn	Wiggins	lindaortiz@example.net
746	Jeffery	Green	osmith@example.org
747	Virginia	Terry	connie48@example.net
748	Lisa	Martinez	davidroberts@example.org
749	Sarah	Howard	gbowen@example.org
750	Chris	Fitzpatrick	christinadavis@example.net
751	Aaron	Zamora	clarkkristy@example.org
752	Steven	Andrews	hoffmansamuel@example.com
753	Claire	Lopez	mmason@example.com
754	Katherine	Christian	nwashington@example.net
755	Eric	Morgan	scottmercado@example.com
756	Jerry	Harmon	zhopkins@example.com
757	Amanda	Johnson	houseterry@example.org
758	Cynthia	Richards	sotokevin@example.org
759	Robert	Barr	kevinmaddox@example.net
760	Eric	Wheeler	jesse40@example.org
761	James	Nelson	michael98@example.com
762	Kenneth	Dixon	jamie42@example.com
763	Stephanie	Johnson	kendra77@example.com
764	Stephen	Berry	xrobinson@example.com
765	Michele	Clark	carlamyers@example.net
766	Gina	Richard	hmorales@example.org
767	Joseph	Mcdonald	perezmelissa@example.com
768	Cynthia	Mccarthy	brownrobert@example.org
769	Marc	Mejia	hnelson@example.org
770	Carlos	Nunez	ttaylor@example.com
771	Amanda	Peterson	shawnroberson@example.net
772	Christopher	Callahan	zperkins@example.org
773	Rebecca	Smith	morgankimberly@example.com
774	Tracy	Smith	elizabeth62@example.org
775	Brandon	Cochran	matthewjohnson@example.org
776	Amanda	Mccoy	yjacobs@example.com
777	Devon	Osborne	uwilson@example.org
778	Maureen	Harper	bobbyhuffman@example.net
779	Troy	Schultz	griffindaniel@example.org
780	David	Flores	patricia82@example.net
781	Albert	Evans	erikamorris@example.com
782	Adam	Russell	xdaniels@example.com
783	Erin	Hart	scottbrittany@example.com
784	Mark	Marshall	johnsonvanessa@example.com
785	Carolyn	Johnson	william22@example.org
786	Carolyn	Luna	williamsjimmy@example.com
787	Jane	Beasley	chase64@example.net
788	Riley	Richardson	patricia35@example.com
789	Lauren	Mcmahon	lwilliams@example.com
790	Larry	Wood	shannontodd@example.org
791	Michael	Coleman	ellischristopher@example.org
792	Benjamin	Liu	juliewallace@example.com
793	Amanda	Lopez	susanbailey@example.org
794	Lauren	Smith	nelsonnicole@example.org
795	Jeffrey	Schmidt	matthewreyes@example.com
796	Mary	Smith	pmeyer@example.com
797	Jose	Miller	briannabrown@example.org
798	Molly	Jackson	rebeccasmith@example.net
799	Adam	Cooper	craig14@example.net
800	Gerald	Peterson	lesliejohnson@example.com
801	Nancy	Parker	henrykeith@example.com
802	James	Ashley	elizabethmcguire@example.com
803	Jennifer	Ingram	judyburns@example.com
804	Michael	Wood	hdavidson@example.com
805	Lori	Haynes	george54@example.com
806	Devin	Parks	jimenezjoseph@example.com
807	Steve	Smith	gregory12@example.net
808	Sean	Clements	jason29@example.org
809	Ashley	Stevens	kristen09@example.org
810	Corey	Oconnor	brooksglenn@example.org
811	Nicole	Riley	brittany69@example.org
812	Shirley	Russell	taylormary@example.org
813	Kimberly	Garcia	davidhicks@example.org
814	Jeff	Stevenson	ismith@example.org
815	Kim	Garner	leeandrea@example.net
816	Jody	Bruce	douglaslopez@example.net
817	Jennifer	Ballard	vperry@example.net
818	Janice	Martinez	mhays@example.net
819	William	Barry	kimberlywarren@example.org
820	Richard	Rodriguez	ysutton@example.com
821	Michael	Green	joseph28@example.org
822	Kevin	Rodriguez	wilsondavid@example.com
823	David	Collins	melinda26@example.org
824	Scott	Williams	njohnson@example.net
825	Sheryl	Reed	fletcherdiana@example.com
826	David	Wilson	russell69@example.net
827	Tanner	Phillips	denise95@example.net
828	Robin	Wong	ndavidson@example.net
829	Traci	Ponce	dominiqueholt@example.net
830	Sean	Keith	cardenasheidi@example.org
831	Brent	Ryan	nicholas98@example.org
832	Susan	Maxwell	jefferyalexander@example.net
833	Susan	Williams	ashley26@example.net
834	Jay	Morrison	angie44@example.net
835	Michael	Castro	jreyes@example.org
836	Adam	Brooks	savannah26@example.com
837	Chris	Jarvis	christina15@example.net
838	Steven	Hughes	jessica19@example.org
839	Melinda	Rogers	rodriguezjulia@example.net
840	Christopher	Ruiz	teresa30@example.org
841	Nicholas	Harris	teresabray@example.org
842	Edward	Johnson	larsonmelissa@example.net
843	Raymond	Hernandez	harringtonkendra@example.org
844	Andrew	Nichols	paulamartin@example.org
845	Christine	Harrington	dustin81@example.net
846	Danielle	Sanford	lawrenceelizabeth@example.org
847	Jasmine	Reid	charles89@example.com
848	Russell	Stuart	lorijohnson@example.net
849	Edward	Kaiser	pierceandrew@example.org
850	Jose	Martin	deborahowens@example.net
851	Gregory	Gilmore	janetowens@example.org
852	Carol	Lucero	katielee@example.net
853	Jacob	Duncan	howardmichael@example.com
854	Lisa	Preston	tprice@example.com
855	Susan	Galvan	nguyenvanessa@example.com
856	Melissa	Brown	ubrown@example.net
857	Logan	Stewart	wellsbilly@example.org
858	Christina	Meyer	bennettalex@example.net
859	Katie	Hunter	esharp@example.org
860	Valerie	Sims	solisanthony@example.com
861	Rebecca	Lane	jenningsrebekah@example.net
862	Dawn	Sanders	schultzaaron@example.com
863	Michael	Graves	cathy98@example.org
864	Michael	Bradford	mmoreno@example.net
865	Joel	Johnson	sanchezdonald@example.net
866	Katie	Perry	tgriffith@example.com
867	Christopher	Best	jason56@example.org
868	Connie	Herman	leonchristopher@example.net
869	Kimberly	Collins	thomasdarlene@example.net
870	Cassandra	Madden	fjones@example.com
871	Matthew	Wilson	onicholson@example.org
872	Carol	Glover	beckersheri@example.com
873	Stephanie	Richardson	eleonard@example.com
874	Mary	Williams	dburch@example.org
875	Daniel	Leach	pthomas@example.com
876	Jessica	Holland	zachary79@example.org
877	Shannon	Gonzales	wjohnson@example.org
878	Sabrina	Taylor	brauncarrie@example.org
879	Kathy	Jones	lisa36@example.org
880	Stephanie	Williams	robinsonbrenda@example.net
881	Leonard	Hays	juliapearson@example.com
882	Tabitha	Miller	harperemily@example.com
883	Andrew	Church	dunlaperin@example.net
884	Scott	Anthony	whitemichael@example.org
885	Mark	Boyd	simmonscalvin@example.org
886	Tara	Smith	bianca14@example.net
887	Cheryl	Long	andersonbradley@example.net
888	Samuel	Nash	mark91@example.org
889	Emily	Palmer	haleyhenry@example.net
890	Pamela	Gray	denise89@example.org
891	Robin	Rodriguez	janicefernandez@example.net
892	Allison	Robinson	michaeljohnson@example.net
893	Peter	Mcbride	derrickclay@example.org
894	Billy	Jennings	wayne94@example.org
895	Amanda	Simmons	katie60@example.com
896	Aaron	Thomas	waynescott@example.com
897	Lisa	Carter	whiteanthony@example.com
898	Raymond	Smith	mark42@example.net
899	David	Orozco	kathleen59@example.com
900	Michelle	Mueller	brucemcmahon@example.net
901	Maria	Brady	reevescarrie@example.com
902	Kendra	Mitchell	villarrealana@example.org
903	Michael	Wise	ebowman@example.net
904	Ronald	Wu	mendezclarence@example.com
905	Nathan	Scott	rsmith@example.net
906	Ashley	Ward	petercollins@example.com
907	Christine	Davis	dixondanielle@example.org
908	Lauren	Ray	scott49@example.org
909	John	Mcdonald	gonzalesmatthew@example.net
910	Donna	Ward	hudsonashley@example.net
911	Mariah	Jackson	roychristine@example.com
912	Miranda	Key	hernandezcurtis@example.net
913	Tyler	Medina	kurtwilliams@example.net
914	Kelly	Montgomery	tcoleman@example.com
915	Nicole	Ramos	ugreen@example.org
916	Steven	Lowery	grace56@example.org
917	David	Hardy	alexander30@example.org
918	Samantha	Leonard	mccoyjoshua@example.net
919	Stephen	Brown	russell99@example.org
920	Anthony	Jones	dakotawilkins@example.net
921	Heather	Dunn	moorepatrick@example.net
922	Margaret	Garcia	laura55@example.com
923	Cameron	Jones	jomartinez@example.org
924	Daniel	Price	sarahprince@example.org
925	William	Hamilton	christine60@example.net
926	Karl	Lopez	smarquez@example.net
927	Heidi	Knight	danielcalderon@example.com
928	Brandon	Cox	williamshannon@example.net
929	Teresa	Medina	sarah06@example.net
930	Cody	Scott	rmartin@example.org
931	Kimberly	Hunt	nathannguyen@example.net
932	Anthony	Hill	dmedina@example.org
933	John	Scott	vmclean@example.com
934	Donna	Blevins	hernandezjudy@example.com
935	Sherri	Parker	lynn82@example.com
936	Tamara	Wilson	chad38@example.net
937	Jesse	Jimenez	ashley17@example.net
938	Sheri	Nelson	zimmermanlori@example.org
939	Sydney	Krueger	charlotte51@example.com
940	John	Fernandez	hernandezrhonda@example.net
941	Christopher	Cain	cooksummer@example.net
942	Anthony	Jensen	christinemoore@example.net
943	Frank	Holmes	nancy40@example.com
944	Jamie	Jones	jlloyd@example.net
945	Richard	Mckinney	cainellen@example.net
946	Sarah	Hicks	matthewduran@example.org
947	Anne	Perez	holmesrobert@example.net
948	Richard	Smith	krista53@example.net
949	Charles	Robinson	gsantos@example.org
950	Andrea	Mcdonald	timothyarnold@example.net
951	Monica	Wolfe	adriansalinas@example.com
952	Trevor	Jackson	yporter@example.com
953	Jill	Barron	hornrichard@example.org
954	Katelyn	Becker	jamessolis@example.com
955	Kimberly	Smith	paulmonroe@example.org
956	Elizabeth	Moore	whayes@example.net
957	Sara	Hill	yhenderson@example.org
958	Eric	Hall	melissawilliams@example.org
959	James	Johnson	kristina73@example.com
960	John	Sims	lisa96@example.net
961	Paula	Boyer	christopherchoi@example.org
962	Erika	Henderson	josephwheeler@example.net
963	Brent	Singh	dtaylor@example.com
964	Justin	Cruz	iparker@example.org
965	Darren	Paul	hodgesamy@example.com
966	Christopher	Taylor	odavis@example.com
967	Arthur	Bryant	andre95@example.org
968	Amy	Lowe	iharris@example.net
969	Willie	Garcia	seanbaker@example.net
970	James	Brown	sandrasweeney@example.org
971	Mark	Baird	deborah19@example.net
972	Travis	Bradford	jgardner@example.com
973	Lynn	Parker	robertwright@example.com
974	Lacey	Huerta	austincurtis@example.com
975	Scott	Oconnell	tamara38@example.com
976	Rebecca	Hurst	wallerjennifer@example.net
977	Steven	Lopez	ckelly@example.net
978	Sarah	Hodge	wigginsvanessa@example.com
979	Dustin	Rivera	michellejohnson@example.com
980	Lonnie	Casey	angela47@example.net
981	Lindsey	Freeman	pmartinez@example.net
982	Melissa	Smith	benjamin05@example.org
983	Brad	Reese	mark94@example.com
984	Michael	Walker	wrightbrandon@example.org
985	Hannah	Alexander	erica23@example.org
986	Samantha	Gentry	rodriguezsarah@example.org
987	Troy	Berry	tglenn@example.net
988	Lauren	Evans	lorrainebrown@example.com
989	Brittany	Silva	mgreen@example.com
990	Christopher	Ayala	hawkinsmichelle@example.org
991	Kenneth	Hogan	michael60@example.net
992	Jeffrey	Herman	marcusmccarthy@example.net
993	Danny	Davis	moramichelle@example.net
994	Steven	Mcdonald	anita43@example.net
995	Marcus	Thomas	dbird@example.net
996	Samantha	Drake	dawnstevenson@example.com
997	Amanda	Mann	powellanna@example.com
998	Craig	Lee	dmartin@example.org
999	Robert	Reed	donstevens@example.com
1000	Mary	Potts	donnagrant@example.net
\.


--
-- TOC entry 4910 (class 0 OID 16407)
-- Dependencies: 218
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (inventoryid, bouquetname, stockquantity, price) FROM stdin;
1	White Rose Bouquet	235	85.26
2	Red Carnation Bouquet	440	73.09
3	Pink Tulip Bouquet	31	102.23
4	Royal Rose Bouquet	330	53.22
5	Sunny Peony Bouquet	280	55.04
6	Yellow Peony Bouquet	289	83.79
7	Classic Carnation Bouquet	319	130.82
8	White Daisy Bouquet	340	58.79
9	Yellow Orchid Bouquet	386	153.11
10	Elegant Daisy Bouquet	154	139.47
11	White Carnation Bouquet	13	141.64
12	Classic Sunflower Bouquet	460	93.42
13	Midnight Carnation Bouquet	193	24.45
14	Red Tulip Bouquet	156	42.14
15	Midnight Peony Bouquet	266	70.88
16	Pink Carnation Bouquet	54	148.33
17	Pink Carnation Bouquet	329	36.22
18	Sunny Tulip Bouquet	250	82.26
19	Blue Lily Bouquet	326	95.32
20	Classic Carnation Bouquet	269	70.30
21	Classic Lily Bouquet	93	142.20
22	Midnight Rose Bouquet	30	35.44
23	Midnight Carnation Bouquet	359	163.49
24	Blue Orchid Bouquet	182	160.41
25	Elegant Peony Bouquet	97	193.50
26	Royal Orchid Bouquet	67	146.60
27	Pink Orchid Bouquet	447	180.79
28	Classic Rose Bouquet	447	165.50
29	Elegant Daisy Bouquet	44	169.82
30	Royal Sunflower Bouquet	171	100.70
31	Elegant Tulip Bouquet	68	127.67
32	Yellow Carnation Bouquet	139	135.91
33	Classic Peony Bouquet	238	60.54
34	Classic Tulip Bouquet	87	131.02
35	Midnight Orchid Bouquet	262	173.09
36	Pink Sunflower Bouquet	171	139.08
37	Sunny Tulip Bouquet	352	194.30
38	Blue Carnation Bouquet	373	48.56
39	Classic Orchid Bouquet	144	192.73
40	Red Daisy Bouquet	85	138.20
41	Classic Orchid Bouquet	121	117.15
42	Midnight Daisy Bouquet	233	52.06
43	Yellow Peony Bouquet	70	171.57
44	Yellow Peony Bouquet	79	165.66
45	Yellow Daisy Bouquet	427	82.50
46	Royal Sunflower Bouquet	189	60.66
47	Elegant Rose Bouquet	35	146.88
48	Sunny Carnation Bouquet	347	45.16
49	Blue Lily Bouquet	143	137.41
50	Classic Orchid Bouquet	426	142.47
51	Blue Rose Bouquet	381	148.19
52	Blue Orchid Bouquet	374	157.55
53	Royal Rose Bouquet	68	63.46
54	Pink Tulip Bouquet	416	92.69
55	Yellow Carnation Bouquet	88	47.37
56	Sunny Lily Bouquet	384	84.11
57	Red Daisy Bouquet	300	27.00
58	Midnight Rose Bouquet	168	196.94
59	Midnight Carnation Bouquet	482	196.68
60	Red Tulip Bouquet	468	174.51
61	Sunny Orchid Bouquet	392	141.46
62	Classic Carnation Bouquet	77	22.76
63	Sunny Orchid Bouquet	342	153.00
64	Elegant Daisy Bouquet	269	101.12
65	Classic Daisy Bouquet	378	72.26
66	Yellow Tulip Bouquet	223	45.01
67	Red Tulip Bouquet	441	198.77
68	Sunny Peony Bouquet	467	35.68
69	Red Tulip Bouquet	493	107.10
70	Pink Rose Bouquet	458	133.30
71	Pink Rose Bouquet	353	99.17
72	Royal Daisy Bouquet	226	170.77
73	Classic Daisy Bouquet	395	135.90
74	Sunny Carnation Bouquet	39	45.46
75	Blue Orchid Bouquet	447	94.83
76	Midnight Orchid Bouquet	64	126.37
77	Midnight Sunflower Bouquet	368	94.08
78	Midnight Rose Bouquet	343	89.42
79	Blue Sunflower Bouquet	188	74.88
80	Pink Carnation Bouquet	85	197.47
81	Midnight Sunflower Bouquet	254	97.20
82	Red Daisy Bouquet	255	146.04
83	Classic Rose Bouquet	341	195.34
84	Sunny Carnation Bouquet	268	137.10
85	Sunny Sunflower Bouquet	367	70.06
86	Midnight Tulip Bouquet	220	63.82
87	Sunny Lily Bouquet	101	163.90
88	Blue Rose Bouquet	27	82.83
89	Sunny Sunflower Bouquet	95	64.53
90	Blue Lily Bouquet	241	198.94
91	Yellow Sunflower Bouquet	303	137.25
92	Midnight Sunflower Bouquet	80	192.51
93	White Daisy Bouquet	497	150.40
94	Royal Sunflower Bouquet	270	152.55
95	White Tulip Bouquet	57	71.55
96	Red Daisy Bouquet	403	55.04
97	Classic Tulip Bouquet	285	51.34
98	Yellow Sunflower Bouquet	82	141.86
99	Yellow Carnation Bouquet	294	116.07
100	Blue Daisy Bouquet	439	64.02
\.


--
-- TOC entry 4913 (class 0 OID 16426)
-- Dependencies: 221
-- Data for Name: orderline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orderline (orderid, inventoryid, quantity) FROM stdin;
1	99	1
1	30	1
1	2	1
2	48	2
2	67	2
2	62	1
3	60	1
4	95	3
4	86	3
4	11	1
4	1	3
5	90	2
6	62	1
6	6	2
6	74	2
6	63	2
7	73	2
7	56	1
8	21	2
8	96	2
8	79	3
9	6	1
10	31	3
10	26	2
10	86	1
11	73	1
11	3	2
12	96	1
12	65	1
12	13	3
12	52	3
13	12	1
13	100	1
14	78	3
15	15	1
15	44	2
15	96	3
16	55	2
16	41	3
17	61	1
17	90	1
17	32	3
17	7	1
18	1	3
18	87	2
19	35	1
19	47	3
19	10	3
20	46	2
20	58	3
20	50	3
20	75	3
21	7	2
21	25	3
21	75	3
22	48	1
23	99	1
24	54	1
24	17	2
24	34	1
25	21	2
26	84	2
26	60	3
26	2	3
26	69	1
27	46	3
27	76	1
27	2	3
28	46	2
28	43	3
28	77	2
28	59	1
29	66	3
29	26	3
30	2	1
30	71	2
30	94	3
31	28	2
31	33	2
31	55	2
32	47	1
32	76	3
33	2	1
33	34	3
33	68	1
34	74	1
34	8	1
34	73	1
35	36	2
35	83	2
35	85	3
35	50	1
36	76	3
36	21	3
37	54	2
37	20	2
37	65	2
37	5	2
38	7	1
39	33	2
39	2	3
40	58	1
40	84	1
41	95	3
42	60	1
42	73	1
42	1	1
43	61	2
43	42	3
44	42	2
45	1	1
45	76	2
45	70	2
46	65	1
46	73	2
47	50	3
48	47	1
48	67	1
48	1	3
48	56	1
49	39	1
49	78	2
49	25	1
50	87	1
50	35	2
51	37	3
51	56	1
51	31	3
52	65	2
53	80	2
53	35	2
54	75	1
54	63	2
55	75	2
55	12	1
55	99	1
56	95	2
56	21	3
57	23	3
57	82	2
57	35	1
57	86	1
58	67	1
58	16	3
58	83	3
58	21	3
59	92	3
59	26	3
59	64	2
60	80	3
60	78	2
61	39	2
62	38	3
62	27	2
62	58	3
62	96	2
63	14	2
63	20	1
63	15	1
63	36	1
64	88	1
64	100	1
64	35	1
65	24	1
65	19	2
66	82	2
66	2	1
66	56	1
67	91	3
68	37	3
69	8	3
70	25	3
71	16	1
71	39	1
71	45	1
72	55	3
72	77	1
73	51	1
73	91	2
73	46	2
73	15	1
74	67	1
74	12	2
74	63	1
74	35	2
75	72	2
75	84	1
75	55	1
76	73	3
77	1	3
77	8	3
77	35	3
77	68	2
78	83	1
78	31	1
78	66	3
79	51	2
79	65	3
80	74	1
80	20	2
81	93	1
81	84	2
81	10	1
81	18	3
82	38	3
82	53	1
83	19	1
83	80	1
83	46	1
83	85	2
84	76	3
84	27	3
84	99	2
84	87	1
85	84	2
86	53	3
86	27	3
87	67	2
87	89	1
87	40	3
88	35	1
88	76	1
88	3	2
89	85	1
89	92	3
89	95	2
90	79	3
91	5	1
91	41	1
91	27	3
92	24	1
92	95	1
93	30	3
93	40	2
93	31	1
94	49	1
94	51	3
95	7	3
95	42	3
95	87	3
96	72	2
97	63	1
97	79	2
97	37	1
98	92	1
99	93	2
99	76	3
99	75	2
100	93	3
101	3	3
101	24	2
101	66	1
102	54	1
103	19	2
103	35	3
104	88	2
104	21	3
104	1	2
105	70	2
105	2	2
105	33	3
105	18	2
106	82	3
106	23	2
106	87	1
107	18	3
108	16	2
109	79	2
109	83	3
109	11	1
110	9	3
111	52	3
111	95	2
111	85	1
112	43	3
112	92	1
112	94	1
112	68	2
113	20	2
113	70	3
113	24	2
114	18	2
114	20	1
114	69	1
114	67	3
115	19	3
115	16	3
116	75	1
116	68	1
116	39	2
116	95	3
117	77	3
117	27	3
117	7	1
118	85	3
118	91	1
118	51	3
119	6	1
120	33	3
121	64	1
121	3	1
121	2	2
122	82	1
122	74	3
122	84	2
122	48	3
123	14	3
124	45	1
124	75	1
124	62	3
124	87	2
125	82	3
126	31	3
126	66	2
127	42	1
127	61	2
127	94	2
127	45	3
128	3	3
128	71	2
128	86	2
129	24	1
129	58	1
129	1	3
130	22	1
130	44	2
130	6	3
130	73	2
131	49	2
131	80	3
131	56	3
132	92	3
132	78	2
132	82	2
133	6	2
134	67	1
135	81	3
136	3	2
137	12	3
137	92	3
138	12	3
138	21	3
138	99	2
138	45	3
139	68	1
139	30	1
139	3	3
140	91	2
141	81	1
142	63	3
142	15	2
143	63	2
143	28	3
143	21	1
143	76	2
144	11	2
144	86	2
145	34	2
145	17	1
146	18	3
146	68	1
146	41	2
146	49	1
147	29	3
147	39	3
148	89	3
148	31	3
149	42	1
150	26	3
150	95	2
150	25	2
150	63	2
151	62	3
151	60	3
151	8	1
152	92	3
152	44	1
152	74	2
152	42	2
153	94	3
154	25	3
155	90	3
156	96	2
157	70	2
157	36	2
157	29	2
158	90	3
159	47	1
159	89	1
159	22	2
160	24	1
160	100	1
160	13	3
160	43	3
161	84	1
162	2	2
162	91	2
162	93	1
163	13	3
163	44	3
164	52	1
164	62	3
165	97	1
165	29	1
165	57	1
165	44	3
166	23	2
166	71	1
166	27	2
167	46	1
167	11	1
167	6	3
168	63	2
168	52	1
169	23	2
169	69	1
170	66	3
170	67	1
170	53	3
171	44	1
171	14	3
172	60	3
173	16	3
173	3	3
174	95	1
175	50	1
176	33	2
177	41	1
177	7	1
177	25	3
177	33	2
178	18	1
178	85	1
178	43	3
179	56	1
179	59	1
179	31	3
180	12	3
181	93	2
182	66	2
182	1	1
183	4	3
183	58	2
183	10	1
183	21	3
184	79	3
184	28	1
184	74	1
184	41	3
185	38	3
185	55	1
185	84	2
186	24	3
186	61	3
187	55	1
187	56	2
188	57	3
188	11	3
188	1	2
188	52	2
189	64	1
189	23	2
189	69	2
190	96	2
190	23	3
190	35	1
191	38	2
192	24	2
192	72	3
193	58	3
193	74	2
193	61	3
193	88	2
194	20	3
194	75	2
194	28	2
195	76	2
195	87	3
195	48	1
195	36	2
196	67	1
196	24	1
196	48	2
197	99	3
197	80	3
198	47	2
199	42	2
199	13	2
199	54	3
200	85	1
200	69	3
200	6	2
201	27	1
201	33	3
202	71	2
203	58	3
203	23	1
204	52	1
204	83	1
204	48	2
205	53	2
206	100	3
206	8	2
206	88	3
207	63	3
207	68	2
207	45	1
208	65	1
209	81	1
209	70	3
209	15	3
210	44	2
211	44	1
211	62	3
212	41	3
212	9	1
212	88	1
212	12	1
213	58	3
213	15	1
214	54	3
214	6	3
214	24	1
215	55	3
216	54	3
217	92	2
217	33	3
217	47	3
218	95	1
219	52	1
219	65	2
219	33	2
219	4	3
220	12	2
220	5	3
221	36	2
221	47	2
222	79	3
222	42	2
222	40	1
222	80	1
223	44	3
223	57	3
223	36	1
223	35	2
224	68	1
224	90	3
224	89	1
225	76	3
226	72	2
226	4	3
227	7	2
228	24	1
229	51	3
229	41	1
229	86	3
230	88	2
230	74	1
231	33	3
231	18	3
232	51	2
232	1	2
232	39	1
233	75	3
233	53	3
234	61	1
234	70	1
235	93	2
236	50	3
236	42	2
237	55	1
238	96	1
238	78	2
238	64	2
239	11	1
240	63	1
241	60	3
241	77	1
241	81	1
241	36	2
242	65	1
243	18	1
244	11	1
244	73	2
244	23	1
245	8	2
245	60	3
245	98	2
245	53	3
246	100	1
246	3	3
247	96	3
247	24	3
247	63	1
248	100	3
249	4	2
250	74	1
250	22	3
250	14	3
251	4	1
252	66	3
252	99	3
252	76	3
253	48	1
253	96	3
254	32	2
254	5	3
254	40	2
254	87	2
255	73	1
256	65	3
257	13	3
257	43	2
257	10	1
257	17	3
258	55	1
258	71	1
258	53	2
259	30	2
259	32	3
259	18	1
260	27	2
261	60	1
262	46	2
262	82	2
263	77	1
263	70	3
263	8	2
264	45	3
264	82	2
264	51	2
265	40	1
266	95	3
266	72	3
266	91	1
267	94	1
267	58	2
267	84	3
268	23	3
268	21	3
268	56	1
268	92	1
269	58	2
269	6	2
269	66	1
269	16	1
270	35	1
270	72	1
270	97	1
270	46	2
271	57	2
272	30	1
273	29	3
274	9	3
274	16	1
274	63	2
274	61	1
275	76	1
275	94	2
276	31	2
276	85	2
277	14	3
277	22	1
278	45	3
278	4	2
279	87	1
279	12	2
279	91	3
279	34	1
280	50	3
281	86	3
281	34	2
281	20	2
282	39	1
282	16	2
283	67	1
284	66	2
284	10	1
285	6	3
286	83	3
286	32	3
287	51	2
287	61	3
287	9	3
287	53	1
288	37	1
288	41	3
289	32	2
289	17	1
289	79	3
289	62	3
290	85	3
290	44	2
290	71	3
291	2	1
291	65	2
291	8	3
291	61	2
292	32	1
293	24	3
294	27	3
294	5	1
295	91	2
295	56	1
295	63	1
296	45	2
296	28	3
296	75	3
296	62	1
297	7	2
297	3	3
297	50	3
297	81	3
298	64	2
298	89	3
299	65	2
299	50	1
300	14	3
300	33	1
300	92	1
300	31	2
301	48	1
301	94	1
302	88	1
302	68	1
302	42	1
303	45	1
303	24	3
303	68	3
303	83	1
304	2	1
304	36	1
304	47	2
305	71	3
305	72	2
305	17	1
306	85	2
306	6	3
306	26	2
306	77	3
307	46	3
307	88	1
307	2	3
308	80	3
308	98	3
308	20	3
308	24	1
309	25	3
310	9	1
310	57	3
311	97	1
311	17	1
311	100	3
312	48	1
312	24	2
312	86	1
312	13	2
313	69	1
313	82	2
313	83	3
313	23	2
314	63	3
314	15	3
314	57	1
314	3	2
315	13	1
315	66	1
315	77	1
316	1	2
316	20	1
316	14	3
317	79	3
318	7	2
318	83	1
318	39	3
319	46	1
319	23	1
319	52	3
319	69	2
320	81	2
320	93	1
320	35	1
320	23	2
321	62	3
321	20	3
321	52	2
322	13	2
323	83	3
323	55	2
324	32	3
324	6	3
324	36	1
325	55	1
325	39	1
325	83	3
326	35	1
327	52	1
328	28	1
329	62	1
330	4	1
331	32	1
331	52	1
331	78	3
331	74	2
332	77	1
332	89	3
333	32	2
333	3	3
333	70	1
334	4	2
335	90	3
335	30	1
336	90	1
336	70	3
336	46	1
336	22	1
337	93	2
337	60	2
337	21	2
338	6	3
338	8	1
338	30	3
338	88	3
339	75	2
340	95	2
341	29	2
341	73	3
341	40	3
342	91	3
342	58	2
342	23	2
342	94	3
343	9	1
344	70	1
344	36	1
345	34	3
345	43	1
345	87	2
345	75	1
346	99	2
346	44	1
346	12	1
346	32	3
347	41	1
347	6	3
347	75	1
348	100	3
348	85	1
348	71	3
348	66	3
349	67	2
349	7	1
349	99	2
349	13	3
350	47	2
350	35	3
351	32	1
351	71	3
351	99	3
351	87	2
352	4	3
352	16	3
352	1	3
353	90	3
354	32	2
354	14	1
354	79	2
355	7	3
355	15	3
356	84	2
356	15	3
356	9	1
357	74	2
358	84	2
358	36	3
359	71	1
360	45	2
360	79	1
360	64	1
361	57	1
362	98	1
362	16	3
363	37	3
363	77	3
363	86	3
363	21	3
364	24	1
364	53	3
364	14	2
365	68	3
365	61	3
365	91	1
366	44	3
366	63	3
366	34	1
366	28	3
367	34	3
367	54	2
367	3	3
368	23	1
368	84	1
368	16	1
368	48	3
369	35	3
370	73	2
370	88	3
371	59	3
371	95	3
372	74	2
372	94	3
372	35	2
373	40	3
373	67	3
373	17	1
373	57	3
374	60	2
374	58	1
375	30	1
376	48	1
376	11	1
377	47	1
377	35	1
378	10	3
378	79	3
378	86	2
378	69	1
379	21	1
380	39	2
380	52	1
380	100	1
380	6	3
381	2	1
381	27	1
382	84	1
382	8	2
382	85	3
383	42	2
383	26	2
383	100	1
384	42	3
385	18	2
385	17	1
386	99	1
386	86	1
386	24	1
387	100	2
387	95	1
387	56	3
387	10	2
388	51	1
389	26	1
389	61	3
389	98	3
389	27	3
390	92	1
391	67	2
392	63	1
392	5	1
393	98	2
394	21	1
394	44	2
395	88	3
395	56	2
395	9	3
396	10	2
396	22	3
397	9	1
397	79	1
398	90	2
398	11	3
398	86	3
398	22	3
399	10	3
400	91	1
400	58	1
400	28	2
401	97	3
401	52	1
401	12	2
402	65	1
403	57	1
403	36	1
404	26	2
404	38	1
404	64	3
404	79	2
405	23	3
405	49	2
406	100	1
406	81	2
406	73	3
407	22	3
408	31	3
409	89	1
409	48	1
409	99	3
410	75	1
411	67	3
411	5	3
412	52	1
413	73	3
413	41	3
414	12	3
414	19	1
415	48	2
415	44	2
415	78	1
415	75	2
416	43	2
416	53	1
416	21	3
417	11	1
417	76	1
417	72	2
418	52	3
418	78	2
419	24	2
419	81	3
419	4	1
419	42	1
420	38	1
420	67	2
420	60	1
421	3	3
421	68	3
421	50	1
421	72	3
422	97	1
422	82	2
422	20	2
423	2	2
423	18	1
424	41	3
424	30	3
424	13	3
424	62	2
425	54	1
425	67	2
425	27	1
426	15	2
426	66	1
426	41	3
427	98	1
427	10	2
427	25	1
427	49	3
428	68	2
429	25	1
429	15	3
430	43	3
430	80	1
430	11	2
430	4	3
431	48	2
431	100	2
431	34	2
432	22	3
433	95	1
433	12	3
433	30	3
434	57	3
434	81	3
435	22	3
435	43	1
435	50	1
436	91	2
436	64	1
436	45	1
436	1	3
437	10	3
437	18	1
437	75	2
438	5	2
438	40	1
438	46	2
438	3	1
439	54	2
439	77	1
439	31	3
440	63	1
441	66	3
441	53	2
441	51	1
442	24	2
443	76	2
444	99	2
445	82	3
445	29	2
446	54	2
446	87	3
446	25	1
447	95	2
447	66	1
447	87	3
448	41	1
448	12	3
448	91	3
448	99	2
449	91	1
450	31	3
451	99	2
451	74	2
451	5	2
451	20	2
452	52	1
452	69	1
452	3	1
453	72	1
453	33	3
454	40	1
454	81	2
455	61	2
455	66	2
455	56	2
455	40	1
456	4	1
456	28	3
457	90	3
457	3	2
457	98	1
457	99	2
458	58	3
459	58	2
459	37	1
460	65	2
461	36	3
461	18	3
461	57	2
462	65	3
463	25	1
464	78	3
464	10	1
464	1	1
465	55	2
465	100	1
465	21	1
466	2	2
466	92	1
467	69	3
467	39	2
467	11	1
468	3	3
469	14	1
470	4	1
471	28	2
472	91	1
473	73	1
473	71	2
473	26	3
473	59	2
474	79	1
474	68	1
475	71	1
475	16	3
475	37	2
476	96	1
476	70	3
476	24	1
476	80	3
477	26	2
477	37	2
477	75	3
478	44	3
479	15	3
479	67	1
479	58	3
480	33	2
480	78	1
480	9	1
480	21	1
481	50	2
481	87	2
481	56	3
482	58	3
482	85	2
483	48	2
483	4	2
483	22	1
484	4	3
485	70	2
485	44	1
485	32	2
486	10	3
487	53	3
487	27	1
488	49	2
488	28	1
489	55	1
489	70	2
489	63	3
490	100	1
490	57	1
490	4	1
490	80	3
491	74	1
492	88	3
492	18	1
492	61	1
493	27	2
493	79	1
493	44	2
493	67	1
494	25	3
494	59	2
494	55	2
494	16	1
495	54	2
495	28	2
495	26	2
496	15	1
497	90	2
497	16	3
498	72	1
498	83	3
498	90	1
498	25	3
499	85	3
500	68	3
500	95	3
500	58	3
500	96	1
501	43	2
501	62	3
501	91	3
502	62	1
502	97	1
502	69	2
502	5	1
503	96	3
503	87	3
503	69	2
504	34	3
504	99	3
504	1	1
505	84	3
505	49	1
506	42	1
506	90	1
506	96	2
507	95	1
508	36	3
508	99	2
508	75	3
508	78	2
509	57	2
509	49	2
509	71	3
510	82	2
510	77	2
510	52	3
510	47	3
511	85	2
511	69	1
511	66	2
512	97	2
513	4	2
513	82	3
513	34	3
513	91	3
514	97	2
514	96	1
515	98	2
516	81	1
516	59	3
517	6	3
517	24	3
517	43	3
517	95	1
518	55	3
518	77	3
519	33	1
519	67	3
520	94	3
520	82	1
521	68	1
522	41	3
523	70	3
523	25	1
524	66	3
524	70	2
524	56	1
525	99	1
526	89	2
527	31	3
527	13	3
527	79	3
528	27	3
528	14	1
528	93	1
529	13	3
530	1	3
530	92	2
531	72	1
532	81	1
533	38	2
533	35	2
533	58	2
533	1	3
534	60	3
534	90	2
534	62	3
534	20	2
535	70	1
536	60	2
537	29	3
538	84	1
538	17	1
538	24	2
538	37	3
539	7	3
539	69	2
539	95	2
539	27	2
540	68	1
540	79	2
540	17	1
540	27	3
541	5	3
541	20	1
542	40	1
542	18	1
542	82	1
542	65	2
543	30	3
543	46	2
543	38	3
544	48	3
544	19	2
544	5	1
544	59	3
545	58	1
545	56	1
546	15	1
546	9	3
547	5	1
547	4	2
547	66	2
547	63	3
548	56	2
548	2	2
549	45	2
549	6	1
549	88	3
550	31	1
551	41	2
551	75	3
551	83	3
552	37	2
552	43	2
553	8	2
553	40	3
553	21	1
554	78	2
554	61	2
555	76	2
555	13	3
555	21	1
555	70	3
556	37	2
556	81	1
557	44	2
557	32	2
558	80	2
559	11	1
559	51	2
560	79	1
560	28	1
561	75	2
561	12	1
562	11	2
562	82	3
562	39	1
563	51	2
563	35	3
563	23	1
564	96	1
565	86	3
565	97	1
565	3	2
565	5	3
566	45	3
566	8	3
567	42	2
568	65	2
569	49	2
570	42	2
571	57	1
571	77	1
571	99	2
572	2	3
573	36	1
573	53	1
574	47	3
574	56	2
575	60	1
576	43	1
576	3	3
577	30	3
577	44	1
577	39	3
578	82	2
578	10	3
578	5	2
579	94	2
579	53	1
580	69	3
581	89	2
581	72	3
582	14	1
582	27	1
582	47	3
582	49	1
583	47	3
583	80	2
584	8	3
585	52	1
585	72	1
585	28	2
585	4	3
586	19	1
587	88	3
587	33	3
587	61	2
587	42	2
588	54	2
588	62	2
588	43	2
588	80	3
589	25	2
589	46	3
589	77	3
589	34	2
590	77	1
590	34	3
590	61	2
591	90	2
591	56	1
591	88	3
591	6	1
592	81	3
592	56	3
593	93	1
593	86	2
593	48	2
594	29	3
595	65	3
595	25	1
595	14	1
595	94	1
596	13	3
596	28	3
597	83	1
597	25	1
597	12	1
597	89	1
598	92	1
599	36	2
599	99	1
599	69	3
599	10	1
600	48	1
600	84	1
600	76	3
601	8	1
601	71	2
601	42	3
601	74	2
602	41	2
602	33	3
602	43	3
602	38	2
603	75	2
603	57	1
603	11	2
604	55	2
604	20	1
604	31	1
605	35	2
605	65	1
605	76	3
605	75	1
606	90	3
606	23	2
607	79	2
607	48	1
608	55	1
609	14	1
609	9	3
609	52	1
609	16	2
610	9	1
611	34	1
612	26	1
612	93	3
612	80	2
612	60	3
613	42	1
613	60	3
614	70	3
614	94	2
614	17	3
614	35	1
615	84	3
615	7	2
615	63	2
615	39	1
616	79	1
616	84	3
616	10	3
617	94	2
618	92	2
618	18	2
618	53	3
619	85	1
619	95	1
619	17	3
620	63	1
620	72	2
620	62	3
621	66	3
621	29	2
621	27	3
621	90	1
622	88	1
622	81	3
622	39	1
623	28	3
623	99	2
624	58	2
624	70	1
624	75	3
624	4	1
625	2	1
625	26	1
625	52	3
626	6	1
626	15	3
626	66	1
627	29	1
627	9	3
627	99	3
628	77	2
628	16	1
629	38	3
630	38	3
630	56	2
630	28	3
630	91	2
631	3	1
632	11	3
632	33	3
632	95	3
633	69	2
633	67	3
634	51	1
634	63	3
635	80	1
635	75	2
635	86	2
636	58	3
637	77	2
637	54	2
638	73	2
638	22	2
638	32	1
638	65	3
639	89	1
640	34	2
641	51	3
642	20	2
642	71	3
642	35	3
643	4	3
643	37	2
643	36	1
643	1	3
644	24	1
644	25	1
644	38	2
644	88	3
645	41	2
645	86	1
645	57	2
645	18	3
646	73	3
647	75	3
647	37	2
648	28	3
648	80	1
648	98	2
648	74	2
649	92	3
649	19	1
650	59	1
650	26	2
650	85	1
650	4	1
651	56	1
651	59	3
651	72	3
651	4	1
652	97	1
652	67	2
653	29	3
654	29	3
655	94	1
655	79	2
655	19	1
655	50	1
656	20	3
657	2	3
657	18	1
657	78	2
657	58	3
658	59	2
659	78	1
660	12	2
660	66	3
661	88	2
661	37	3
662	63	3
662	71	1
663	31	1
663	56	1
663	14	3
663	23	3
664	51	3
664	89	1
664	67	2
665	51	2
665	8	2
665	10	1
665	37	1
666	24	1
666	61	2
666	49	3
667	64	3
667	7	1
667	10	2
668	80	2
668	100	3
669	29	1
670	38	1
670	77	2
670	67	3
670	24	1
671	81	2
671	43	3
671	87	3
671	51	1
672	70	1
672	38	1
672	1	2
673	69	3
673	27	3
674	11	1
674	39	1
675	21	1
676	79	2
677	64	2
677	22	2
677	3	1
678	51	3
678	93	2
678	43	2
678	91	2
679	25	2
679	89	3
679	40	3
680	52	3
680	26	1
680	80	1
680	77	2
681	58	1
681	17	1
681	81	2
682	54	2
682	62	3
682	46	1
683	17	2
683	28	1
683	70	2
683	72	2
684	17	1
685	2	2
685	94	2
686	14	1
686	65	1
686	67	2
686	30	2
687	39	2
687	52	1
688	21	3
688	1	1
688	84	2
689	2	2
689	87	2
690	62	2
691	98	3
691	2	3
692	94	1
693	58	1
693	44	3
693	20	2
693	16	3
694	1	1
694	89	1
694	38	1
694	31	3
695	29	3
696	72	1
696	51	1
697	14	1
697	57	1
697	62	3
697	79	2
698	75	1
699	4	1
699	33	1
699	41	1
700	19	3
701	91	2
702	54	2
703	45	3
703	25	3
704	36	2
704	39	2
704	6	1
705	5	2
706	41	3
706	6	3
706	10	2
706	96	1
707	5	1
707	93	1
707	31	1
707	8	3
708	54	1
708	46	3
708	60	1
709	71	1
710	43	1
710	91	2
711	77	1
711	3	3
712	47	3
712	20	2
712	49	1
712	54	1
713	28	3
713	51	2
713	91	1
714	93	2
714	23	2
714	11	2
715	44	1
715	53	1
715	25	1
716	91	1
717	61	1
718	15	1
718	65	3
719	15	3
719	86	1
720	65	1
721	75	3
721	97	3
721	85	3
721	51	2
722	78	1
722	18	3
722	82	2
723	71	1
724	18	1
724	24	1
724	49	2
725	4	3
725	77	2
725	99	1
726	28	2
726	30	2
727	21	3
728	12	1
728	70	2
728	71	2
729	68	3
729	21	1
730	99	3
730	86	2
730	2	3
730	84	3
731	18	2
731	43	3
731	4	1
732	61	2
732	97	2
732	5	1
732	62	3
733	76	1
733	40	1
734	47	3
735	47	3
735	77	1
735	61	1
735	36	1
736	94	1
736	23	2
736	74	1
736	90	3
737	90	3
737	59	1
737	9	2
738	86	2
739	86	3
739	58	1
739	36	3
740	91	3
740	24	2
741	58	3
741	70	3
741	100	3
742	43	3
742	77	1
743	80	1
743	44	2
744	79	3
745	85	3
745	96	2
746	58	3
746	8	2
746	14	1
747	36	3
748	77	2
748	23	2
748	88	1
748	68	3
749	21	3
749	42	2
749	30	3
749	68	2
750	8	1
750	51	1
750	62	3
751	5	1
751	12	1
752	76	3
753	1	1
753	72	2
753	73	3
753	86	1
754	52	2
754	21	2
754	72	1
754	48	1
755	16	1
755	7	1
756	4	2
756	37	3
757	47	3
757	6	1
757	44	1
757	29	2
758	9	2
758	18	3
758	55	2
759	73	1
759	70	2
759	52	2
760	96	3
760	13	3
761	47	3
761	18	1
761	74	3
762	78	1
762	97	3
763	59	1
764	69	3
765	88	3
765	34	2
765	72	2
765	95	2
766	8	3
766	75	1
766	65	2
767	85	1
767	4	2
768	1	2
768	17	1
768	57	2
769	93	2
770	70	1
771	71	1
771	91	2
772	12	2
772	93	2
773	16	3
773	11	3
773	28	3
774	54	3
775	40	2
775	70	2
775	44	2
776	55	2
776	7	2
776	11	3
776	62	2
777	34	2
778	73	1
779	40	1
779	10	2
779	85	3
779	38	1
780	100	1
780	42	1
781	37	1
781	97	3
782	9	2
783	84	3
783	50	3
783	3	1
783	75	2
784	41	3
784	21	3
784	56	1
784	40	2
785	43	2
786	99	3
786	92	2
787	69	1
787	65	2
788	31	3
788	6	1
788	68	1
788	66	3
789	34	3
789	40	3
789	89	2
790	13	2
790	40	2
791	62	3
791	76	2
792	71	1
792	62	3
792	17	1
792	66	1
793	97	3
793	66	1
794	100	1
794	20	2
795	32	3
795	13	3
795	90	1
795	9	3
796	25	3
796	35	3
796	82	3
797	68	1
797	82	1
797	56	1
798	72	2
798	51	2
798	12	2
798	17	1
799	87	3
799	16	3
799	67	3
800	76	1
800	96	1
801	53	2
801	14	2
802	82	3
802	100	1
803	98	2
803	70	1
804	74	1
804	42	3
804	69	3
804	82	1
805	58	3
805	40	1
806	92	1
806	10	2
806	67	3
807	48	3
807	58	3
807	51	3
807	94	1
808	11	2
808	56	2
808	47	1
808	76	3
809	78	1
809	81	2
809	6	1
809	46	3
810	87	1
810	12	1
811	84	3
811	25	1
811	10	1
811	13	2
812	63	1
812	53	2
813	87	3
813	65	2
814	85	2
815	40	3
816	1	1
817	27	1
817	70	1
817	59	3
818	88	2
818	6	3
818	40	1
818	26	3
819	33	3
819	14	3
819	83	3
820	29	3
820	72	1
821	50	1
822	96	2
822	66	2
823	95	1
823	71	2
824	7	1
825	42	1
825	34	2
825	58	1
825	64	1
826	7	3
826	94	3
827	10	1
827	45	2
827	74	1
827	23	1
828	9	1
828	18	3
828	71	1
829	72	3
829	4	2
829	13	1
830	89	3
830	15	2
830	14	1
830	91	2
831	82	1
831	52	3
832	21	1
832	89	1
832	30	2
832	35	2
833	98	3
833	24	2
833	39	3
834	90	1
834	30	3
834	35	1
835	45	2
835	63	2
835	44	2
835	41	1
836	5	2
836	91	3
836	75	3
837	90	3
837	65	1
838	19	3
838	43	2
838	54	3
838	5	1
839	44	2
839	58	2
840	74	2
840	53	3
840	61	2
841	68	3
841	89	2
841	53	1
842	96	1
843	93	3
843	91	2
844	94	1
844	52	1
844	16	2
845	23	2
845	22	3
845	35	1
846	3	3
847	79	3
847	12	3
847	35	2
847	1	2
848	56	2
848	7	3
848	78	3
849	49	1
849	51	2
850	39	2
851	100	1
852	50	2
852	86	2
852	53	2
853	67	1
853	9	2
853	73	2
853	1	1
854	92	1
855	88	2
856	53	2
856	49	1
857	61	1
857	72	1
857	48	1
858	61	3
859	53	1
859	57	2
860	27	3
861	97	3
861	38	3
861	89	3
861	14	3
862	87	3
862	10	2
862	99	2
862	57	3
863	42	3
864	27	2
864	90	3
864	33	1
864	49	3
865	23	3
865	57	1
866	34	2
866	26	2
866	74	2
867	32	3
867	40	2
867	94	1
868	72	3
868	53	3
868	99	1
868	80	3
869	38	2
870	59	2
870	95	2
870	37	2
870	83	3
871	48	3
871	24	1
872	65	3
873	7	1
873	31	2
873	11	2
873	25	2
874	37	2
874	98	3
874	96	3
875	56	1
875	24	2
875	72	3
875	12	1
876	30	2
877	72	1
878	40	3
879	33	3
880	32	3
880	48	1
880	64	2
880	15	2
881	69	1
881	3	1
882	55	2
882	62	1
883	92	2
883	33	3
884	30	3
884	71	1
884	11	3
885	83	1
886	12	2
887	71	2
888	14	3
888	47	3
888	10	3
888	18	2
889	71	2
889	11	1
889	10	1
890	90	1
890	72	2
891	17	1
892	21	1
892	52	3
892	94	1
892	5	1
893	3	2
893	9	3
893	88	3
894	45	1
895	72	2
895	59	1
896	11	2
897	30	3
897	54	2
897	14	1
898	73	3
898	30	1
899	97	2
899	52	3
900	33	2
901	66	3
901	63	3
901	55	2
902	61	2
902	69	3
902	88	2
902	7	1
903	90	3
903	67	2
903	87	1
903	80	1
904	15	1
905	90	1
905	88	2
905	18	2
906	42	1
906	47	3
907	16	3
908	86	1
908	82	1
908	3	1
908	6	2
909	85	3
909	33	1
909	90	1
909	69	2
910	42	2
910	35	1
910	82	1
910	22	2
911	23	2
911	5	2
911	87	2
912	85	2
912	48	3
912	39	3
913	49	3
913	43	3
914	65	2
914	78	1
914	24	1
914	19	1
915	69	2
915	47	2
915	67	2
915	61	3
916	26	3
916	6	2
916	95	1
917	94	1
917	17	3
918	54	2
918	9	3
918	87	3
918	34	1
919	13	1
919	81	3
919	20	2
920	61	2
921	24	1
921	64	3
921	45	2
922	54	2
922	27	2
922	28	1
922	74	3
923	18	2
923	97	3
923	9	1
923	69	1
924	63	3
924	29	2
924	82	2
924	58	3
925	8	3
925	50	2
925	89	2
926	8	2
926	86	3
926	61	3
927	35	2
927	27	3
927	96	3
928	10	1
928	38	1
928	3	1
928	12	3
929	21	2
929	6	3
929	70	1
929	43	3
930	3	2
930	79	2
931	77	2
931	51	3
932	81	1
932	37	2
932	27	2
933	46	1
933	12	2
934	92	3
935	98	2
935	17	2
935	70	1
935	68	1
936	100	3
937	47	1
937	56	2
937	91	3
938	76	1
938	25	1
938	93	1
938	29	3
939	26	3
939	85	1
940	56	2
940	59	3
941	62	1
942	78	3
942	4	1
943	65	2
943	70	1
943	68	1
944	92	3
944	63	1
944	38	3
945	45	3
945	22	1
945	30	3
945	75	1
946	67	2
947	99	3
948	97	3
948	65	1
948	92	2
948	43	1
949	70	3
949	3	3
949	46	3
950	98	3
951	20	3
952	60	3
953	33	1
953	30	2
954	70	3
955	27	2
955	78	1
955	6	1
956	67	3
956	16	2
956	38	2
956	37	1
957	25	1
958	39	2
959	8	3
959	38	1
960	85	2
961	27	2
961	53	3
962	36	3
963	15	2
964	81	1
964	54	3
964	71	2
965	12	3
965	26	3
966	22	1
966	30	3
966	85	2
966	16	1
967	28	2
967	19	3
967	73	2
968	64	3
969	88	3
970	4	1
970	22	1
971	59	1
971	67	3
971	94	1
972	10	1
972	26	3
972	57	3
972	25	1
973	84	1
973	56	2
973	79	3
973	10	2
974	52	1
974	47	1
974	43	1
974	88	3
975	82	1
975	26	1
975	86	3
975	11	2
976	7	2
976	59	3
977	56	3
978	42	3
978	53	2
978	83	1
979	11	1
979	14	3
980	30	2
980	49	1
980	31	1
981	100	2
981	92	2
981	60	3
981	56	3
982	89	2
982	86	1
983	85	3
983	93	2
983	41	1
983	65	3
984	72	3
984	2	1
984	56	1
985	31	2
985	77	3
986	58	1
986	93	3
986	99	3
987	94	3
987	25	2
988	19	3
988	29	2
988	40	2
988	38	1
989	26	1
989	7	3
990	27	3
990	14	2
990	93	1
991	86	2
992	15	3
992	98	1
992	90	2
992	79	3
993	41	2
993	22	3
993	69	1
994	12	2
994	69	3
994	6	2
995	71	1
995	49	1
995	33	2
995	62	1
996	94	2
996	18	2
997	98	2
997	62	1
997	11	1
997	99	2
998	22	2
999	85	2
999	94	3
999	58	3
1000	92	1
1000	72	3
1000	71	1
1000	87	3
1001	70	2
1001	37	3
1001	68	2
1002	47	1
1002	40	1
1002	46	2
1002	25	2
1003	58	2
1003	62	3
1003	32	1
1003	74	2
1004	63	1
1004	83	1
1004	13	3
1004	62	3
1005	82	3
1005	88	3
1005	86	3
1005	42	2
1006	98	2
1007	36	3
1007	35	1
1008	25	1
1008	100	2
1008	64	2
1008	37	3
1009	90	3
1010	93	3
1011	85	1
1011	10	3
1011	47	1
1012	49	1
1012	50	1
1012	78	3
1013	44	3
1013	34	1
1013	73	3
1013	54	3
1014	15	2
1015	59	1
1015	9	1
1015	13	2
1015	20	2
1016	73	2
1017	6	3
1017	48	3
1017	3	2
1018	12	3
1019	79	3
1020	57	3
1021	11	3
1022	96	2
1022	58	1
1023	75	3
1023	48	3
1023	60	1
1024	33	3
1025	56	1
1025	74	2
1026	56	1
1026	69	2
1027	1	2
1027	25	2
1027	22	3
1028	54	1
1028	56	2
1029	22	2
1029	29	1
1029	15	3
1029	38	1
1030	26	2
1030	100	2
1030	19	1
1031	66	2
1031	5	2
1032	27	1
1032	4	3
1033	40	3
1033	61	1
1033	65	2
1034	99	3
1034	23	2
1034	68	1
1034	51	2
1035	22	1
1035	88	3
1036	62	2
1036	27	1
1037	95	2
1037	88	2
1038	38	1
1039	49	2
1040	50	3
1040	54	1
1041	41	3
1041	29	3
1041	25	1
1041	62	1
1042	63	3
1042	55	2
1043	6	3
1043	50	3
1044	32	3
1044	96	2
1044	1	3
1045	84	1
1045	31	1
1045	52	3
1045	43	2
1046	38	1
1046	12	1
1047	24	3
1047	5	1
1048	90	3
1049	15	2
1050	49	1
1051	80	2
1051	26	2
1052	61	3
1053	5	3
1054	93	2
1054	58	3
1055	61	2
1055	35	1
1055	10	3
1056	78	3
1056	10	1
1057	91	1
1057	15	3
1058	89	3
1059	42	3
1059	54	1
1060	23	3
1060	39	3
1060	49	1
1061	22	2
1061	92	3
1061	51	2
1061	58	1
1062	55	1
1062	48	2
1063	75	2
1063	31	1
1063	40	1
1063	50	2
1064	77	3
1064	2	2
1065	32	2
1066	74	1
1067	49	2
1067	35	3
1067	47	1
1068	95	2
1068	46	1
1068	55	1
1068	69	3
1069	70	1
1069	52	1
1069	81	2
1070	87	2
1070	52	3
1070	53	1
1071	5	2
1072	32	1
1072	39	2
1072	56	1
1073	93	1
1073	85	1
1073	67	1
1074	8	1
1074	37	2
1074	26	1
1074	74	3
1075	98	3
1075	95	1
1076	80	2
1076	61	2
1076	34	2
1076	43	2
1077	16	2
1077	13	2
1077	3	1
1078	58	1
1079	33	2
1079	97	2
1079	26	3
1079	75	2
1080	94	2
1080	35	1
1080	95	2
1080	13	1
1081	67	2
1082	21	2
1083	26	1
1084	93	2
1084	47	2
1085	34	1
1086	66	2
1086	11	3
1086	41	2
1087	26	2
1087	69	3
1087	92	2
1088	15	2
1088	75	2
1089	65	3
1089	99	2
1089	59	1
1090	31	2
1090	50	1
1090	91	1
1091	31	1
1091	70	3
1091	4	3
1092	11	2
1092	41	3
1092	28	2
1092	72	3
1093	36	3
1093	80	1
1094	53	3
1095	43	1
1095	31	3
1095	55	1
1096	38	2
1096	29	2
1096	92	2
1097	68	3
1097	35	2
1098	6	2
1098	24	1
1098	25	1
1099	73	1
1099	32	2
1099	31	1
1100	22	2
1101	6	3
1101	63	2
1101	64	3
1101	24	1
1102	66	1
1102	57	3
1102	17	1
1103	45	3
1103	49	3
1103	9	1
1103	79	2
1104	24	2
1104	86	1
1104	98	1
1104	11	3
1105	72	3
1106	50	1
1107	36	3
1107	63	3
1108	28	1
1108	23	2
1109	31	1
1109	36	2
1109	28	2
1109	27	3
1110	43	1
1110	92	1
1110	2	2
1110	60	2
1111	2	1
1112	12	2
1112	61	1
1112	7	1
1112	58	3
1113	28	2
1114	17	3
1114	32	3
1115	54	3
1115	20	3
1115	45	2
1116	76	2
1116	34	2
1116	1	3
1117	28	3
1118	28	3
1118	41	3
1118	16	2
1119	15	2
1120	58	2
1121	13	3
1121	69	1
1121	20	2
1122	79	1
1122	92	1
1122	78	1
1122	36	3
1123	76	2
1123	42	1
1123	8	2
1123	46	2
1124	1	2
1124	44	1
1124	91	2
1124	82	3
1125	43	2
1125	7	3
1125	56	2
1125	58	3
1126	10	3
1127	11	2
1128	96	2
1128	24	3
1128	31	3
1128	75	1
1129	64	2
1130	41	1
1130	68	3
1131	58	1
1131	74	2
1132	94	2
1132	72	3
1133	64	2
1133	42	3
1133	87	1
1134	26	3
1134	94	2
1134	4	3
1134	39	3
1135	76	1
1135	83	2
1135	31	2
1135	45	1
1136	39	1
1137	62	1
1138	86	1
1138	36	3
1139	81	3
1139	96	1
1139	35	2
1139	26	1
1140	7	1
1140	95	1
1140	40	1
1140	87	2
1141	81	1
1141	46	3
1141	35	3
1142	84	3
1142	83	2
1143	39	3
1143	63	1
1143	85	1
1143	77	1
1144	7	1
1144	2	1
1145	39	3
1146	52	1
1146	12	1
1147	65	2
1147	81	3
1147	57	1
1148	33	2
1148	57	2
1148	37	1
1149	56	1
1150	21	3
1150	60	2
1150	73	3
1150	12	1
1151	71	3
1151	66	3
1151	81	2
1151	62	1
1152	11	1
1152	10	3
1152	48	2
1152	86	2
1153	23	3
1153	87	1
1154	14	1
1154	72	1
1154	6	1
1154	67	3
1155	8	2
1156	96	2
1157	97	3
1157	19	2
1158	31	3
1158	33	3
1158	37	3
1159	82	3
1159	71	1
1160	32	3
1160	81	3
1161	82	1
1162	99	1
1162	4	1
1163	63	3
1163	82	1
1163	81	1
1163	22	2
1164	2	2
1165	68	1
1165	23	1
1166	28	3
1166	18	1
1166	24	3
1166	84	3
1167	53	3
1168	13	1
1168	70	1
1168	19	1
1168	10	1
1169	37	2
1170	77	2
1170	2	3
1171	2	2
1171	100	3
1171	64	1
1171	50	1
1172	83	2
1172	27	3
1173	96	2
1173	23	3
1173	20	1
1174	95	1
1174	53	3
1174	17	2
1174	26	1
1175	19	2
1175	37	2
1176	37	3
1176	87	1
1177	60	2
1178	39	3
1179	63	1
1179	79	3
1180	36	2
1180	42	2
1180	66	2
1180	2	3
1181	22	3
1181	9	3
1182	38	2
1182	11	2
1182	29	2
1182	95	3
1183	64	2
1183	39	2
1183	4	1
1183	25	2
1184	48	2
1185	41	2
1186	66	1
1186	30	1
1186	33	2
1187	95	2
1187	20	3
1188	70	3
1188	38	1
1189	17	2
1189	4	2
1189	85	1
1189	46	3
1190	78	3
1190	27	1
1190	52	2
1191	42	1
1191	82	1
1191	62	2
1191	12	1
1192	49	1
1192	68	3
1192	64	2
1193	12	2
1194	81	1
1194	91	1
1195	47	3
1196	37	2
1197	81	1
1197	39	3
1197	79	2
1197	13	2
1198	15	3
1198	85	1
1198	63	3
1198	86	3
1199	19	2
1199	52	1
1200	94	1
1200	99	3
1201	86	2
1202	8	1
1202	80	2
1203	79	2
1203	10	2
1203	8	2
1204	69	1
1205	89	2
1205	57	1
1205	10	3
1205	96	2
1206	19	2
1206	66	2
1207	76	3
1207	12	2
1207	23	3
1207	10	2
1208	24	3
1209	42	3
1210	37	2
1211	24	3
1211	92	3
1212	76	3
1212	83	2
1213	62	3
1214	49	2
1214	24	3
1215	9	1
1215	44	3
1215	87	1
1216	1	3
1216	8	3
1216	37	3
1216	86	2
1217	32	3
1217	17	2
1217	71	3
1218	22	3
1218	54	2
1218	21	3
1218	62	3
1219	60	2
1219	90	3
1220	16	1
1220	69	1
1220	90	3
1221	89	1
1222	66	1
1222	10	3
1223	88	2
1223	6	3
1223	99	2
1223	97	2
1224	39	3
1224	29	2
1224	42	2
1224	15	2
1225	45	2
1225	63	3
1225	71	3
1226	26	3
1226	44	3
1226	39	2
1227	85	3
1227	63	2
1227	40	2
1228	20	1
1228	32	3
1229	55	3
1229	24	1
1230	81	2
1231	24	2
1231	52	1
1232	65	1
1232	42	2
1233	88	1
1233	82	1
1234	86	3
1234	13	3
1235	6	3
1235	7	2
1236	84	3
1236	36	1
1236	15	3
1237	33	1
1237	80	1
1238	11	3
1238	25	2
1239	4	2
1240	71	2
1241	62	3
1241	65	2
1241	66	1
1241	88	2
1242	25	3
1242	41	2
1242	13	2
1242	87	3
1243	42	1
1244	25	3
1245	19	3
1245	94	3
1245	54	3
1245	82	2
1246	43	3
1246	77	3
1247	91	3
1247	59	1
1247	11	1
1248	94	1
1248	8	2
1248	72	3
1249	68	3
1249	79	1
1249	19	1
1250	53	2
1251	24	3
1251	63	3
1251	95	1
1252	12	1
1252	7	2
1252	96	3
1253	46	2
1253	78	2
1254	71	3
1254	76	1
1254	41	3
1254	51	2
1255	56	1
1255	89	3
1256	78	3
1256	48	3
1256	41	1
1257	70	3
1257	14	3
1257	25	2
1258	76	3
1259	98	2
1260	81	2
1261	45	2
1262	7	2
1262	15	2
1262	56	3
1262	17	1
1263	73	3
1263	40	2
1264	84	2
1264	98	2
1264	21	2
1264	87	2
1265	62	3
1265	60	2
1266	20	3
1266	50	3
1266	12	3
1266	56	1
1267	12	3
1267	55	3
1267	15	1
1268	6	1
1268	44	2
1268	41	3
1268	7	1
1269	36	1
1270	73	1
1271	81	3
1272	42	1
1272	64	3
1273	58	3
1273	36	3
1274	98	2
1274	51	2
1275	17	3
1275	26	3
1276	28	1
1277	28	2
1277	32	3
1277	17	2
1277	16	1
1278	66	1
1278	8	1
1278	26	3
1279	72	2
1280	52	3
1280	98	3
1281	62	1
1281	32	1
1282	17	1
1282	95	3
1283	86	3
1283	44	1
1283	59	1
1283	82	3
1284	6	2
1284	93	1
1285	46	1
1285	17	2
1285	43	2
1286	86	3
1286	61	1
1286	89	3
1286	56	2
1287	25	1
1288	18	3
1289	81	3
1290	22	1
1291	23	2
1291	88	2
1291	49	3
1292	1	3
1293	91	2
1294	45	2
1294	71	2
1295	71	2
1295	86	3
1296	92	2
1296	45	1
1296	69	2
1296	37	3
1297	28	3
1298	19	1
1298	26	3
1298	94	1
1299	40	1
1299	63	3
1300	88	3
1301	8	1
1301	87	2
1301	36	3
1302	15	3
1302	63	3
1303	63	2
1303	95	1
1303	2	1
1304	9	2
1304	39	3
1304	83	1
1305	74	1
1305	53	1
1306	30	2
1306	48	1
1307	73	1
1307	49	2
1307	70	1
1307	82	2
1308	98	3
1309	46	1
1310	60	1
1310	88	3
1311	2	3
1312	57	2
1312	37	3
1312	89	2
1313	13	1
1313	32	1
1313	75	3
1314	41	1
1315	46	3
1315	87	2
1315	65	3
1316	51	2
1317	93	3
1318	45	2
1318	56	1
1319	16	1
1319	79	3
1319	35	2
1319	20	1
1320	92	1
1320	96	2
1320	90	3
1320	11	1
1321	19	3
1321	98	2
1321	36	3
1321	83	2
1322	68	2
1322	46	2
1322	89	1
1323	40	3
1323	11	1
1323	22	1
1323	77	3
1324	40	1
1324	91	1
1324	51	1
1325	18	2
1325	63	1
1326	34	3
1327	97	1
1327	30	1
1328	63	3
1329	50	3
1329	25	1
1330	29	3
1330	41	1
1330	67	1
1331	73	1
1331	62	1
1331	23	1
1331	54	2
1332	80	1
1332	86	3
1333	95	2
1333	38	3
1333	85	1
1333	67	1
1334	41	3
1334	61	3
1334	52	2
1335	59	2
1335	82	1
1335	95	1
1335	10	2
1336	100	3
1336	78	3
1337	45	2
1338	22	2
1338	60	3
1338	84	1
1338	26	1
1339	10	3
1340	96	3
1341	81	2
1341	86	1
1342	54	2
1342	39	2
1342	61	2
1343	25	1
1344	67	3
1344	91	2
1344	19	1
1345	17	1
1345	41	3
1345	5	2
1346	39	1
1346	99	2
1347	29	3
1347	5	1
1347	54	3
1347	12	2
1348	75	2
1348	70	3
1349	26	3
1349	11	1
1349	48	1
1350	3	1
1350	90	1
1350	95	2
1350	22	2
1351	16	3
1351	52	2
1352	51	1
1352	61	3
1352	7	2
1352	82	2
1353	81	3
1353	15	2
1353	91	3
1353	64	1
1354	30	1
1354	44	2
1355	7	3
1356	21	1
1356	20	1
1356	92	1
1357	10	1
1357	44	1
1357	43	1
1358	70	2
1359	1	1
1360	35	1
1360	58	2
1360	97	2
1360	28	2
1361	96	3
1361	77	2
1362	88	2
1362	27	2
1362	19	1
1362	32	2
1363	6	1
1364	55	1
1364	61	2
1364	85	2
1364	3	1
1365	20	3
1365	60	2
1365	15	1
1365	64	1
1366	42	1
1366	85	2
1366	23	1
1366	3	1
1367	64	1
1367	89	3
1367	29	1
1368	66	1
1368	80	2
1368	96	2
1369	74	3
1369	40	2
1370	99	3
1371	63	2
1371	67	3
1371	52	3
1372	15	2
1373	81	1
1373	5	3
1373	39	2
1373	29	2
1374	97	2
1374	47	2
1374	7	2
1375	49	2
1376	18	2
1376	1	3
1377	28	1
1377	75	2
1377	34	1
1377	73	2
1378	88	2
1378	27	2
1378	20	3
1378	73	2
1379	35	2
1379	80	3
1380	90	3
1381	21	2
1382	76	2
1382	63	1
1382	33	1
1382	67	1
1383	37	3
1383	22	2
1384	3	1
1384	94	1
1385	55	2
1386	6	3
1387	88	2
1388	74	2
1388	87	2
1389	96	3
1390	98	3
1390	46	3
1390	33	1
1391	30	1
1391	18	1
1391	7	2
1392	97	2
1392	68	2
1392	93	3
1393	88	2
1394	50	1
1394	83	2
1394	35	1
1395	28	3
1395	72	2
1395	60	3
1396	85	2
1396	71	2
1396	58	2
1397	55	2
1397	74	1
1397	17	3
1398	33	1
1398	71	2
1399	100	3
1399	38	3
1400	37	2
1400	85	1
1401	9	1
1401	21	2
1401	72	1
1401	96	3
1402	16	3
1402	87	3
1402	69	3
1403	73	1
1403	41	3
1404	11	1
1404	48	3
1404	58	1
1404	61	3
1405	76	2
1405	98	3
1405	92	2
1406	2	1
1406	5	1
1406	55	2
1406	95	3
1407	59	2
1408	99	2
1408	36	1
1409	31	1
1409	20	1
1409	71	2
1409	85	3
1410	58	1
1410	87	1
1411	65	2
1411	2	3
1411	24	3
1412	41	1
1413	37	1
1413	38	1
1413	48	3
1413	23	3
1414	14	1
1414	54	3
1414	91	2
1415	20	3
1416	62	2
1416	50	3
1416	83	3
1416	4	1
1417	42	1
1418	81	3
1418	16	3
1418	31	1
1418	32	3
1419	46	1
1419	50	1
1420	61	3
1420	49	3
1420	32	1
1421	19	1
1422	22	3
1422	42	1
1422	63	1
1422	85	3
1423	29	1
1424	60	2
1424	39	2
1424	11	1
1424	97	3
1425	4	1
1425	84	2
1425	60	1
1426	87	1
1427	49	3
1427	64	2
1427	97	1
1428	44	1
1428	37	3
1428	96	1
1429	8	3
1429	37	2
1429	82	2
1430	64	3
1430	91	1
1430	34	1
1430	46	3
1431	93	3
1432	68	1
1432	26	1
1432	76	2
1432	62	2
1433	96	3
1433	75	2
1433	25	1
1434	70	1
1434	95	3
1434	21	2
1435	49	1
1435	7	1
1435	26	3
1435	31	3
1436	63	2
1437	92	1
1437	79	3
1438	66	3
1438	7	3
1438	75	2
1438	19	2
1439	30	2
1439	16	2
1439	74	3
1439	63	1
1440	61	2
1440	88	3
1440	81	3
1441	86	2
1442	70	1
1442	96	1
1443	60	1
1443	3	3
1443	75	2
1443	97	1
1444	39	3
1444	64	2
1445	16	2
1446	18	2
1447	47	1
1447	56	2
1448	29	2
1449	24	1
1449	2	3
1449	30	3
1450	93	2
1450	24	1
1450	29	2
1451	89	3
1451	27	3
1451	44	2
1451	82	1
1452	86	1
1452	74	2
1453	37	2
1453	66	1
1454	73	2
1454	63	1
1454	30	1
1455	78	1
1455	63	1
1455	99	1
1455	23	1
1456	77	3
1456	74	3
1457	55	3
1458	38	1
1458	100	1
1458	21	2
1458	15	1
1459	10	2
1459	25	1
1460	86	3
1460	16	2
1461	95	1
1461	23	3
1462	22	1
1462	23	3
1462	33	3
1462	94	1
1463	75	2
1463	15	1
1463	58	2
1463	66	1
1464	85	2
1465	9	3
1465	59	1
1465	2	1
1466	19	1
1467	70	1
1467	48	2
1468	91	1
1468	42	3
1469	36	2
1469	90	2
1470	85	1
1471	9	1
1472	97	3
1472	47	3
1472	20	3
1473	83	1
1473	76	1
1473	26	3
1474	30	2
1475	5	2
1475	72	2
1475	97	1
1476	91	1
1476	43	1
1477	18	2
1478	88	1
1479	66	1
1479	76	1
1479	50	3
1479	10	1
1480	31	2
1480	32	3
1481	12	2
1481	75	1
1482	22	3
1482	71	2
1482	54	1
1482	65	1
1483	42	1
1483	54	1
1484	35	3
1484	83	1
1484	42	1
1485	46	1
1485	99	1
1485	13	1
1485	84	1
1486	37	2
1487	39	2
1488	37	1
1489	69	1
1489	63	3
1489	10	2
1490	69	1
1490	25	1
1490	54	2
1491	67	2
1491	51	1
1491	72	3
1491	61	3
1492	71	1
1492	55	2
1492	75	2
1493	47	2
1493	50	2
1494	97	3
1494	13	3
1494	52	1
1494	41	1
1495	12	1
1495	16	3
1495	87	3
1496	14	2
1496	73	2
1496	33	1
1497	66	2
1497	56	2
1497	82	3
1497	43	3
1498	16	1
1498	20	1
1499	62	3
1499	95	1
1500	12	1
1501	81	3
1501	65	2
1501	41	3
1501	66	3
1502	62	3
1502	28	1
1502	36	2
1502	85	1
1503	1	2
1503	73	1
1503	74	2
1504	55	3
1504	4	3
1504	60	1
1504	86	1
1505	63	1
1506	66	2
1506	20	2
1507	95	2
1508	64	2
1509	43	2
1509	91	2
1510	68	3
1511	41	2
1511	5	1
1511	19	1
1512	18	1
1512	31	2
1513	23	2
1513	62	3
1513	52	3
1514	42	3
1514	81	2
1514	77	2
1514	12	2
1515	78	1
1515	59	2
1516	88	1
1516	8	3
1516	81	3
1517	51	1
1517	49	1
1517	20	3
1517	23	1
1518	60	3
1518	12	3
1518	33	1
1518	73	3
1519	78	3
1519	92	3
1519	59	2
1520	22	3
1520	26	1
1521	22	1
1521	88	2
1521	32	2
1521	92	2
1522	39	1
1522	79	1
1522	98	3
1522	56	2
1523	78	3
1523	49	2
1523	62	2
1524	21	1
1524	77	2
1524	79	3
1525	98	1
1526	59	2
1527	68	2
1527	67	2
1528	68	1
1529	20	2
1529	1	1
1530	14	3
1530	84	2
1530	40	1
1531	78	3
1531	26	1
1531	23	1
1532	91	1
1532	47	1
1532	82	1
1533	41	3
1533	20	3
1533	69	2
1533	44	1
1534	82	2
1534	68	2
1535	93	1
1535	51	2
1535	58	3
1536	88	2
1536	97	3
1536	13	1
1536	83	1
1537	34	1
1537	24	3
1538	44	2
1538	25	3
1539	92	3
1539	79	2
1540	48	3
1541	2	2
1542	7	3
1543	16	1
1544	18	3
1544	29	1
1544	39	3
1544	3	1
1545	40	3
1546	26	2
1546	4	3
1547	70	3
1547	47	1
1548	13	2
1549	87	1
1550	65	1
1550	3	1
1550	88	3
1551	100	2
1552	19	2
1552	59	1
1552	7	3
1552	51	2
1553	88	3
1553	67	1
1554	14	3
1554	47	3
1555	44	3
1556	44	1
1556	48	3
1557	10	1
1557	60	2
1558	96	3
1558	41	1
1558	40	1
1558	45	2
1559	4	2
1559	35	3
1559	20	1
1559	100	3
1560	87	2
1560	14	3
1560	6	3
1561	44	3
1561	65	3
1561	69	1
1561	22	2
1562	4	1
1562	81	3
1562	19	2
1563	99	3
1564	38	3
1565	81	1
1565	61	3
1565	67	2
1565	100	2
1566	12	1
1567	21	3
1567	18	1
1567	27	2
1567	71	2
1568	68	1
1568	16	1
1568	88	3
1569	93	1
1569	65	2
1569	91	3
1570	83	2
1571	88	3
1571	53	1
1571	27	2
1571	10	1
1572	59	1
1572	50	1
1572	76	3
1573	97	2
1574	97	1
1574	28	3
1574	70	2
1575	93	3
1575	74	3
1576	25	3
1576	99	1
1577	98	3
1577	75	3
1577	25	2
1577	38	1
1578	5	3
1578	66	3
1579	7	3
1579	70	1
1580	76	1
1581	50	1
1581	83	2
1581	68	3
1582	3	1
1582	49	2
1582	51	3
1582	30	3
1583	89	1
1583	100	2
1584	13	3
1584	9	3
1584	12	1
1584	55	2
1585	100	2
1585	8	2
1585	56	3
1585	77	1
1586	49	2
1586	53	2
1586	59	2
1587	36	1
1587	66	2
1588	55	1
1588	100	3
1588	28	1
1589	29	3
1589	64	1
1590	42	1
1590	24	1
1591	76	2
1592	63	1
1593	98	1
1593	87	2
1594	38	3
1595	46	2
1595	100	3
1595	89	3
1596	67	1
1597	80	1
1597	54	1
1597	30	2
1598	68	2
1598	98	3
1598	65	1
1599	27	2
1599	71	3
1599	91	3
1600	53	3
1600	56	2
1600	97	3
1601	77	3
1602	71	3
1602	35	1
1602	66	3
1602	90	1
1603	62	3
1603	35	3
1603	96	3
1604	100	1
1605	15	3
1605	76	1
1605	12	1
1605	88	1
1606	41	1
1606	56	2
1606	45	2
1607	77	2
1608	81	1
1608	6	1
1608	31	2
1608	23	1
1609	86	1
1609	47	1
1609	72	2
1609	25	2
1610	61	2
1611	37	3
1611	20	1
1612	34	2
1612	51	2
1612	15	2
1612	97	2
1613	2	3
1613	69	2
1613	11	2
1613	62	1
1614	18	3
1614	14	3
1615	28	3
1615	34	3
1616	63	2
1617	68	2
1617	64	1
1617	45	3
1617	88	1
1618	6	3
1619	50	2
1619	95	3
1620	79	3
1620	19	1
1620	84	1
1621	15	1
1621	46	2
1622	80	3
1622	76	1
1623	20	3
1624	44	2
1624	91	2
1625	76	3
1625	85	1
1625	83	2
1626	51	1
1626	80	3
1627	9	3
1627	99	3
1628	58	3
1629	92	2
1629	64	3
1629	48	3
1630	36	2
1630	69	3
1630	33	3
1630	44	3
1631	21	3
1631	56	1
1631	32	1
1631	31	2
1632	32	3
1633	64	1
1633	2	2
1634	49	1
1634	93	1
1634	99	2
1635	62	3
1636	31	2
1636	34	1
1637	23	3
1638	38	3
1638	94	1
1638	89	2
1638	63	2
1639	73	2
1640	1	2
1641	56	1
1641	40	2
1641	52	1
1642	50	1
1642	35	2
1643	51	2
1644	66	3
1645	61	2
1646	75	2
1646	58	1
1646	94	3
1646	5	1
1647	49	2
1647	6	3
1647	79	2
1647	33	3
1648	75	2
1648	62	1
1648	82	2
1649	12	2
1649	84	1
1649	94	1
1649	16	2
1650	80	2
1651	81	1
1651	19	1
1651	32	3
1652	13	2
1652	60	2
1652	48	1
1652	5	3
1653	19	2
1653	100	3
1653	41	2
1654	8	3
1654	90	2
1655	3	1
1655	46	3
1656	46	3
1656	28	3
1656	84	1
1657	61	3
1658	6	2
1658	60	1
1658	85	1
1658	21	3
1659	49	2
1659	92	1
1660	29	1
1660	89	1
1660	86	3
1660	82	1
1661	97	3
1661	44	1
1662	4	3
1662	86	2
1662	75	3
1663	6	3
1663	88	1
1664	25	3
1664	91	1
1664	73	2
1664	22	2
1665	60	2
1665	8	2
1665	53	1
1666	65	1
1666	90	3
1667	27	2
1668	92	3
1668	12	1
1669	15	1
1669	28	2
1669	29	1
1670	17	3
1670	13	1
1671	58	1
1671	35	1
1672	54	3
1673	96	3
1674	58	3
1675	76	3
1675	20	3
1676	7	2
1677	80	3
1677	17	3
1678	71	2
1678	19	1
1679	63	2
1679	77	2
1679	45	2
1679	57	1
1680	74	1
1680	26	1
1680	5	2
1681	47	2
1681	57	2
1682	63	2
1682	84	3
1683	100	3
1683	34	2
1683	43	3
1684	35	2
1685	27	1
1685	10	3
1685	20	1
1686	36	2
1687	63	3
1687	40	2
1688	61	1
1688	2	3
1688	81	1
1689	85	3
1690	2	3
1690	83	2
1690	23	2
1690	21	1
1691	38	3
1691	31	1
1691	26	2
1691	35	2
1692	100	2
1693	90	3
1693	50	2
1693	54	1
1694	41	1
1695	15	2
1696	75	1
1696	99	3
1696	24	3
1697	6	1
1697	41	3
1697	36	2
1698	20	2
1699	65	2
1700	14	1
1700	19	3
1700	32	2
1700	8	3
1701	67	1
1702	31	1
1702	88	1
1702	59	2
1702	36	1
1703	85	2
1703	50	2
1703	83	3
1704	100	3
1704	56	3
1704	32	2
1704	11	1
1705	72	1
1705	74	3
1705	35	3
1705	23	2
1706	64	1
1706	54	2
1707	13	1
1707	58	3
1707	82	3
1708	97	3
1708	67	2
1709	74	3
1709	17	1
1709	53	2
1709	46	1
1710	74	2
1711	2	2
1711	23	1
1712	48	3
1712	50	1
1713	42	3
1713	7	1
1713	43	3
1714	96	1
1714	85	1
1714	17	3
1715	46	2
1715	88	2
1716	24	3
1716	41	2
1716	35	2
1717	18	1
1717	50	2
1717	22	1
1718	62	2
1718	29	1
1718	23	2
1719	18	1
1719	2	2
1719	90	3
1719	10	2
1720	74	1
1720	89	3
1720	65	3
1720	24	3
1721	60	2
1722	95	1
1722	57	3
1722	14	2
1722	36	2
1723	16	1
1724	55	2
1724	48	2
1724	32	1
1724	10	3
1725	29	1
1725	24	1
1726	18	3
1726	78	1
1726	58	2
1726	82	1
1727	35	1
1728	18	1
1728	47	2
1729	86	1
1730	32	1
1730	44	2
1731	96	3
1731	21	3
1731	89	2
1732	60	2
1732	44	2
1732	9	2
1733	12	3
1733	7	3
1734	66	3
1734	61	2
1735	65	1
1735	72	1
1736	93	2
1736	46	2
1736	50	2
1737	73	1
1737	74	2
1737	44	3
1737	28	1
1738	26	2
1738	2	3
1738	67	3
1739	60	3
1740	90	3
1740	57	1
1740	61	1
1740	31	1
1741	87	2
1741	31	1
1742	34	2
1742	6	2
1742	36	3
1742	41	3
1743	42	3
1744	87	3
1744	39	3
1744	40	2
1745	55	2
1746	88	3
1746	56	1
1747	16	3
1747	84	3
1747	1	3
1747	94	2
1748	94	3
1749	11	2
1750	6	2
1750	31	1
1750	83	3
1750	81	3
1751	34	2
1751	44	1
1751	7	3
1751	67	1
1752	17	3
1752	59	2
1752	99	3
1752	77	2
1753	39	3
1753	29	3
1754	15	3
1754	48	1
1754	65	1
1755	47	2
1755	40	2
1755	29	3
1755	87	2
1756	53	2
1756	35	3
1757	82	3
1757	70	1
1757	58	3
1757	55	3
1758	56	2
1759	39	1
1759	60	2
1759	63	3
1759	35	1
1760	91	1
1760	45	2
1761	64	1
1761	84	2
1762	84	2
1762	50	1
1762	12	3
1763	12	1
1763	58	3
1763	1	1
1763	41	3
1764	58	1
1764	63	3
1765	60	3
1765	45	3
1765	52	3
1766	40	1
1766	16	3
1767	16	3
1767	47	2
1768	58	3
1768	15	2
1768	9	3
1768	26	2
1769	46	1
1770	10	1
1770	29	2
1770	53	1
1771	96	1
1771	41	3
1771	58	1
1771	80	3
1772	89	3
1772	74	1
1772	43	1
1773	54	2
1773	65	1
1774	66	2
1774	29	3
1775	29	2
1775	1	1
1775	91	2
1776	49	1
1776	4	2
1776	96	1
1776	43	3
1777	85	3
1777	63	2
1777	49	2
1778	14	3
1779	34	3
1779	26	3
1780	83	3
1781	42	1
1782	12	3
1783	15	3
1783	56	2
1783	34	2
1783	78	3
1784	65	2
1784	84	3
1784	12	1
1785	38	1
1785	11	3
1785	29	3
1785	16	2
1786	69	1
1786	82	1
1787	1	1
1787	47	1
1787	78	1
1788	49	1
1788	7	1
1788	94	2
1788	47	1
1789	60	2
1789	5	2
1790	71	2
1790	10	3
1791	88	1
1791	56	3
1791	44	3
1792	51	2
1792	70	3
1792	47	3
1792	16	2
1793	76	1
1794	46	1
1794	62	2
1794	19	1
1795	8	1
1795	88	2
1795	77	2
1796	64	1
1797	90	1
1797	43	1
1797	82	2
1798	18	3
1799	69	3
1799	70	3
1800	40	2
1800	74	1
1800	76	1
1800	32	3
1801	93	2
1802	80	3
1803	72	3
1804	63	1
1805	46	1
1805	64	1
1805	81	2
1806	1	1
1806	29	1
1806	78	2
1807	31	3
1807	81	1
1808	95	1
1809	53	2
1809	71	2
1809	96	3
1810	94	2
1811	21	2
1811	11	3
1812	49	1
1813	55	1
1813	30	1
1813	14	2
1813	64	1
1814	100	3
1815	12	1
1815	61	2
1815	39	2
1816	36	2
1816	64	3
1817	78	2
1817	91	3
1818	40	2
1818	82	2
1818	30	2
1818	63	1
1819	14	2
1819	38	2
1820	14	2
1820	52	1
1820	29	1
1820	64	2
1821	21	3
1821	37	3
1822	56	3
1822	99	2
1822	75	1
1823	95	1
1823	97	1
1824	3	3
1824	50	2
1824	10	1
1825	90	2
1825	54	2
1825	86	3
1825	68	1
1826	66	3
1827	48	1
1827	79	1
1827	24	2
1827	36	2
1828	87	3
1828	21	2
1828	31	3
1829	5	3
1829	18	2
1830	44	1
1830	82	1
1830	26	2
1831	65	3
1831	99	3
1831	26	3
1832	70	3
1833	83	3
1833	56	1
1834	1	1
1834	61	1
1835	17	3
1836	80	3
1836	93	3
1836	36	2
1837	94	1
1837	30	2
1838	73	1
1838	42	2
1839	8	2
1839	61	1
1840	43	2
1840	69	1
1841	15	3
1842	57	1
1843	12	1
1844	3	2
1844	21	1
1844	60	2
1844	82	1
1845	95	1
1846	17	3
1846	22	3
1846	41	1
1847	67	3
1848	14	2
1849	1	2
1849	29	3
1849	42	2
1850	69	2
1850	21	3
1851	36	1
1851	99	3
1851	93	2
1851	91	2
1852	25	1
1852	81	2
1853	42	3
1853	17	3
1853	10	2
1854	38	2
1854	97	2
1855	24	3
1855	77	3
1855	51	3
1856	33	1
1856	91	2
1856	53	1
1856	48	1
1857	53	2
1858	50	2
1858	33	1
1859	71	3
1859	31	3
1859	43	2
1860	83	3
1861	14	3
1862	59	3
1862	95	2
1863	46	3
1863	67	3
1863	86	1
1863	10	2
1864	63	2
1864	56	3
1864	39	3
1865	19	1
1865	45	3
1865	97	1
1866	70	3
1867	14	3
1868	89	1
1868	56	1
1868	27	2
1868	9	3
1869	15	3
1869	12	2
1870	8	3
1870	4	2
1870	69	1
1871	52	1
1872	23	2
1872	44	2
1872	3	3
1872	15	3
1873	30	2
1873	12	3
1874	59	3
1874	37	1
1874	25	3
1874	86	3
1875	66	2
1876	60	3
1876	17	2
1876	13	2
1877	75	3
1877	53	2
1878	68	2
1878	97	2
1878	76	2
1878	61	1
1879	26	2
1879	50	3
1880	90	3
1880	25	1
1880	94	1
1880	17	3
1881	93	3
1881	55	3
1882	60	2
1882	4	2
1882	29	1
1882	41	2
1883	72	1
1883	21	3
1883	41	3
1884	20	1
1884	57	1
1884	98	2
1885	45	2
1885	46	1
1886	3	2
1887	76	1
1887	27	2
1887	1	2
1887	37	3
1888	94	3
1888	64	1
1888	45	2
1889	2	1
1890	80	2
1890	67	1
1891	9	2
1891	10	3
1891	8	2
1891	11	1
1892	79	3
1892	72	2
1892	93	3
1893	58	2
1893	82	3
1893	2	2
1894	13	2
1894	40	1
1894	33	1
1894	63	2
1895	79	3
1895	23	1
1895	41	3
1896	85	1
1896	42	1
1896	12	1
1896	75	1
1897	8	3
1897	77	2
1897	73	2
1898	59	1
1899	8	3
1899	83	3
1900	4	1
1901	27	3
1901	47	3
1901	71	2
1901	6	1
1902	88	2
1902	42	3
1903	1	2
1903	50	2
1904	64	2
1904	94	2
1904	3	3
1905	11	1
1906	57	3
1907	66	2
1908	87	3
1908	55	2
1909	36	2
1909	100	1
1909	3	2
1909	45	3
1910	4	1
1910	32	3
1910	19	1
1911	43	3
1911	44	1
1912	38	3
1912	53	1
1912	74	3
1913	92	2
1913	99	2
1913	51	3
1914	15	1
1914	1	3
1914	90	1
1914	84	2
1915	61	1
1916	38	1
1917	1	3
1917	92	1
1917	79	2
1918	83	1
1918	40	2
1918	38	2
1918	36	3
1919	17	3
1919	68	2
1919	74	3
1919	22	3
1920	98	1
1921	43	3
1921	79	2
1922	85	1
1922	50	2
1922	56	3
1923	76	3
1923	63	1
1923	91	2
1924	50	1
1924	22	3
1925	65	2
1926	47	3
1926	1	3
1927	27	1
1927	17	1
1927	77	3
1927	20	1
1928	11	2
1929	93	2
1930	64	2
1930	59	1
1931	39	2
1932	15	2
1932	16	1
1932	48	1
1933	62	1
1934	9	3
1935	91	2
1935	48	2
1936	1	1
1937	98	3
1937	6	3
1937	39	2
1938	21	3
1938	63	1
1938	82	1
1939	24	1
1939	59	1
1940	62	2
1940	94	3
1940	89	2
1940	93	3
1941	74	1
1941	89	2
1942	89	3
1942	38	1
1942	63	1
1942	42	3
1943	45	1
1943	36	2
1944	18	2
1944	1	3
1944	41	1
1945	40	2
1946	93	2
1947	33	2
1947	36	2
1948	68	1
1948	42	2
1948	7	3
1949	88	1
1949	98	2
1949	77	2
1950	94	2
1950	49	2
1951	54	2
1951	97	2
1952	33	3
1952	14	2
1952	61	1
1952	98	1
1953	30	3
1954	24	3
1954	37	1
1955	51	3
1956	13	2
1956	96	1
1956	81	2
1957	91	3
1958	16	1
1958	90	2
1958	78	3
1958	51	3
1959	97	1
1959	53	1
1959	7	2
1960	97	3
1960	1	1
1960	95	1
1960	72	1
1961	91	2
1961	37	1
1961	70	3
1961	27	3
1962	28	2
1962	59	1
1962	54	3
1963	45	2
1964	99	1
1964	32	2
1965	19	2
1965	97	3
1965	23	1
1965	66	1
1966	83	2
1966	25	1
1966	19	2
1966	88	3
1967	23	1
1968	42	2
1968	44	2
1968	72	2
1968	98	3
1969	18	2
1970	32	1
1971	9	3
1971	14	1
1971	62	2
1972	35	2
1972	37	3
1972	71	1
1973	38	3
1973	93	2
1973	2	2
1974	40	2
1974	76	2
1974	83	2
1974	85	2
1975	65	1
1975	99	2
1975	70	3
1976	20	3
1977	57	3
1977	54	2
1977	75	2
1978	35	2
1979	62	3
1979	39	1
1979	22	1
1980	36	3
1980	31	2
1980	39	3
1981	9	2
1982	39	3
1982	51	2
1983	81	1
1983	9	3
1983	20	3
1983	36	1
1984	28	2
1984	52	2
1985	32	3
1985	44	2
1986	33	2
1987	42	1
1988	73	1
1988	27	1
1989	76	1
1990	20	3
1990	91	3
1990	2	1
1991	14	3
1991	90	1
1991	6	1
1991	46	3
1992	66	3
1992	5	3
1993	18	3
1993	63	3
1993	26	3
1994	66	3
1994	32	3
1994	54	1
1994	2	1
1995	52	3
1995	63	2
1995	20	3
1996	57	2
1996	6	2
1996	35	2
1997	68	2
1997	26	2
1998	91	3
1998	69	2
1999	21	1
1999	38	1
1999	32	1
2000	54	3
2000	6	3
2001	72	2
2001	12	3
2002	99	2
2002	25	3
2002	90	1
2003	44	1
2003	67	3
2003	43	3
2004	16	3
2004	25	1
2004	9	3
2004	3	3
2005	11	2
2005	23	3
2006	74	2
2006	39	3
2007	48	3
2007	74	2
2008	66	1
2009	55	3
2009	29	2
2009	92	1
2009	67	3
2010	94	3
2010	25	3
2010	76	3
2010	35	3
2011	71	2
2012	78	2
2013	51	2
2013	34	3
2013	4	1
2013	32	2
2014	89	1
2014	34	3
2014	59	3
2015	14	2
2016	100	3
2016	15	1
2016	57	2
2017	22	2
2017	62	1
2018	56	1
2018	92	1
2018	75	2
2019	97	1
2019	15	3
2019	99	2
2019	49	3
2020	65	2
2020	71	3
2020	59	2
2021	72	3
2021	86	3
2021	5	3
2022	42	1
2022	87	1
2022	43	3
2022	73	3
2023	88	2
2023	94	1
2023	39	1
2024	1	2
2025	78	1
2026	1	3
2026	88	2
2027	66	1
2027	1	2
2027	19	2
2027	74	2
2028	93	2
2028	48	3
2029	62	2
2029	71	2
2029	50	3
2030	71	3
2030	26	2
2030	17	3
2030	99	3
2031	93	3
2031	97	3
2031	60	1
2032	80	1
2033	92	1
2034	96	2
2034	92	2
2034	74	1
2035	82	1
2035	83	3
2035	9	1
2036	82	1
2037	81	1
2037	17	1
2038	64	1
2038	5	1
2038	62	1
2038	55	2
2039	83	3
2039	2	1
2039	78	1
2039	32	1
2040	81	1
2040	36	3
2040	49	2
2041	44	2
2041	97	3
2041	67	2
2042	86	3
2043	44	1
2043	95	2
2043	46	2
2044	71	1
2045	60	3
2045	18	3
2046	62	1
2046	11	3
2046	3	1
2047	44	2
2047	90	3
2047	22	2
2047	26	1
2048	88	3
2048	25	2
2049	71	3
2050	22	3
2050	41	1
2050	52	3
2051	84	3
2051	68	3
2052	51	3
2052	80	3
2052	53	3
2053	64	1
2053	18	3
2053	93	2
2054	70	1
2054	7	1
2055	25	1
2055	57	1
2056	56	2
2057	47	2
2057	23	3
2057	16	3
2058	58	3
2058	13	1
2059	10	2
2059	72	1
2059	97	2
2059	47	1
2060	74	2
2061	73	2
2062	44	1
2062	2	1
2062	98	3
2062	72	3
2063	100	2
2063	69	3
2063	83	2
2063	11	2
2064	28	2
2064	70	3
2064	58	2
2064	46	3
2065	72	3
2065	89	3
2065	48	2
2066	76	2
2066	94	2
2067	5	3
2068	65	2
2068	28	1
2069	44	3
2070	94	2
2070	81	1
2070	91	3
2071	16	1
2071	10	3
2071	99	2
2071	23	1
2072	21	2
2072	24	2
2072	57	2
2073	91	2
2074	55	1
2074	42	2
2074	84	1
2074	4	2
2075	81	1
2075	93	1
2075	66	2
2076	28	1
2076	17	2
2076	84	3
2076	25	1
2077	51	2
2077	61	2
2077	26	2
2077	59	3
2078	62	3
2078	21	2
2078	28	2
2078	49	3
2079	90	1
2079	49	3
2079	75	3
2079	91	1
2080	84	3
2080	14	2
2080	74	3
2080	95	2
2081	9	1
2081	95	3
2081	59	3
2082	78	1
2083	26	3
2083	46	3
2083	28	2
2083	6	1
2084	7	2
2084	51	3
2085	73	3
2085	4	1
2085	9	3
2086	81	3
2086	46	2
2087	90	1
2087	48	1
2088	15	2
2088	29	3
2088	94	3
2088	77	1
2089	44	1
2090	91	1
2090	42	3
2090	71	1
2091	26	2
2091	84	3
2091	31	1
2092	30	2
2092	77	2
2092	91	2
2093	94	2
2094	66	2
2094	34	3
2094	25	2
2094	53	2
2095	69	3
2095	45	3
2095	14	2
2095	55	1
2096	67	1
2096	62	1
2097	70	3
2098	28	1
2098	29	1
2099	20	1
2099	95	3
2099	54	1
2099	77	1
2100	23	2
2100	12	2
2101	72	1
2102	18	3
2103	39	1
2103	1	3
2104	77	2
2105	83	2
2105	34	2
2106	54	3
2106	35	1
2107	4	3
2108	53	3
2109	56	1
2109	83	1
2109	4	2
2109	100	2
2110	1	2
2110	90	1
2110	11	3
2111	78	3
2111	40	3
2111	79	3
2112	10	2
2112	66	3
2112	19	3
2113	88	3
2113	10	2
2113	27	3
2114	8	3
2115	18	1
2116	54	2
2116	96	1
2116	47	2
2117	56	3
2117	94	1
2117	23	1
2118	48	2
2118	52	2
2118	94	2
2118	45	3
2119	66	3
2119	98	2
2119	80	3
2119	19	3
2120	10	1
2120	40	1
2121	14	2
2121	9	2
2121	12	2
2122	67	2
2122	72	1
2122	17	1
2123	97	1
2123	56	1
2123	82	1
2124	70	2
2124	7	2
2124	76	3
2124	49	1
2125	5	2
2125	58	3
2126	63	3
2126	94	2
2126	21	3
2126	3	2
2127	75	3
2127	35	2
2127	93	1
2127	12	3
2128	1	3
2129	55	3
2129	13	3
2129	34	2
2129	89	2
2130	34	1
2130	69	1
2131	59	1
2132	96	3
2133	20	2
2134	76	2
2134	84	1
2134	35	2
2134	79	1
2135	66	3
2135	36	1
2136	94	2
2136	10	2
2137	8	3
2137	60	1
2138	87	1
2139	67	3
2139	79	3
2139	59	2
2140	75	3
2140	67	3
2140	54	2
2140	64	1
2141	99	3
2142	32	1
2142	25	1
2142	70	1
2142	29	3
2143	94	1
2144	65	1
2144	81	3
2145	12	1
2145	95	3
2145	41	3
2146	86	2
2147	22	3
2147	87	3
2147	7	3
2147	53	2
2148	100	3
2148	12	1
2148	79	3
2149	17	2
2150	54	2
2151	81	1
2151	14	1
2151	67	2
2151	30	2
2152	63	3
2152	4	1
2152	97	1
2153	90	1
2153	13	3
2153	1	1
2153	36	2
2154	47	3
2154	61	2
2154	98	2
2154	81	1
2155	11	1
2155	96	2
2155	4	3
2155	89	2
2156	97	3
2157	52	3
2157	92	1
2157	80	2
2157	11	1
2158	43	2
2158	9	1
2158	67	3
2159	93	2
2159	88	1
2160	74	2
2161	48	3
2161	4	3
2162	85	1
2163	64	1
2163	70	1
2163	46	1
2163	79	2
2164	84	2
2165	44	2
2165	94	2
2165	53	3
2166	68	1
2166	6	1
2166	82	1
2167	96	2
2167	95	3
2167	79	1
2167	35	1
2168	61	2
2168	91	1
2169	2	2
2169	46	3
2169	71	3
2169	70	1
2170	33	3
2171	71	2
2172	89	1
2172	56	1
2173	46	2
2173	23	3
2173	91	1
2173	92	2
2174	86	2
2174	15	3
2175	48	3
2175	65	1
2175	31	2
2176	45	1
2176	48	1
2177	10	2
2177	87	3
2177	68	2
2177	16	3
2178	61	2
2179	62	3
2179	100	1
2179	9	3
2179	27	3
2180	99	2
2180	50	1
2180	5	3
2181	29	2
2182	58	1
2182	10	2
2182	24	1
2182	5	2
2183	93	1
2183	21	1
2183	14	2
2183	53	3
2184	95	1
2184	64	2
2184	90	3
2185	3	2
2186	11	3
2186	61	1
2186	56	3
2187	23	2
2187	94	1
2187	37	3
2187	56	1
2188	67	2
2188	66	2
2188	36	3
2188	44	3
2189	3	1
2189	12	3
2189	7	3
2189	47	3
2190	1	1
2190	72	1
2191	78	2
2192	6	3
2192	17	2
2193	12	2
2193	47	1
2193	34	1
2194	52	2
2194	94	3
2195	18	2
2195	48	3
2195	41	1
2195	66	2
2196	83	2
2196	98	1
2197	99	2
2198	98	1
2199	56	2
2200	82	3
2200	18	3
2200	7	2
2201	60	3
2201	52	2
2202	65	3
2202	79	1
2202	89	2
2202	66	3
2203	38	1
2203	58	1
2203	95	2
2203	68	2
2204	55	1
2204	64	2
2205	21	3
2206	71	2
2206	28	2
2207	33	2
2207	83	1
2208	59	3
2208	26	1
2208	75	1
2209	44	3
2209	12	3
2209	92	1
2210	53	2
2210	33	2
2210	52	1
2211	65	3
2212	44	3
2212	69	3
2212	88	3
2213	93	3
2213	98	2
2214	52	2
2214	70	1
2214	60	3
2215	75	3
2215	53	1
2216	16	3
2216	50	1
2216	49	1
2216	22	2
2217	50	3
2217	42	2
2218	88	2
2218	48	1
2219	22	3
2219	72	3
2219	19	1
2220	1	1
2220	98	3
2220	11	1
2221	12	2
2221	76	2
2221	11	2
2222	33	3
2223	25	3
2223	70	3
2223	14	3
2223	44	3
2224	48	3
2224	92	1
2224	51	1
2225	49	3
2226	29	3
2226	47	3
2226	80	3
2227	67	2
2228	30	2
2228	8	2
2228	9	3
2228	67	3
2229	39	3
2229	50	3
2230	16	1
2230	73	1
2231	93	2
2231	66	1
2231	96	2
2232	3	1
2233	84	2
2234	77	1
2235	16	2
2235	85	1
2235	82	1
2236	89	1
2237	53	1
2237	65	3
2238	92	2
2238	77	1
2238	72	3
2238	63	1
2239	72	1
2239	49	2
2239	58	2
2240	68	2
2241	51	1
2241	4	1
2241	20	1
2241	8	1
2242	14	3
2243	81	2
2243	69	1
2243	3	3
2244	1	3
2244	55	3
2244	36	1
2244	24	1
2245	19	1
2245	69	3
2246	62	3
2246	2	3
2246	70	1
2247	32	2
2247	42	2
2247	5	2
2247	85	3
2248	75	2
2248	33	1
2249	81	2
2249	2	1
2250	41	2
2250	90	2
2250	23	2
2250	2	3
2251	20	2
2251	72	3
2251	50	2
2252	60	1
2253	72	1
2253	58	3
2253	96	1
2253	89	1
2254	75	3
2255	40	2
2255	32	2
2256	39	1
2256	17	2
2256	19	1
2257	57	1
2257	43	2
2257	89	2
2257	96	2
2258	81	3
2258	93	1
2258	73	2
2259	96	3
2259	22	2
2260	11	2
2260	26	2
2260	62	1
2260	25	2
2261	45	2
2261	6	2
2261	21	2
2261	60	2
2262	96	2
2262	1	1
2263	82	2
2264	26	3
2265	97	2
2265	89	1
2265	71	2
2266	14	3
2266	32	3
2267	77	2
2268	42	2
2268	80	1
2268	14	3
2268	69	3
2269	44	3
2269	7	2
2269	28	1
2269	19	3
2270	79	2
2270	5	3
2270	51	1
2270	95	1
2271	6	2
2271	32	2
2271	87	2
2272	92	2
2272	72	1
2272	15	3
2273	57	1
2273	96	1
2273	73	1
2273	14	1
2274	18	2
2274	35	3
2274	27	1
2274	41	3
2275	40	2
2275	66	2
2275	6	3
2275	59	1
2276	16	2
2277	66	2
2277	43	1
2277	90	2
2277	51	3
2278	47	3
2279	30	3
2279	73	3
2280	80	1
2281	54	3
2281	87	2
2282	73	2
2282	51	1
2283	69	3
2283	23	3
2284	23	3
2285	18	2
2286	26	2
2286	67	2
2286	33	2
2287	96	1
2287	94	1
2287	65	1
2288	85	1
2288	25	3
2288	96	2
2289	88	2
2289	99	3
2290	92	1
2290	96	3
2290	20	3
2291	58	3
2292	20	1
2292	1	2
2292	81	2
2292	72	2
2293	29	3
2293	21	2
2293	24	3
2293	41	2
2294	83	3
2295	25	1
2295	76	3
2295	4	3
2296	80	3
2296	54	1
2296	25	3
2297	20	1
2297	65	1
2298	48	2
2298	90	3
2299	45	3
2299	15	3
2300	19	3
2300	94	1
2300	11	1
2301	56	2
2301	9	3
2301	34	3
2301	61	3
2302	91	2
2302	61	3
2303	20	2
2303	56	2
2304	67	1
2304	91	3
2304	24	1
2304	77	2
2305	73	2
2305	33	1
2306	97	1
2306	26	1
2306	64	2
2307	13	3
2308	94	3
2308	3	2
2308	70	2
2308	96	2
2309	48	3
2309	71	1
2309	78	2
2309	47	2
2310	52	1
2310	81	1
2310	74	3
2311	81	2
2311	3	1
2311	37	1
2311	89	1
2312	41	2
2312	9	3
2312	58	2
2312	22	1
2313	72	1
2313	96	3
2314	49	1
2314	99	3
2314	4	1
2314	31	1
2315	69	1
2315	76	2
2315	96	3
2316	3	1
2317	18	3
2318	69	3
2319	17	2
2319	35	2
2320	56	1
2320	66	2
2320	23	2
2321	49	1
2321	3	1
2321	45	1
2321	13	1
2322	23	1
2323	95	2
2323	77	3
2324	66	1
2324	34	2
2324	63	1
2324	59	2
2325	71	1
2326	32	1
2326	5	1
2327	11	1
2327	30	1
2327	46	3
2327	98	2
2328	5	1
2328	6	1
2328	91	1
2329	98	1
2330	10	2
2331	9	3
2332	1	2
2333	42	3
2334	27	3
2334	55	3
2334	10	1
2335	17	1
2335	14	2
2335	43	3
2335	39	3
2336	92	1
2336	78	3
2337	40	1
2337	77	1
2338	40	1
2339	7	1
2339	92	3
2339	38	2
2340	73	1
2340	27	2
2340	46	2
2341	34	1
2341	78	2
2341	15	3
2341	73	3
2342	91	1
2342	69	2
2342	32	3
2343	20	3
2344	40	2
2344	83	1
2344	75	3
2344	42	1
2345	45	3
2346	78	2
2346	32	2
2346	34	3
2346	75	2
2347	63	3
2347	35	3
2347	20	1
2348	92	2
2348	40	1
2348	55	2
2349	84	2
2350	19	1
2350	77	3
2351	58	1
2352	10	2
2352	37	3
2352	51	3
2352	99	3
2353	86	1
2353	69	3
2353	8	2
2354	27	2
2354	73	1
2355	66	3
2355	43	1
2355	27	2
2355	61	1
2356	47	3
2356	44	3
2357	61	2
2358	88	1
2359	8	2
2359	64	1
2360	57	2
2361	64	3
2361	65	2
2361	71	2
2362	3	3
2363	28	2
2363	37	2
2363	15	3
2364	97	3
2364	9	2
2364	3	3
2365	46	1
2365	75	2
2366	85	2
2366	23	2
2367	20	1
2367	55	2
2368	49	3
2368	24	1
2368	50	1
2369	52	1
2369	77	1
2370	49	3
2370	53	2
2370	68	2
2370	22	1
2371	26	1
2372	99	3
2372	82	2
2372	80	1
2372	75	1
2373	28	1
2373	80	2
2373	41	3
2373	42	1
2374	98	2
2374	73	3
2375	47	2
2375	84	2
2375	76	2
2375	6	1
2376	53	1
2377	42	2
2377	54	3
2377	88	2
2378	66	2
2379	37	3
2379	70	3
2379	73	2
2380	98	2
2380	73	3
2380	5	1
2381	82	1
2381	75	3
2382	22	3
2382	29	2
2383	93	1
2383	58	2
2383	16	2
2384	11	3
2384	26	3
2384	89	1
2384	2	3
2385	29	3
2385	34	2
2385	59	3
2386	85	1
2386	89	1
2386	21	3
2386	32	1
2387	75	3
2387	72	3
2387	55	1
2388	1	3
2388	93	1
2388	11	3
2389	23	1
2389	45	2
2389	79	1
2389	70	3
2390	65	1
2390	54	2
2390	40	2
2390	11	2
2391	77	1
2391	94	1
2391	85	2
2392	53	1
2392	74	3
2392	51	1
2393	34	3
2394	2	1
2394	90	1
2394	60	3
2394	32	2
2395	83	2
2395	73	3
2395	100	2
2395	13	3
2396	17	1
2396	62	3
2396	39	2
2397	34	3
2397	83	3
2398	96	1
2399	16	2
2400	99	2
2400	7	3
2400	6	2
2400	22	1
2401	55	1
2402	30	1
2403	80	3
2403	46	1
2403	79	3
2404	48	1
2404	63	1
2405	4	2
2405	71	1
2405	28	3
2405	21	3
2406	59	3
2406	68	3
2407	68	2
2407	88	2
2407	9	1
2407	98	2
2408	2	1
2408	42	1
2408	81	1
2409	14	2
2409	89	3
2409	85	1
2410	61	2
2410	6	2
2411	31	3
2411	86	3
2412	28	2
2412	96	3
2412	79	2
2413	90	1
2413	93	2
2414	92	1
2414	9	1
2414	16	1
2415	77	3
2416	91	1
2416	1	2
2416	33	1
2416	72	1
2417	61	2
2417	53	1
2417	71	2
2418	72	3
2419	86	2
2419	23	3
2420	5	3
2420	84	3
2420	83	1
2420	88	3
2421	25	3
2421	47	1
2422	81	3
2423	75	1
2423	16	3
2424	44	2
2425	82	3
2425	76	3
2426	61	2
2426	10	1
2426	91	2
2427	93	1
2427	5	3
2427	3	3
2427	41	3
2428	24	3
2428	5	1
2428	67	2
2429	65	2
2429	34	1
2429	36	3
2429	50	3
2430	36	1
2430	91	3
2430	88	2
2430	90	3
2431	81	3
2431	7	3
2431	71	2
2431	9	1
2432	86	1
2432	22	1
2433	62	3
2433	54	1
2433	100	2
2434	27	2
2434	90	2
2434	86	2
2435	91	1
2436	93	2
2437	2	3
2437	72	3
2437	3	2
2438	69	2
2438	50	2
2438	71	2
2438	44	2
2439	16	3
2440	79	2
2441	37	3
2441	96	1
2441	79	2
2441	62	1
2442	87	1
2442	26	1
2442	76	1
2442	73	3
2443	22	3
2443	1	3
2443	24	2
2444	6	1
2444	36	2
2444	23	1
2444	62	3
2445	38	1
2445	44	2
2445	47	3
2446	74	1
2447	32	3
2447	95	1
2447	65	2
2447	78	3
2448	97	1
2448	17	2
2448	58	2
2449	8	3
2449	27	1
2450	87	3
2450	25	2
2450	63	3
2451	35	2
2451	4	2
2451	16	3
2452	60	3
2452	76	1
2452	72	2
2453	16	3
2454	94	3
2454	71	1
2454	3	2
2454	48	2
2455	46	2
2455	92	2
2455	49	3
2455	40	3
2456	52	3
2456	32	2
2457	30	3
2457	57	1
2457	73	3
2457	76	1
2458	64	2
2458	50	2
2458	32	2
2458	98	3
2459	96	1
2459	52	1
2459	92	2
2460	80	2
2460	89	2
2460	37	2
2461	82	3
2461	56	2
2461	59	2
2462	34	1
2462	65	3
2462	60	2
2463	62	1
2464	69	2
2465	94	3
2465	55	2
2465	56	3
2465	79	3
2466	10	1
2466	34	2
2466	18	3
2467	33	3
2468	14	2
2468	93	2
2468	74	2
2469	28	3
2469	60	3
2469	43	2
2469	36	2
2470	52	1
2470	95	3
2471	64	1
2471	48	2
2471	25	3
2471	39	1
2472	30	2
2473	72	2
2474	87	2
2474	28	3
2474	34	1
2474	47	3
2475	20	2
2476	93	2
2476	88	3
2476	59	2
2476	45	2
2477	52	1
2477	72	2
2477	18	1
2477	48	3
2478	18	2
2478	70	3
2478	31	1
2479	28	1
2479	17	1
2480	27	2
2481	52	1
2481	84	2
2482	75	2
2482	35	3
2483	43	1
2483	79	1
2484	41	2
2485	17	1
2485	46	2
2485	72	1
2486	80	1
2486	24	2
2486	41	2
2487	16	1
2487	40	2
2487	14	3
2488	67	2
2488	64	3
2489	86	1
2489	81	3
2489	17	1
2489	36	3
2490	44	3
2490	63	2
2490	72	2
2490	75	3
2491	6	1
2491	88	1
2491	97	2
2491	84	1
2492	11	2
2492	90	3
2493	53	1
2493	4	2
2493	39	2
2494	15	3
2495	100	2
2495	83	1
2496	28	3
2496	27	3
2496	66	1
2497	35	3
2497	63	3
2498	43	1
2498	58	1
2498	45	2
2499	46	2
2499	32	3
2499	16	1
2499	61	2
2500	98	1
2501	43	1
2501	51	2
2501	36	1
2502	70	2
2502	17	3
2502	61	3
2503	44	1
2503	88	1
2503	56	2
2504	66	2
2504	89	3
2504	70	3
2504	40	2
2505	6	2
2505	96	3
2505	9	1
2505	79	2
2506	100	1
2506	36	1
2507	99	2
2507	4	3
2508	74	1
2508	75	1
2508	70	2
2508	87	3
2509	58	2
2509	35	3
2509	18	1
2509	52	1
2510	50	2
2510	91	1
2510	47	1
2511	20	3
2511	100	3
2512	39	2
2512	83	1
2512	17	2
2513	75	3
2513	42	3
2513	80	1
2514	13	3
2514	92	3
2514	82	3
2514	94	1
2515	9	2
2515	10	3
2516	98	2
2517	50	3
2517	33	1
2517	70	3
2518	68	2
2519	2	3
2519	86	2
2520	67	1
2520	63	1
2520	78	2
2520	53	3
2521	56	2
2522	72	2
2522	48	2
2523	95	2
2524	68	1
2524	71	2
2524	81	3
2525	62	2
2525	66	1
2525	94	2
2526	94	2
2526	6	1
2526	66	3
2526	70	2
2527	8	2
2528	75	1
2528	80	3
2528	64	1
2529	39	2
2529	32	2
2529	80	1
2530	25	3
2530	19	1
2530	23	1
2531	18	2
2531	77	1
2531	87	3
2531	37	1
2532	95	2
2532	87	1
2532	65	2
2532	36	2
2533	69	3
2533	43	2
2533	12	3
2533	17	1
2534	71	1
2534	75	1
2535	34	2
2535	82	2
2535	83	3
2535	21	1
2536	94	1
2536	4	2
2537	5	2
2537	8	1
2537	66	3
2537	68	2
2538	21	1
2538	1	3
2538	38	3
2539	78	3
2539	71	2
2539	52	3
2540	70	1
2540	71	1
2541	57	2
2541	37	2
2541	13	3
2542	85	3
2543	97	3
2544	61	2
2545	54	3
2545	63	1
2545	74	2
2546	47	3
2546	17	1
2546	80	2
2547	57	1
2548	77	3
2549	46	1
2550	85	2
2551	20	3
2551	82	1
2551	36	1
2551	45	1
2552	58	1
2552	14	1
2552	75	1
2553	5	1
2554	77	3
2554	18	1
2554	16	1
2554	13	2
2555	99	1
2555	84	2
2556	45	3
2556	41	1
2556	73	3
2557	6	1
2557	22	2
2558	46	1
2558	51	1
2559	72	1
2559	59	3
2560	82	3
2561	62	2
2562	12	1
2562	18	2
2563	53	2
2563	29	2
2563	72	1
2563	43	2
2564	67	2
2564	69	1
2565	84	1
2566	54	3
2566	82	1
2566	97	2
2567	13	1
2567	40	3
2567	98	2
2568	42	1
2568	47	2
2568	35	2
2568	15	3
2569	79	1
2569	65	3
2569	76	3
2570	72	3
2570	55	1
2570	46	1
2571	12	2
2572	65	2
2572	85	2
2572	68	1
2573	43	3
2573	14	1
2574	25	2
2574	96	2
2575	20	1
2576	2	3
2576	9	2
2576	49	1
2576	25	3
2577	44	2
2578	64	2
2579	41	3
2579	48	1
2579	54	1
2580	50	3
2581	33	1
2581	62	1
2581	36	2
2581	16	1
2582	65	1
2582	70	1
2582	69	3
2583	1	2
2584	72	2
2584	33	1
2584	51	1
2585	45	1
2586	51	3
2586	74	2
2586	44	3
2586	27	3
2587	79	1
2588	20	1
2588	43	3
2589	81	3
2589	8	3
2589	94	1
2590	6	3
2590	90	2
2590	63	1
2590	61	1
2591	3	1
2591	74	2
2592	9	1
2592	2	2
2592	72	3
2592	47	3
2593	37	3
2594	38	3
2594	32	1
2594	44	1
2594	73	1
2595	50	1
2595	88	3
2596	60	1
2597	55	1
2597	42	2
2598	63	3
2598	83	3
2598	22	3
2599	52	1
2600	42	2
2600	99	1
2601	71	3
2601	44	3
2602	68	2
2603	56	2
2603	83	3
2603	47	3
2603	3	3
2604	81	1
2605	17	2
2606	4	3
2607	93	1
2608	48	3
2608	18	1
2608	61	2
2609	66	2
2609	98	1
2610	83	2
2610	58	3
2611	99	2
2612	9	1
2612	28	1
2613	56	2
2613	62	2
2613	49	2
2614	34	2
2615	76	3
2615	18	1
2615	43	1
2616	94	2
2616	69	1
2616	19	3
2616	63	2
2617	89	2
2617	72	3
2617	78	1
2617	57	1
2618	96	3
2619	88	1
2619	24	1
2619	89	2
2620	62	1
2621	90	3
2621	20	3
2621	27	3
2621	17	2
2622	23	3
2622	14	2
2623	7	3
2624	56	3
2624	83	1
2624	66	2
2624	54	1
2625	11	1
2625	24	1
2625	70	2
2626	90	3
2627	80	3
2627	71	1
2627	16	3
2627	53	2
2628	45	1
2628	90	3
2629	77	3
2629	66	2
2629	27	2
2629	59	3
2630	28	3
2630	100	1
2630	90	1
2630	24	1
2631	60	2
2632	39	1
2632	46	3
2632	56	1
2632	5	2
2633	27	3
2633	30	3
2634	81	3
2634	28	1
2634	63	1
2635	34	3
2635	9	1
2636	99	3
2636	45	1
2636	1	1
2636	67	3
2637	28	2
2637	99	3
2637	46	2
2638	41	2
2638	29	1
2638	51	2
2639	46	1
2640	79	1
2640	29	3
2640	50	3
2640	48	2
2641	32	1
2642	14	3
2642	58	2
2642	38	1
2642	96	3
2643	9	2
2643	79	3
2644	42	3
2644	54	1
2644	18	2
2644	16	3
2645	25	2
2645	65	3
2645	7	2
2646	51	3
2646	12	1
2646	59	3
2646	55	2
2647	43	1
2647	56	1
2647	61	1
2648	62	2
2648	96	1
2648	6	2
2649	84	2
2649	61	2
2650	59	1
2650	48	1
2650	99	3
2651	13	3
2651	2	3
2652	1	2
2652	38	2
2653	42	2
2653	40	3
2653	34	1
2654	3	3
2654	4	1
2654	47	1
2655	92	3
2655	18	3
2655	37	3
2655	74	2
2656	3	1
2656	66	1
2656	44	1
2656	62	1
2657	92	2
2657	41	1
2657	61	3
2658	58	2
2658	78	1
2659	37	3
2659	3	2
2659	27	3
2659	40	2
2660	13	3
2660	40	2
2661	81	1
2661	38	2
2661	65	1
2662	92	1
2662	30	1
2663	46	3
2663	24	3
2663	65	3
2663	89	3
2664	33	1
2664	42	3
2664	80	3
2664	66	2
2665	51	1
2665	37	2
2666	85	2
2667	48	3
2667	27	3
2667	75	2
2668	59	3
2668	45	2
2668	3	3
2669	97	2
2669	89	2
2669	61	1
2669	2	2
2670	65	3
2670	54	3
2671	80	2
2671	4	1
2672	84	2
2672	4	2
2672	66	3
2672	43	2
2673	92	2
2673	91	3
2674	34	3
2674	9	1
2675	36	3
2676	84	3
2676	29	2
2676	40	2
2677	45	1
2678	99	3
2678	46	3
2678	41	3
2678	44	3
2679	2	1
2679	96	3
2679	42	2
2679	21	1
2680	35	1
2681	76	1
2681	95	2
2681	55	3
2682	31	1
2682	11	1
2683	24	3
2683	37	3
2684	49	3
2684	94	1
2685	81	3
2686	63	1
2686	78	3
2687	97	2
2687	68	3
2688	49	1
2688	34	3
2689	12	2
2689	90	1
2689	75	1
2690	50	1
2690	22	1
2691	52	1
2691	18	2
2692	58	2
2693	2	3
2694	52	3
2695	10	2
2695	30	1
2696	38	2
2696	55	2
2697	40	2
2698	83	3
2698	16	2
2698	66	1
2698	26	1
2699	45	2
2699	1	1
2699	27	1
2699	71	3
2700	90	3
2700	10	1
2701	20	2
2701	94	2
2701	3	2
2702	31	3
2702	36	1
2702	42	1
2702	7	1
2703	27	1
2703	99	2
2703	69	1
2703	46	3
2704	65	2
2704	24	2
2704	30	2
2705	75	3
2705	3	1
2706	52	1
2706	76	3
2706	38	1
2706	6	3
2707	30	2
2707	57	3
2707	68	2
2708	59	1
2709	42	1
2709	6	1
2709	21	1
2710	42	2
2710	56	2
2711	28	3
2712	64	3
2713	62	1
2714	93	3
2714	78	2
2715	52	3
2715	6	3
2716	96	1
2716	76	2
2716	62	2
2716	61	1
2717	71	2
2717	16	1
2717	52	2
2718	38	3
2718	27	3
2718	42	1
2718	53	2
2719	59	1
2719	34	1
2719	94	1
2720	39	2
2721	30	2
2722	85	1
2722	62	2
2722	58	1
2723	47	2
2723	70	3
2723	59	2
2723	8	2
2724	59	1
2724	73	1
2724	67	2
2725	34	2
2725	41	1
2725	1	1
2726	30	3
2726	16	2
2726	65	1
2726	33	3
2727	100	1
2727	61	2
2728	93	3
2728	16	3
2728	60	3
2729	55	3
2729	68	2
2729	52	3
2729	57	3
2730	56	1
2730	21	1
2730	40	3
2731	39	3
2732	34	3
2733	84	2
2733	45	3
2733	35	1
2734	91	3
2735	13	1
2736	55	3
2736	12	3
2737	42	2
2738	33	3
2739	78	1
2739	86	3
2739	1	3
2739	19	1
2740	31	3
2741	26	1
2742	77	2
2742	99	1
2742	65	2
2742	96	3
2743	69	1
2744	56	3
2745	2	1
2745	17	2
2745	82	1
2746	88	1
2746	7	3
2746	18	1
2747	12	2
2747	62	3
2747	40	1
2748	50	2
2749	85	1
2750	94	2
2750	35	1
2751	47	3
2751	17	3
2751	73	3
2752	41	3
2753	99	1
2753	66	3
2753	48	2
2753	28	1
2754	94	3
2755	18	1
2755	3	1
2755	53	1
2756	11	3
2756	41	1
2756	22	1
2756	29	2
2757	70	1
2757	1	3
2758	66	2
2758	76	1
2758	31	2
2758	42	1
2759	10	2
2759	88	2
2759	99	1
2759	100	1
2760	1	3
2761	92	1
2761	77	1
2762	8	3
2762	17	2
2762	18	1
2762	90	1
2763	58	1
2763	82	3
2764	7	3
2764	1	1
2764	29	1
2764	58	2
2765	39	3
2765	6	3
2765	42	2
2766	86	2
2767	35	3
2767	50	3
2767	73	3
2768	49	1
2768	18	1
2769	40	3
2769	58	3
2769	99	3
2769	77	3
2770	40	3
2770	28	1
2770	81	3
2770	95	2
2771	33	1
2772	39	3
2773	94	3
2773	40	2
2773	93	1
2773	61	2
2774	94	2
2774	55	2
2775	58	3
2776	6	3
2776	96	3
2777	87	2
2777	16	2
2777	30	3
2777	82	2
2778	12	2
2778	13	2
2778	62	3
2779	9	1
2779	85	3
2779	90	2
2779	75	1
2780	51	3
2780	100	3
2780	28	2
2781	64	3
2782	52	2
2782	33	2
2782	84	1
2782	58	1
2783	83	2
2783	42	2
2784	31	3
2785	26	3
2785	99	3
2786	90	3
2786	41	3
2786	77	3
2786	65	1
2787	18	1
2787	14	3
2787	73	1
2788	87	2
2788	85	1
2788	39	3
2789	69	1
2790	14	2
2790	84	1
2790	79	2
2790	74	2
2791	96	3
2791	19	3
2792	3	1
2793	54	2
2793	44	2
2794	10	2
2794	43	2
2794	95	2
2795	84	1
2795	63	1
2795	15	3
2795	66	1
2796	82	2
2796	66	3
2796	77	1
2797	28	1
2797	10	1
2797	23	1
2798	70	3
2798	57	1
2798	91	1
2798	61	2
2799	84	3
2799	79	1
2799	78	3
2800	71	2
2800	53	1
2800	11	2
2801	52	3
2802	1	2
2802	99	3
2802	7	2
2803	13	2
2803	93	3
2804	38	1
2804	63	1
2804	95	2
2805	87	3
2805	60	3
2805	47	3
2806	9	2
2806	63	2
2807	35	3
2808	92	3
2808	16	3
2808	72	1
2808	48	2
2809	79	2
2809	74	1
2809	14	1
2810	63	2
2810	55	2
2811	18	1
2812	91	3
2813	77	1
2814	15	2
2814	4	2
2814	97	1
2814	68	1
2815	20	3
2815	6	2
2815	53	3
2815	73	1
2816	37	3
2816	27	1
2816	88	3
2816	51	2
2817	30	3
2817	29	3
2817	85	2
2818	51	2
2818	30	2
2818	92	1
2818	40	1
2819	92	1
2820	50	2
2821	93	2
2821	40	1
2821	78	1
2821	6	2
2822	78	1
2822	28	2
2823	74	2
2823	72	1
2824	24	3
2824	25	3
2825	10	2
2826	47	2
2826	26	2
2826	16	1
2826	50	2
2827	48	3
2827	3	1
2827	55	3
2827	9	3
2828	14	3
2828	12	2
2828	2	2
2828	81	1
2829	70	2
2829	17	2
2829	64	2
2829	16	1
2830	53	3
2830	48	2
2830	50	1
2831	58	1
2831	97	3
2831	15	3
2832	99	3
2833	62	1
2833	59	1
2834	84	1
2834	25	1
2835	76	2
2835	32	1
2835	4	1
2835	94	1
2836	52	3
2836	36	2
2836	90	2
2837	4	3
2838	77	1
2838	14	2
2838	83	2
2838	80	2
2839	21	3
2839	87	2
2840	39	1
2840	3	2
2840	89	1
2840	6	1
2841	78	1
2841	100	2
2842	35	2
2843	84	2
2843	10	2
2844	11	2
2845	86	3
2845	47	2
2846	80	3
2847	35	3
2847	54	2
2847	74	1
2847	19	3
2848	5	1
2848	86	2
2848	77	3
2849	23	3
2850	4	2
2850	14	1
2850	20	3
2850	67	1
2851	59	1
2851	99	1
2852	26	2
2852	85	2
2852	55	1
2853	22	2
2853	54	3
2853	95	2
2854	92	3
2854	33	3
2855	15	2
2855	54	3
2855	48	2
2856	77	3
2856	12	1
2857	67	1
2857	14	1
2857	83	3
2857	65	1
2858	47	3
2858	18	2
2859	18	3
2859	95	2
2860	44	2
2860	12	3
2861	59	3
2862	92	1
2862	94	2
2863	58	3
2863	32	2
2864	12	3
2864	100	1
2864	15	3
2864	46	2
2865	52	1
2865	75	3
2866	96	1
2866	60	3
2866	93	2
2866	85	3
2867	6	3
2868	93	3
2868	12	1
2868	13	2
2868	85	2
2869	74	3
2869	81	2
2870	82	1
2870	25	1
2870	90	1
2871	44	3
2872	59	1
2873	18	3
2873	23	2
2874	83	2
2875	28	2
2875	72	2
2875	69	2
2876	6	3
2877	12	1
2877	41	3
2877	33	3
2877	23	3
2878	6	3
2878	17	2
2878	88	3
2878	11	1
2879	8	2
2879	39	1
2880	55	3
2880	38	3
2880	47	2
2880	82	2
2881	21	3
2881	90	2
2881	68	1
2881	2	3
2882	89	2
2883	31	2
2884	29	1
2884	53	2
2885	50	2
2885	76	1
2886	26	3
2887	78	2
2888	33	3
2888	30	1
2888	50	2
2888	13	2
2889	96	2
2889	63	1
2889	83	1
2890	9	3
2890	30	2
2890	95	1
2890	65	3
2891	36	3
2891	69	3
2891	85	2
2891	67	3
2892	26	3
2892	83	2
2892	29	1
2892	74	2
2893	32	3
2893	34	2
2893	17	1
2893	3	1
2894	23	3
2895	35	2
2895	17	2
2895	37	1
2896	28	3
2896	37	3
2896	52	3
2896	73	3
2897	88	2
2898	27	3
2898	95	2
2898	64	1
2899	23	1
2899	5	3
2899	54	1
2899	46	1
2900	4	1
2901	82	1
2901	38	1
2901	5	2
2901	33	2
2902	94	3
2902	96	1
2902	14	1
2903	3	3
2903	62	2
2903	86	3
2904	4	3
2904	70	3
2905	34	3
2905	29	1
2905	81	3
2906	78	3
2907	96	1
2907	18	1
2907	73	3
2907	32	1
2908	71	2
2908	60	2
2908	16	1
2909	40	2
2909	84	3
2909	61	1
2909	74	2
2910	40	1
2910	97	1
2911	51	2
2911	2	3
2911	30	2
2912	15	3
2912	64	2
2912	93	1
2913	24	3
2913	66	2
2913	73	1
2913	63	1
2914	46	2
2914	63	2
2915	40	1
2916	61	3
2916	22	2
2917	36	1
2918	4	2
2919	77	3
2920	86	2
2920	79	1
2920	70	1
2921	87	1
2922	32	1
2922	25	3
2922	74	1
2923	24	2
2924	44	1
2924	78	3
2924	72	3
2925	3	3
2925	54	3
2925	81	3
2925	51	1
2926	73	1
2927	94	3
2927	74	2
2927	98	2
2927	70	1
2928	59	1
2928	7	1
2928	13	2
2928	87	3
2929	63	2
2929	29	2
2930	82	1
2931	39	3
2932	81	3
2932	8	1
2932	27	1
2933	2	3
2933	51	1
2933	66	1
2934	81	2
2934	86	3
2935	63	1
2936	65	1
2936	73	3
2937	15	3
2937	37	1
2937	66	2
2937	99	2
2938	47	1
2938	24	1
2938	60	3
2939	13	2
2939	19	3
2939	93	3
2939	27	2
2940	13	2
2940	14	3
2940	84	1
2941	85	3
2941	37	3
2941	74	3
2942	57	3
2942	42	2
2942	24	2
2943	40	1
2943	38	1
2943	20	2
2943	59	1
2944	28	2
2944	55	1
2944	22	1
2945	8	3
2945	86	3
2945	87	3
2946	86	3
2946	23	1
2946	69	3
2946	75	1
2947	71	2
2947	35	2
2947	39	2
2948	12	1
2948	69	2
2948	31	2
2949	45	1
2949	24	2
2949	60	2
2950	91	2
2950	87	2
2951	97	2
2951	17	2
2951	62	1
2952	54	1
2952	4	2
2952	90	2
2953	94	2
2953	23	1
2953	59	3
2954	40	3
2954	35	1
2954	14	1
2954	44	1
2955	93	1
2955	85	2
2955	55	2
2956	67	3
2956	48	1
2957	63	1
2957	44	3
2957	74	3
2957	57	2
2958	54	1
2958	4	1
2958	91	2
2958	73	2
2959	75	1
2959	90	2
2959	33	2
2960	72	2
2960	5	2
2960	77	2
2961	27	1
2961	80	1
2961	59	3
2961	35	1
2962	47	2
2962	7	2
2962	9	1
2962	85	3
2963	85	3
2963	93	2
2964	60	1
2964	64	1
2964	9	1
2965	79	3
2965	92	3
2965	21	2
2965	48	3
2966	5	3
2966	62	3
2966	53	2
2966	100	3
2967	16	3
2968	40	3
2969	59	2
2969	86	1
2969	65	3
2970	78	1
2970	39	1
2970	9	1
2971	94	2
2972	49	2
2972	19	1
2973	86	1
2974	35	2
2974	36	1
2974	45	2
2974	26	3
2975	66	3
2975	46	2
2976	25	2
2977	98	3
2977	8	1
2977	53	3
2977	60	2
2978	71	3
2979	43	1
2979	40	2
2980	67	1
2980	51	1
2981	44	3
2981	25	2
2982	7	3
2983	93	1
2983	5	1
2983	65	2
2984	74	3
2984	35	3
2984	65	2
2985	26	2
2985	83	2
2985	34	2
2986	50	1
2986	83	3
2987	10	1
2987	24	3
2987	58	3
2987	81	3
2988	32	3
2988	53	1
2988	58	2
2989	6	2
2989	83	1
2989	32	1
2990	22	1
2991	15	1
2992	82	3
2992	74	3
2993	98	2
2994	10	3
2994	28	2
2994	95	3
2994	57	1
2995	64	3
2995	23	2
2995	61	1
2995	79	3
2996	65	2
2997	83	1
2997	2	2
2997	35	1
2998	72	2
2999	16	3
2999	41	3
2999	19	3
3000	10	2
3000	32	2
3001	7	2
3001	83	1
3001	42	1
3001	56	2
3002	90	1
3002	92	3
3002	97	3
3002	35	1
3003	36	1
3003	39	3
3003	44	3
3003	26	2
3004	43	3
3005	68	1
3005	49	3
3005	43	3
3006	100	1
3006	76	1
3006	70	1
3006	77	3
3007	49	2
3007	98	2
3007	30	3
3007	90	3
3008	15	1
3009	71	1
3009	55	3
3009	97	1
3009	88	3
3010	4	1
3010	20	1
3011	34	1
3012	87	1
3013	78	3
3013	2	2
3013	48	3
3013	51	3
3014	62	2
3014	60	1
3014	19	2
3014	85	1
3015	93	3
3015	6	1
3015	26	3
3015	76	3
3016	73	1
3017	90	3
3018	78	3
3019	23	3
3019	29	1
3020	29	3
3020	75	1
3021	62	2
3021	49	1
3022	96	1
3022	36	3
3023	93	2
3023	74	1
3023	66	3
3024	40	1
3025	94	3
3026	22	3
3027	96	3
3027	55	3
3027	38	3
3027	24	3
3028	22	3
3028	35	3
3028	91	1
3029	80	1
3029	67	1
3029	94	2
3030	66	2
3030	91	3
3030	63	3
3031	16	2
3031	3	3
3031	27	1
3031	52	3
3032	39	2
3032	38	2
3033	28	1
3033	24	2
3033	88	3
3034	12	3
3034	11	1
3035	25	2
3035	32	3
3036	12	3
3036	53	2
3036	8	1
3037	21	2
3037	2	3
3037	80	2
3037	8	1
3038	15	3
3039	41	1
3039	89	1
3040	34	3
3040	58	3
3040	74	2
3040	40	1
3041	45	1
3041	33	2
3041	96	2
3042	70	3
3042	68	3
3042	79	2
3042	53	2
3043	84	2
3043	17	2
3043	78	2
3043	3	1
3044	63	3
3044	70	1
3045	59	2
3045	74	2
3046	91	2
3046	10	3
3046	36	3
3047	69	2
3048	94	2
3048	33	2
3048	37	2
3049	56	1
3049	19	1
3050	61	1
3050	59	2
3051	65	3
3052	4	3
3052	76	1
3052	32	2
3053	5	1
3053	97	3
3054	19	2
3054	42	3
3054	45	2
3054	36	3
3055	60	3
3056	35	3
3057	76	3
3057	8	2
3057	66	3
3058	56	3
3059	43	1
3059	27	2
3059	13	3
3059	5	1
3060	64	2
3061	32	1
3062	38	1
3062	12	2
3062	69	2
3062	26	1
3063	61	1
3063	63	2
3063	86	2
3064	86	3
3064	87	1
3064	56	1
3065	28	3
3065	49	2
3065	58	2
3066	38	2
3066	16	2
3067	17	2
3067	27	3
3067	11	1
3067	93	1
3068	24	1
3068	26	3
3069	75	3
3069	16	2
3070	11	3
3070	79	3
3071	36	3
3071	81	2
3072	5	3
3072	66	2
3072	21	2
3073	18	2
3074	2	3
3075	67	2
3075	42	2
3075	37	2
3075	57	3
3076	48	3
3077	87	1
3078	87	1
3078	94	2
3079	43	2
3079	2	2
3080	22	1
3080	21	2
3081	56	3
3081	1	2
3081	2	2
3081	95	1
3082	2	1
3082	42	3
3082	97	3
3082	40	3
3083	28	1
3083	33	2
3083	37	1
3084	62	2
3084	40	1
3085	39	2
3085	19	3
3085	1	2
3086	25	1
3086	94	3
3087	90	2
3087	77	1
3087	91	1
3087	37	1
3088	61	2
3088	78	1
3088	64	1
3088	44	2
3089	88	3
3089	63	3
3090	13	3
3090	91	1
3091	29	1
3091	56	3
3092	86	2
3093	11	3
3093	56	1
3093	72	2
3094	59	3
3095	50	1
3096	1	3
3096	44	2
3096	100	1
3097	1	1
3098	29	1
3098	9	2
3098	25	2
3098	23	3
3099	81	2
3100	70	2
3100	76	3
3100	90	2
3100	89	3
3101	63	1
3101	12	1
3101	30	3
3101	11	3
3102	99	3
3103	34	3
3103	47	3
3103	46	2
3103	27	1
3104	15	2
3105	11	3
3105	76	1
3105	17	1
3105	57	2
3106	15	1
3107	56	3
3107	32	2
3108	29	3
3109	6	1
3110	62	3
3111	59	1
3111	93	2
3111	32	2
3111	47	1
3112	94	1
3113	12	3
3113	52	3
3114	64	3
3114	27	3
3115	84	3
3116	70	1
3116	79	3
3117	13	3
3117	38	3
3117	2	2
3118	8	3
3118	39	1
3119	69	3
3119	66	2
3120	33	3
3120	36	1
3120	21	2
3120	54	3
3121	4	3
3121	46	2
3121	20	1
3122	19	2
3123	89	3
3123	80	3
3123	33	2
3124	52	3
3125	89	2
3125	42	3
3125	4	3
3126	82	3
3126	44	3
3126	63	1
3127	57	1
3127	31	1
3127	95	3
3127	76	1
3128	87	1
3128	72	2
3128	44	2
3129	1	2
3130	64	2
3130	80	3
3130	25	3
3130	72	2
3131	54	3
3132	40	3
3133	4	2
3133	24	1
3133	92	2
3134	48	3
3134	82	3
3135	79	1
3135	70	2
3135	53	1
3136	75	3
3137	92	1
3137	58	3
3137	29	1
3137	8	1
3138	78	3
3139	37	2
3139	34	1
3140	67	3
3141	73	2
3141	58	2
3141	47	2
3141	71	1
3142	11	3
3142	56	2
3142	33	3
3143	97	1
3143	29	3
3143	59	3
3143	60	3
3144	39	3
3145	10	3
3145	60	2
3146	90	3
3147	12	3
3147	74	1
3148	92	2
3148	71	3
3149	60	3
3149	75	1
3149	85	2
3150	94	3
3150	51	3
3151	75	1
3151	54	2
3151	27	1
3152	49	3
3152	13	1
3152	61	3
3153	92	1
3153	97	3
3153	23	2
3153	19	2
3154	20	2
3154	17	2
3154	14	3
3154	58	3
3155	22	3
3155	49	3
3155	76	1
3155	59	3
3156	53	3
3156	84	1
3156	26	3
3156	68	1
3157	76	1
3157	4	3
3157	87	3
3158	38	1
3159	4	1
3159	88	1
3159	69	3
3160	11	3
3160	87	3
3160	8	2
3161	62	2
3161	77	2
3161	40	3
3161	54	3
3162	92	1
3162	67	2
3163	75	1
3164	23	2
3165	29	2
3166	12	2
3166	85	2
3166	75	2
3167	1	2
3168	29	1
3168	85	1
3168	18	2
3168	69	1
3169	16	2
3169	21	2
3170	73	3
3171	91	3
3172	71	2
3172	85	1
3173	34	2
3174	59	1
3174	96	2
3174	50	3
3174	76	2
3175	13	3
3175	71	1
3176	90	3
3176	29	1
3176	32	1
3177	47	2
3178	59	3
3178	9	3
3178	30	2
3179	38	3
3179	60	1
3180	44	2
3180	61	3
3180	33	3
3180	32	2
3181	39	3
3181	44	1
3181	41	1
3182	87	2
3182	47	2
3182	83	2
3183	56	3
3183	60	3
3184	5	2
3184	67	2
3184	53	3
3184	2	3
3185	99	1
3185	23	3
3185	19	1
3186	45	1
3186	60	2
3186	59	2
3187	97	3
3187	43	1
3188	12	1
3188	74	3
3189	8	1
3189	60	3
3189	19	1
3190	31	3
3190	28	2
3190	3	3
3190	7	3
3191	74	1
3191	95	1
3192	33	1
3192	62	2
3193	2	2
3193	80	1
3193	75	2
3194	28	3
3194	11	1
3194	78	1
3194	68	3
3195	29	2
3195	46	2
3195	55	2
3196	14	2
3197	59	2
3198	89	2
3199	52	1
3199	39	2
3199	50	3
3199	18	2
3200	38	2
3200	53	1
3200	49	3
3201	51	3
3201	57	3
3202	72	2
3202	15	1
3203	9	3
3203	88	1
3203	75	3
3203	14	2
3204	40	2
3204	16	3
3204	42	3
3205	59	3
3205	30	2
3205	48	3
3206	92	1
3206	11	1
3206	54	3
3207	87	1
3207	99	2
3207	23	2
3208	1	3
3208	86	2
3208	99	3
3209	48	2
3209	51	2
3210	37	1
3211	86	1
3212	39	3
3212	66	2
3212	70	3
3213	3	3
3213	32	3
3213	22	3
3214	49	3
3214	94	2
3215	12	2
3216	5	1
3216	83	1
3216	96	2
3216	21	2
3217	72	2
3218	9	3
3219	60	1
3219	96	2
3219	54	1
3220	35	1
3221	13	1
3222	36	1
3222	4	3
3223	22	3
3223	2	2
3223	46	2
3224	10	1
3224	3	3
3224	40	1
3224	64	2
3225	41	3
3225	19	3
3225	69	2
3225	27	2
3226	63	3
3226	40	3
3226	20	1
3227	51	1
3227	52	1
3227	86	2
3228	83	1
3228	32	3
3228	36	3
3228	70	3
3229	37	3
3229	13	3
3229	5	1
3229	63	3
3230	22	3
3230	17	3
3230	29	1
3231	80	1
3232	82	3
3232	47	3
3232	80	2
3232	42	2
3233	95	2
3233	47	3
3234	47	2
3234	97	1
3234	72	2
3234	8	1
3235	67	2
3235	80	1
3235	57	3
3236	82	1
3236	37	2
3237	81	2
3237	44	1
3237	83	3
3237	75	2
3238	7	3
3238	8	3
3239	50	1
3239	28	1
3240	49	1
3240	40	3
3241	23	3
3241	34	1
3241	16	1
3241	98	3
3242	93	1
3242	22	2
3243	73	3
3243	71	3
3243	20	3
3243	27	2
3244	3	1
3244	94	3
3245	36	3
3245	51	2
3245	33	2
3246	19	1
3246	5	2
3246	67	2
3247	17	3
3247	66	2
3248	74	2
3249	23	1
3249	83	3
3250	73	3
3251	80	2
3251	48	2
3251	46	2
3252	99	3
3253	66	3
3253	76	2
3253	15	1
3253	23	3
3254	11	3
3255	83	2
3256	98	3
3257	82	3
3257	10	2
3258	51	2
3259	56	1
3260	40	1
3260	38	2
3261	64	1
3262	24	3
3262	13	3
3262	23	2
3262	19	2
3263	67	2
3263	38	1
3263	72	2
3263	16	3
3264	79	2
3264	18	3
3264	83	2
3264	22	1
3265	69	2
3266	15	3
3267	52	1
3268	81	2
3268	37	2
3269	88	1
3270	27	2
3270	80	3
3270	7	2
3270	46	1
3271	43	1
3271	69	3
3271	76	1
3272	65	2
3272	83	1
3272	5	3
3272	92	3
3273	51	1
3273	60	3
3273	15	3
3274	58	3
3274	82	2
3274	84	1
3274	100	1
3275	2	3
3275	9	1
3275	20	2
3276	29	3
3276	7	3
3276	74	1
3277	77	3
3277	75	3
3277	93	1
3277	54	2
3278	9	2
3278	40	1
3279	66	1
3279	30	1
3279	62	2
3280	66	3
3281	22	2
3281	15	3
3281	81	3
3281	21	3
3282	81	1
3282	95	3
3282	67	3
3282	11	3
3283	100	1
3283	55	1
3283	69	3
3283	27	3
3284	74	2
3284	42	2
3284	30	1
3285	8	1
3285	47	1
3285	93	3
3286	94	1
3286	91	1
3286	47	3
3286	74	2
3287	2	1
3287	31	3
3287	54	1
3287	23	3
3288	70	3
3288	16	3
3288	54	3
3289	84	3
3289	9	3
3289	88	3
3289	91	1
3290	84	2
3290	12	1
3290	45	3
3291	78	3
3291	81	2
3291	92	3
3292	27	1
3292	23	3
3292	26	3
3292	57	1
3293	93	2
3293	11	3
3293	27	1
3294	67	3
3294	66	2
3295	29	2
3295	21	2
3296	50	3
3296	6	3
3296	64	2
3296	18	1
3297	33	1
3297	62	3
3297	94	3
3298	97	3
3298	64	3
3298	51	2
3298	21	3
3299	18	3
3300	16	1
3301	69	2
3301	55	2
3301	92	1
3302	39	2
3302	17	2
3302	41	2
3303	22	1
3303	69	3
3303	77	3
3303	1	1
3304	28	2
3305	66	3
3306	48	3
3306	95	1
3307	89	3
3307	80	3
3308	28	2
3308	23	3
3309	68	3
3309	55	2
3309	60	2
3309	23	2
3310	88	2
3311	69	3
3311	97	2
3312	71	3
3312	54	1
3313	42	3
3313	10	3
3314	94	3
3315	73	1
3316	54	1
3317	7	2
3318	5	3
3318	17	1
3319	2	2
3320	3	3
3321	62	1
3321	96	3
3321	38	2
3322	87	3
3322	27	1
3322	96	2
3322	34	2
3323	60	3
3323	99	3
3323	41	3
3323	42	2
3324	45	3
3325	35	3
3325	60	2
3326	55	3
3326	44	3
3327	87	2
3328	41	1
3328	48	3
3329	78	3
3329	85	1
3329	10	1
3329	76	1
3330	25	2
3331	48	3
3332	15	1
3332	39	2
3333	2	2
3333	60	2
3333	25	3
3334	40	3
3334	1	2
3334	26	2
3335	79	3
3335	55	1
3335	71	2
3336	75	2
3336	20	1
3337	82	1
3337	62	1
3337	91	1
3338	12	1
3338	13	2
3339	94	2
3339	36	1
3340	58	1
3340	48	3
3340	40	3
3340	59	1
3341	42	2
3341	41	2
3342	22	2
3342	81	3
3342	29	2
3342	96	1
3343	26	2
3343	73	1
3343	100	1
3344	77	1
3345	26	1
3345	91	3
3345	86	2
3346	61	2
3346	43	1
3347	22	2
3348	18	3
3348	64	2
3348	44	3
3349	29	3
3349	35	3
3349	93	1
3349	8	3
3350	14	2
3350	4	1
3350	22	3
3350	46	3
3351	31	2
3351	22	2
3352	44	1
3352	46	2
3352	28	1
3352	79	3
3353	43	2
3353	88	1
3354	9	2
3354	23	3
3354	94	3
3354	49	3
3355	59	2
3355	63	3
3355	90	3
3356	44	2
3356	78	1
3356	62	3
3356	35	2
3357	69	3
3357	65	2
3358	51	2
3358	32	1
3359	40	1
3360	6	3
3360	74	2
3361	98	1
3361	74	2
3361	73	2
3361	86	3
3362	28	3
3362	18	1
3363	72	2
3363	18	1
3364	91	1
3364	18	2
3364	66	3
3365	49	3
3366	11	3
3366	22	1
3367	8	1
3367	36	2
3367	20	1
3368	52	1
3368	76	2
3369	55	2
3369	99	1
3369	49	2
3369	79	1
3370	78	1
3370	79	2
3370	41	1
3370	23	3
3371	87	1
3372	10	1
3372	31	1
3372	29	2
3373	84	3
3373	58	2
3373	72	2
3374	62	3
3374	75	2
3374	99	2
3374	43	3
3375	91	3
3375	65	1
3376	50	1
3376	2	3
3377	11	2
3377	53	2
3378	2	3
3378	93	3
3378	28	1
3378	54	3
3379	30	1
3379	89	1
3379	79	1
3379	95	1
3380	73	2
3381	32	1
3381	44	1
3381	46	1
3382	48	3
3382	95	1
3382	3	1
3382	91	3
3383	53	3
3383	60	1
3383	44	3
3383	32	2
3384	70	2
3384	94	3
3384	21	3
3384	86	3
3385	41	1
3385	1	3
3385	58	3
3385	99	2
3386	42	2
3387	78	3
3387	48	2
3387	3	2
3388	30	1
3388	15	2
3389	66	1
3389	12	2
3390	7	2
3390	87	1
3390	32	3
3391	25	2
3391	26	3
3392	87	1
3393	67	1
3393	52	1
3394	58	3
3394	57	3
3394	38	2
3395	71	2
3395	27	1
3396	92	1
3397	63	1
3397	40	3
3398	89	3
3399	9	3
3400	85	1
3400	38	2
3400	43	2
3401	74	2
3401	93	1
3401	38	3
3402	39	3
3402	37	3
3402	75	3
3403	70	1
3403	31	3
3404	66	1
3404	30	3
3404	56	2
3405	27	3
3406	67	2
3406	49	3
3407	85	3
3407	48	3
3407	12	3
3407	37	1
3408	83	1
3409	51	1
3409	38	3
3410	77	1
3410	80	1
3410	4	1
3410	94	1
3411	27	2
3411	63	3
3411	18	3
3411	35	1
3412	7	3
3413	96	2
3413	67	1
3414	66	1
3414	53	2
3414	3	3
3414	19	2
3415	4	2
3415	47	3
3416	56	3
3416	88	1
3416	69	1
3417	38	2
3417	43	1
3418	20	2
3418	65	3
3418	94	2
3419	80	3
3419	40	3
3419	87	3
3420	41	1
3420	97	1
3420	63	3
3421	73	2
3421	29	1
3422	29	2
3422	14	1
3422	49	1
3422	54	1
3423	3	3
3423	23	2
3423	47	3
3424	22	2
3424	4	2
3425	7	3
3425	72	3
3425	81	3
3426	62	1
3426	64	3
3426	23	3
3427	41	1
3427	60	2
3428	65	2
3428	79	1
3428	30	1
3429	95	2
3429	57	1
3429	16	2
3429	90	1
3430	40	3
3430	14	2
3430	32	3
3430	63	2
3431	26	3
3431	81	2
3432	31	1
3433	33	2
3433	20	2
3433	45	2
3433	61	1
3434	32	1
3434	46	2
3434	48	2
3434	80	2
3435	5	2
3435	18	3
3435	51	1
3436	86	3
3436	44	1
3436	3	2
3437	31	2
3437	48	3
3437	12	2
3438	28	2
3438	35	2
3438	95	2
3439	81	3
3439	20	3
3439	49	3
3439	76	3
3440	32	3
3440	30	2
3441	51	2
3441	92	3
3441	39	1
3442	50	3
3443	35	3
3443	55	3
3443	74	1
3444	17	1
3444	37	1
3444	70	1
3444	83	3
3445	8	1
3445	30	2
3445	6	3
3445	4	1
3446	56	3
3446	93	3
3446	89	2
3446	67	3
3447	6	1
3447	70	2
3447	27	3
3448	7	1
3449	40	3
3449	64	2
3449	33	3
3449	23	2
3450	31	2
3450	41	3
3450	60	1
3451	72	1
3451	21	1
3452	2	1
3452	79	2
3453	30	2
3453	77	2
3453	65	3
3453	19	2
3454	10	2
3454	73	3
3454	60	1
3454	76	3
3455	49	1
3456	3	2
3457	37	3
3458	79	2
3458	76	1
3458	26	3
3459	14	1
3459	42	3
3459	49	1
3460	35	1
3460	90	3
3460	38	1
3460	83	1
3461	77	2
3461	61	1
3461	40	3
3462	42	3
3462	76	2
3463	51	2
3463	57	2
3464	36	1
3464	93	1
3464	74	1
3464	67	3
3465	32	3
3465	30	2
3466	24	1
3466	92	2
3467	2	2
3467	17	2
3467	53	1
3468	90	3
3468	55	2
3468	60	1
3468	96	1
3469	12	1
3470	91	1
3470	7	3
3470	46	1
3471	78	1
3471	98	3
3471	56	1
3472	45	3
3473	2	3
3473	25	2
3473	44	3
3474	44	3
3474	41	2
3475	50	2
3475	73	3
3476	11	2
3477	64	3
3477	76	1
3477	92	1
3477	95	3
3478	70	3
3479	38	3
3479	48	2
3479	61	2
3479	49	2
3480	1	3
3481	57	2
3482	46	3
3483	66	3
3484	45	2
3485	97	2
3485	38	3
3485	47	2
3485	36	2
3486	68	2
3486	91	3
3486	39	3
3487	65	3
3487	87	3
3488	7	2
3489	5	1
3490	2	2
3490	39	1
3490	61	1
3491	78	3
3491	17	1
3492	81	1
3492	88	1
3492	18	1
3492	69	1
3493	83	1
3493	31	3
3493	14	1
3493	55	1
3494	67	2
3494	64	3
3494	11	1
3494	43	3
3495	27	3
3496	95	3
3496	49	3
3496	26	2
3497	97	1
3498	4	2
3499	48	2
3499	24	2
3499	63	1
3499	36	2
3500	93	3
3500	59	2
3500	79	2
3500	11	2
3501	93	1
3502	48	1
3502	75	1
3503	17	3
3503	91	3
3503	50	3
3504	20	2
3504	59	2
3505	7	1
3505	15	2
3505	71	2
3505	8	3
3506	42	2
3506	58	2
3507	77	3
3507	46	1
3508	99	3
3509	4	2
3509	9	1
3509	12	2
3509	76	1
3510	15	3
3510	77	3
3510	39	2
3511	59	2
3511	48	3
3512	81	3
3512	82	3
3512	46	1
3512	62	1
3513	92	3
3513	79	3
3513	82	3
3513	98	3
3514	47	1
3514	29	1
3514	37	1
3515	11	3
3515	100	3
3515	36	3
3515	97	1
3516	39	2
3517	100	1
3517	51	1
3517	11	3
3517	80	3
3518	28	1
3518	17	1
3518	58	2
3518	29	1
3519	52	3
3519	57	1
3520	85	3
3520	75	1
3521	98	2
3522	81	1
3522	47	1
3523	76	2
3523	19	2
3524	15	2
3524	68	3
3525	48	3
3526	19	3
3526	91	2
3527	26	1
3527	75	3
3528	76	2
3528	39	2
3528	63	3
3528	19	3
3529	32	1
3529	31	3
3529	33	3
3530	13	3
3530	21	1
3531	23	3
3531	91	2
3531	54	3
3531	63	3
3532	49	1
3532	52	3
3533	42	2
3533	8	1
3533	10	3
3534	64	2
3534	11	1
3534	80	3
3534	77	3
3535	95	3
3535	61	3
3535	63	3
3535	18	2
3536	4	3
3536	41	3
3536	10	3
3536	91	2
3537	41	2
3537	7	2
3537	68	2
3537	79	3
3538	66	3
3538	84	1
3538	19	3
3539	19	2
3539	6	2
3539	87	2
3540	29	2
3541	81	2
3542	51	1
3542	90	3
3543	43	3
3543	66	3
3543	30	3
3544	51	2
3544	18	1
3544	67	3
3544	97	3
3545	5	1
3546	62	3
3546	85	3
3546	34	3
3546	59	3
3547	4	3
3547	43	2
3547	81	3
3547	91	1
3548	17	1
3548	50	2
3549	92	1
3549	62	1
3550	94	2
3550	3	3
3550	1	1
3550	29	1
3551	25	3
3551	17	2
3551	12	1
3552	19	1
3553	62	2
3553	71	1
3553	23	2
3553	55	1
3554	97	2
3555	88	1
3556	19	1
3556	67	3
3556	94	2
3557	75	1
3557	16	1
3557	90	1
3557	48	3
3558	91	2
3558	93	1
3559	99	3
3559	100	2
3559	73	1
3559	3	1
3560	12	3
3560	94	1
3561	54	1
3561	100	1
3562	45	3
3562	95	1
3562	88	1
3563	49	1
3564	25	1
3564	16	3
3564	52	3
3565	42	3
3565	72	1
3565	36	3
3565	76	3
3566	83	1
3567	27	2
3568	79	2
3569	64	2
3569	90	1
3569	20	3
3569	85	2
3570	71	1
3571	28	2
3571	33	1
3572	29	1
3572	8	2
3572	35	2
3572	45	3
3573	32	2
3573	38	2
3573	39	1
3574	80	3
3575	75	3
3575	24	1
3575	84	2
3576	99	2
3576	55	3
3577	2	1
3577	67	2
3577	10	1
3578	100	2
3578	96	3
3578	80	3
3579	61	2
3579	52	1
3579	78	1
3579	4	2
3580	35	2
3580	16	2
3580	71	1
3580	74	1
3581	2	2
3581	16	2
3582	92	2
3582	51	3
3582	10	1
3582	89	3
3583	1	2
3583	86	3
3583	3	1
3584	32	1
3584	93	1
3584	91	2
3585	68	1
3585	15	2
3585	4	2
3586	86	1
3586	96	3
3587	70	3
3588	39	2
3588	53	2
3588	10	2
3588	60	2
3589	50	2
3589	85	1
3589	80	1
3590	22	1
3591	43	1
3591	36	3
3591	73	1
3592	34	3
3592	100	2
3592	26	2
3593	17	3
3594	88	1
3594	47	3
3594	29	3
3594	45	2
3595	68	2
3595	91	3
3596	100	1
3596	57	2
3596	61	3
3596	6	2
3597	59	1
3597	78	3
3597	33	3
3597	86	1
3598	4	2
3599	59	2
3599	82	3
3600	34	2
3600	58	2
3600	55	1
3601	2	1
3601	100	3
3601	73	1
3601	21	1
3602	68	1
3603	96	2
3604	13	3
3604	9	2
3604	60	3
3604	22	2
3605	49	3
3606	25	1
3606	98	1
3607	49	1
3608	99	2
3608	78	3
3608	30	3
3608	34	2
3609	15	1
3609	53	3
3609	94	1
3609	44	2
3610	27	3
3610	30	2
3610	68	3
3611	87	1
3611	50	3
3611	86	2
3611	52	2
3612	26	1
3612	1	2
3612	46	2
3613	70	2
3613	71	2
3614	34	3
3614	33	2
3614	42	1
3615	2	2
3615	38	1
3615	33	1
3615	19	3
3616	80	3
3616	68	3
3616	27	1
3616	35	2
3617	80	1
3617	9	3
3617	4	1
3618	23	3
3618	46	1
3619	9	1
3619	10	3
3619	56	2
3619	32	1
3620	71	2
3620	10	3
3620	77	1
3620	92	2
3621	28	3
3621	20	3
3622	74	2
3622	73	3
3622	57	3
3622	62	1
3623	66	2
3623	92	1
3623	44	1
3623	61	1
3624	82	2
3624	98	1
3625	91	3
3625	31	3
3626	50	1
3627	40	3
3627	54	3
3628	82	2
3629	93	2
3630	29	1
3630	18	2
3630	40	2
3631	35	2
3631	61	3
3631	72	2
3631	10	3
3632	96	1
3632	36	2
3632	44	1
3633	60	1
3633	72	3
3633	17	3
3634	60	1
3634	43	2
3635	88	3
3635	18	2
3636	87	3
3636	11	3
3637	9	2
3637	10	3
3638	65	3
3638	27	1
3639	53	3
3640	52	3
3641	75	2
3642	33	3
3642	91	3
3642	59	1
3642	11	2
3643	21	3
3644	46	3
3644	7	1
3644	31	2
3644	25	2
3645	50	2
3645	75	3
3645	34	2
3646	98	1
3646	88	1
3646	50	1
3646	60	1
3647	64	3
3647	74	1
3648	88	3
3648	80	3
3648	79	1
3649	76	2
3649	78	2
3649	9	2
3649	24	1
3650	84	3
3650	58	3
3651	32	3
3652	1	2
3652	74	3
3652	38	3
3653	3	3
3653	92	2
3653	49	2
3653	30	1
3654	13	3
3654	47	3
3654	59	1
3654	88	3
3655	85	3
3655	84	3
3656	86	1
3656	89	1
3657	36	3
3657	95	2
3658	6	3
3658	64	2
3659	99	1
3659	48	3
3660	71	1
3660	32	2
3661	62	1
3661	25	1
3662	18	1
3663	12	1
3663	9	2
3663	63	2
3664	48	1
3664	19	1
3664	85	1
3665	10	2
3666	27	3
3667	12	2
3667	55	3
3667	38	2
3668	59	1
3668	62	3
3668	29	2
3668	51	3
3669	70	1
3669	4	1
3669	99	3
3670	51	2
3671	10	1
3671	96	3
3672	5	1
3673	60	2
3673	96	3
3674	1	1
3675	80	1
3676	99	3
3677	97	3
3677	13	1
3677	5	2
3678	83	2
3678	80	3
3678	90	2
3679	43	3
3679	32	1
3679	88	3
3679	35	2
3680	96	3
3680	57	3
3681	83	2
3682	65	3
3683	79	2
3683	78	2
3683	96	3
3684	89	2
3685	79	3
3685	67	2
3685	12	1
3685	4	3
3686	76	3
3687	77	2
3687	34	2
3688	47	2
3688	7	1
3689	66	1
3689	48	3
3689	97	1
3690	88	1
3690	98	1
3690	76	2
3690	22	3
3691	1	3
3691	86	1
3692	73	1
3692	61	2
3693	13	3
3694	12	3
3694	58	2
3694	11	2
3694	31	1
3695	81	2
3696	15	2
3696	22	2
3696	16	1
3696	25	2
3697	71	1
3697	29	2
3698	5	3
3698	28	1
3698	33	2
3698	77	2
3699	88	1
3699	92	1
3700	37	2
3700	74	2
3701	70	2
3701	62	2
3701	81	2
3701	84	1
3702	42	2
3702	33	2
3703	33	2
3703	73	1
3703	21	1
3704	67	3
3704	12	2
3704	17	3
3705	58	3
3705	55	3
3705	93	2
3706	63	1
3706	100	3
3706	75	2
3707	12	2
3707	20	1
3708	75	1
3709	18	2
3709	30	1
3709	60	3
3710	87	1
3710	62	1
3710	44	2
3710	13	2
3711	39	1
3712	32	1
3712	73	2
3712	65	1
3713	45	3
3714	5	2
3715	95	2
3715	46	1
3715	53	1
3716	10	2
3717	42	2
3717	88	1
3717	41	2
3718	43	1
3718	65	1
3718	80	3
3719	78	1
3719	55	2
3719	80	2
3719	44	3
3720	38	2
3720	98	2
3721	74	2
3721	69	3
3721	68	1
3722	14	3
3723	35	3
3723	46	2
3724	46	3
3724	88	2
3724	77	2
3724	33	2
3725	2	3
3725	61	2
3726	34	3
3726	75	2
3726	91	2
3727	64	3
3727	54	2
3727	45	3
3728	87	1
3728	37	3
3729	18	3
3729	67	2
3729	62	2
3730	78	1
3730	23	1
3731	49	3
3731	64	1
3731	13	1
3731	17	1
3732	27	1
3732	53	3
3733	18	1
3734	53	2
3735	90	2
3736	66	1
3737	47	1
3737	65	2
3737	30	3
3738	76	1
3739	60	1
3739	58	3
3740	45	3
3740	59	3
3740	68	2
3741	48	1
3741	60	2
3741	9	2
3742	77	1
3742	81	2
3742	21	2
3743	21	3
3743	57	1
3743	72	3
3743	24	3
3744	49	2
3745	65	3
3746	60	2
3746	46	2
3747	55	1
3747	22	3
3747	6	2
3748	78	1
3748	33	3
3749	30	1
3749	65	3
3749	51	3
3749	96	1
3750	27	1
3750	99	3
3751	45	3
3751	92	1
3751	52	1
3751	1	3
3752	68	1
3752	50	1
3752	56	1
3752	69	2
3753	9	1
3754	27	1
3754	75	1
3755	11	2
3755	100	2
3755	88	2
3755	62	3
3756	2	3
3756	21	3
3757	33	3
3758	79	3
3758	99	2
3759	79	2
3760	87	3
3760	23	3
3761	51	1
3762	59	3
3762	79	3
3762	19	3
3763	6	3
3764	38	1
3764	23	3
3764	14	1
3765	27	1
3765	83	1
3765	98	1
3766	87	2
3767	6	2
3767	12	3
3767	35	1
3768	33	1
3769	95	1
3769	27	3
3770	59	1
3770	75	2
3770	46	3
3771	43	1
3771	23	3
3771	20	2
3772	69	2
3772	99	2
3773	22	3
3773	34	1
3773	43	3
3773	50	1
3774	38	1
3774	33	1
3775	29	1
3775	36	2
3775	20	3
3775	55	3
3776	50	3
3776	28	3
3776	76	1
3776	29	3
3777	84	1
3777	80	2
3777	17	2
3778	19	2
3779	89	2
3780	44	2
3780	41	1
3781	34	1
3781	30	3
3782	51	1
3783	28	3
3783	1	1
3783	39	2
3784	42	3
3785	29	2
3785	74	2
3786	31	3
3787	18	3
3788	52	1
3789	46	1
3790	92	1
3790	71	3
3791	38	2
3791	64	1
3791	26	2
3791	5	3
3792	15	2
3792	94	2
3792	23	1
3793	51	1
3794	3	3
3794	1	2
3794	65	1
3795	40	3
3795	83	3
3795	86	3
3795	92	3
3796	46	1
3797	10	3
3798	73	1
3798	100	3
3798	79	3
3799	100	2
3799	99	3
3800	90	1
3801	92	3
3801	42	3
3802	52	3
3802	80	2
3802	4	1
3803	25	3
3804	92	2
3804	40	1
3805	80	3
3805	33	3
3805	98	1
3806	83	3
3806	79	3
3806	15	1
3807	18	3
3807	30	3
3807	68	1
3808	80	3
3808	98	1
3808	82	1
3809	68	3
3810	71	2
3810	60	2
3810	16	2
3810	51	3
3811	73	3
3811	32	2
3811	6	1
3811	78	1
3812	7	1
3813	19	3
3813	99	1
3813	42	3
3813	44	3
3814	28	2
3814	88	2
3814	91	1
3815	14	1
3815	2	3
3815	12	3
3816	83	3
3816	91	1
3816	12	2
3816	31	3
3817	60	3
3817	85	3
3818	96	2
3818	32	3
3818	9	3
3818	44	3
3819	2	1
3819	28	2
3820	76	2
3820	79	2
3820	88	3
3821	9	3
3821	29	3
3821	34	3
3822	19	2
3822	56	3
3823	10	2
3823	27	3
3824	95	1
3824	81	3
3824	9	3
3824	76	2
3825	66	1
3825	67	2
3825	96	3
3826	83	3
3827	82	2
3827	100	3
3827	23	3
3827	61	1
3828	19	1
3828	62	3
3828	78	3
3828	72	2
3829	37	3
3830	1	1
3830	74	3
3830	29	2
3830	15	2
3831	91	1
3832	71	2
3833	47	2
3833	11	3
3834	83	3
3834	90	1
3834	16	3
3835	59	1
3835	89	3
3836	82	2
3836	79	2
3836	6	2
3837	13	2
3837	4	1
3838	87	1
3838	36	2
3839	82	2
3839	6	3
3840	96	3
3840	77	2
3840	81	3
3840	64	1
3841	100	2
3841	76	2
3841	69	3
3841	55	3
3842	18	2
3842	3	2
3842	69	2
3843	88	1
3843	38	1
3843	48	1
3843	73	2
3844	48	2
3844	2	3
3845	42	1
3845	89	3
3845	76	3
3845	71	3
3846	44	2
3846	62	1
3846	14	2
3846	72	2
3847	2	2
3847	31	3
3847	62	1
3847	87	3
3848	22	2
3848	17	2
3848	20	3
3848	83	2
3849	44	1
3849	60	1
3850	3	3
3850	91	1
3851	44	1
3851	88	3
3851	58	1
3852	4	1
3853	83	2
3853	22	1
3853	96	2
3853	48	2
3854	26	3
3855	75	1
3855	54	3
3855	73	2
3855	48	1
3856	59	3
3856	33	3
3857	5	3
3858	41	2
3858	13	1
3859	6	3
3859	88	3
3859	22	3
3860	69	2
3860	66	1
3860	65	1
3861	76	1
3861	42	3
3862	88	2
3862	67	3
3862	37	1
3862	16	2
3863	38	1
3863	78	1
3863	54	3
3863	94	2
3864	87	1
3864	27	3
3865	50	1
3865	85	3
3866	36	3
3866	52	1
3866	47	3
3866	75	2
3867	28	3
3868	54	3
3869	75	1
3869	61	2
3869	30	1
3869	44	1
3870	64	2
3870	49	1
3870	47	3
3871	41	3
3871	82	2
3871	89	1
3872	18	3
3872	65	2
3872	15	1
3872	32	3
3873	58	2
3873	35	2
3873	3	3
3874	89	2
3874	35	3
3875	9	1
3875	54	1
3875	40	2
3875	18	2
3876	8	3
3877	94	1
3877	50	1
3877	57	2
3877	31	3
3878	33	1
3878	12	2
3879	2	2
3880	89	1
3880	24	1
3880	93	3
3881	35	2
3881	43	3
3882	25	2
3882	94	2
3882	63	3
3883	88	2
3883	27	3
3883	74	3
3884	25	3
3884	84	1
3885	47	3
3885	19	2
3885	5	3
3885	97	2
3886	85	1
3886	65	1
3886	77	3
3886	75	1
3887	27	2
3887	86	2
3888	59	3
3888	58	3
3888	44	3
3888	13	1
3889	86	2
3889	31	2
3889	63	1
3890	19	1
3890	17	3
3890	12	3
3891	30	2
3892	73	3
3892	53	3
3892	45	2
3893	36	2
3894	37	2
3894	8	1
3895	81	1
3896	38	1
3896	93	1
3896	5	2
3897	12	3
3897	100	3
3898	56	1
3898	82	1
3898	95	2
3899	23	1
3899	71	1
3900	63	1
3900	12	3
3900	15	1
3901	21	1
3902	30	1
3902	61	1
3903	59	2
3903	92	3
3903	56	3
3903	11	3
3904	79	2
3904	44	1
3904	42	3
3905	35	2
3905	15	1
3906	97	1
3906	81	2
3907	77	1
3907	11	3
3908	11	1
3909	83	2
3909	65	2
3909	76	3
3910	40	3
3910	5	1
3910	74	1
3910	23	3
3911	26	1
3911	58	3
3911	23	1
3912	87	3
3913	13	2
3913	92	1
3913	90	2
3913	77	3
3914	65	3
3914	40	1
3914	30	3
3914	26	3
3915	1	1
3916	57	2
3916	90	1
3916	41	1
3916	53	2
3917	73	1
3918	77	1
3919	47	1
3919	88	2
3919	98	2
3920	54	1
3920	91	3
3920	57	2
3920	4	3
3921	86	3
3922	27	3
3923	1	2
3924	7	2
3925	61	3
3925	24	1
3926	97	2
3927	47	3
3927	52	2
3928	32	1
3928	63	1
3928	61	1
3929	24	2
3929	53	3
3930	14	3
3930	18	2
3931	37	3
3931	46	2
3931	90	2
3932	91	3
3933	100	1
3934	39	1
3934	78	3
3934	19	1
3935	77	1
3936	84	2
3936	14	1
3937	17	1
3938	57	3
3939	41	1
3939	59	1
3939	90	2
3940	23	1
3941	4	2
3942	67	2
3942	94	3
3942	95	2
3943	97	2
3943	77	3
3943	10	3
3943	40	1
3944	36	2
3945	31	2
3945	35	2
3945	2	2
3945	67	2
3946	16	2
3946	49	1
3947	32	1
3947	68	3
3948	43	1
3949	40	1
3949	44	3
3949	35	1
3949	55	2
3950	80	1
3951	32	3
3951	88	2
3951	12	2
3952	53	3
3952	98	3
3952	75	3
3952	9	2
3953	29	1
3954	15	3
3954	3	2
3955	24	3
3956	63	1
3956	54	3
3956	19	3
3956	32	3
3957	79	1
3957	17	3
3958	15	3
3958	72	1
3958	40	1
3958	62	1
3959	36	1
3960	36	1
3961	92	1
3961	50	1
3961	51	1
3961	81	3
3962	90	3
3962	85	2
3962	1	2
3963	15	3
3963	69	1
3963	44	2
3964	28	3
3964	95	1
3965	27	1
3965	4	2
3965	32	2
3966	13	3
3966	6	1
3966	17	2
3966	12	2
3967	16	2
3968	67	3
3968	51	1
3969	24	1
3969	19	2
3969	91	3
3969	40	3
3970	8	1
3970	30	3
3970	24	1
3971	80	3
3971	17	1
3971	77	1
3971	24	3
3972	30	2
3972	2	2
3973	71	1
3973	33	2
3974	36	1
3975	7	1
3976	9	2
3976	76	2
3976	39	1
3976	18	3
3977	89	3
3978	18	2
3978	4	2
3979	4	3
3979	21	3
3980	90	2
3980	70	2
3981	30	3
3981	24	2
3982	62	1
3982	47	2
3982	44	3
3983	98	1
3983	52	1
3984	66	1
3984	6	3
3984	60	3
3985	13	1
3985	72	1
3985	91	3
3986	6	1
3986	18	1
3986	10	1
3986	42	1
3987	47	3
3987	44	1
3987	80	2
3987	58	2
3988	80	2
3988	62	1
3988	6	3
3989	69	2
3989	26	2
3989	75	1
3990	96	1
3990	3	3
3990	91	1
3991	6	1
3992	100	3
3992	83	2
3993	88	1
3994	43	1
3994	69	2
3994	48	3
3995	23	2
3995	82	2
3995	13	3
3995	22	1
3996	38	1
3996	54	1
3996	93	1
3996	2	2
3997	46	2
3997	85	1
3997	87	1
3997	25	2
3998	95	2
3998	73	1
3998	83	2
3999	85	1
4000	25	3
4000	38	1
4000	27	1
4000	87	1
4001	79	1
4002	18	1
4002	47	3
4002	89	3
4003	51	1
4003	4	2
4003	8	1
4003	12	1
4004	26	3
4004	69	2
4005	9	2
4006	55	1
4006	92	1
4006	48	1
4006	36	3
4007	94	3
4007	57	2
4007	5	2
4008	50	1
4008	100	1
4008	58	3
4008	89	2
4009	77	1
4009	48	1
4009	92	1
4009	45	1
4010	89	3
4011	54	2
4011	83	2
4011	26	2
4011	35	1
4012	88	1
4012	2	3
4012	9	1
4013	21	1
4013	53	1
4014	4	2
4014	81	3
4015	40	2
4015	14	2
4015	46	2
4016	10	2
4016	63	2
4016	54	2
4016	15	3
4017	13	1
4018	1	2
4019	79	3
4019	71	1
4019	93	1
4019	22	2
4020	35	3
4021	20	2
4021	14	2
4021	5	1
4021	58	1
4022	78	2
4023	11	3
4024	76	2
4024	55	2
4024	3	2
4024	50	3
4025	62	2
4026	4	3
4026	17	1
4026	92	2
4027	64	2
4027	36	2
4027	96	1
4028	48	3
4028	79	1
4028	54	2
4029	52	1
4030	6	2
4030	86	3
4030	18	2
4030	3	2
4031	27	3
4031	86	3
4032	50	3
4032	7	1
4033	64	2
4034	13	3
4035	19	3
4036	55	3
4037	77	3
4037	95	2
4038	36	1
4038	58	2
4039	97	1
4039	16	3
4039	20	1
4040	18	1
4040	69	1
4040	26	3
4040	83	2
4041	50	3
4041	45	3
4041	9	3
4041	19	1
4042	83	2
4043	3	1
4043	79	1
4044	35	1
4044	14	3
4045	78	1
4045	41	3
4045	15	2
4046	70	3
4046	78	3
4047	3	1
4047	80	1
4048	46	3
4048	42	3
4048	37	1
4048	18	3
4049	60	2
4049	80	1
4049	94	1
4050	55	2
4050	82	3
4050	42	3
4050	33	1
4051	91	1
4052	66	3
4052	11	1
4052	43	1
4053	94	1
4054	30	2
4054	71	1
4054	72	3
4054	75	2
4055	91	3
4055	20	3
4055	81	1
4056	90	2
4057	60	2
4057	31	2
4057	12	3
4058	74	3
4059	5	3
4059	73	3
4059	47	1
4059	4	3
4060	68	1
4061	55	3
4061	76	1
4062	91	1
4062	97	2
4063	98	2
4063	84	3
4064	68	3
4065	81	1
4066	52	2
4067	43	3
4067	58	2
4067	33	2
4068	29	3
4068	42	2
4068	47	1
4069	29	2
4069	63	1
4070	87	1
4071	96	3
4071	32	3
4072	56	3
4072	36	2
4072	37	1
4073	54	2
4073	70	2
4073	44	2
4073	43	1
4074	35	2
4074	12	3
4074	18	1
4075	76	2
4075	42	1
4075	20	3
4075	7	3
4076	1	3
4076	83	1
4077	69	1
4077	32	1
4077	45	3
4077	26	1
4078	23	3
4078	28	2
4078	85	3
4078	62	2
4079	44	2
4079	47	3
4080	83	1
4080	6	3
4080	90	2
4080	1	3
4081	62	3
4081	79	1
4081	46	1
4081	35	2
4082	83	3
4082	93	2
4083	81	2
4083	24	2
4083	79	2
4084	37	2
4084	54	1
4084	26	3
4084	4	1
4085	38	1
4085	35	2
4086	8	2
4086	92	1
4087	87	1
4087	30	2
4087	51	1
4088	33	3
4088	94	3
4088	34	1
4088	74	2
4089	39	2
4090	30	2
4091	17	3
4091	22	1
4091	35	1
4092	67	1
4092	17	2
4092	46	2
4092	93	3
4093	66	2
4093	33	1
4093	27	3
4094	97	1
4095	18	2
4095	36	1
4095	70	1
4096	73	1
4096	93	1
4097	12	1
4098	76	2
4098	41	1
4099	29	3
4099	8	3
4099	48	3
4100	87	1
4100	71	3
4100	48	3
4101	45	2
4101	96	2
4102	73	2
4102	34	1
4103	20	1
4103	75	3
4103	24	3
4104	39	3
4104	1	1
4105	91	3
4105	9	2
4105	19	3
4106	50	3
4107	46	1
4108	98	1
4108	63	3
4108	74	1
4109	32	3
4109	21	3
4110	29	2
4110	96	3
4110	54	3
4111	96	3
4111	15	2
4111	80	2
4112	58	2
4112	38	1
4113	84	2
4113	86	2
4113	41	1
4113	93	1
4114	2	1
4114	71	1
4115	99	3
4115	60	1
4116	79	2
4116	86	3
4116	49	1
4117	29	2
4118	44	3
4118	46	1
4119	97	1
4119	60	1
4120	17	3
4121	15	1
4121	87	3
4121	48	2
4121	66	3
4122	5	2
4122	56	1
4123	98	2
4123	51	3
4124	41	1
4124	44	3
4124	21	2
4124	28	3
4125	83	1
4126	9	2
4127	94	1
4127	79	2
4128	79	2
4128	28	1
4129	90	3
4130	50	3
4130	7	3
4131	41	1
4131	43	2
4131	10	1
4132	53	1
4133	6	3
4133	89	1
4134	26	1
4135	22	3
4135	27	3
4136	41	2
4136	45	1
4137	16	2
4137	75	3
4137	58	2
4138	19	2
4138	37	3
4139	88	3
4140	96	3
4140	47	2
4140	62	2
4140	56	3
4141	40	1
4142	10	1
4142	95	1
4142	1	3
4143	56	2
4143	11	3
4143	10	2
4143	52	3
4144	96	2
4144	20	1
4144	16	2
4144	25	1
4145	9	2
4145	61	1
4145	11	2
4146	61	3
4147	48	1
4147	81	1
4147	49	3
4148	57	1
4148	21	3
4148	69	3
4148	43	2
4149	47	1
4149	68	2
4149	40	1
4150	76	1
4151	25	3
4152	95	2
4153	61	2
4153	60	3
4154	27	3
4155	98	2
4155	23	2
4156	29	2
4156	90	2
4157	24	2
4157	6	3
4157	12	1
4157	23	1
4158	75	1
4158	36	1
4158	32	3
4158	96	1
4159	58	2
4160	25	2
4160	56	3
4160	80	2
4161	78	3
4161	73	1
4161	40	2
4162	66	2
4162	49	1
4162	58	3
4162	85	2
4163	59	2
4163	56	3
4164	31	2
4164	45	1
4165	67	2
4166	49	1
4166	91	2
4166	66	3
4167	65	2
4167	81	1
4167	95	3
4168	22	1
4168	96	2
4168	24	3
4169	33	2
4169	82	1
4169	74	2
4169	35	1
4170	84	1
4170	71	1
4171	62	1
4172	52	3
4173	22	3
4173	5	1
4174	56	1
4174	98	3
4175	19	3
4175	49	3
4175	41	2
4175	88	1
4176	16	2
4176	59	3
4177	48	3
4178	76	2
4178	83	1
4178	43	2
4178	42	1
4179	97	3
4179	53	2
4180	31	3
4180	29	3
4181	58	2
4181	7	3
4181	72	1
4182	76	3
4182	94	2
4182	50	1
4182	14	1
4183	42	2
4183	32	1
4183	94	2
4184	47	2
4184	20	3
4185	94	3
4185	62	2
4185	11	3
4186	45	1
4186	85	3
4187	61	1
4187	2	2
4187	53	2
4188	37	3
4188	67	2
4188	30	1
4189	2	3
4189	59	3
4190	27	3
4190	60	2
4190	5	1
4191	57	2
4192	4	2
4193	85	3
4193	25	1
4194	74	2
4194	93	3
4194	23	2
4195	84	1
4195	21	3
4195	53	2
4196	92	2
4196	51	2
4196	35	3
4196	33	3
4197	75	2
4197	19	3
4198	8	1
4198	31	3
4199	62	2
4199	23	3
4200	81	2
4200	88	2
4201	56	3
4201	31	1
4202	93	1
4203	27	1
4203	41	2
4203	39	3
4204	90	1
4204	43	3
4204	99	1
4204	97	1
4205	35	1
4205	38	2
4206	76	2
4207	33	3
4207	54	1
4208	67	2
4208	20	2
4208	21	1
4209	97	1
4209	98	3
4209	6	2
4209	56	3
4210	76	2
4211	91	1
4211	62	2
4211	28	1
4212	23	3
4212	28	2
4213	89	3
4213	74	3
4213	95	2
4213	78	3
4214	34	3
4214	42	2
4214	32	3
4215	49	3
4215	18	1
4215	75	1
4215	8	3
4216	61	1
4217	21	3
4217	32	2
4218	92	3
4218	91	2
4218	2	3
4219	53	2
4220	34	3
4220	31	1
4221	47	2
4221	66	3
4221	46	2
4221	34	1
4222	24	1
4223	29	2
4223	35	1
4223	10	1
4224	59	1
4225	69	2
4225	28	2
4225	49	2
4225	80	3
4226	13	3
4226	55	1
4226	90	1
4226	44	1
4227	28	3
4227	1	3
4228	81	2
4229	96	1
4230	16	3
4231	24	3
4231	12	1
4231	22	3
4232	75	3
4232	62	3
4232	34	2
4233	7	3
4233	12	3
4233	91	2
4234	61	2
4234	33	3
4234	44	3
4234	86	2
4235	29	1
4236	12	1
4236	63	3
4236	34	3
4236	61	2
4237	65	1
4237	15	1
4237	76	1
4238	96	2
4238	71	2
4239	99	2
4239	66	1
4239	55	1
4240	94	1
4240	8	2
4240	38	2
4240	37	2
4241	7	3
4242	85	3
4242	98	1
4243	64	2
4243	90	1
4243	41	1
4244	3	3
4244	67	3
4244	35	1
4245	82	3
4245	72	2
4246	39	2
4247	99	3
4247	52	2
4247	15	3
4247	21	2
4248	52	3
4248	91	1
4248	77	1
4248	70	2
4249	20	1
4249	31	3
4249	4	1
4249	71	3
4250	87	1
4250	64	1
4250	43	2
4251	95	3
4251	74	1
4251	94	1
4251	36	3
4252	14	2
4253	22	1
4253	24	3
4254	16	1
4254	48	1
4254	68	1
4254	62	2
4255	76	3
4255	9	1
4255	31	2
4256	66	1
4256	96	2
4256	84	3
4256	45	1
4257	21	2
4257	18	2
4257	46	1
4258	33	1
4258	97	1
4258	67	2
4259	53	1
4259	25	2
4259	9	3
4260	63	2
4260	26	1
4260	84	2
4261	55	2
4261	50	1
4261	38	3
4261	83	3
4262	23	1
4263	52	1
4263	65	3
4263	94	2
4264	13	3
4264	67	2
4265	37	3
4265	69	3
4266	7	1
4266	38	2
4266	36	1
4266	24	3
4267	89	2
4267	46	1
4267	72	1
4267	62	3
4268	84	3
4268	59	3
4269	49	3
4269	90	1
4269	93	3
4269	47	3
4270	77	3
4271	100	3
4271	95	3
4271	81	3
4271	93	1
4272	1	3
4272	69	1
4272	22	3
4272	39	3
4273	68	2
4274	85	1
4274	39	3
4275	67	1
4275	8	1
4275	21	2
4275	79	3
4276	63	2
4276	92	3
4276	36	3
4277	69	1
4277	48	3
4277	21	1
4277	39	2
4278	34	3
4278	59	2
4279	77	2
4279	43	3
4280	22	1
4280	95	1
4281	89	3
4281	57	1
4281	48	2
4282	32	3
4282	96	3
4282	57	2
4283	35	3
4283	90	3
4284	46	1
4284	29	3
4284	48	3
4285	90	2
4285	26	3
4286	79	2
4287	16	1
4287	18	3
4288	9	1
4289	67	2
4290	37	3
4290	26	2
4291	71	1
4292	11	1
4292	80	2
4292	69	1
4292	67	1
4293	60	1
4293	58	1
4294	98	3
4294	51	1
4295	68	1
4295	71	3
4295	39	2
4295	6	1
4296	5	3
4296	82	3
4297	34	3
4297	86	2
4298	59	3
4298	42	3
4298	98	3
4298	78	2
4299	2	3
4299	65	1
4299	80	1
4299	97	2
4300	91	2
4300	74	2
4300	77	2
4300	87	2
4301	91	2
4301	11	1
4301	51	2
4302	58	2
4302	79	1
4302	81	2
4302	59	1
4303	70	3
4304	57	2
4304	87	3
4304	90	1
4305	7	1
4306	37	3
4306	91	1
4306	66	3
4307	83	3
4308	52	2
4309	43	1
4310	42	1
4310	11	3
4311	46	1
4311	98	3
4311	1	3
4311	31	2
4312	44	2
4312	24	3
4313	29	1
4313	93	3
4314	36	2
4314	91	1
4314	9	2
4315	74	2
4315	52	3
4315	2	2
4315	89	3
4316	9	2
4316	86	1
4316	39	1
4317	7	2
4317	65	1
4317	67	1
4317	80	2
4318	56	2
4318	18	1
4318	11	1
4319	93	2
4319	70	1
4319	95	3
4320	38	1
4320	20	3
4320	27	3
4320	46	1
4321	48	3
4321	68	3
4321	4	2
4322	84	1
4322	63	1
4322	22	2
4323	70	2
4323	98	2
4323	54	2
4323	74	1
4324	36	1
4324	16	3
4324	4	1
4325	33	1
4326	8	2
4326	16	1
4326	59	1
4327	57	2
4327	49	3
4328	52	1
4328	21	3
4328	55	3
4328	10	1
4329	40	2
4329	45	1
4329	48	1
4330	71	2
4330	61	2
4330	78	1
4331	17	2
4331	1	3
4332	7	2
4333	11	3
4333	97	3
4334	30	2
4334	48	2
4334	89	2
4334	86	1
4335	7	1
4335	16	1
4335	81	1
4336	59	2
4336	4	3
4336	83	3
4336	26	2
4337	68	1
4338	38	2
4338	93	1
4338	25	1
4338	27	1
4339	60	2
4339	30	3
4339	21	1
4339	82	1
4340	86	1
4340	85	2
4340	36	3
4340	35	1
4341	35	3
4341	92	2
4341	27	1
4341	89	1
4342	14	2
4343	70	3
4343	80	2
4343	81	2
4344	5	1
4344	7	1
4344	28	1
4344	38	2
4345	88	3
4346	81	1
4346	92	3
4346	45	2
4347	10	2
4347	46	2
4347	22	1
4348	16	1
4348	74	1
4349	19	3
4350	24	3
4350	94	3
4350	14	3
4350	67	1
4351	47	2
4352	39	3
4352	47	1
4352	37	3
4352	55	2
4353	87	3
4353	38	2
4353	88	1
4354	95	3
4354	86	1
4354	73	2
4354	72	3
4355	16	1
4356	83	2
4357	55	1
4357	61	1
4357	94	2
4357	72	3
4358	27	1
4359	42	1
4359	24	1
4360	56	1
4360	44	3
4360	14	3
4360	89	3
4361	91	2
4361	80	3
4361	71	1
4361	93	2
4362	94	1
4362	19	1
4363	20	1
4363	13	2
4364	24	2
4364	15	1
4364	23	2
4364	76	1
4365	76	2
4365	7	1
4366	39	2
4366	42	2
4366	63	3
4367	91	2
4367	24	3
4367	29	1
4367	47	2
4368	75	1
4369	92	1
4370	7	2
4370	95	3
4371	50	3
4372	74	2
4373	28	3
4373	12	3
4373	41	3
4374	54	3
4375	5	2
4376	87	1
4376	74	1
4377	74	3
4377	52	3
4377	35	2
4377	21	1
4378	14	1
4379	85	1
4379	55	1
4380	78	1
4381	92	2
4381	87	1
4381	85	1
4382	75	3
4382	69	2
4382	43	2
4383	45	3
4383	15	3
4383	39	1
4383	12	2
4384	92	1
4384	45	1
4384	15	3
4384	100	1
4385	24	1
4386	18	1
4387	40	2
4387	47	3
4387	75	2
4388	33	1
4388	37	2
4389	74	3
4389	70	2
4390	63	3
4390	11	2
4390	96	3
4391	66	2
4392	93	2
4393	36	3
4393	4	3
4394	71	3
4394	42	2
4395	87	1
4395	72	3
4396	6	1
4396	13	2
4397	77	3
4397	55	1
4397	98	1
4397	80	1
4398	55	2
4398	79	2
4398	31	3
4398	56	3
4399	70	2
4399	67	3
4399	36	1
4400	64	1
4400	19	2
4400	8	2
4400	21	3
4401	24	2
4401	42	2
4401	44	2
4401	18	3
4402	15	3
4402	65	2
4402	74	3
4402	55	2
4403	29	2
4403	16	2
4403	73	1
4404	100	1
4404	99	2
4404	80	1
4405	57	2
4405	86	1
4406	49	1
4406	85	1
4406	34	2
4407	39	2
4407	6	3
4408	84	2
4408	6	1
4409	96	1
4409	57	2
4410	23	2
4410	38	2
4411	66	1
4412	10	2
4413	2	1
4413	36	3
4413	22	1
4414	42	2
4414	77	3
4414	66	1
4415	48	1
4416	2	1
4416	13	1
4416	89	3
4416	20	3
4417	34	3
4417	56	3
4417	89	2
4418	18	3
4418	7	3
4418	8	3
4419	80	3
4419	37	2
4420	6	3
4420	20	1
4420	2	1
4420	60	3
4421	92	2
4421	21	1
4422	18	2
4422	89	2
4423	46	2
4424	60	1
4425	14	3
4425	57	3
4425	37	2
4425	71	3
4426	81	2
4426	97	3
4426	33	1
4427	100	1
4428	85	3
4428	53	1
4428	61	1
4428	69	2
4429	5	1
4429	94	3
4429	2	2
4430	43	3
4430	73	2
4430	47	1
4431	38	2
4431	50	3
4431	5	2
4431	83	3
4432	15	1
4432	20	3
4433	68	3
4433	38	2
4434	68	2
4434	57	1
4434	30	1
4434	64	1
4435	76	1
4435	28	3
4435	54	2
4435	61	3
4436	67	3
4437	5	3
4437	1	1
4437	74	2
4438	57	3
4438	48	2
4438	42	1
4439	46	3
4440	43	3
4440	89	1
4441	70	2
4441	3	1
4442	15	1
4442	30	3
4442	97	2
4443	27	3
4443	21	3
4443	22	2
4443	67	1
4444	20	1
4444	54	3
4444	49	3
4444	25	3
4445	37	1
4445	4	1
4445	42	3
4446	44	2
4446	38	3
4447	83	1
4447	24	2
4448	8	1
4449	42	1
4449	17	1
4450	15	3
4451	56	1
4451	44	2
4452	1	1
4453	99	2
4453	3	1
4453	40	1
4454	62	1
4454	4	3
4454	19	1
4455	75	3
4455	33	2
4455	96	2
4456	86	3
4456	21	2
4457	95	3
4457	66	2
4457	72	3
4457	25	2
4458	33	1
4458	81	2
4458	15	3
4459	40	3
4459	34	1
4459	32	3
4460	79	3
4461	27	2
4461	55	2
4461	46	1
4461	6	3
4462	24	1
4463	6	2
4463	86	1
4464	67	2
4464	95	3
4464	9	2
4465	47	2
4465	97	1
4465	36	3
4466	2	1
4466	67	1
4466	26	2
4467	20	3
4468	18	1
4469	20	3
4469	26	1
4470	7	1
4471	16	3
4472	13	2
4472	22	1
4473	38	3
4473	66	1
4473	37	1
4473	39	3
4474	62	2
4474	97	1
4474	78	3
4474	13	3
4475	17	3
4476	30	1
4476	10	1
4476	97	1
4476	7	2
4477	56	2
4477	24	3
4478	86	3
4478	25	2
4479	48	2
4479	26	1
4479	33	3
4480	51	2
4480	47	2
4481	60	1
4481	6	2
4481	67	1
4481	16	1
4482	96	1
4483	39	1
4484	57	1
4484	91	1
4484	62	2
4484	12	3
4485	5	3
4485	8	3
4485	91	3
4486	22	2
4486	4	3
4486	20	1
4487	45	2
4487	46	1
4487	34	2
4487	29	3
4488	81	3
4489	66	1
4489	72	2
4489	27	3
4490	89	3
4491	87	2
4491	30	1
4491	64	1
4492	73	3
4492	18	1
4493	95	2
4493	72	2
4493	19	1
4494	21	3
4495	30	3
4495	39	1
4496	93	1
4496	47	3
4496	6	1
4497	16	1
4497	11	1
4497	77	2
4497	89	3
4498	53	1
4498	64	2
4499	71	2
4500	90	2
4501	98	3
4501	31	2
4501	64	2
4502	79	3
4502	38	1
4502	37	3
4503	60	1
4503	16	2
4503	15	1
4504	42	1
4504	8	3
4504	30	3
4505	86	1
4505	32	2
4505	26	2
4505	28	1
4506	90	3
4506	26	2
4507	89	1
4507	78	1
4507	25	3
4508	73	1
4508	40	3
4508	51	3
4509	49	3
4510	79	3
4511	35	2
4512	11	1
4512	78	1
4512	96	1
4513	52	1
4514	19	3
4515	56	1
4515	55	1
4515	63	2
4516	7	1
4516	24	3
4517	61	1
4517	5	2
4517	45	2
4518	8	1
4519	83	2
4519	69	3
4519	34	2
4519	60	2
4520	64	3
4520	5	3
4520	87	1
4520	13	3
4521	67	2
4521	13	3
4522	30	1
4522	1	1
4522	36	3
4523	12	1
4523	66	2
4524	98	2
4525	9	1
4525	92	3
4526	65	3
4527	61	1
4527	55	1
4528	28	3
4528	38	3
4528	25	2
4528	60	2
4529	78	2
4530	63	2
4530	56	1
4530	32	2
4531	50	1
4531	72	2
4531	98	1
4532	98	1
4532	41	3
4532	4	2
4533	8	2
4533	43	2
4533	16	1
4534	28	1
4534	50	3
4534	94	3
4535	42	2
4536	77	2
4537	43	3
4538	6	3
4538	49	2
4538	83	2
4539	22	3
4539	9	1
4540	56	3
4541	87	3
4541	17	1
4541	72	3
4541	78	2
4542	5	3
4543	64	1
4543	57	1
4544	29	3
4544	75	2
4545	84	3
4545	83	3
4546	8	2
4546	48	3
4546	52	3
4547	12	2
4547	20	3
4547	80	1
4548	85	2
4548	64	3
4549	67	2
4549	3	3
4549	25	2
4550	18	2
4550	22	1
4551	2	3
4551	95	1
4551	4	1
4552	19	1
4553	49	2
4553	62	1
4553	48	1
4554	73	3
4554	96	3
4554	10	2
4554	27	1
4555	84	3
4555	100	2
4555	49	3
4555	10	3
4556	96	2
4556	59	2
4556	6	1
4556	97	2
4557	22	1
4557	45	1
4557	13	1
4558	87	3
4558	16	2
4558	89	1
4558	95	2
4559	2	1
4560	77	1
4560	65	1
4560	90	1
4561	64	2
4561	16	2
4561	86	2
4562	100	2
4562	45	1
4563	23	3
4564	82	2
4564	61	2
4564	42	3
4564	68	3
4565	41	1
4566	81	1
4566	88	1
4566	99	2
4567	16	1
4567	73	3
4568	64	2
4569	88	3
4569	24	2
4570	4	1
4570	36	1
4571	28	1
4571	21	3
4571	8	1
4572	37	3
4572	97	1
4572	62	2
4572	76	2
4573	58	3
4573	69	1
4573	98	1
4573	93	2
4574	68	1
4574	8	2
4574	64	2
4574	5	3
4575	36	1
4575	74	2
4575	99	3
4576	18	1
4577	38	2
4577	73	3
4577	17	3
4577	37	1
4578	6	1
4578	78	2
4578	60	1
4579	27	3
4579	76	2
4580	19	1
4581	9	2
4582	53	2
4582	81	3
4582	98	1
4583	71	1
4583	56	3
4583	46	3
4583	76	2
4584	75	1
4585	34	1
4585	92	2
4585	40	2
4586	9	2
4586	74	3
4586	16	1
4587	39	2
4587	84	2
4587	37	1
4587	61	3
4588	16	3
4588	33	3
4588	27	1
4588	25	3
4589	46	1
4589	37	1
4589	13	1
4590	5	2
4590	9	3
4590	48	2
4590	40	2
4591	79	3
4591	32	1
4591	7	3
4591	3	1
4592	80	3
4592	41	2
4592	3	1
4592	81	3
4593	26	3
4594	86	1
4594	64	1
4594	12	2
4594	2	1
4595	27	2
4595	45	2
4596	34	1
4596	97	1
4596	37	1
4597	84	3
4597	70	2
4597	63	1
4598	62	3
4598	42	2
4598	4	2
4598	64	3
4599	11	2
4599	51	1
4600	43	2
4600	61	1
4600	30	2
4600	62	1
4601	4	2
4602	57	1
4602	99	3
4603	74	3
4603	87	3
4604	56	3
4604	97	3
4605	11	3
4605	56	1
4606	64	3
4607	31	2
4607	92	2
4607	99	3
4607	20	3
4608	34	3
4608	86	3
4609	75	1
4610	26	3
4611	23	3
4612	96	2
4612	37	1
4612	20	3
4613	32	1
4613	19	3
4614	56	2
4614	92	3
4614	31	3
4614	38	3
4615	20	1
4615	80	3
4616	62	1
4616	87	3
4617	82	3
4618	58	2
4618	5	3
4619	52	3
4619	41	3
4620	38	3
4620	70	2
4620	29	3
4620	48	2
4621	77	3
4622	42	2
4622	78	3
4623	46	1
4624	77	3
4624	37	2
4624	42	1
4624	65	1
4625	21	1
4626	7	2
4627	31	2
4627	4	1
4627	7	2
4627	34	2
4628	4	2
4628	78	3
4628	34	3
4628	14	3
4629	76	1
4630	34	1
4630	19	2
4630	33	1
4631	41	3
4632	56	1
4633	79	3
4633	75	2
4633	1	3
4633	31	1
4634	57	2
4634	39	3
4634	72	3
4635	13	1
4635	45	3
4635	31	3
4635	83	2
4636	44	3
4636	92	2
4636	37	1
4636	21	3
4637	23	3
4637	21	3
4638	89	3
4639	71	3
4639	53	1
4640	35	2
4640	33	3
4641	31	1
4642	25	2
4643	77	3
4643	55	1
4643	84	1
4644	72	1
4644	34	3
4644	23	1
4645	15	2
4645	72	3
4646	66	2
4646	39	1
4646	20	3
4647	75	1
4647	46	2
4647	45	1
4648	57	1
4648	19	3
4649	53	2
4649	62	3
4649	71	1
4649	57	1
4650	24	3
4650	59	1
4650	97	2
4651	45	2
4652	74	2
4653	47	2
4653	5	1
4654	52	2
4654	90	2
4654	61	2
4655	73	2
4655	16	3
4655	84	1
4656	96	1
4657	87	2
4657	76	3
4657	44	3
4657	69	3
4658	41	2
4658	23	2
4658	53	2
4659	85	3
4659	79	2
4659	22	2
4660	70	1
4660	55	2
4660	97	3
4660	49	3
4661	64	2
4661	87	2
4661	59	3
4661	42	2
4662	28	1
4662	26	2
4662	97	3
4663	89	3
4663	68	1
4664	58	1
4665	100	1
4665	66	2
4665	35	1
4665	24	2
4666	46	1
4666	98	2
4666	36	1
4667	93	2
4667	86	1
4667	49	1
4668	93	1
4668	57	2
4669	81	3
4669	58	1
4670	41	1
4670	20	1
4671	45	3
4671	7	3
4672	32	2
4672	20	3
4673	75	2
4673	65	2
4673	4	1
4674	63	3
4675	54	2
4676	66	2
4676	12	1
4676	83	3
4677	36	1
4677	35	3
4678	100	2
4678	83	2
4679	19	3
4679	55	1
4680	61	2
4680	73	2
4681	68	3
4681	95	2
4682	47	3
4682	53	3
4682	37	1
4683	1	2
4683	97	3
4683	10	1
4683	32	2
4684	41	1
4684	67	3
4685	46	2
4686	73	1
4686	51	2
4686	50	3
4686	24	3
4687	95	3
4687	82	3
4687	73	1
4687	96	1
4688	79	2
4688	93	1
4689	45	3
4690	2	3
4690	33	3
4691	26	3
4692	85	2
4692	50	1
4692	72	3
4692	7	1
4693	23	2
4693	70	1
4693	10	2
4694	94	2
4694	20	2
4694	4	3
4694	61	1
4695	28	3
4696	7	3
4697	81	3
4697	42	1
4697	4	1
4697	80	2
4698	15	1
4698	38	2
4699	22	3
4699	26	1
4699	83	3
4699	7	2
4700	99	2
4700	57	3
4701	18	3
4701	55	2
4702	57	3
4702	96	2
4703	53	2
4704	80	3
4704	84	2
4705	67	2
4705	90	3
4706	36	2
4706	57	1
4706	33	2
4706	9	1
4707	56	1
4707	12	3
4708	81	1
4708	58	1
4708	85	1
4708	54	1
4709	58	2
4710	77	3
4711	45	3
4712	93	3
4712	28	1
4712	10	3
4713	31	3
4713	46	3
4713	45	2
4714	43	1
4714	56	3
4714	12	2
4714	30	1
4715	14	2
4716	92	2
4716	6	2
4717	31	3
4717	100	1
4717	98	1
4717	6	1
4718	75	2
4718	10	1
4718	74	2
4718	23	1
4719	43	1
4719	45	1
4719	11	1
4719	39	3
4720	45	2
4721	88	3
4721	1	2
4722	92	3
4722	13	2
4723	23	3
4724	76	3
4724	31	2
4724	70	3
4724	18	3
4725	18	1
4725	68	2
4725	75	2
4725	56	2
4726	50	3
4727	20	2
4727	43	3
4727	95	3
4727	51	2
4728	41	2
4728	34	2
4728	71	2
4728	29	2
4729	81	1
4730	99	3
4730	5	3
4730	69	3
4731	64	3
4732	97	1
4732	6	3
4733	71	3
4733	60	2
4733	6	1
4733	51	3
4734	26	2
4734	90	1
4734	67	3
4734	75	1
4735	24	1
4735	27	1
4735	55	2
4735	57	2
4736	95	1
4736	97	1
4737	81	2
4738	50	1
4738	98	2
4739	2	1
4740	19	1
4740	98	2
4740	68	2
4740	48	1
4741	93	2
4741	13	2
4741	63	1
4742	35	1
4742	27	3
4742	33	3
4743	37	2
4743	2	2
4743	42	3
4744	52	3
4744	80	1
4744	1	2
4745	75	2
4745	39	1
4746	71	3
4746	57	1
4746	26	1
4747	48	1
4747	85	2
4747	47	3
4747	62	2
4748	16	2
4748	43	3
4748	81	1
4748	7	1
4749	5	2
4749	88	3
4749	38	1
4750	88	1
4750	95	2
4751	79	3
4751	55	3
4751	7	1
4751	56	3
4752	28	3
4753	3	1
4754	76	2
4755	83	3
4755	52	3
4756	88	2
4756	18	2
4756	24	1
4756	99	2
4757	86	3
4757	27	1
4758	70	1
4758	60	3
4758	99	1
4758	11	1
4759	38	3
4759	84	3
4759	41	1
4760	62	1
4760	96	1
4760	76	2
4761	99	1
4761	83	1
4761	35	1
4761	52	2
4762	75	3
4762	7	2
4762	100	3
4763	42	1
4763	76	2
4764	56	1
4764	20	3
4764	37	3
4764	79	3
4765	18	3
4766	43	3
4766	7	3
4767	89	1
4767	66	2
4767	78	2
4768	84	1
4768	69	1
4768	32	3
4769	24	2
4769	60	2
4769	33	3
4770	59	3
4771	79	1
4772	22	3
4773	15	3
4773	51	2
4773	7	3
4774	2	1
4775	36	2
4775	100	1
4775	3	3
4776	17	2
4776	56	1
4777	22	1
4778	74	2
4778	67	2
4778	94	3
4778	11	2
4779	48	2
4779	34	1
4779	36	3
4780	8	1
4780	72	1
4781	32	1
4782	52	1
4782	97	1
4782	31	2
4783	43	1
4783	97	2
4783	94	3
4784	49	3
4784	77	1
4784	88	2
4784	84	3
4785	27	1
4785	20	3
4785	29	3
4786	69	2
4786	22	3
4787	31	1
4787	17	3
4788	95	3
4789	55	2
4789	10	3
4789	49	3
4789	37	3
4790	87	3
4790	66	3
4790	44	3
4791	56	1
4791	25	1
4791	27	3
4791	35	1
4792	51	2
4792	87	2
4793	71	3
4793	43	3
4793	44	3
4794	73	2
4794	99	1
4795	57	2
4795	19	1
4796	62	1
4796	11	1
4797	37	3
4798	86	3
4798	38	1
4799	94	2
4799	38	2
4800	20	3
4800	51	3
4800	74	1
4800	14	3
4801	9	1
4801	35	1
4802	48	1
4802	37	1
4803	70	2
4803	51	3
4803	91	1
4803	29	3
4804	7	2
4804	9	3
4805	17	1
4805	49	3
4805	6	1
4806	66	1
4807	31	1
4807	18	2
4808	30	2
4808	99	1
4808	67	1
4809	93	3
4809	67	3
4809	41	2
4809	1	1
4810	73	1
4810	61	2
4810	71	1
4811	68	2
4812	89	2
4812	14	3
4813	49	2
4813	25	1
4814	55	1
4814	40	2
4814	26	3
4814	75	1
4815	38	1
4815	24	2
4816	15	3
4816	29	1
4816	43	3
4816	56	1
4817	96	3
4817	45	1
4818	44	2
4819	6	3
4819	7	3
4819	80	1
4820	9	2
4821	17	3
4821	33	3
4821	54	3
4822	88	1
4823	59	3
4823	60	3
4823	83	1
4823	10	3
4824	13	2
4824	20	3
4824	54	1
4824	37	3
4825	63	2
4825	80	2
4825	69	3
4825	8	1
4826	35	2
4827	80	1
4827	61	1
4828	65	3
4828	52	2
4829	10	2
4829	92	1
4829	39	3
4830	51	3
4831	2	3
4831	77	2
4832	89	3
4832	18	3
4833	40	2
4833	19	3
4834	40	1
4834	53	2
4835	3	1
4835	58	1
4836	27	2
4836	3	3
4837	47	3
4838	14	3
4838	85	1
4838	52	2
4838	8	3
4839	62	3
4839	54	1
4840	15	2
4841	38	3
4841	63	3
4841	84	1
4842	80	3
4842	31	2
4842	52	3
4843	93	2
4843	48	1
4844	27	2
4844	15	1
4844	79	2
4845	96	1
4845	42	3
4845	34	1
4845	99	2
4846	28	2
4847	92	2
4847	79	2
4847	88	2
4847	27	1
4848	14	2
4848	54	1
4849	24	1
4849	29	2
4849	92	3
4850	26	1
4850	92	3
4850	10	3
4851	48	2
4851	63	1
4852	68	2
4852	27	2
4853	74	1
4853	76	3
4854	46	1
4854	8	2
4854	1	3
4855	36	2
4855	41	3
4855	33	2
4855	94	3
4856	65	3
4857	91	1
4857	55	2
4858	48	2
4858	97	1
4859	8	3
4859	5	3
4859	32	1
4860	69	2
4860	95	1
4860	74	3
4861	82	1
4861	42	3
4862	90	3
4862	21	1
4863	78	1
4863	23	2
4863	87	1
4864	80	1
4864	29	2
4864	66	3
4865	24	1
4865	84	3
4865	70	2
4866	37	2
4866	72	1
4866	95	1
4867	12	1
4867	96	3
4867	72	2
4867	29	3
4868	84	3
4868	69	1
4868	85	1
4869	4	1
4869	65	2
4870	29	3
4870	97	3
4871	68	3
4872	73	3
4872	17	1
4873	31	2
4873	38	2
4874	52	1
4874	81	3
4874	19	1
4875	31	1
4875	11	2
4876	72	2
4876	83	1
4876	68	1
4877	56	3
4877	92	1
4878	48	2
4878	87	2
4878	74	1
4879	17	2
4879	66	2
4879	22	2
4879	26	3
4880	85	1
4880	79	3
4880	12	3
4881	12	1
4881	63	1
4881	3	1
4882	85	1
4882	93	3
4883	3	2
4883	84	1
4884	23	1
4884	39	1
4885	74	1
4885	19	1
4885	22	3
4886	62	1
4887	26	2
4888	99	1
4888	35	1
4888	67	3
4888	68	3
4889	3	3
4889	21	1
4889	6	2
4890	75	1
4890	63	1
4890	32	3
4891	66	2
4891	3	3
4892	85	2
4892	78	2
4893	89	1
4893	85	2
4894	87	3
4894	70	3
4894	47	1
4895	26	3
4895	70	2
4895	2	3
4896	93	3
4896	23	3
4896	90	1
4897	64	1
4898	29	1
4899	24	3
4899	44	2
4899	65	1
4900	82	1
4900	51	1
4900	31	1
4900	94	2
4901	37	2
4901	72	1
4901	52	3
4901	16	1
4902	15	1
4902	32	3
4902	46	3
4902	86	1
4903	50	2
4903	65	2
4903	47	1
4903	11	2
4904	18	1
4904	40	2
4904	94	3
4905	91	2
4905	7	2
4905	89	3
4906	93	2
4906	81	1
4907	10	1
4907	72	2
4907	66	2
4908	90	2
4908	46	1
4909	67	3
4910	64	2
4910	22	2
4911	88	2
4912	16	1
4913	91	1
4914	72	2
4914	29	3
4915	12	3
4915	46	2
4916	17	2
4917	72	1
4917	21	3
4917	100	3
4918	24	3
4918	62	1
4918	75	3
4918	80	1
4919	21	1
4920	12	3
4920	54	1
4920	59	1
4920	96	2
4921	72	1
4921	40	3
4921	32	2
4922	17	2
4922	38	1
4923	100	2
4923	30	1
4923	34	1
4924	11	3
4925	20	2
4925	21	3
4926	98	2
4926	99	1
4927	34	1
4927	64	3
4928	15	2
4929	57	2
4929	60	3
4930	65	3
4930	57	2
4930	54	1
4930	48	3
4931	42	2
4931	22	3
4932	89	3
4932	21	1
4932	17	1
4932	1	2
4933	55	3
4933	90	2
4933	88	3
4934	54	3
4934	35	1
4935	89	2
4935	14	2
4935	74	1
4936	36	1
4936	97	1
4936	47	3
4937	66	1
4937	95	3
4937	93	2
4937	98	1
4938	34	3
4939	96	2
4939	18	1
4939	20	1
4939	82	1
4940	83	2
4940	63	1
4940	20	2
4940	82	1
4941	63	3
4941	65	3
4941	30	2
4941	7	1
4942	14	3
4943	79	2
4943	81	2
4943	51	3
4944	77	2
4944	49	3
4944	42	3
4944	86	1
4945	32	3
4946	64	3
4946	18	3
4947	6	1
4947	40	2
4948	26	3
4948	14	1
4949	35	3
4949	42	2
4949	78	1
4950	25	1
4950	99	1
4951	54	2
4952	75	2
4953	19	1
4954	82	1
4955	94	1
4956	36	2
4957	3	1
4958	24	2
4958	62	2
4958	15	3
4958	61	1
4959	8	2
4959	70	2
4960	56	3
4960	28	3
4960	57	2
4960	43	2
4961	29	2
4961	50	3
4962	71	2
4962	23	1
4963	67	1
4963	77	1
4963	42	3
4963	93	2
4964	15	1
4964	12	2
4964	36	1
4965	41	1
4966	91	2
4966	27	2
4967	44	1
4967	39	2
4968	5	1
4968	8	1
4969	90	3
4969	73	2
4969	81	3
4969	95	2
4970	71	1
4970	30	3
4971	80	1
4971	51	1
4971	57	2
4971	86	2
4972	98	1
4972	59	3
4973	73	3
4973	60	1
4973	90	2
4974	78	1
4974	30	3
4975	21	3
4975	38	1
4976	31	3
4976	46	2
4976	85	3
4976	65	3
4977	71	3
4977	100	1
4978	5	3
4979	69	2
4979	10	2
4979	71	3
4980	3	3
4980	88	3
4980	26	3
4980	44	3
4981	41	3
4981	50	3
4981	1	1
4981	21	2
4982	99	1
4982	41	2
4982	100	1
4982	49	1
4983	52	3
4984	49	1
4984	14	1
4984	25	1
4984	64	2
4985	71	2
4985	48	1
4985	62	1
4985	51	3
4986	18	1
4986	74	3
4987	82	2
4987	71	1
4987	46	2
4987	4	2
4988	35	1
4988	33	2
4988	74	1
4989	97	3
4989	20	3
4989	59	3
4990	3	2
4990	76	3
4990	47	3
4990	55	2
4991	1	3
4991	70	2
4991	9	2
4992	13	2
4992	47	2
4992	87	1
4993	66	3
4993	88	2
4993	62	3
4994	39	2
4994	38	1
4994	93	2
4994	68	1
4995	30	1
4995	19	2
4996	50	3
4996	54	3
4996	77	2
4997	51	1
4997	73	1
4998	49	3
4999	72	3
4999	45	1
4999	62	2
5000	5	3
5000	3	2
\.


--
-- TOC entry 4912 (class 0 OID 16414)
-- Dependencies: 220
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (orderid, customerid, orderdate, totalamount) FROM stdin;
1	219	2026-03-02 13:41:37	289.86
2	681	2025-05-07 10:27:13	510.62
3	208	2025-09-29 18:30:22	174.51
4	362	2025-11-21 01:06:25	803.53
5	479	2025-06-03 06:58:58	397.88
6	246	2025-05-19 13:23:02	587.26
7	442	2025-08-23 13:12:11	355.91
8	615	2025-10-26 03:34:37	619.12
9	772	2025-09-24 16:13:46	83.79
10	669	2025-07-19 17:42:28	740.03
11	301	2025-08-10 21:27:51	340.36
12	557	2025-05-17 22:50:38	673.30
13	823	2026-04-19 15:59:50	157.44
14	799	2025-12-29 02:19:40	268.26
15	547	2025-10-19 06:29:33	567.32
16	768	2025-10-17 11:25:24	446.19
17	707	2025-11-04 16:08:26	878.95
18	483	2026-01-25 12:27:57	583.58
19	486	2025-09-11 05:42:18	1032.14
20	585	2025-06-21 00:48:05	1424.04
21	491	2026-04-18 15:12:58	1126.63
22	482	2026-03-23 06:56:45	45.16
23	787	2025-12-22 01:40:36	116.07
24	994	2025-08-23 23:18:38	296.15
25	155	2025-12-22 10:15:55	284.40
26	124	2025-12-10 09:16:45	1124.10
27	452	2025-06-23 04:54:16	527.62
28	859	2025-09-23 05:59:54	1020.87
29	815	2025-11-23 01:10:00	574.83
30	100	2026-03-08 11:40:19	729.08
31	526	2025-12-23 01:35:23	546.82
32	848	2025-11-14 15:24:39	525.99
33	751	2025-10-14 15:13:45	501.83
34	239	2025-09-26 02:56:59	240.15
35	354	2025-05-05 04:01:07	1021.49
36	108	2025-05-09 08:49:02	805.71
37	998	2025-12-14 13:06:19	580.58
38	340	2026-04-07 05:36:28	130.82
39	997	2025-07-29 02:19:01	340.35
40	708	2025-06-09 17:10:26	334.04
41	282	2026-03-30 08:20:43	214.65
42	565	2025-06-10 04:54:19	395.67
43	490	2025-11-26 14:34:43	439.10
44	464	2026-04-11 01:15:00	104.12
45	531	2025-11-09 04:53:17	604.60
46	54	2025-05-05 11:35:58	344.06
47	784	2025-09-25 04:46:35	427.41
48	811	2025-09-08 00:59:47	685.54
49	97	2026-02-18 15:54:51	565.07
50	27	2026-04-19 14:49:18	510.08
51	573	2026-04-16 08:01:49	1050.02
52	164	2025-09-11 01:32:47	144.52
53	279	2025-07-31 06:05:13	741.12
54	49	2026-01-30 15:05:59	400.83
55	784	2025-10-14 04:21:59	399.15
56	946	2026-03-31 14:21:33	569.70
57	529	2025-07-04 18:18:35	1019.46
58	691	2025-06-14 23:23:09	1656.38
59	866	2025-07-09 04:59:45	1219.57
60	415	2025-04-20 21:11:53	771.25
61	258	2026-01-29 20:26:05	385.46
62	328	2025-09-12 15:44:13	1208.16
63	992	2025-04-24 12:45:01	364.54
64	164	2026-02-21 05:15:50	319.94
65	255	2025-06-23 13:16:31	351.05
66	753	2025-09-28 19:41:19	449.28
67	145	2025-05-04 02:50:21	411.75
68	625	2025-09-06 05:33:28	582.90
69	381	2025-10-13 22:11:18	176.37
70	615	2026-02-08 19:02:31	580.50
71	49	2026-04-05 02:50:44	423.56
72	71	2025-11-18 00:47:25	236.19
73	363	2026-04-10 13:30:07	614.89
74	373	2025-08-17 16:06:42	884.79
75	904	2026-04-07 09:06:49	526.01
76	396	2025-11-26 06:02:57	407.70
77	662	2025-08-31 06:57:41	1022.78
78	968	2026-03-22 05:01:11	458.04
79	521	2026-03-28 04:58:17	513.16
80	260	2025-06-27 13:11:52	186.06
81	919	2025-09-07 19:04:14	810.85
82	357	2026-02-11 13:22:17	209.14
83	29	2025-06-17 15:21:56	493.57
84	844	2025-09-13 08:17:04	1317.52
85	69	2026-01-10 15:35:31	274.20
86	483	2025-08-14 19:14:48	732.75
87	429	2026-04-05 04:12:47	876.67
88	441	2025-10-16 03:37:44	503.92
89	328	2025-08-10 09:07:33	790.69
90	714	2025-06-16 21:02:36	224.64
91	535	2025-07-25 07:36:32	714.56
92	829	2025-11-03 17:48:05	231.96
93	148	2026-02-11 01:07:14	706.17
94	78	2025-10-15 12:46:08	581.98
95	570	2025-09-23 03:29:15	1040.34
96	650	2026-03-15 01:47:39	341.54
97	424	2025-06-02 18:47:38	497.06
98	958	2025-12-03 11:53:30	192.51
99	598	2025-12-28 22:35:38	869.57
100	837	2025-05-21 03:37:26	451.20
101	603	2025-07-26 15:47:31	672.52
102	301	2025-10-21 04:37:29	92.69
103	746	2025-11-06 05:51:13	709.91
104	833	2025-11-01 22:59:42	762.78
105	844	2025-12-01 10:48:54	758.92
106	106	2025-10-02 03:11:11	929.00
107	698	2026-01-29 14:24:09	246.78
108	833	2025-09-20 14:02:35	296.66
109	927	2026-03-14 21:07:34	877.42
110	423	2025-07-15 18:23:09	459.33
111	774	2025-06-05 12:02:51	685.81
112	736	2026-04-02 23:20:40	931.13
113	699	2025-06-01 09:01:48	861.32
114	882	2025-12-28 00:05:06	938.23
115	516	2026-03-12 10:07:53	730.95
116	174	2025-06-08 17:49:07	730.62
117	556	2025-06-02 18:22:03	955.43
118	276	2025-08-09 13:12:35	792.00
119	931	2025-10-21 01:24:12	83.79
120	293	2025-08-15 14:05:38	181.62
121	378	2026-04-08 22:03:22	349.53
122	548	2025-06-24 13:34:54	692.10
123	547	2025-04-29 21:06:30	126.42
124	802	2025-09-16 06:42:30	573.41
125	411	2025-11-09 14:33:49	438.12
126	91	2025-10-09 00:47:32	473.03
127	727	2025-05-21 14:54:14	887.58
128	955	2026-02-12 11:03:55	632.67
129	992	2025-12-04 17:15:19	613.13
130	188	2026-02-01 16:40:34	889.93
131	716	2025-11-28 00:14:35	1119.56
132	559	2025-09-04 03:25:22	1048.45
133	542	2025-07-29 13:58:16	167.58
134	48	2026-03-02 06:46:10	198.77
135	942	2025-06-12 05:05:11	291.60
136	199	2025-10-15 18:07:22	204.46
137	695	2025-09-23 22:54:57	857.79
138	378	2025-09-03 07:09:27	1186.50
139	914	2026-01-29 13:21:02	443.07
140	209	2025-08-17 23:21:16	274.50
141	592	2025-12-20 03:24:22	97.20
142	664	2025-11-12 04:04:55	600.76
143	534	2025-12-30 13:03:33	1197.44
144	666	2026-01-15 16:40:27	410.92
145	651	2025-05-26 10:09:13	298.26
146	117	2026-03-15 19:56:48	654.17
147	202	2025-10-17 10:10:51	1087.65
148	648	2025-11-21 18:43:36	576.60
149	443	2025-12-24 15:28:02	52.06
150	594	2025-07-28 10:23:22	1275.90
151	887	2025-06-11 00:19:02	650.60
152	915	2025-05-01 20:39:14	938.23
153	175	2025-07-06 16:07:06	457.65
154	736	2026-04-19 03:10:15	580.50
155	778	2025-08-25 18:52:52	596.82
156	970	2025-11-04 19:11:40	110.08
157	786	2025-11-21 12:10:33	884.40
158	348	2025-09-03 21:54:02	596.82
159	157	2026-03-09 14:50:12	282.29
160	478	2026-01-01 05:13:17	812.49
161	71	2026-01-02 13:02:43	137.10
162	997	2025-06-13 05:58:37	571.08
163	902	2025-10-24 08:33:55	570.33
164	821	2026-02-12 16:12:29	225.83
165	455	2025-05-13 04:01:19	745.14
166	567	2026-04-16 18:53:56	787.73
167	879	2026-01-29 17:45:26	453.67
168	390	2025-10-20 14:28:57	463.55
169	258	2025-06-08 07:29:26	434.08
170	156	2025-12-26 04:15:54	524.18
171	87	2026-01-09 10:31:47	292.08
172	441	2025-05-07 20:42:45	523.53
173	318	2025-11-06 02:07:34	751.68
174	963	2025-05-13 16:50:47	71.55
175	910	2025-05-10 08:48:12	142.47
176	809	2026-03-13 03:36:25	121.08
177	655	2025-07-18 19:47:55	949.55
178	321	2026-04-16 19:58:47	667.03
179	73	2026-03-02 16:22:06	663.80
180	924	2025-08-31 21:23:13	280.26
181	17	2025-06-19 01:06:03	300.80
182	534	2025-06-03 21:54:40	175.28
183	767	2025-11-26 18:29:02	1119.61
184	733	2025-12-03 16:46:47	787.05
185	959	2025-11-04 19:44:09	467.25
186	591	2025-10-23 07:56:17	905.61
187	243	2025-10-29 03:35:24	215.59
188	778	2026-01-30 11:30:55	991.54
189	8	2025-12-14 20:07:29	642.30
190	560	2026-03-01 06:12:37	773.64
191	338	2025-05-27 06:06:15	97.12
192	192	2025-06-14 18:24:49	833.13
193	401	2025-10-26 20:10:59	1271.78
194	1	2026-04-05 22:22:27	731.56
195	935	2026-03-04 15:57:31	1067.76
196	319	2025-08-18 22:32:38	449.50
197	333	2025-08-03 23:36:49	940.62
198	934	2025-09-08 04:32:09	293.76
199	132	2025-09-01 10:15:24	431.09
200	926	2025-11-01 20:36:28	558.94
201	125	2025-04-29 13:43:43	362.41
202	972	2025-11-18 10:33:12	198.34
203	371	2025-07-05 22:41:41	754.31
204	864	2025-06-21 08:18:50	443.21
205	340	2026-01-18 11:12:59	126.92
206	928	2025-08-29 21:49:58	558.13
207	969	2026-03-10 11:25:28	612.86
208	489	2025-09-30 08:03:27	72.26
209	616	2026-03-18 23:42:15	709.74
210	86	2025-05-14 04:24:05	331.32
211	602	2025-06-19 14:28:16	233.94
212	237	2025-07-24 04:11:10	680.81
213	847	2025-08-20 03:02:34	661.70
214	579	2026-02-16 02:17:21	689.85
215	483	2025-04-27 22:32:33	142.11
216	288	2026-03-13 20:07:42	278.07
217	62	2026-01-10 23:30:21	1007.28
218	615	2025-07-23 16:19:28	71.55
219	278	2026-01-29 06:20:58	582.81
220	85	2025-11-10 05:15:39	351.96
221	529	2026-03-15 04:53:26	571.92
222	409	2025-04-29 16:21:40	664.43
223	826	2025-08-14 23:07:58	1063.24
224	681	2025-11-18 17:02:23	697.03
225	657	2025-10-19 22:51:16	379.11
226	308	2026-02-26 15:12:24	501.20
227	93	2025-07-20 10:39:39	261.64
228	649	2025-06-09 19:58:11	160.41
229	666	2026-02-08 11:51:53	753.18
230	714	2025-10-06 10:30:02	211.12
231	35	2025-11-11 15:57:14	428.40
232	825	2026-02-23 04:06:26	659.63
233	224	2026-02-06 14:31:42	474.87
234	634	2025-05-05 10:01:49	274.76
235	842	2025-05-31 16:22:47	300.80
236	998	2025-06-30 09:55:48	531.53
237	876	2025-05-02 01:27:20	47.37
238	610	2026-01-02 03:42:52	436.12
239	348	2026-03-09 12:39:31	141.64
240	333	2025-06-29 17:48:52	153.00
241	421	2025-08-29 16:14:29	992.97
242	783	2025-07-31 01:15:21	72.26
243	146	2025-07-31 02:29:53	82.26
244	526	2025-06-04 18:30:34	576.93
245	343	2026-02-08 07:19:09	1115.21
246	826	2025-08-03 23:06:40	370.71
247	463	2025-07-03 01:51:54	799.35
248	765	2025-10-26 22:49:36	192.06
249	788	2025-05-10 16:13:08	106.44
250	160	2025-05-31 05:38:34	278.20
251	701	2026-02-18 21:50:14	53.22
252	560	2025-08-25 15:53:57	862.35
253	143	2025-09-28 05:10:22	210.28
254	876	2025-07-16 00:49:59	1041.14
255	356	2025-10-14 18:20:11	135.90
256	262	2026-01-05 14:34:38	216.78
257	438	2026-02-17 11:21:32	664.62
258	925	2026-01-01 14:09:05	273.46
259	865	2025-07-10 03:10:18	691.39
260	704	2025-06-18 09:08:48	361.58
261	663	2026-01-05 13:26:00	174.51
262	623	2025-10-11 23:30:14	413.40
263	339	2025-10-28 08:16:53	611.56
264	211	2026-01-22 23:04:19	835.96
265	102	2025-10-29 07:36:55	138.20
266	812	2025-07-11 00:24:38	864.21
267	995	2026-02-27 10:53:44	957.73
268	380	2025-08-10 21:02:28	1193.69
269	665	2026-01-15 09:52:31	754.80
270	345	2025-04-30 11:21:12	516.52
271	315	2025-11-01 17:33:38	54.00
272	720	2025-09-04 13:52:05	100.70
273	165	2026-01-08 11:31:08	509.46
274	436	2026-03-06 19:55:17	1055.12
275	945	2025-08-30 09:53:35	431.47
276	901	2025-12-07 01:11:48	395.46
277	820	2025-10-27 09:46:31	161.86
278	693	2025-07-17 05:08:36	353.94
279	930	2025-06-06 14:40:39	893.51
280	377	2025-08-08 05:41:01	427.41
281	520	2026-02-07 09:55:25	594.10
282	527	2025-10-20 00:41:19	489.39
283	845	2026-01-15 11:14:45	198.77
284	150	2026-03-23 10:37:36	229.49
285	824	2025-08-21 21:32:40	251.37
286	301	2025-11-01 07:06:34	993.75
287	799	2026-01-25 01:07:26	1243.55
288	72	2025-08-25 00:20:35	545.75
289	221	2025-06-05 21:12:46	600.96
290	79	2026-04-07 17:06:52	839.01
291	852	2026-03-03 22:24:53	676.90
292	259	2025-07-01 04:41:41	135.91
293	855	2025-05-10 09:40:04	481.23
294	68	2026-01-20 06:52:10	597.41
295	157	2025-07-30 17:08:57	511.61
296	860	2025-04-23 15:46:14	968.75
297	478	2025-12-19 07:38:21	1287.34
298	802	2026-04-18 13:32:23	395.83
299	894	2026-04-07 11:35:16	286.99
300	741	2026-02-19 19:55:03	634.81
301	808	2025-12-16 09:56:53	197.71
302	292	2025-08-19 03:42:51	170.57
303	91	2026-04-08 12:22:57	866.11
304	746	2026-01-12 00:09:31	505.93
305	963	2026-01-12 07:05:43	675.27
306	951	2026-01-09 02:27:38	966.93
307	907	2025-12-18 19:05:39	484.08
308	749	2026-01-25 08:30:30	1389.30
309	259	2026-03-07 04:55:28	580.50
310	254	2025-11-24 06:34:39	234.11
311	236	2025-05-22 21:51:10	279.62
312	341	2025-05-09 22:55:08	478.70
313	703	2026-02-19 00:50:39	1312.18
314	893	2026-03-12 09:14:31	903.10
315	457	2025-07-18 22:15:49	163.54
316	921	2025-11-23 17:38:37	367.24
317	714	2025-08-29 03:27:06	224.64
318	323	2026-03-03 18:40:42	1035.17
319	720	2025-05-04 12:18:03	911.00
320	250	2025-08-06 01:57:26	844.87
321	751	2025-05-15 05:21:19	594.28
322	246	2025-11-17 05:12:50	48.90
323	289	2026-02-14 18:30:29	680.76
324	486	2026-04-02 21:22:59	798.18
325	226	2026-03-18 09:44:57	826.12
326	246	2026-01-17 05:05:52	173.09
327	459	2026-02-28 23:59:56	157.55
328	610	2026-02-27 12:51:56	165.50
329	699	2025-09-19 12:11:58	22.76
330	366	2026-03-24 05:29:44	53.22
331	636	2026-02-08 01:39:38	652.64
332	655	2026-01-19 07:49:56	287.67
333	92	2025-08-21 06:45:57	711.81
334	248	2026-01-24 02:22:48	106.44
335	58	2025-06-16 04:01:40	697.52
336	165	2025-08-15 18:49:35	694.94
337	724	2025-06-28 09:02:09	934.22
338	547	2025-08-08 12:00:07	860.75
339	671	2025-06-21 17:30:42	189.66
340	772	2025-10-16 08:04:49	143.10
341	364	2025-09-06 14:18:38	1161.94
342	858	2025-12-21 08:56:47	1590.26
343	897	2025-06-05 08:48:22	153.11
344	908	2025-04-24 02:58:17	272.38
345	981	2026-03-06 09:57:30	987.26
346	230	2025-10-19 11:54:16	898.95
347	45	2025-07-22 08:47:29	463.35
348	407	2025-09-06 21:55:02	694.66
349	503	2025-08-22 19:39:46	833.85
350	354	2025-12-09 11:28:22	813.03
351	632	2026-03-26 10:30:47	1109.43
352	765	2026-02-25 00:09:39	860.43
353	326	2026-02-09 03:30:52	596.82
354	148	2026-01-13 12:15:12	463.72
355	507	2026-02-07 10:10:16	605.10
356	336	2025-09-21 10:37:26	639.95
357	528	2025-12-17 19:25:36	90.92
358	821	2026-04-07 12:25:53	691.44
359	75	2025-04-20 10:20:33	99.17
360	133	2025-06-03 14:24:51	341.00
361	23	2026-04-14 00:48:13	27.00
362	731	2025-09-09 22:50:35	586.85
363	222	2025-09-13 15:26:45	1483.20
364	320	2026-03-31 12:18:19	435.07
365	803	2026-04-20 06:02:14	668.67
366	636	2025-10-22 02:34:24	1583.50
367	644	2025-11-24 05:21:34	885.13
368	270	2025-09-08 22:47:11	584.40
369	614	2025-07-01 04:36:31	519.27
370	502	2025-12-03 20:26:15	520.29
371	959	2026-04-05 22:44:35	804.69
372	946	2025-06-20 12:15:42	894.75
373	451	2026-03-25 18:36:29	1128.13
374	608	2026-01-18 17:34:29	545.96
375	821	2026-04-14 07:18:38	100.70
376	990	2026-03-29 17:33:07	186.80
377	258	2026-01-29 15:03:54	319.97
378	604	2025-06-20 13:38:10	877.79
379	787	2025-06-23 03:35:29	142.20
380	511	2026-02-27 03:22:07	858.40
381	935	2025-07-04 07:47:40	253.88
382	118	2025-06-23 09:23:53	464.86
383	298	2026-02-12 04:07:38	461.34
384	921	2026-03-25 21:13:59	156.18
385	575	2025-08-15 11:10:24	200.74
386	122	2025-05-17 03:16:14	340.30
387	273	2025-12-29 14:43:16	730.86
388	839	2025-09-30 11:38:37	148.19
389	279	2025-11-23 18:07:37	1538.93
390	979	2025-10-31 00:26:09	192.51
391	175	2025-12-30 14:07:19	397.54
392	662	2025-08-14 08:31:52	208.04
393	446	2025-11-14 20:34:17	283.72
394	21	2025-11-11 20:17:14	473.52
395	413	2025-11-26 01:59:09	876.04
396	313	2025-06-17 10:54:20	385.26
397	508	2025-12-08 23:37:18	227.99
398	333	2026-01-09 12:28:29	1120.58
399	700	2026-03-12 07:05:41	418.41
400	929	2025-12-09 06:23:30	665.19
401	230	2025-09-28 05:58:44	498.41
402	42	2025-06-11 22:23:59	72.26
403	986	2025-09-30 10:24:36	166.08
404	775	2025-08-01 01:54:38	794.88
405	661	2025-07-27 17:08:59	765.29
406	79	2026-01-25 23:57:03	666.12
407	652	2026-02-06 00:37:18	106.32
408	35	2025-05-31 15:29:26	383.01
409	24	2025-06-26 01:03:30	457.90
410	942	2025-05-14 15:31:57	94.83
411	533	2025-05-14 00:11:25	761.43
412	164	2025-07-15 19:56:02	157.55
413	799	2026-03-19 17:44:59	759.15
414	364	2025-06-23 01:18:02	375.58
415	840	2025-12-20 15:44:11	700.72
416	219	2026-01-07 05:52:52	833.20
417	902	2025-12-08 09:01:00	609.55
418	91	2025-06-15 05:35:15	651.49
419	961	2025-07-11 20:28:45	717.70
420	171	2025-11-01 18:32:48	620.61
421	363	2025-05-18 02:46:11	1068.51
422	851	2026-02-15 12:23:47	484.02
423	773	2025-12-06 17:05:53	228.44
424	781	2025-12-30 03:35:19	772.42
425	359	2026-04-03 18:40:53	671.02
426	885	2025-06-11 18:36:37	538.22
427	133	2025-08-11 00:12:47	1026.53
428	995	2026-03-08 21:36:37	71.36
429	708	2025-12-21 21:05:56	406.14
430	725	2026-02-01 06:30:53	1155.12
431	755	2025-07-17 11:36:32	480.40
432	26	2025-09-20 11:48:25	106.32
433	433	2025-05-28 04:26:39	653.91
434	779	2025-11-05 12:25:05	372.60
435	941	2025-10-02 21:55:53	420.36
436	733	2025-04-26 15:37:50	713.90
437	125	2025-07-01 08:23:50	690.33
438	72	2026-01-09 14:33:10	471.83
439	889	2026-01-16 17:05:13	662.47
440	505	2025-04-21 09:09:00	153.00
441	691	2026-01-06 11:18:49	410.14
442	962	2025-05-26 16:14:25	320.82
443	543	2025-08-22 02:41:46	252.74
444	338	2025-07-03 04:55:27	232.14
445	298	2026-02-12 02:21:17	777.76
446	255	2025-12-15 21:02:15	870.58
447	18	2026-04-10 21:42:27	679.81
448	649	2026-01-18 16:28:52	1041.30
449	560	2025-07-15 16:33:37	137.25
450	73	2025-09-22 13:21:12	383.01
451	89	2025-09-26 04:35:43	573.74
452	120	2025-10-13 18:46:44	366.88
453	541	2025-10-17 14:55:59	352.39
454	884	2025-12-15 01:15:40	332.60
455	683	2025-09-04 18:19:02	679.36
456	316	2025-08-13 19:54:42	549.72
457	957	2025-10-17 03:50:26	1175.28
458	706	2025-05-01 20:31:57	590.82
459	499	2025-09-06 00:14:57	588.18
460	502	2025-11-03 17:05:30	144.52
461	418	2025-09-17 20:13:20	718.02
462	465	2025-07-19 17:49:18	216.78
463	574	2025-06-07 19:50:08	193.50
464	359	2025-07-21 07:33:56	492.99
465	175	2025-11-13 06:37:59	300.96
466	584	2026-03-06 16:02:07	338.69
467	841	2026-04-10 09:44:51	848.40
468	296	2025-11-20 23:15:25	306.69
469	337	2026-03-05 15:41:50	42.14
470	33	2026-01-11 06:47:06	53.22
471	561	2025-11-23 08:32:11	331.00
472	445	2025-11-08 22:08:28	137.25
473	611	2026-03-20 01:37:47	1167.40
474	278	2025-11-25 19:47:52	110.56
475	378	2025-11-13 16:55:21	932.76
476	74	2025-12-16 05:45:32	1207.76
477	467	2026-03-26 14:42:47	966.29
478	231	2026-02-21 01:35:17	496.98
479	360	2026-03-12 00:00:03	1002.23
480	464	2025-08-04 23:17:55	505.81
481	36	2025-04-23 10:42:38	865.07
482	673	2025-10-16 17:05:49	730.94
483	640	2025-11-28 23:55:28	232.20
484	583	2026-02-12 10:53:46	159.66
485	640	2026-01-27 15:15:50	704.08
486	198	2025-05-13 20:00:44	418.41
487	134	2026-03-15 17:44:08	371.17
488	2	2025-06-18 02:22:12	440.32
489	274	2025-04-23 11:14:05	772.97
490	519	2025-07-06 08:21:37	736.65
491	343	2026-04-16 17:17:13	45.46
492	580	2026-01-28 18:57:53	472.21
493	25	2025-12-09 08:04:06	966.55
494	733	2025-08-07 13:46:15	1216.93
495	958	2026-02-17 23:05:47	809.58
496	437	2025-04-21 20:01:58	70.88
497	10	2026-01-14 23:34:37	842.87
498	871	2025-07-30 11:39:21	1536.23
499	627	2025-12-29 09:25:27	210.18
500	47	2025-06-17 05:47:49	967.55
501	837	2026-02-15 04:47:53	823.17
502	133	2026-02-08 05:02:38	343.34
503	581	2025-11-14 04:02:41	871.02
504	619	2025-09-25 18:13:07	826.53
505	774	2025-07-29 19:43:11	548.71
506	904	2025-08-27 09:16:51	361.08
507	1	2025-10-28 21:54:44	71.55
508	696	2025-05-28 15:35:31	1112.71
509	81	2025-06-28 23:14:21	626.33
510	121	2025-12-10 04:59:24	1393.53
511	251	2026-01-20 04:40:50	337.24
512	442	2025-08-08 22:31:17	102.68
513	434	2025-06-16 11:32:10	1349.37
514	860	2026-02-24 07:22:14	157.72
515	621	2025-08-10 09:12:02	283.72
516	122	2025-05-05 18:20:49	687.24
517	100	2025-07-28 23:04:38	1318.86
518	235	2025-11-19 05:33:29	424.35
519	111	2025-08-14 22:04:20	656.85
520	703	2026-01-03 07:16:34	603.69
521	898	2026-02-06 06:12:33	35.68
522	759	2025-09-10 11:16:25	351.45
523	959	2025-11-11 22:50:45	593.40
524	819	2025-05-18 06:08:48	485.74
525	404	2025-07-20 02:17:50	116.07
526	573	2025-10-20 16:55:52	129.06
527	53	2025-05-11 01:01:55	681.00
528	557	2025-10-13 21:06:51	734.91
529	567	2026-03-14 05:40:41	73.35
530	833	2025-05-01 15:17:11	640.80
531	678	2025-11-11 14:18:20	170.77
532	671	2025-06-01 07:12:52	97.20
533	60	2025-07-05 10:45:01	1092.96
534	785	2025-07-31 09:28:59	1130.29
535	206	2026-02-25 09:23:56	133.30
536	203	2025-12-21 18:18:49	349.02
537	567	2025-12-14 04:12:34	509.46
538	583	2026-01-07 12:50:21	1077.04
539	524	2025-09-05 06:05:22	1111.34
540	712	2025-06-01 10:02:07	764.03
541	675	2025-12-07 05:44:27	235.42
542	675	2026-02-05 22:03:26	511.02
543	750	2025-07-13 11:55:31	569.10
544	466	2025-10-19 05:02:11	971.20
545	660	2025-12-09 02:12:52	281.05
546	845	2025-06-13 14:45:30	530.21
547	847	2025-08-30 21:26:05	710.50
548	388	2026-03-01 08:30:22	314.40
549	64	2026-03-23 01:16:09	497.28
550	417	2025-09-26 22:20:41	127.67
551	661	2026-02-08 01:15:10	1104.81
552	366	2026-03-22 10:11:54	731.74
553	532	2026-03-24 01:35:54	674.38
554	322	2025-05-26 17:20:53	461.76
555	595	2025-08-03 07:31:03	868.19
556	275	2025-12-31 17:33:07	485.80
557	883	2025-08-01 05:54:58	603.14
558	789	2026-02-24 01:41:13	394.94
559	436	2025-04-24 03:49:30	438.02
560	824	2025-08-01 06:41:01	240.38
561	305	2025-11-15 17:31:08	283.08
562	740	2025-12-25 11:16:57	914.13
563	880	2025-05-22 09:54:53	979.14
564	910	2025-07-18 09:52:14	55.04
565	704	2026-03-30 02:12:17	612.38
566	351	2026-04-18 17:22:18	423.87
567	233	2025-09-19 23:08:50	104.12
568	409	2025-10-10 14:45:37	144.52
569	855	2026-01-01 13:23:19	274.82
570	299	2025-10-14 19:13:47	104.12
571	305	2025-06-29 18:53:43	353.22
572	395	2025-06-15 01:25:26	219.27
573	9	2026-03-03 19:12:59	202.54
574	620	2026-02-24 16:01:34	608.86
575	248	2025-09-24 22:53:42	174.51
576	4	2026-03-22 12:25:18	478.26
577	274	2025-10-10 01:17:23	1045.95
578	611	2025-06-24 11:28:36	820.57
579	551	2025-10-12 03:29:46	368.56
580	248	2025-10-17 23:36:18	321.30
581	569	2025-12-12 16:59:48	641.37
582	466	2025-12-10 18:09:25	800.98
583	507	2025-07-03 20:33:03	835.58
584	612	2025-10-16 13:52:11	176.37
585	642	2026-01-22 06:16:32	818.98
586	65	2026-04-06 09:16:40	95.32
587	991	2025-05-09 21:57:37	817.15
588	416	2026-01-11 20:28:42	1166.45
589	39	2025-11-10 05:58:25	1113.26
590	896	2025-10-14 05:50:06	770.06
591	176	2025-07-12 09:04:15	814.27
592	516	2025-11-08 05:05:23	543.93
593	590	2026-01-12 08:49:58	368.36
594	467	2025-06-05 08:29:31	509.46
595	732	2026-01-06 16:09:38	604.97
596	252	2025-09-20 07:12:34	569.85
597	974	2025-05-17 18:05:14	546.79
598	624	2025-09-28 11:24:42	192.51
599	632	2025-11-15 15:33:16	855.00
600	159	2025-09-01 09:31:20	561.37
601	13	2025-07-05 22:19:56	504.23
602	778	2025-10-17 20:23:28	1027.75
603	241	2025-06-15 18:53:58	499.94
604	214	2026-03-22 05:21:21	292.71
605	810	2025-10-27 07:54:55	892.38
606	901	2026-01-17 21:49:35	923.80
607	234	2025-07-11 04:39:09	194.92
608	481	2025-09-19 01:01:19	47.37
609	44	2026-01-08 04:25:41	955.68
610	64	2025-04-27 12:37:13	153.11
611	630	2026-04-12 02:56:57	131.02
612	772	2025-06-20 15:27:44	1516.27
613	541	2025-07-02 22:34:07	575.59
614	457	2026-01-03 02:06:49	986.75
615	321	2026-02-07 13:58:56	1171.67
616	966	2026-02-22 00:10:09	904.59
617	106	2025-05-27 03:42:56	305.10
618	167	2025-12-12 01:01:12	739.92
619	959	2025-10-06 04:55:40	250.27
620	2	2026-04-04 04:43:18	562.82
621	890	2025-10-15 14:44:50	1215.98
622	557	2025-10-02 00:53:29	567.16
623	278	2025-08-05 19:10:59	728.64
624	351	2025-10-04 10:28:58	864.89
625	334	2025-07-30 11:48:13	692.34
626	253	2025-08-20 15:51:52	341.44
627	201	2025-11-05 20:07:48	977.36
628	307	2025-11-20 22:44:56	336.49
629	804	2026-02-04 14:12:13	145.68
630	293	2026-02-26 05:48:07	1084.90
631	537	2025-04-25 17:14:43	102.23
632	48	2026-01-19 20:20:44	821.19
633	477	2025-06-27 23:34:48	810.51
634	380	2025-12-14 16:07:02	607.19
635	197	2025-10-23 04:32:31	514.77
636	594	2025-08-16 09:44:50	590.82
637	307	2025-06-05 09:08:28	373.54
638	563	2025-12-01 01:24:24	695.37
639	586	2026-04-06 20:07:17	64.53
640	302	2025-06-25 20:44:55	262.04
641	864	2025-06-01 03:24:41	444.57
642	841	2026-02-19 22:13:57	957.38
643	548	2025-08-06 22:32:31	943.12
644	254	2025-12-27 19:47:07	699.52
645	410	2025-08-24 03:48:21	598.90
646	425	2025-05-07 08:21:14	407.70
647	440	2025-10-06 14:16:46	673.09
648	582	2026-03-06 11:40:47	1068.61
649	407	2025-11-07 16:16:38	672.85
650	586	2025-10-13 20:25:04	613.16
651	916	2025-10-26 19:07:04	1239.68
652	786	2025-05-12 07:05:55	448.88
653	580	2025-09-19 19:17:30	509.46
654	165	2026-01-30 18:07:18	509.46
655	25	2025-11-14 01:07:14	540.10
656	162	2025-12-16 22:16:19	210.90
657	653	2026-01-26 22:05:47	1071.19
658	99	2026-04-11 15:48:20	393.36
659	649	2025-09-16 07:03:08	89.42
660	939	2025-10-27 14:01:15	321.87
661	597	2025-07-20 04:51:13	748.56
662	16	2025-06-23 17:52:26	558.17
663	49	2025-11-16 17:04:10	828.67
664	709	2025-04-23 06:15:28	906.64
665	560	2025-08-21 01:36:04	747.73
666	234	2026-02-21 05:31:34	855.56
667	802	2026-02-11 01:17:08	713.12
668	644	2025-12-08 22:09:55	587.00
669	878	2025-06-27 11:59:55	169.82
670	656	2025-08-05 08:54:18	993.44
671	996	2025-07-08 20:17:54	1349.00
672	279	2025-07-23 22:31:25	352.38
673	451	2026-01-28 08:45:49	863.67
674	943	2025-07-14 01:14:21	334.37
675	559	2025-05-03 22:16:53	142.20
676	82	2025-06-26 20:13:50	149.76
677	562	2026-04-05 00:06:43	375.35
678	591	2026-01-23 19:07:42	1363.01
679	476	2026-02-01 04:25:24	995.19
680	416	2026-02-21 02:43:28	1004.88
681	195	2025-12-27 19:10:18	427.56
682	852	2025-05-30 02:46:40	314.32
683	886	2025-08-02 08:41:47	846.08
684	371	2025-11-10 06:06:36	36.22
685	412	2026-04-18 06:07:48	451.28
686	531	2026-04-17 13:17:28	713.34
687	305	2025-11-23 09:24:00	543.01
688	898	2026-02-26 03:29:03	786.06
689	898	2025-09-11 08:19:06	473.98
690	877	2025-11-09 18:47:37	45.52
691	405	2026-03-21 21:15:46	644.85
692	209	2025-08-15 20:40:55	152.55
693	524	2025-10-19 20:22:03	1279.51
694	307	2025-07-19 23:35:23	581.36
695	895	2025-08-28 12:28:41	509.46
696	502	2025-12-03 03:00:19	318.96
697	945	2025-12-12 00:27:06	287.18
698	903	2025-05-02 12:32:34	94.83
699	912	2025-09-30 00:23:24	230.91
700	208	2025-12-20 20:56:35	285.96
701	314	2026-01-24 13:51:05	274.50
702	915	2026-03-04 20:47:08	185.38
703	462	2026-01-22 04:33:03	828.00
704	164	2026-04-04 08:37:22	747.41
705	580	2025-10-21 14:03:47	110.08
706	130	2025-05-25 00:11:44	936.80
707	364	2026-02-22 19:39:40	509.48
708	832	2025-04-24 12:23:56	449.18
709	668	2026-02-23 17:58:48	99.17
710	307	2026-02-15 00:33:18	446.07
711	420	2025-12-28 21:09:53	400.77
712	981	2025-12-11 23:28:37	811.34
713	713	2025-10-08 17:48:58	930.13
714	870	2026-02-02 11:53:06	911.06
715	539	2025-10-21 05:15:58	422.62
716	957	2025-12-01 11:12:30	137.25
717	747	2025-06-28 12:50:10	141.46
718	415	2025-04-22 03:27:23	287.66
719	809	2025-11-29 14:42:37	276.46
720	418	2025-12-22 20:54:09	72.26
721	362	2025-09-09 10:20:10	945.07
722	490	2025-07-16 23:33:56	628.28
723	337	2025-06-11 12:00:44	99.17
724	877	2025-06-14 20:03:01	517.49
725	453	2025-09-13 15:19:27	463.89
726	97	2025-05-13 19:06:13	532.40
727	504	2025-08-23 20:00:18	426.60
728	238	2025-11-07 22:10:03	558.36
729	992	2025-12-28 12:56:52	249.24
730	671	2026-02-23 16:04:00	1106.42
731	73	2025-06-22 20:31:47	732.45
732	557	2026-04-16 02:06:38	508.92
733	550	2025-09-01 02:45:01	264.57
734	370	2025-04-22 11:59:16	440.64
735	763	2026-02-28 00:26:07	815.26
736	794	2025-10-18 06:07:41	1121.81
737	441	2026-03-07 18:27:17	1099.72
738	343	2026-03-14 03:09:40	127.64
739	648	2025-10-13 01:18:58	805.64
740	214	2025-09-05 01:22:07	732.57
741	431	2025-12-29 02:35:11	1182.78
742	224	2025-10-05 19:27:06	608.79
743	238	2025-12-30 11:20:52	528.79
744	181	2025-05-07 14:29:55	224.64
745	16	2026-02-20 01:53:45	320.26
746	861	2025-10-13 01:57:07	750.54
747	704	2025-05-31 22:36:28	417.24
748	237	2025-09-07 15:01:54	705.01
749	702	2025-12-30 11:23:20	904.18
750	889	2026-01-24 00:53:08	275.26
751	442	2025-12-28 03:15:02	148.46
752	470	2025-12-11 01:00:58	379.11
753	571	2026-03-20 03:30:35	898.32
754	762	2025-10-09 08:23:17	815.43
755	835	2026-01-06 16:09:32	279.15
756	42	2026-02-11 07:02:57	689.34
757	979	2025-12-03 15:31:42	1029.73
758	152	2026-02-20 04:44:48	647.74
759	550	2025-04-28 04:49:39	717.60
760	927	2025-10-20 14:52:03	238.47
761	840	2025-05-11 12:51:55	659.28
762	672	2026-02-18 19:56:33	243.44
763	961	2025-11-20 17:37:36	196.68
764	810	2025-12-10 20:23:53	321.30
765	866	2025-10-26 22:46:04	995.17
766	113	2025-10-05 05:55:05	415.72
767	998	2025-08-20 14:28:48	176.50
768	193	2026-04-05 22:00:32	260.74
769	618	2025-06-25 17:38:17	300.80
770	761	2025-11-06 12:51:19	133.30
771	86	2026-03-21 04:17:17	373.67
772	61	2025-11-15 17:02:11	487.64
773	359	2025-08-09 17:46:37	1366.41
774	746	2025-10-15 10:25:09	278.07
775	146	2025-09-13 16:28:16	874.32
776	835	2026-02-16 17:36:32	826.82
777	200	2025-05-11 09:37:23	262.04
778	231	2025-07-18 16:25:50	135.90
779	887	2026-01-22 05:15:20	675.88
780	862	2025-07-10 18:35:33	116.08
781	502	2025-10-24 12:23:06	348.32
782	166	2025-06-19 02:18:45	306.22
783	777	2025-05-05 14:08:55	1130.60
784	855	2025-11-16 13:51:48	1138.56
785	479	2025-10-04 23:50:22	343.14
786	754	2025-08-11 15:10:59	733.23
787	119	2026-01-13 03:29:56	251.62
788	888	2025-05-03 13:04:48	637.51
789	135	2026-03-30 19:49:51	936.72
790	56	2025-06-26 22:58:47	325.30
791	251	2025-12-09 07:17:16	321.02
792	473	2026-04-03 18:36:46	248.68
793	403	2025-10-09 21:42:56	199.03
794	515	2025-07-07 02:39:01	204.62
795	728	2026-03-07 13:22:47	1139.35
796	526	2025-09-17 19:18:45	1537.89
797	94	2025-05-08 22:16:45	265.83
798	740	2025-05-06 03:39:38	860.98
799	687	2026-02-20 18:56:34	1533.00
800	624	2025-06-03 04:28:05	181.41
801	358	2026-03-02 12:10:07	211.20
802	19	2026-02-03 14:50:57	502.14
803	747	2025-12-29 13:52:20	417.02
804	357	2026-03-09 11:01:01	668.98
805	280	2025-10-24 12:18:34	729.02
806	633	2025-12-06 06:39:52	1067.76
807	421	2025-07-11 07:32:09	1323.42
808	761	2025-08-03 14:46:54	977.49
809	887	2025-11-01 01:44:44	549.59
810	551	2026-02-04 17:44:33	257.32
811	278	2026-02-08 20:11:31	793.17
812	987	2025-09-22 13:37:56	279.92
813	774	2025-08-21 02:51:02	636.22
814	20	2025-11-29 01:05:38	140.12
815	347	2026-02-01 13:20:55	414.60
816	846	2026-01-20 19:26:05	85.26
817	231	2025-06-16 23:52:42	904.13
818	575	2025-10-21 05:23:16	995.03
819	414	2026-03-16 20:37:36	894.06
820	383	2025-06-14 04:03:46	680.23
821	516	2025-12-12 06:24:54	142.47
822	374	2025-07-18 02:50:50	200.10
823	530	2026-02-24 13:23:21	269.89
824	503	2025-07-11 21:33:06	130.82
825	326	2026-03-07 03:54:17	612.16
826	320	2025-09-01 15:08:24	850.11
827	702	2025-07-10 00:54:35	513.42
828	955	2026-03-19 16:57:01	499.06
829	575	2026-01-11 13:13:51	643.20
830	410	2025-11-05 09:29:22	651.99
831	547	2025-08-14 08:00:06	618.69
832	218	2025-06-25 04:03:10	754.31
833	636	2025-08-10 04:33:04	1324.59
834	287	2026-03-28 04:57:30	674.13
835	217	2026-04-19 03:38:23	919.47
836	557	2026-01-23 23:18:41	806.32
837	8	2026-01-07 23:03:24	669.08
838	31	2025-05-13 15:20:49	962.21
839	64	2025-05-09 14:51:11	725.20
840	948	2025-04-25 13:52:53	564.22
841	321	2026-03-16 22:49:04	299.56
842	781	2025-08-27 14:19:37	55.04
843	366	2025-05-24 16:31:46	725.70
844	977	2025-08-28 20:55:59	606.76
845	317	2025-10-24 10:15:00	606.39
846	4	2025-10-02 22:05:41	306.69
847	277	2025-10-02 02:30:42	1021.60
848	209	2025-11-25 16:51:06	828.94
849	5	2025-07-08 22:08:29	433.79
850	71	2026-01-18 07:36:32	385.46
851	461	2025-08-08 06:19:27	64.02
852	448	2025-10-22 12:13:24	539.50
853	482	2026-02-20 15:33:02	862.05
854	899	2025-12-26 20:13:36	192.51
855	330	2025-11-27 14:02:40	165.66
856	650	2025-08-25 03:40:06	264.33
857	581	2026-02-04 01:29:01	357.39
858	344	2025-11-21 00:25:33	424.38
859	711	2025-06-11 05:41:22	117.46
860	174	2025-10-24 07:35:57	542.37
861	848	2025-10-07 18:54:16	619.71
862	841	2025-05-03 05:59:11	1083.78
863	29	2025-10-31 04:58:42	156.18
864	900	2025-12-03 02:29:56	1431.17
865	663	2025-07-21 08:42:12	517.47
866	464	2026-01-17 14:37:30	646.16
867	20	2026-03-30 23:23:14	836.68
868	581	2025-12-17 13:24:08	1411.17
869	835	2026-02-12 05:07:28	97.12
870	457	2025-12-07 00:42:53	1511.08
871	887	2025-06-23 18:57:51	295.89
872	169	2025-08-12 18:59:03	216.78
873	36	2025-11-30 22:44:16	1056.44
874	324	2025-10-16 13:23:09	979.30
875	554	2025-07-08 18:43:46	1010.66
876	781	2026-01-30 02:28:38	201.40
877	454	2026-04-18 01:51:35	170.77
878	221	2026-01-25 05:49:30	414.60
879	339	2025-07-02 20:49:46	181.62
880	722	2025-10-22 03:02:13	796.89
881	777	2026-01-30 01:00:41	209.33
882	405	2025-05-29 23:59:39	117.50
883	817	2025-11-26 20:07:47	566.64
884	479	2025-06-05 04:30:52	826.19
885	465	2025-10-20 12:39:04	195.34
886	812	2026-04-17 08:34:39	186.84
887	348	2025-06-27 00:26:51	198.34
888	155	2025-10-03 11:40:00	1149.99
889	957	2025-10-08 10:49:42	479.45
890	559	2026-04-13 22:49:28	540.48
891	642	2025-10-18 18:19:23	36.22
892	623	2025-05-04 13:30:29	822.44
893	790	2026-02-24 10:31:29	912.28
894	223	2025-07-12 14:46:31	82.50
895	348	2026-04-20 00:58:41	538.22
896	644	2025-05-01 23:53:06	283.28
897	250	2026-03-17 23:07:39	529.62
898	944	2025-08-27 00:28:09	508.40
899	412	2025-07-08 03:46:22	575.33
900	406	2025-11-04 01:41:45	121.08
901	887	2025-10-17 21:48:01	688.77
902	807	2025-08-15 16:35:56	900.70
903	682	2026-02-27 14:05:53	1355.73
904	268	2026-03-08 11:29:54	70.88
905	571	2026-03-12 05:12:14	529.12
906	256	2025-09-05 10:16:43	492.70
907	648	2025-12-19 18:47:21	444.99
908	28	2025-11-10 21:39:27	479.67
909	882	2025-09-19 09:20:12	683.86
910	910	2025-08-13 10:40:30	494.13
911	518	2025-08-24 22:39:27	764.86
912	304	2025-04-30 13:18:41	853.79
913	703	2025-07-10 07:09:44	926.94
914	660	2025-07-29 21:29:26	489.67
915	226	2025-08-04 19:59:35	1329.88
916	605	2026-01-02 19:12:36	678.93
917	211	2025-05-31 23:48:36	261.21
918	733	2025-10-05 23:22:01	1267.43
919	972	2026-04-11 17:54:49	456.65
920	862	2025-08-20 14:06:39	282.92
921	214	2026-03-18 08:38:47	628.77
922	360	2025-08-19 08:21:10	848.84
923	804	2026-02-24 16:44:50	578.75
924	103	2025-10-16 02:28:26	1681.54
925	966	2025-12-01 08:07:49	590.37
926	221	2026-03-21 14:36:31	733.42
927	433	2025-09-12 13:07:37	1053.67
928	190	2025-06-03 11:04:48	570.52
929	391	2026-03-30 00:13:25	1183.78
930	7	2025-05-22 03:02:11	354.22
931	681	2025-09-25 18:30:37	632.73
932	293	2026-04-17 13:00:07	847.38
933	894	2025-05-24 12:41:32	247.50
934	497	2025-11-26 18:43:01	577.53
935	232	2026-04-04 08:33:41	525.14
936	607	2025-09-23 17:09:04	192.06
937	291	2025-06-20 15:33:56	726.85
938	240	2025-06-15 14:22:21	979.73
939	717	2026-04-12 11:55:55	509.86
940	953	2026-03-31 08:07:36	758.26
941	571	2025-10-28 22:28:27	22.76
942	663	2025-07-08 17:34:45	321.48
943	880	2025-07-07 19:09:51	313.50
944	564	2026-02-10 00:28:59	876.21
945	486	2025-10-21 12:46:46	679.87
946	158	2025-08-22 14:55:54	397.54
947	530	2025-09-07 11:18:19	348.21
948	31	2025-12-31 09:42:02	782.87
949	479	2025-05-10 12:14:51	888.57
950	49	2026-02-12 21:12:44	425.58
951	423	2026-03-23 12:39:10	210.90
952	926	2026-03-23 10:26:46	523.53
953	826	2025-06-26 01:08:07	261.94
954	726	2026-01-06 01:16:15	399.90
955	133	2025-09-10 11:01:18	534.79
956	831	2025-06-22 05:01:30	1184.39
957	210	2025-11-29 10:30:31	193.50
958	699	2025-10-23 10:09:57	385.46
959	462	2025-12-22 05:04:14	224.93
960	182	2025-11-25 02:53:34	140.12
961	783	2025-12-17 16:54:54	551.96
962	826	2025-07-26 02:51:48	417.24
963	67	2025-06-12 09:35:42	141.76
964	225	2025-12-25 22:10:51	573.61
965	507	2025-12-06 23:54:02	720.06
966	166	2025-09-03 12:07:58	625.99
967	507	2025-08-14 07:14:50	888.76
968	948	2026-01-17 18:13:53	303.36
969	993	2025-09-03 06:12:10	248.49
970	210	2025-09-09 15:42:24	88.66
971	924	2025-10-23 01:15:47	945.54
972	705	2026-03-17 15:23:48	853.77
973	767	2025-06-21 04:57:51	808.90
974	856	2025-06-04 21:02:17	724.49
975	404	2026-01-10 11:55:17	767.38
976	6	2025-07-18 23:39:22	851.68
977	750	2026-03-31 01:23:49	252.33
978	658	2025-11-10 01:53:48	478.44
979	888	2025-10-31 22:07:54	268.06
980	825	2026-03-20 23:09:57	466.48
981	195	2025-06-08 12:29:53	1288.92
982	389	2025-12-24 18:10:19	192.88
983	781	2025-07-31 05:41:04	844.91
984	241	2026-01-13 19:57:48	669.51
985	687	2025-09-26 11:23:16	537.58
986	467	2025-12-09 13:38:18	996.35
987	553	2025-07-08 08:42:18	844.65
988	602	2025-12-17 06:53:22	950.56
989	474	2025-09-29 21:10:50	539.06
990	809	2025-12-22 16:16:06	777.05
991	330	2025-12-27 13:45:17	127.64
992	3	2026-01-08 15:05:48	977.02
993	520	2026-04-06 04:37:01	447.72
994	269	2026-03-07 22:32:56	675.72
995	355	2025-06-04 15:19:48	380.42
996	391	2025-08-15 00:59:37	469.62
997	611	2025-11-23 21:28:14	680.26
998	554	2025-09-13 11:38:45	70.88
999	948	2026-02-06 14:01:20	1188.59
1000	249	2025-08-08 17:04:41	1295.69
1001	799	2026-03-26 15:21:31	920.86
1002	314	2025-12-23 17:09:31	793.40
1003	846	2025-09-28 03:43:14	688.99
1004	229	2026-01-10 01:13:21	489.97
1005	608	2026-03-03 12:17:29	982.19
1006	66	2026-01-21 22:37:40	283.72
1007	462	2025-08-26 02:51:12	590.33
1008	307	2025-09-11 16:42:33	1106.68
1009	680	2026-03-16 18:17:55	596.82
1010	485	2025-04-21 04:37:37	451.20
1011	670	2026-02-03 09:25:24	635.35
1012	845	2025-08-21 06:17:33	548.14
1013	891	2025-09-01 07:58:08	1313.77
1014	618	2025-10-06 11:48:24	141.76
1015	601	2026-03-11 15:02:01	539.29
1016	619	2025-11-05 12:12:14	271.80
1017	865	2025-09-29 03:22:57	591.31
1018	384	2025-11-12 21:03:17	280.26
1019	345	2025-11-11 21:23:04	224.64
1020	60	2025-10-24 07:18:04	81.00
1021	599	2025-06-30 21:27:30	424.92
1022	1	2025-06-11 05:19:07	307.02
1023	530	2026-03-14 19:36:48	594.48
1024	391	2025-05-26 06:31:16	181.62
1025	913	2025-06-10 07:35:02	175.03
1026	231	2025-12-22 18:27:17	298.31
1027	212	2025-10-21 16:28:27	663.84
1028	414	2026-03-08 12:28:54	260.91
1029	267	2025-05-20 06:27:24	501.90
1030	409	2026-01-01 03:39:42	516.56
1031	410	2025-07-10 03:47:31	200.10
1032	804	2026-03-06 13:55:23	340.45
1033	656	2025-07-07 02:53:26	700.58
1034	182	2025-06-18 16:05:25	1007.25
1035	903	2025-08-19 00:34:48	283.93
1036	834	2025-07-19 04:24:04	226.31
1037	974	2025-07-26 21:20:28	308.76
1038	572	2026-01-11 09:18:02	48.56
1039	982	2025-08-27 17:14:13	274.82
1040	21	2026-04-09 01:13:18	520.10
1041	923	2026-01-28 17:24:36	1077.17
1042	790	2025-09-11 05:46:57	553.74
1043	905	2026-04-17 18:11:30	678.78
1044	392	2025-04-21 23:14:18	773.59
1045	689	2025-05-09 08:39:32	1080.56
1046	861	2026-03-20 06:38:42	141.98
1047	269	2025-09-26 02:29:35	536.27
1048	759	2025-05-30 15:13:18	596.82
1049	892	2026-01-30 06:24:17	141.76
1050	632	2026-03-01 06:10:54	137.41
1051	320	2025-12-12 02:21:13	688.14
1052	5	2025-06-11 16:25:55	424.38
1053	926	2025-09-10 03:01:35	165.12
1054	118	2026-02-14 12:19:34	891.62
1055	993	2025-09-24 11:28:07	874.42
1056	335	2026-01-21 06:36:27	407.73
1057	440	2025-10-12 08:57:44	349.89
1058	171	2025-11-25 20:53:54	193.59
1059	400	2026-03-09 12:51:10	248.87
1060	826	2026-01-10 18:43:31	1206.07
1061	402	2026-03-29 10:58:16	1141.73
1062	784	2026-01-27 04:57:20	137.69
1063	624	2025-09-16 18:48:22	740.47
1064	198	2026-03-31 10:10:17	428.42
1065	972	2025-07-07 01:23:05	271.82
1066	256	2025-08-09 13:24:11	45.46
1067	491	2026-03-16 23:25:03	940.97
1068	751	2026-04-01 14:49:09	572.43
1069	124	2026-03-12 04:05:36	485.25
1070	560	2026-03-21 09:55:16	863.91
1071	76	2025-08-03 18:47:45	110.08
1072	204	2026-03-09 17:40:24	605.48
1073	758	2026-03-24 03:44:25	419.23
1074	954	2025-11-02 00:23:46	730.37
1075	463	2025-10-20 09:17:47	497.13
1076	334	2025-06-30 17:25:22	1283.04
1077	547	2025-06-24 09:42:33	447.79
1078	897	2026-02-09 09:16:20	196.94
1079	64	2025-08-15 14:06:32	853.22
1080	740	2025-06-30 21:57:49	645.74
1081	949	2025-08-03 04:08:36	397.54
1082	189	2025-07-01 20:46:07	284.40
1083	881	2026-03-29 16:56:03	146.60
1084	186	2025-06-16 02:55:44	594.56
1085	468	2026-02-19 04:41:26	131.02
1086	663	2025-11-21 23:11:52	749.24
1087	711	2025-12-16 15:54:16	999.52
1088	843	2026-02-09 07:10:41	331.42
1089	928	2025-11-30 01:47:00	645.60
1090	24	2025-04-21 21:01:53	535.06
1091	825	2025-08-20 11:54:22	687.23
1092	86	2025-12-24 00:19:29	1478.04
1093	512	2025-05-13 21:25:01	614.71
1094	731	2025-11-07 17:07:54	190.38
1095	30	2025-05-28 08:11:00	601.95
1096	509	2025-04-22 17:08:25	821.78
1097	560	2026-02-14 18:20:41	453.22
1098	571	2026-04-16 05:55:21	521.49
1099	105	2025-09-24 12:00:32	535.39
1100	647	2025-05-11 21:01:32	70.88
1101	344	2026-03-03 15:42:46	1021.14
1102	5	2025-04-26 03:52:43	162.23
1103	997	2025-10-19 21:11:30	962.60
1104	641	2026-03-01 10:41:34	951.42
1105	412	2025-12-27 15:13:05	512.31
1106	76	2025-08-02 07:35:27	142.47
1107	953	2026-01-12 05:32:45	876.24
1108	945	2026-04-05 12:22:54	492.48
1109	721	2025-12-09 17:02:32	1279.20
1110	346	2026-01-01 12:08:42	859.28
1111	750	2025-10-19 18:44:54	73.09
1112	930	2026-04-01 08:45:18	1049.94
1113	112	2025-11-11 07:53:31	331.00
1114	294	2025-06-15 13:37:46	516.39
1115	717	2026-01-17 06:16:57	653.97
1116	174	2025-07-04 07:55:03	770.56
1117	211	2025-10-19 14:33:14	496.50
1118	929	2025-08-24 00:24:15	1144.61
1119	535	2025-09-11 08:04:14	141.76
1120	753	2026-01-02 09:11:05	393.88
1121	435	2025-05-10 21:35:19	321.05
1122	982	2025-08-12 01:55:47	774.05
1123	617	2025-10-30 17:50:12	543.70
1124	169	2026-04-14 22:05:51	1048.80
1125	701	2026-04-01 21:38:38	1494.64
1126	569	2025-11-01 15:42:49	418.41
1127	62	2025-12-17 06:26:10	283.28
1128	376	2025-10-20 19:00:02	1069.15
1129	222	2026-03-02 08:29:44	202.24
1130	899	2025-10-30 18:42:37	224.19
1131	110	2026-03-05 12:31:58	287.86
1132	247	2025-09-02 00:35:25	817.41
1133	39	2026-04-19 14:56:16	522.32
1134	170	2025-05-12 10:56:25	1482.75
1135	228	2025-05-31 19:18:00	854.89
1136	516	2025-08-26 00:45:06	192.73
1137	763	2025-09-28 11:48:20	22.76
1138	530	2025-07-19 01:52:56	481.06
1139	570	2025-09-08 02:44:16	839.42
1140	746	2025-11-09 01:31:04	668.37
1141	380	2026-04-01 01:17:08	798.45
1142	769	2025-06-12 17:30:11	801.98
1143	853	2025-06-13 04:32:13	895.33
1144	647	2025-10-16 05:02:43	203.91
1145	173	2025-12-05 18:15:08	578.19
1146	550	2025-06-28 19:33:52	250.97
1147	881	2025-11-18 22:24:39	463.12
1148	454	2026-04-02 07:25:42	369.38
1149	775	2025-08-16 15:35:48	84.11
1150	40	2025-10-07 23:38:56	1276.74
1151	310	2025-10-18 13:22:45	649.70
1152	159	2025-12-12 18:09:30	778.01
1153	401	2026-01-07 04:38:55	654.37
1154	256	2026-02-13 11:53:03	893.01
1155	60	2025-11-23 18:38:47	117.58
1156	886	2025-10-28 15:30:35	110.08
1157	927	2025-06-19 20:10:08	344.66
1158	763	2026-02-10 01:40:40	1147.53
1159	678	2026-04-13 19:54:27	537.29
1160	430	2025-10-04 21:34:53	699.33
1161	140	2025-06-29 04:45:31	146.04
1162	563	2025-08-14 16:04:20	169.29
1163	612	2026-01-17 01:46:12	773.12
1164	305	2026-02-02 11:31:18	146.18
1165	18	2025-04-29 00:08:00	199.17
1166	341	2025-11-12 02:19:51	1471.29
1167	935	2025-07-02 06:23:49	190.38
1168	171	2026-04-13 17:53:11	392.54
1169	446	2026-01-08 22:53:58	388.60
1170	177	2025-05-24 23:59:36	407.43
1171	708	2025-10-14 10:35:31	581.83
1172	453	2025-06-13 23:39:27	933.05
1173	153	2025-11-09 23:12:49	670.85
1174	278	2025-12-13 04:17:43	480.97
1175	884	2025-11-04 00:18:15	579.24
1176	558	2025-07-18 06:48:50	746.80
1177	482	2026-01-28 11:43:05	349.02
1178	688	2026-04-13 15:33:26	578.19
1179	624	2025-08-30 08:49:42	377.64
1180	632	2025-12-06 09:44:15	691.57
1181	653	2026-01-14 02:12:57	565.65
1182	984	2025-10-18 19:01:23	934.69
1183	250	2025-12-30 04:15:17	1027.92
1184	741	2025-08-09 20:15:15	90.32
1185	342	2025-06-19 06:07:23	234.30
1186	436	2026-04-10 10:17:34	266.79
1187	691	2026-04-02 22:45:05	354.00
1188	13	2025-05-20 21:16:58	448.46
1189	625	2025-05-14 16:18:00	430.92
1190	962	2026-04-18 16:36:21	764.15
1191	712	2026-04-05 20:59:02	337.04
1192	733	2025-10-09 02:10:09	446.69
1193	320	2025-08-31 17:06:35	186.84
1194	188	2025-07-30 20:21:16	234.45
1195	594	2025-08-04 15:42:05	440.64
1196	202	2025-11-09 12:05:38	388.60
1197	465	2025-09-02 22:18:42	874.05
1198	513	2025-05-10 12:09:23	933.16
1199	627	2025-06-15 12:16:15	348.19
1200	367	2026-03-16 02:35:16	500.76
1201	725	2025-11-12 12:15:06	127.64
1202	572	2026-04-03 10:42:26	453.73
1203	379	2025-11-09 21:21:08	546.28
1204	416	2025-06-06 06:35:44	107.10
1205	96	2025-12-19 09:27:50	684.55
1206	746	2025-07-12 16:13:23	280.66
1207	774	2026-01-17 14:27:31	1335.36
1208	962	2025-09-05 13:11:58	481.23
1209	129	2026-01-24 20:03:54	156.18
1210	358	2025-06-27 10:19:27	388.60
1211	769	2025-05-26 22:35:51	1058.76
1212	44	2026-01-30 02:54:36	769.79
1213	320	2025-07-15 02:57:18	68.28
1214	940	2025-06-09 05:42:55	756.05
1215	873	2025-09-26 12:45:31	813.99
1216	178	2025-09-17 09:57:37	1142.69
1217	223	2025-06-24 03:04:11	777.68
1218	531	2025-08-12 15:53:37	786.58
1219	96	2025-06-29 17:54:15	945.84
1220	555	2025-11-26 20:06:40	852.25
1221	597	2025-11-23 01:50:11	64.53
1222	951	2026-04-16 20:03:24	463.42
1223	284	2025-05-09 12:51:29	751.85
1224	737	2026-02-26 18:09:35	1163.71
1225	45	2026-04-07 16:37:14	921.51
1226	96	2025-09-27 13:28:03	1322.24
1227	245	2026-01-07 09:44:04	792.58
1228	422	2026-03-05 17:14:17	478.03
1229	2	2026-02-12 13:28:12	302.52
1230	129	2025-10-17 06:57:48	194.40
1231	661	2026-03-18 05:02:45	478.37
1232	755	2025-10-01 22:13:01	176.38
1233	24	2026-01-18 05:28:27	228.87
1234	137	2026-03-13 13:47:25	264.81
1235	530	2026-03-04 08:35:48	513.01
1236	959	2025-11-27 07:52:22	763.02
1237	329	2026-01-20 04:26:45	258.01
1238	604	2026-01-29 18:32:37	811.92
1239	241	2025-10-09 18:55:24	106.44
1240	831	2025-07-07 15:43:00	198.34
1241	228	2025-07-20 10:23:39	423.47
1242	730	2025-07-19 21:03:15	1355.40
1243	278	2025-10-17 10:46:41	52.06
1244	185	2025-11-13 14:55:43	580.50
1245	278	2026-02-24 08:32:16	1313.76
1246	886	2025-05-16 16:14:04	796.95
1247	456	2025-09-20 05:38:23	750.07
1248	423	2025-08-02 01:10:38	782.44
1249	923	2025-08-17 08:10:58	277.24
1250	100	2025-04-29 02:47:49	126.92
1251	619	2026-01-15 05:02:36	1011.78
1252	202	2025-10-25 07:59:33	520.18
1253	397	2025-12-03 04:24:55	300.16
1254	969	2026-01-13 10:41:02	1071.71
1255	786	2025-07-02 01:01:45	277.70
1256	894	2026-02-13 23:02:51	520.89
1257	328	2025-07-26 20:39:05	913.32
1258	396	2025-06-10 17:12:50	379.11
1259	531	2026-03-11 12:05:51	283.72
1260	414	2026-01-28 06:34:50	194.40
1261	334	2026-01-21 22:22:25	165.00
1262	348	2025-06-05 16:21:45	691.95
1263	408	2025-11-05 08:08:46	684.10
1264	567	2025-11-16 15:40:44	1170.12
1265	856	2026-03-14 17:23:19	417.30
1266	260	2025-07-05 18:37:50	1002.68
1267	783	2026-03-14 12:46:25	493.25
1268	511	2026-02-23 18:05:30	897.38
1269	258	2025-05-20 09:50:00	139.08
1270	972	2026-01-17 21:27:01	135.90
1271	489	2025-09-11 18:17:26	291.60
1272	835	2026-03-17 20:14:02	355.42
1273	588	2025-06-11 20:33:12	1008.06
1274	253	2025-04-22 10:36:21	580.10
1275	147	2025-04-27 01:34:50	548.46
1276	427	2025-10-01 22:20:39	165.50
1277	648	2026-02-27 22:11:31	959.50
1278	790	2026-03-14 23:32:12	543.60
1279	950	2025-10-15 13:41:42	341.54
1280	625	2025-12-03 23:12:04	898.23
1281	653	2025-07-16 22:43:50	158.67
1282	410	2025-04-27 16:34:56	250.87
1283	356	2025-10-01 11:59:57	991.92
1284	33	2026-01-28 19:35:33	317.98
1285	62	2026-01-21 05:38:07	476.24
1286	55	2025-04-21 04:36:12	694.73
1287	702	2025-08-06 20:08:04	193.50
1288	858	2025-12-22 03:22:02	246.78
1289	308	2026-01-03 10:25:20	291.60
1290	729	2026-04-08 01:21:16	35.44
1291	684	2025-06-01 11:45:15	904.87
1292	313	2025-10-27 22:21:21	255.78
1293	138	2025-11-15 23:18:06	274.50
1294	602	2025-12-08 06:16:09	363.34
1295	266	2026-01-12 19:44:30	389.80
1296	854	2025-05-12 09:46:04	1264.62
1297	208	2025-05-06 07:31:18	496.50
1298	30	2025-06-28 06:33:34	687.67
1299	197	2025-09-09 02:04:59	597.20
1300	308	2025-09-26 09:59:49	248.49
1301	947	2026-04-01 16:37:36	803.83
1302	645	2025-10-19 07:42:56	671.64
1303	139	2025-07-22 23:31:45	450.64
1304	118	2026-01-20 19:03:42	1079.75
1305	81	2025-10-30 04:03:07	108.92
1306	280	2025-09-28 02:25:29	246.56
1307	756	2025-06-06 11:55:37	836.10
1308	532	2025-10-04 13:31:35	425.58
1309	399	2025-08-23 03:16:52	60.66
1310	351	2025-06-07 13:33:30	423.00
1311	395	2025-08-29 05:28:43	219.27
1312	659	2025-10-29 02:31:58	765.96
1313	734	2025-08-27 20:04:39	444.85
1314	429	2025-07-10 07:06:24	117.15
1315	132	2025-07-20 09:51:55	726.56
1316	129	2025-11-12 13:14:59	296.38
1317	823	2025-09-13 08:21:54	451.20
1318	650	2026-03-25 19:33:41	249.11
1319	278	2026-03-09 14:32:56	789.45
1320	90	2025-09-09 18:22:28	1041.05
1321	180	2025-09-01 05:19:42	1377.60
1322	919	2025-11-24 21:58:16	257.21
1323	837	2025-06-25 12:58:54	873.92
1324	363	2025-06-18 12:41:12	423.64
1325	441	2025-06-08 15:13:21	317.52
1326	629	2026-02-23 14:58:59	393.06
1327	757	2025-08-20 05:50:47	152.04
1328	849	2025-12-16 06:21:26	459.00
1329	893	2025-11-30 06:22:43	620.91
1330	977	2025-05-15 21:23:20	825.38
1331	719	2025-08-26 16:40:43	507.53
1332	433	2025-10-19 19:56:24	388.93
1333	607	2025-08-17 11:24:20	557.61
1334	617	2026-01-19 11:38:13	1090.93
1335	685	2026-04-08 00:39:53	889.89
1336	40	2026-02-25 12:07:21	460.32
1337	862	2025-09-28 18:49:22	165.00
1338	426	2026-01-20 06:31:17	878.11
1339	766	2025-09-14 03:34:59	418.41
1340	996	2025-07-30 13:15:54	165.12
1341	836	2026-01-26 04:14:09	258.22
1342	624	2025-05-30 18:52:33	853.76
1343	474	2026-04-18 04:02:53	193.50
1344	624	2025-10-20 11:49:27	966.13
1345	815	2025-08-10 21:24:32	497.75
1346	33	2025-11-09 11:01:01	424.87
1347	871	2026-01-25 14:09:23	1029.41
1348	532	2025-11-10 18:57:47	589.56
1349	500	2026-04-18 20:24:08	626.60
1350	730	2025-12-28 20:14:50	515.15
1351	488	2026-01-15 19:34:19	760.09
1352	354	2025-10-20 01:37:59	1126.29
1353	482	2025-11-07 17:11:45	946.23
1354	283	2025-05-24 18:40:39	432.02
1355	650	2025-06-04 11:12:33	392.46
1356	117	2026-03-09 23:11:14	405.01
1357	258	2026-02-01 15:50:04	476.70
1358	384	2025-08-13 05:06:45	266.60
1359	247	2025-11-26 12:55:57	85.26
1360	828	2025-09-03 22:36:21	1000.65
1361	500	2026-03-13 03:38:47	353.28
1362	982	2026-02-09 04:59:56	894.38
1363	793	2026-01-21 16:14:36	83.79
1364	294	2026-04-09 11:21:28	572.64
1365	748	2025-05-08 08:08:23	731.92
1366	932	2025-07-18 08:09:01	457.90
1367	855	2025-10-17 05:54:00	464.53
1368	815	2025-05-15 17:14:52	550.03
1369	760	2025-06-18 22:31:52	412.78
1370	629	2025-08-22 22:50:52	348.21
1371	748	2025-06-04 07:15:10	1374.96
1372	39	2025-09-24 04:24:07	141.76
1373	1	2025-05-17 23:26:18	987.42
1374	383	2026-04-14 02:34:18	658.08
1375	33	2025-11-04 09:27:12	274.82
1376	930	2025-05-12 17:26:10	420.30
1377	550	2025-09-23 10:23:47	757.98
1378	333	2025-11-30 00:59:25	1009.94
1379	821	2025-10-17 10:28:05	938.59
1380	827	2026-04-11 21:07:59	596.82
1381	523	2026-01-23 13:40:26	284.40
1382	318	2025-12-06 06:01:49	665.05
1383	837	2025-08-09 12:52:02	653.78
1384	10	2025-05-01 19:43:48	254.78
1385	936	2025-12-29 01:53:52	94.74
1386	863	2026-04-10 20:38:14	251.37
1387	681	2025-06-30 21:17:56	165.66
1388	847	2025-08-12 01:06:29	418.72
1389	692	2025-06-20 01:20:58	165.12
1390	678	2026-04-06 13:04:24	668.10
1391	887	2025-07-20 14:35:03	444.60
1392	707	2025-11-28 20:06:13	625.24
1393	273	2025-10-21 01:31:33	165.66
1394	558	2025-12-10 20:06:06	706.24
1395	124	2025-11-18 01:28:36	1361.57
1396	990	2025-10-27 04:54:33	732.34
1397	5	2026-04-11 23:39:36	248.86
1398	508	2025-07-29 02:51:06	258.88
1399	831	2026-03-30 03:25:38	337.74
1400	250	2025-04-22 15:37:57	458.66
1401	947	2026-02-09 19:36:15	773.40
1402	994	2025-06-10 02:14:03	1257.99
1403	321	2026-01-16 02:25:24	487.35
1404	963	2026-02-08 04:18:36	898.44
1405	521	2026-04-09 06:22:01	1063.34
1406	340	2025-05-07 00:57:33	437.52
1407	876	2025-04-25 03:57:08	393.36
1408	622	2025-07-28 13:43:59	371.22
1409	587	2025-05-01 17:23:48	606.49
1410	654	2025-12-28 13:18:16	360.84
1411	313	2026-01-26 00:24:15	845.02
1412	34	2025-11-30 18:45:22	117.15
1413	520	2025-09-10 02:37:47	868.81
1414	94	2025-09-08 18:05:00	594.71
1415	769	2026-04-04 09:34:38	210.90
1416	618	2025-06-13 14:48:32	1112.17
1417	61	2026-03-25 04:25:55	52.06
1418	607	2025-10-18 14:08:03	1271.99
1419	673	2025-07-17 00:52:53	203.13
1420	94	2025-12-27 08:19:23	972.52
1421	324	2025-07-23 22:00:56	95.32
1422	899	2025-08-16 13:54:19	521.56
1423	196	2026-02-25 23:01:44	169.82
1424	287	2026-01-15 09:58:15	1030.14
1425	301	2025-09-02 17:37:53	501.93
1426	591	2025-09-30 18:55:58	163.90
1427	390	2026-02-03 14:37:38	665.81
1428	822	2026-01-20 14:24:49	803.60
1429	707	2026-04-05 23:53:54	857.05
1430	510	2025-07-03 05:23:33	753.61
1431	898	2025-08-02 00:11:40	451.20
1432	402	2025-11-12 15:38:24	480.54
1433	377	2025-08-02 13:16:10	548.28
1434	823	2025-08-29 00:34:34	632.35
1435	739	2025-12-26 19:44:01	1091.04
1436	166	2026-01-27 18:34:28	306.00
1437	907	2026-04-13 07:21:38	417.15
1438	228	2025-11-27 04:37:42	907.79
1439	679	2025-09-27 10:28:41	787.44
1440	697	2025-06-05 18:56:22	823.01
1441	305	2025-11-09 22:35:00	127.64
1442	281	2026-04-15 08:13:32	188.34
1443	148	2025-05-06 12:20:55	722.20
1444	442	2025-06-10 20:06:47	780.43
1445	217	2025-10-11 12:00:34	296.66
1446	122	2025-05-31 10:02:04	164.52
1447	934	2025-05-23 15:53:44	315.10
1448	192	2026-02-19 06:22:57	339.64
1449	797	2025-07-30 12:43:57	681.78
1450	337	2025-07-30 20:46:56	800.85
1451	189	2026-02-27 11:19:54	1213.32
1452	472	2025-07-31 13:02:18	154.74
1453	379	2025-04-21 02:19:32	433.61
1454	67	2025-12-08 12:44:01	525.50
1455	27	2025-11-22 09:59:15	521.98
1456	230	2026-04-17 19:58:40	418.62
1457	80	2025-08-22 11:20:05	142.11
1458	805	2025-12-30 20:16:42	467.86
1459	500	2025-07-10 09:57:44	472.44
1460	276	2025-05-30 17:25:27	488.12
1461	792	2025-09-29 01:09:26	562.02
1462	566	2025-04-23 11:40:21	860.08
1463	530	2025-06-15 01:01:36	699.43
1464	447	2025-11-02 17:03:42	140.12
1465	973	2025-07-24 06:45:53	729.10
1466	35	2026-04-10 04:41:07	95.32
1467	88	2026-04-17 18:08:36	223.62
1468	345	2025-08-17 12:30:53	293.43
1469	292	2025-07-14 11:03:17	676.04
1470	474	2025-07-30 11:29:37	70.06
1471	37	2025-12-04 18:57:38	153.11
1472	460	2025-10-29 06:10:00	805.56
1473	640	2025-06-01 07:14:34	761.51
1474	312	2025-11-21 20:10:20	201.40
1475	657	2025-08-30 03:35:48	502.96
1476	482	2025-10-23 02:42:33	308.82
1477	519	2025-09-21 19:25:21	164.52
1478	299	2026-04-09 02:05:39	82.83
1479	467	2026-01-23 19:08:10	738.26
1480	315	2025-09-26 04:24:40	663.07
1481	893	2026-01-30 08:43:30	281.67
1482	2	2026-02-25 01:29:26	469.61
1483	69	2026-01-08 23:34:13	144.75
1484	289	2025-11-01 22:43:23	766.67
1485	643	2025-09-22 12:06:11	338.28
1486	864	2026-01-24 19:44:29	388.60
1487	764	2025-06-20 00:30:43	385.46
1488	576	2025-05-08 01:57:23	194.30
1489	719	2025-08-12 00:57:22	845.04
1490	398	2026-01-18 07:34:52	485.98
1491	399	2025-10-31 18:37:25	1482.42
1492	87	2026-03-27 16:33:01	383.57
1493	342	2026-04-01 03:22:23	578.70
1494	336	2025-05-28 00:21:51	502.07
1495	196	2025-12-13 14:20:17	1030.11
1496	230	2026-03-26 05:37:22	416.62
1497	690	2025-06-23 13:37:55	1211.07
1498	570	2025-11-05 16:21:39	218.63
1499	153	2026-01-08 04:30:07	139.83
1500	511	2026-01-28 04:29:59	93.42
1501	199	2026-02-25 17:35:46	922.60
1502	154	2026-04-01 23:18:18	582.00
1503	680	2025-07-01 07:36:11	397.34
1504	73	2025-09-26 01:00:51	540.10
1505	485	2026-03-29 13:05:28	153.00
1506	247	2026-01-03 07:01:20	230.62
1507	279	2025-10-21 04:35:31	143.10
1508	378	2025-08-23 07:14:34	202.24
1509	164	2026-03-24 22:35:14	617.64
1510	771	2025-08-29 00:26:27	107.04
1511	471	2026-04-07 16:28:43	384.66
1512	815	2026-02-18 23:46:08	337.60
1513	792	2026-03-16 04:48:37	867.91
1514	477	2025-08-01 00:23:47	725.58
1515	494	2025-11-30 06:28:02	482.78
1516	622	2025-12-26 10:57:17	550.80
1517	557	2025-08-25 12:38:30	659.99
1518	882	2026-04-17 21:51:54	1272.03
1519	559	2026-03-27 13:12:19	1239.15
1520	853	2025-06-05 15:49:41	252.92
1521	714	2025-06-30 19:48:05	857.94
1522	612	2025-08-03 01:45:26	861.41
1523	454	2026-04-02 01:14:13	588.60
1524	339	2025-12-02 01:30:11	555.00
1525	430	2026-04-11 03:15:44	141.86
1526	829	2025-08-18 23:46:17	393.36
1527	137	2026-04-09 11:32:44	468.90
1528	615	2026-03-11 04:51:23	35.68
1529	526	2025-09-18 18:40:48	225.86
1530	494	2026-04-09 13:17:41	538.82
1531	3	2026-01-18 18:47:51	578.35
1532	533	2025-12-22 06:01:42	430.17
1533	937	2025-12-09 01:40:15	942.21
1534	119	2025-05-13 14:59:12	363.44
1535	841	2025-07-15 10:07:33	1037.60
1536	167	2025-05-10 08:22:39	539.47
1537	301	2026-03-20 08:57:56	612.25
1538	632	2025-11-26 16:43:11	911.82
1539	446	2025-09-11 11:56:21	727.29
1540	521	2025-12-19 15:44:24	135.48
1541	36	2025-12-01 12:08:27	146.18
1542	303	2026-01-03 18:04:40	392.46
1543	960	2025-08-05 06:14:59	148.33
1544	157	2025-12-09 14:39:16	1097.02
1545	78	2025-09-29 09:58:43	414.60
1546	166	2025-06-05 19:21:44	452.86
1547	936	2025-06-03 06:52:39	546.78
1548	106	2025-07-24 10:33:25	48.90
1549	194	2025-04-25 20:41:35	163.90
1550	224	2026-02-08 22:06:27	422.98
1551	464	2025-07-02 05:00:51	128.04
1552	157	2026-02-23 02:51:45	1076.16
1553	869	2025-06-14 16:32:19	447.26
1554	665	2025-08-10 20:22:44	567.06
1555	194	2025-07-27 17:01:44	496.98
1556	65	2025-04-21 09:33:34	301.14
1557	877	2025-06-19 08:37:45	488.49
1558	838	2026-01-25 05:37:25	585.47
1559	904	2025-12-24 00:52:10	888.07
1560	933	2025-05-17 00:40:22	705.59
1561	278	2025-09-24 11:18:53	891.74
1562	794	2025-09-23 05:38:46	535.46
1563	876	2025-06-17 20:04:26	348.21
1564	439	2025-08-01 14:24:34	145.68
1565	719	2025-10-02 12:14:17	1047.16
1566	458	2026-02-26 04:13:09	93.42
1567	853	2025-05-07 07:40:59	1068.78
1568	278	2025-09-29 19:43:46	432.50
1569	207	2025-12-09 16:55:11	706.67
1570	854	2025-10-29 10:49:57	390.68
1571	37	2025-07-03 09:45:35	813.00
1572	8	2025-04-24 10:57:33	718.26
1573	302	2025-11-19 04:14:02	102.68
1574	368	2025-10-07 20:12:57	814.44
1575	263	2025-11-05 04:10:25	587.58
1576	683	2025-04-30 06:53:27	696.57
1577	678	2025-05-22 13:12:10	1145.63
1578	117	2025-10-20 03:13:12	300.15
1579	950	2026-04-02 10:40:32	525.76
1580	404	2026-04-06 07:21:55	126.37
1581	516	2026-04-10 08:41:09	640.19
1582	765	2026-01-31 15:57:22	1123.72
1583	60	2025-05-19 09:36:00	192.57
1584	185	2026-04-15 01:53:51	720.84
1585	852	2025-12-08 06:18:09	592.03
1586	147	2025-05-13 11:50:14	795.10
1587	629	2025-10-27 06:06:25	229.10
1588	444	2026-03-06 03:41:43	404.93
1589	648	2026-01-16 09:19:42	610.58
1590	227	2025-05-12 17:50:36	212.47
1591	908	2025-11-19 17:02:09	252.74
1592	830	2025-11-05 19:00:13	153.00
1593	360	2025-09-09 02:02:54	469.66
1594	220	2025-06-05 10:10:38	145.68
1595	71	2025-11-03 16:13:05	506.97
1596	477	2025-10-07 15:55:17	198.77
1597	147	2025-05-22 09:25:17	491.56
1598	649	2025-08-28 12:36:45	569.20
1599	234	2025-07-15 10:16:14	1070.84
1600	669	2025-07-22 14:09:55	512.62
1601	390	2025-10-27 12:43:34	282.24
1602	192	2026-04-08 03:52:27	804.57
1603	200	2025-06-19 02:32:00	752.67
1604	326	2025-12-02 04:42:51	64.02
1605	868	2025-06-26 01:35:30	515.26
1606	431	2025-12-11 15:52:21	450.37
1607	710	2025-08-02 23:36:02	188.16
1608	566	2025-12-02 18:36:29	599.82
1609	774	2025-09-22 11:24:52	939.24
1610	411	2025-05-24 05:02:44	282.92
1611	843	2026-02-07 05:46:11	653.20
1612	345	2025-12-20 12:37:02	802.86
1613	71	2025-11-14 12:06:12	739.51
1614	675	2025-09-16 05:08:56	373.20
1615	292	2025-06-30 14:11:32	889.56
1616	857	2026-03-22 18:16:52	306.00
1617	280	2025-11-20 10:53:58	502.81
1618	619	2025-05-03 09:22:35	251.37
1619	697	2025-07-27 02:28:13	499.59
1620	85	2026-03-07 14:46:56	457.06
1621	968	2025-09-06 14:59:09	192.20
1622	935	2025-06-04 12:52:53	718.78
1623	873	2026-02-10 01:40:39	210.90
1624	743	2025-12-06 03:54:25	605.82
1625	126	2025-07-22 19:41:48	839.85
1626	725	2025-11-10 15:27:22	740.60
1627	180	2025-12-18 00:39:54	807.54
1628	492	2025-11-06 07:15:38	590.82
1629	955	2025-07-03 17:24:26	823.86
1630	985	2025-07-06 13:09:19	1278.06
1631	224	2025-10-17 19:06:18	901.96
1632	579	2025-09-09 14:42:18	407.73
1633	979	2026-01-10 13:56:51	247.30
1634	403	2025-11-25 09:04:25	519.95
1635	564	2026-04-12 17:30:07	68.28
1636	930	2025-11-22 13:13:12	386.36
1637	247	2025-12-25 17:04:55	490.47
1638	194	2026-01-08 12:02:54	733.29
1639	923	2025-08-20 15:46:36	271.80
1640	191	2026-01-16 16:37:51	170.52
1641	791	2025-05-06 14:59:39	518.06
1642	295	2025-05-15 16:01:08	488.65
1643	324	2026-03-28 07:38:25	296.38
1644	877	2026-03-13 21:22:05	135.03
1645	394	2025-11-20 06:00:32	282.92
1646	159	2025-06-28 00:26:14	899.29
1647	19	2026-02-07 00:43:24	857.57
1648	752	2026-04-06 13:33:54	504.50
1649	480	2026-01-26 11:15:02	773.15
1650	231	2025-11-26 15:21:56	394.94
1651	238	2026-02-24 21:46:42	600.25
1652	382	2025-12-02 13:38:32	608.20
1653	855	2026-01-14 16:32:03	617.00
1654	244	2025-05-21 23:49:59	574.25
1655	728	2025-06-05 01:59:52	284.21
1656	212	2025-09-01 06:21:40	815.58
1657	727	2025-07-22 07:01:54	424.38
1658	666	2026-04-09 01:29:41	838.75
1659	230	2026-02-27 21:30:50	467.33
1660	664	2025-09-03 21:39:00	571.85
1661	853	2026-02-09 00:31:42	319.68
1662	674	2026-03-06 17:13:55	571.79
1663	542	2025-07-12 19:44:03	334.20
1664	557	2025-07-25 13:32:11	1060.43
1665	426	2025-05-22 16:42:52	530.06
1666	80	2025-12-27 21:47:44	669.08
1667	534	2025-09-30 08:37:26	361.58
1668	111	2026-04-18 19:01:47	670.95
1669	778	2025-10-20 20:33:35	571.70
1670	228	2025-07-23 00:05:52	133.11
1671	8	2025-12-27 02:26:24	370.03
1672	763	2026-04-10 00:11:19	278.07
1673	932	2025-05-05 08:40:26	165.12
1674	537	2026-04-19 14:38:33	590.82
1675	316	2025-08-05 21:01:18	590.01
1676	965	2025-06-15 12:56:51	261.64
1677	476	2025-08-29 01:06:35	701.07
1678	679	2025-10-13 23:01:46	293.66
1679	862	2026-04-04 18:34:01	686.16
1680	719	2025-10-04 17:41:40	302.14
1681	433	2026-02-22 22:48:49	347.76
1682	131	2025-12-05 06:56:33	717.30
1683	542	2026-01-18 18:04:59	968.81
1684	44	2026-02-24 20:34:27	346.18
1685	625	2026-02-02 01:41:19	669.50
1686	3	2025-06-29 13:45:10	278.16
1687	328	2026-03-12 22:52:03	735.40
1688	898	2025-06-22 14:42:49	457.93
1689	536	2025-08-31 17:23:59	210.18
1690	139	2025-10-15 19:22:08	1079.13
1691	108	2025-09-30 14:04:39	912.73
1692	147	2026-01-13 19:22:24	128.04
1693	742	2025-12-11 09:43:00	974.45
1694	570	2025-07-12 05:40:01	117.15
1695	520	2026-02-20 08:31:04	141.76
1696	307	2025-10-05 23:52:14	924.27
1697	992	2025-07-06 10:49:45	713.40
1698	962	2025-11-16 21:27:57	140.60
1699	865	2025-10-03 16:08:38	144.52
1700	436	2025-08-24 09:48:17	776.29
1701	400	2026-04-04 04:24:59	198.77
1702	898	2025-08-23 10:41:43	742.94
1703	32	2025-11-16 18:59:35	1011.08
1704	944	2026-03-09 23:31:47	857.85
1705	189	2025-06-23 18:45:24	1153.40
1706	921	2025-08-09 03:55:50	286.50
1707	610	2025-09-27 23:05:01	1053.39
1708	762	2025-11-24 23:55:39	551.56
1709	710	2026-02-22 01:28:33	360.18
1710	20	2026-02-18 18:36:07	90.92
1711	932	2025-10-11 19:57:37	309.67
1712	673	2026-03-14 08:44:01	277.95
1713	677	2025-09-17 06:08:54	801.71
1714	738	2026-03-01 02:27:08	233.76
1715	135	2025-10-15 02:13:54	286.98
1716	325	2025-12-22 07:03:12	1061.71
1717	987	2025-05-06 03:17:41	402.64
1718	112	2025-08-30 17:17:37	542.32
1719	698	2025-05-18 01:27:43	1104.20
1720	839	2025-08-07 08:52:30	937.06
1721	638	2026-03-16 08:09:52	349.02
1722	49	2025-05-16 17:53:36	514.99
1723	872	2025-06-04 08:01:08	148.33
1724	383	2025-07-26 07:32:52	739.38
1725	894	2026-03-13 11:00:55	330.23
1726	418	2025-05-22 21:14:29	876.12
1727	764	2025-06-08 18:38:43	173.09
1728	663	2025-05-05 08:59:28	376.02
1729	913	2025-04-24 21:00:06	63.82
1730	732	2026-01-24 13:21:54	467.23
1731	638	2025-07-25 10:40:03	720.78
1732	70	2025-09-14 15:18:42	986.56
1733	433	2025-10-05 07:39:52	672.72
1734	4	2025-05-19 01:54:07	417.95
1735	417	2025-11-06 03:14:13	243.03
1736	636	2025-05-01 13:18:40	707.06
1737	998	2025-10-31 08:36:59	889.30
1738	540	2025-06-21 00:46:12	1108.78
1739	582	2026-02-08 21:18:10	523.53
1740	147	2025-11-13 22:38:59	892.95
1741	964	2026-04-14 18:03:35	455.47
1742	665	2025-09-18 09:24:58	1198.31
1743	340	2025-11-29 16:12:47	156.18
1744	760	2026-01-18 03:32:58	1346.29
1745	605	2025-05-06 10:52:46	94.74
1746	999	2026-04-04 19:27:51	332.60
1747	204	2025-11-02 22:22:07	1417.17
1748	766	2025-06-25 18:04:44	457.65
1749	42	2025-06-03 06:34:11	283.28
1750	300	2026-03-15 18:43:12	1172.87
1751	904	2025-07-27 07:36:43	1018.93
1752	226	2025-06-22 20:48:13	1038.39
1753	62	2025-08-25 14:08:07	1087.65
1754	90	2025-07-01 03:57:36	330.06
1755	795	2025-06-24 03:26:38	1407.42
1756	354	2025-07-02 01:03:04	646.19
1757	42	2025-09-24 19:07:08	1304.35
1758	305	2025-11-06 19:31:05	168.22
1759	795	2026-02-17 20:47:10	1173.84
1760	170	2026-01-08 09:59:47	302.25
1761	395	2025-10-06 22:36:38	375.32
1762	628	2026-04-15 05:30:29	696.93
1763	945	2025-11-20 15:02:35	1120.95
1764	601	2025-09-16 11:41:56	655.94
1765	352	2025-09-07 22:45:35	1243.68
1766	504	2025-08-25 13:49:26	583.19
1767	80	2026-03-19 04:52:39	738.75
1768	306	2025-09-20 02:57:24	1485.11
1769	62	2026-01-28 12:45:01	60.66
1770	558	2026-03-19 02:44:01	542.57
1771	178	2025-11-04 16:14:50	1195.84
1772	574	2026-02-05 21:51:29	410.62
1773	630	2025-11-22 07:04:57	257.64
1774	316	2025-08-26 03:14:33	599.48
1775	413	2025-11-06 12:44:26	699.40
1776	795	2025-11-11 23:54:36	813.60
1777	327	2025-10-08 15:02:55	791.00
1778	152	2025-04-23 08:56:32	126.42
1779	840	2026-02-17 07:36:06	832.86
1780	369	2026-01-04 03:55:36	586.02
1781	978	2025-05-04 18:31:56	52.06
1782	795	2025-11-19 06:52:58	280.26
1783	624	2025-08-05 21:16:49	911.16
1784	242	2025-12-05 10:13:02	649.24
1785	672	2025-12-12 17:25:45	1279.60
1786	273	2026-01-20 16:39:29	253.14
1787	428	2025-08-03 18:48:43	321.56
1788	725	2026-04-13 17:26:20	720.21
1789	156	2025-10-16 19:27:34	459.10
1790	557	2025-05-05 04:30:51	616.75
1791	573	2026-02-15 07:46:15	832.14
1792	102	2025-10-08 18:23:29	1433.58
1793	210	2025-07-06 10:06:12	126.37
1794	619	2026-03-29 17:07:41	201.50
1795	587	2025-04-24 16:22:54	412.61
1796	978	2026-03-14 16:31:30	101.12
1797	646	2026-02-02 01:35:22	662.59
1798	406	2025-11-08 19:48:41	246.78
1799	802	2025-09-30 13:15:25	721.20
1800	560	2025-08-16 11:40:04	855.96
1801	891	2025-11-26 06:10:22	300.80
1802	491	2026-03-31 00:10:22	592.41
1803	474	2025-12-12 08:45:39	512.31
1804	780	2026-04-09 06:06:46	153.00
1805	725	2026-01-15 23:53:23	356.18
1806	848	2025-05-27 11:21:42	433.92
1807	697	2025-05-02 00:15:54	480.21
1808	764	2025-12-30 04:25:03	71.55
1809	939	2025-12-08 14:29:52	490.38
1810	79	2025-06-04 16:50:35	305.10
1811	486	2025-10-23 09:41:31	709.32
1812	384	2025-10-29 21:26:12	137.41
1813	790	2025-09-14 10:51:24	333.47
1814	297	2026-01-19 06:19:30	192.06
1815	959	2025-05-13 08:10:55	761.80
1816	807	2026-03-19 02:56:08	581.52
1817	81	2025-07-02 05:07:20	590.59
1818	242	2026-01-04 17:28:39	922.88
1819	899	2025-08-07 05:15:26	181.40
1820	899	2025-10-14 11:45:49	613.89
1821	344	2026-01-21 23:56:09	1009.50
1822	359	2026-04-11 20:21:13	579.30
1823	783	2025-09-25 16:17:50	122.89
1824	987	2025-07-10 05:33:14	731.10
1825	457	2025-05-12 04:54:32	810.40
1826	88	2026-03-01 13:05:08	135.03
1827	295	2025-12-11 20:52:28	719.02
1828	828	2026-03-10 22:05:48	1159.11
1829	229	2025-06-19 08:26:21	329.64
1830	924	2026-01-14 08:57:40	604.90
1831	838	2025-05-07 19:28:33	1004.79
1832	569	2025-08-08 16:48:49	399.90
1833	812	2025-09-24 13:35:06	670.13
1834	955	2026-01-23 00:57:29	226.72
1835	636	2025-07-30 11:39:43	108.66
1836	819	2025-12-27 04:13:50	1321.77
1837	809	2025-09-02 10:22:18	353.95
1838	397	2025-08-09 11:52:40	240.02
1839	730	2026-01-23 07:05:31	259.04
1840	924	2026-04-10 08:15:42	450.24
1841	378	2026-04-04 05:29:22	212.64
1842	348	2025-12-21 02:38:29	27.00
1843	113	2025-07-10 05:17:44	93.42
1844	691	2026-01-25 08:28:24	841.72
1845	251	2025-08-09 16:34:26	71.55
1846	74	2026-01-23 09:54:44	332.13
1847	919	2026-03-16 13:49:19	596.31
1848	822	2025-11-12 15:27:13	84.28
1849	736	2025-04-23 20:17:52	784.10
1850	453	2025-10-16 18:49:47	640.80
1851	941	2026-03-27 19:42:43	1062.59
1852	496	2025-08-29 16:05:46	387.90
1853	760	2025-11-26 12:49:51	543.78
1854	413	2025-12-28 23:18:43	199.80
1855	104	2025-10-17 19:26:44	1208.04
1856	514	2025-07-26 09:55:38	443.66
1857	823	2026-01-24 18:37:53	126.92
1858	496	2025-07-29 19:20:53	345.48
1859	325	2026-01-30 21:52:12	1023.66
1860	63	2025-12-11 07:49:24	586.02
1861	117	2025-05-01 19:25:55	126.42
1862	808	2025-05-08 00:30:43	733.14
1863	23	2025-10-18 10:05:52	1121.05
1864	10	2025-12-06 05:54:30	1136.52
1865	378	2025-08-12 01:41:33	394.16
1866	352	2026-01-24 03:32:13	399.90
1867	671	2025-05-21 15:03:48	126.42
1868	851	2025-12-21 23:20:46	969.55
1869	881	2025-10-28 09:38:54	399.48
1870	208	2025-06-20 14:03:27	389.91
1871	135	2025-07-13 12:31:26	157.55
1872	242	2025-07-15 12:14:56	1177.63
1873	395	2025-05-05 20:23:42	481.66
1874	163	2025-05-11 18:43:29	1556.30
1875	699	2025-10-16 16:56:29	90.02
1876	364	2025-09-01 08:05:20	644.87
1877	201	2026-02-10 22:16:19	411.41
1878	274	2025-09-23 06:42:20	568.24
1879	579	2026-03-05 06:05:34	720.61
1880	518	2026-03-22 13:33:39	1051.53
1881	457	2025-09-02 17:31:30	593.31
1882	930	2025-08-14 21:48:47	859.58
1883	978	2026-01-25 16:55:20	948.82
1884	31	2025-10-20 17:54:58	381.02
1885	947	2025-12-11 13:43:29	225.66
1886	96	2025-12-28 12:00:09	204.46
1887	119	2025-11-16 05:49:42	1241.37
1888	459	2026-01-13 08:39:14	723.77
1889	5	2025-05-09 23:11:11	73.09
1890	497	2026-02-18 08:17:45	593.71
1891	843	2025-10-18 18:57:10	983.85
1892	859	2025-06-24 04:29:06	1017.38
1893	837	2026-02-23 10:23:53	978.18
1894	974	2026-03-16 16:12:54	553.64
1895	837	2025-09-22 14:46:36	739.58
1896	691	2025-10-23 16:28:32	310.37
1897	612	2025-06-16 16:04:54	636.33
1898	687	2025-06-01 00:11:10	196.68
1899	811	2025-09-11 19:33:59	762.39
1900	990	2025-11-27 13:59:52	53.22
1901	832	2025-10-17 12:43:44	1265.14
1902	594	2025-05-07 18:00:34	321.84
1903	740	2025-08-19 08:26:51	455.46
1904	916	2026-03-21 10:20:09	814.03
1905	748	2025-12-17 10:46:22	141.64
1906	168	2026-03-21 01:56:00	81.00
1907	701	2025-11-07 20:28:19	90.02
1908	683	2026-02-12 12:36:32	586.44
1909	807	2025-08-21 16:11:48	794.14
1910	922	2025-05-07 17:29:25	556.27
1911	610	2025-05-23 12:08:09	680.37
1912	260	2025-06-22 20:25:25	345.52
1913	294	2025-12-12 15:51:23	1061.73
1914	236	2025-12-06 06:29:35	799.80
1915	340	2026-03-24 12:49:27	141.46
1916	938	2026-02-15 22:41:54	48.56
1917	830	2025-06-13 19:48:42	598.05
1918	127	2026-03-15 19:40:17	986.10
1919	386	2025-09-23 13:10:55	422.72
1920	801	2025-05-23 17:10:39	141.86
1921	687	2025-08-02 00:46:30	664.47
1922	956	2025-12-12 13:55:58	607.33
1923	241	2025-11-04 09:33:01	806.61
1924	945	2025-07-19 19:16:20	248.79
1925	784	2025-07-07 17:35:54	144.52
1926	352	2025-09-14 03:34:23	696.42
1927	119	2025-12-18 06:34:33	569.55
1928	943	2025-10-08 09:39:36	283.28
1929	527	2025-08-05 07:51:05	300.80
1930	844	2025-08-12 16:32:20	398.92
1931	357	2025-08-22 11:46:24	385.46
1932	295	2026-02-24 09:17:06	335.25
1933	533	2025-09-08 05:53:11	22.76
1934	933	2025-09-08 04:23:46	459.33
1935	550	2025-04-23 12:12:04	364.82
1936	294	2026-04-07 10:41:17	85.26
1937	275	2026-01-30 10:53:27	1062.41
1938	658	2025-08-05 05:09:45	725.64
1939	374	2026-01-15 13:17:22	357.09
1940	430	2025-09-14 19:11:09	1083.43
1941	995	2025-10-05 20:05:36	174.52
1942	39	2025-10-28 06:53:04	551.33
1943	119	2026-04-01 23:54:02	360.66
1944	65	2025-05-02 16:37:34	537.45
1945	723	2025-12-20 16:47:34	276.40
1946	512	2025-12-07 23:29:28	300.80
1947	475	2025-09-27 18:49:03	399.24
1948	972	2025-08-12 19:07:56	532.26
1949	912	2025-12-15 00:49:06	554.71
1950	846	2025-11-01 15:40:30	579.92
1951	509	2025-08-13 09:23:47	288.06
1952	75	2026-02-23 11:46:58	549.22
1953	10	2025-10-15 09:40:06	302.10
1954	295	2025-11-10 09:01:29	675.53
1955	963	2026-03-05 08:16:01	444.57
1956	316	2026-01-07 09:23:53	298.34
1957	338	2025-09-20 21:24:07	411.75
1958	39	2025-10-18 00:28:31	1259.04
1959	693	2025-05-04 13:57:37	376.44
1960	431	2026-02-18 19:27:58	481.60
1961	506	2025-12-17 01:19:32	1411.07
1962	875	2025-11-17 04:53:30	805.75
1963	333	2025-11-25 00:26:48	165.00
1964	295	2025-05-31 16:39:46	387.89
1965	62	2025-12-24 01:08:51	553.16
1966	886	2025-06-28 03:44:17	1023.31
1967	935	2025-09-26 15:06:15	163.49
1968	274	2025-05-22 17:49:49	1202.56
1969	659	2025-06-23 16:11:35	164.52
1970	518	2026-04-03 15:25:43	135.91
1971	419	2025-05-02 10:48:25	546.99
1972	729	2026-01-22 01:38:01	1028.25
1973	563	2025-06-11 03:09:23	592.66
1974	116	2026-03-29 03:16:51	1059.94
1975	361	2026-03-03 15:15:12	704.30
1976	896	2025-04-24 01:41:43	210.90
1977	162	2025-07-18 17:37:35	456.04
1978	111	2026-01-03 15:54:30	346.18
1979	292	2026-02-19 19:40:21	296.45
1980	620	2026-04-20 03:00:32	1250.77
1981	928	2026-03-19 03:04:09	306.22
1982	768	2025-12-04 17:58:39	874.57
1983	808	2026-01-25 07:31:54	906.51
1984	502	2025-08-01 01:34:44	646.10
1985	696	2025-08-24 02:01:16	739.05
1986	255	2026-01-12 11:27:02	121.08
1987	4	2025-09-27 20:38:02	52.06
1988	343	2026-01-23 06:22:04	316.69
1989	88	2026-02-26 19:55:13	126.37
1990	498	2025-09-01 12:43:21	695.74
1991	511	2025-07-21 19:03:58	591.13
1992	654	2025-12-01 04:18:19	300.15
1993	86	2026-01-12 16:50:36	1145.58
1994	46	2026-03-25 14:11:17	708.54
1995	305	2025-06-28 09:53:41	989.55
1996	711	2026-03-16 03:07:47	567.76
1997	972	2025-06-02 05:58:17	364.56
1998	565	2025-06-20 10:37:10	625.95
1999	912	2026-03-28 05:58:43	326.67
2000	412	2025-11-20 11:07:52	529.44
2001	659	2026-02-02 11:34:12	621.80
2002	193	2025-06-02 02:05:07	1011.58
2003	570	2025-06-25 01:14:42	1276.68
2004	542	2025-11-28 21:21:20	1404.51
2005	286	2025-05-09 15:56:30	773.75
2006	545	2025-08-18 13:02:19	669.11
2007	495	2026-01-25 20:27:40	226.40
2008	533	2025-09-03 16:43:06	45.01
2009	135	2025-09-10 23:33:22	1270.57
2010	393	2025-09-04 12:40:56	1936.53
2011	856	2026-03-02 17:03:54	198.34
2012	823	2025-12-25 19:48:03	178.84
2013	524	2025-11-08 15:09:56	1014.48
2014	384	2025-06-17 15:22:35	1047.63
2015	764	2025-04-20 10:07:09	84.28
2016	673	2025-06-21 15:54:22	316.94
2017	807	2025-09-01 14:14:06	93.64
2018	586	2025-08-29 10:03:46	466.28
2019	124	2025-06-01 07:44:48	908.35
2020	819	2026-03-18 01:15:09	835.39
2021	495	2025-11-17 18:13:02	868.89
2022	886	2026-01-12 12:24:38	1138.37
2023	62	2026-03-01 12:55:05	510.94
2024	716	2025-11-30 23:55:59	170.52
2025	709	2025-10-26 21:45:05	89.42
2026	218	2026-03-25 20:10:48	421.44
2027	86	2025-11-15 06:05:09	497.09
2028	270	2025-11-16 01:07:31	436.28
2029	830	2025-08-21 17:00:25	671.27
2030	68	2025-10-08 14:38:26	1047.58
2031	778	2025-09-10 23:11:57	779.73
2032	133	2025-09-05 15:15:58	197.47
2033	424	2025-06-07 22:04:00	192.51
2034	864	2025-12-04 04:13:33	540.56
2035	959	2025-05-17 18:19:33	885.17
2036	930	2025-11-04 02:28:19	146.04
2037	713	2025-10-15 16:56:51	133.42
2038	824	2025-05-23 11:40:16	273.66
2039	640	2025-05-16 02:07:31	884.44
2040	715	2025-12-27 05:04:28	789.26
2041	133	2025-08-21 10:27:16	882.88
2042	165	2026-01-01 19:33:40	191.46
2043	638	2025-12-01 22:40:38	430.08
2044	720	2026-01-20 17:39:13	99.17
2045	542	2025-12-06 07:20:48	770.31
2046	43	2025-09-21 04:21:13	549.91
2047	415	2025-11-12 07:55:11	1145.62
2048	13	2025-10-14 05:28:17	635.49
2049	827	2025-06-03 06:31:22	297.51
2050	628	2025-05-09 17:55:06	696.12
2051	508	2025-08-03 09:17:08	518.34
2052	784	2025-05-25 21:28:44	1227.36
2053	634	2025-06-23 02:37:23	648.70
2054	554	2025-12-02 18:32:14	264.12
2055	4	2026-04-18 12:57:37	220.50
2056	958	2026-02-06 09:18:17	168.22
2057	417	2026-02-12 10:49:47	1229.22
2058	132	2025-11-25 18:53:25	615.27
2059	245	2026-03-24 20:30:49	699.27
2060	832	2025-11-15 10:42:45	90.92
2061	844	2025-05-07 09:55:57	271.80
2062	318	2026-04-04 06:27:17	1176.64
2063	922	2025-09-16 09:14:21	1123.30
2064	549	2025-07-26 07:10:33	1306.76
2065	604	2025-08-06 20:24:47	796.22
2066	310	2026-02-20 17:43:16	557.84
2067	828	2025-11-22 05:08:13	165.12
2068	716	2026-03-12 01:55:53	310.02
2069	395	2026-01-24 13:31:31	496.98
2070	607	2025-05-05 19:58:12	814.05
2071	62	2025-08-12 10:05:20	962.37
2072	949	2026-02-27 12:34:44	659.22
2073	467	2025-06-17 12:28:58	274.50
2074	780	2026-04-07 18:50:45	395.03
2075	50	2025-08-01 04:25:34	337.62
2076	154	2025-09-15 16:44:46	842.74
2077	491	2025-09-22 04:59:45	1462.54
2078	4	2025-08-12 10:20:12	1095.91
2079	705	2026-01-13 09:06:36	1032.91
2080	905	2025-11-08 12:50:24	775.06
2081	198	2025-06-18 10:43:46	957.80
2082	489	2025-05-28 16:10:54	89.42
2083	107	2026-03-31 09:54:46	1036.57
2084	101	2025-06-30 13:36:00	706.21
2085	200	2025-06-18 23:27:22	920.25
2086	4	2025-12-14 04:50:18	412.92
2087	393	2025-12-29 21:30:08	244.10
2088	85	2026-01-07 04:55:24	1202.95
2089	775	2025-04-29 14:06:52	165.66
2090	178	2026-01-21 13:31:39	392.60
2091	384	2026-02-01 04:09:12	832.17
2092	787	2026-02-10 08:26:46	664.06
2093	161	2025-12-27 16:06:45	305.10
2094	161	2025-12-18 05:35:58	997.00
2095	750	2026-01-09 15:32:01	700.45
2096	75	2026-01-26 01:32:01	221.53
2097	421	2025-05-09 03:08:12	399.90
2098	548	2025-06-17 15:20:41	335.32
2099	909	2025-10-14 01:42:09	471.72
2100	719	2026-02-27 23:54:17	513.82
2101	90	2025-12-17 00:55:01	170.77
2102	834	2025-09-11 03:37:17	246.78
2103	475	2026-03-19 12:35:51	448.51
2104	923	2026-03-27 04:44:02	188.16
2105	971	2025-11-20 18:54:52	652.72
2106	893	2025-09-04 06:08:10	451.16
2107	367	2025-12-31 03:32:43	159.66
2108	910	2025-09-15 22:10:50	190.38
2109	547	2026-03-24 00:02:50	513.93
2110	844	2025-09-04 11:15:47	794.38
2111	739	2025-05-23 09:28:22	907.50
2112	384	2026-04-19 15:32:27	699.93
2113	302	2026-01-04 04:11:26	1069.80
2114	598	2025-09-22 17:16:22	176.37
2115	505	2025-12-31 15:27:06	82.26
2116	462	2025-08-16 16:11:07	534.18
2117	140	2026-01-19 18:51:12	568.37
2118	98	2025-12-17 03:40:49	958.02
2119	258	2025-10-04 05:01:08	1297.12
2120	365	2025-05-21 04:58:13	277.67
2121	443	2025-05-28 17:59:16	577.34
2122	178	2026-04-12 20:30:08	604.53
2123	953	2025-08-30 08:16:02	281.49
2124	254	2025-05-16 00:56:51	1044.76
2125	908	2025-05-01 09:07:25	700.90
2126	431	2025-11-21 10:23:47	1395.16
2127	990	2026-01-17 09:40:30	1061.33
2128	196	2026-01-05 14:47:43	255.78
2129	14	2025-10-12 18:24:59	606.56
2130	352	2026-01-25 15:23:56	238.12
2131	537	2025-12-18 17:29:17	196.68
2132	518	2026-02-02 20:11:01	165.12
2133	878	2025-08-29 04:10:15	140.60
2134	548	2025-08-15 22:30:02	810.90
2135	783	2025-04-27 03:19:35	274.11
2136	363	2025-08-18 07:11:59	584.04
2137	828	2025-04-28 05:41:02	350.88
2138	411	2025-09-25 08:26:12	163.90
2139	634	2025-09-10 07:18:53	1214.31
2140	641	2025-12-28 01:28:34	1167.30
2141	717	2025-09-30 00:42:45	348.21
2142	905	2026-02-17 14:49:41	972.17
2143	856	2025-04-28 15:38:45	152.55
2144	499	2025-04-26 07:44:38	363.86
2145	140	2025-09-07 11:03:48	659.52
2146	342	2025-09-09 20:10:08	127.64
2147	665	2025-12-23 21:33:00	1117.40
2148	437	2025-12-09 21:18:03	510.12
2149	614	2026-03-22 18:10:41	72.44
2150	945	2025-05-11 02:44:48	185.38
2151	623	2025-09-02 22:38:55	738.28
2152	309	2025-07-31 12:26:36	563.56
2153	628	2025-04-23 09:55:58	635.71
2154	681	2025-05-11 00:07:08	1104.48
2155	573	2025-11-11 05:31:37	540.44
2156	197	2026-01-27 23:21:11	154.02
2157	62	2026-01-18 07:19:09	1201.74
2158	219	2025-08-19 07:41:24	1092.56
2159	725	2025-04-20 14:23:59	383.63
2160	888	2025-12-29 09:16:56	90.92
2161	920	2025-11-16 21:44:47	295.14
2162	991	2025-07-18 06:54:54	70.06
2163	521	2025-11-16 13:46:49	444.84
2164	978	2026-01-27 17:25:21	274.20
2165	125	2025-06-23 18:04:54	826.80
2166	248	2025-12-18 16:21:13	265.51
2167	627	2025-12-31 13:30:37	572.70
2168	574	2025-05-30 01:09:51	420.17
2169	119	2026-03-01 23:57:56	758.97
2170	883	2025-06-11 11:13:42	181.62
2171	783	2025-12-07 18:06:56	198.34
2172	179	2025-04-27 22:03:49	148.64
2173	323	2026-01-19 10:48:29	1134.06
2174	794	2026-02-04 12:23:34	340.28
2175	197	2025-05-04 08:38:06	463.08
2176	992	2026-04-05 06:03:56	127.66
2177	737	2026-02-07 16:12:32	1286.99
2178	461	2026-04-04 14:54:54	282.92
2179	987	2025-04-22 04:05:56	1134.00
2180	651	2025-12-01 04:29:40	539.73
2181	487	2025-07-12 10:41:04	339.64
2182	216	2025-04-29 05:53:46	746.37
2183	800	2025-08-25 21:26:16	567.26
2184	439	2025-06-05 02:22:47	870.61
2185	531	2026-03-28 19:52:04	204.46
2186	189	2025-08-04 12:42:47	818.71
2187	857	2026-03-07 05:21:12	1146.54
2188	729	2025-08-05 20:46:35	1401.78
2189	953	2025-11-02 05:07:03	1215.59
2190	63	2026-01-18 10:25:15	256.03
2191	659	2026-03-04 14:58:32	178.84
2192	365	2026-04-06 21:20:51	323.81
2193	131	2025-04-29 12:49:09	464.74
2194	481	2026-01-03 18:58:31	772.75
2195	141	2025-06-21 13:37:37	507.17
2196	736	2025-06-15 17:01:36	532.54
2197	133	2025-08-26 13:39:55	232.14
2198	693	2025-06-29 18:01:30	141.86
2199	959	2025-08-13 15:17:42	168.22
2200	117	2025-12-31 19:54:44	946.54
2201	59	2025-07-11 16:44:38	838.63
2202	335	2025-12-08 19:44:35	555.75
2203	387	2025-11-18 01:17:10	459.96
2204	175	2025-05-21 06:52:01	249.61
2205	540	2026-04-03 15:43:51	426.60
2206	658	2025-12-23 03:29:34	529.34
2207	881	2026-01-02 01:19:26	316.42
2208	752	2026-01-26 00:25:21	831.47
2209	147	2025-12-07 04:38:31	969.75
2210	299	2025-10-11 17:30:27	405.55
2211	303	2025-10-12 19:38:00	216.78
2212	885	2025-04-26 19:43:43	1066.77
2213	545	2025-10-10 23:00:12	734.92
2214	775	2025-12-30 19:38:44	971.93
2215	164	2026-04-19 21:43:28	347.95
2216	415	2025-06-25 09:30:38	795.75
2217	729	2026-01-23 06:51:44	531.53
2218	320	2026-02-07 11:59:02	210.82
2219	50	2025-12-18 12:15:13	713.95
2220	645	2025-10-11 01:28:38	652.48
2221	803	2025-11-15 05:16:29	722.86
2222	34	2025-10-06 00:58:44	181.62
2223	278	2026-02-28 16:53:31	1603.80
2224	332	2026-03-05 10:16:17	476.18
2225	823	2026-02-24 18:20:29	412.23
2226	304	2025-05-14 22:11:38	1542.51
2227	284	2025-06-29 04:11:50	397.54
2228	86	2025-07-22 05:05:55	1374.62
2229	280	2025-10-16 10:43:47	1005.60
2230	815	2025-10-06 00:20:33	284.23
2231	489	2025-12-09 04:54:03	455.89
2232	228	2026-03-20 06:14:09	102.23
2233	422	2025-07-03 17:05:28	274.20
2234	517	2025-06-23 06:45:05	94.08
2235	668	2025-05-09 21:55:06	512.76
2236	285	2025-12-04 15:46:31	64.53
2237	516	2026-01-26 22:25:05	280.24
2238	927	2026-03-24 21:34:38	1144.41
2239	690	2025-12-04 21:19:54	839.47
2240	556	2026-04-14 19:02:41	71.36
2241	783	2025-08-15 22:05:23	330.50
2242	866	2026-01-21 17:29:29	126.42
2243	645	2025-06-15 01:54:08	608.19
2244	298	2025-07-24 17:01:55	697.38
2245	703	2025-04-23 21:01:43	416.62
2246	670	2025-08-21 12:28:42	420.85
2247	28	2025-10-11 13:59:33	696.20
2248	732	2025-10-09 10:14:22	250.20
2249	946	2025-10-18 22:04:59	267.49
2250	383	2025-06-28 00:35:30	1178.43
2251	178	2025-09-25 10:34:35	937.85
2252	554	2025-08-15 01:54:56	174.51
2253	977	2025-05-26 05:29:27	881.16
2254	378	2025-08-27 07:13:58	284.49
2255	898	2026-03-19 03:59:55	548.22
2256	348	2026-02-07 14:11:54	360.49
2257	894	2026-04-01 21:18:25	609.28
2258	963	2025-11-06 10:50:34	713.80
2259	336	2026-04-15 21:27:42	236.00
2260	136	2026-03-03 01:13:01	986.24
2261	502	2025-10-17 17:40:04	966.00
2262	577	2025-11-19 17:20:04	195.34
2263	950	2025-11-27 14:39:56	292.08
2264	193	2025-06-28 22:06:08	439.80
2265	693	2026-02-02 15:31:56	365.55
2266	419	2025-11-28 07:25:04	534.15
2267	229	2025-12-31 05:44:29	188.16
2268	100	2026-04-08 23:04:58	749.31
2269	340	2025-10-04 13:44:57	1210.08
2270	584	2025-08-09 19:56:04	534.62
2271	809	2025-11-01 07:02:08	767.20
2272	987	2025-10-06 16:58:49	768.43
2273	666	2025-07-17 20:13:01	260.08
2274	635	2026-01-07 00:13:59	1216.03
2275	328	2025-08-30 08:40:47	814.47
2276	140	2025-10-22 02:57:37	296.66
2277	636	2026-03-31 02:34:42	1104.04
2278	212	2026-03-22 17:15:57	440.64
2279	3	2025-09-04 08:45:09	709.80
2280	351	2025-10-29 06:34:03	197.47
2281	238	2025-12-20 05:04:21	605.87
2282	692	2025-06-10 19:21:41	419.99
2283	265	2025-09-02 06:16:24	811.77
2284	358	2025-10-11 02:29:13	490.47
2285	534	2025-06-14 23:29:43	164.52
2286	308	2025-05-23 20:09:20	811.82
2287	91	2025-05-04 00:39:57	279.85
2288	727	2025-09-18 14:41:52	760.64
2289	93	2025-08-30 05:11:59	513.87
2290	693	2025-06-25 21:05:05	568.53
2291	119	2025-06-27 04:20:46	590.82
2292	110	2026-01-06 07:01:08	776.76
2293	891	2025-06-17 10:45:56	1509.39
2294	886	2025-09-30 07:39:02	586.02
2295	391	2025-06-08 23:47:53	732.27
2296	835	2025-07-31 03:57:34	1265.60
2297	319	2025-04-26 12:01:31	142.56
2298	116	2025-06-08 23:02:14	687.14
2299	621	2025-12-12 18:20:29	460.14
2300	754	2025-10-15 08:17:00	580.15
2301	671	2025-06-03 01:08:51	1444.99
2302	908	2025-06-29 22:04:52	698.88
2303	280	2026-02-14 00:44:04	308.82
2304	354	2025-06-25 15:21:52	959.09
2305	997	2025-10-21 20:57:08	332.34
2306	869	2026-04-20 06:01:10	400.18
2307	679	2026-02-02 05:15:50	73.35
2308	386	2026-01-19 10:29:31	1038.79
2309	842	2026-01-17 20:12:55	707.25
2310	841	2026-03-05 10:25:30	391.13
2311	180	2026-01-24 12:47:48	555.46
2312	476	2026-03-08 19:40:59	1122.95
2313	456	2025-10-29 09:36:25	335.89
2314	144	2026-02-06 11:50:05	666.51
2315	445	2026-03-19 14:04:19	524.96
2316	721	2025-09-29 11:48:51	102.23
2317	349	2026-02-02 14:39:40	246.78
2318	601	2026-01-03 18:43:27	321.30
2319	875	2025-08-29 13:14:11	418.62
2320	832	2025-08-01 04:47:44	501.11
2321	814	2025-07-18 08:50:56	346.59
2322	597	2026-03-10 01:31:06	163.49
2323	987	2025-11-17 19:47:59	425.34
2324	208	2025-10-25 01:40:10	853.41
2325	949	2025-05-10 11:11:17	99.17
2326	554	2026-02-02 17:20:48	190.95
2327	743	2025-09-04 07:33:48	708.04
2328	375	2025-05-13 20:20:44	276.08
2329	383	2025-08-22 06:33:29	141.86
2330	861	2025-11-30 08:16:18	278.94
2331	448	2025-11-18 21:28:50	459.33
2332	885	2026-02-19 21:21:32	170.52
2333	533	2025-08-21 02:52:54	156.18
2334	446	2025-09-02 00:19:55	823.95
2335	695	2026-03-16 19:31:46	1213.40
2336	596	2025-06-02 03:04:59	460.77
2337	189	2026-01-25 11:40:17	232.28
2338	342	2025-09-22 09:57:17	138.20
2339	43	2025-12-31 01:38:58	805.47
2340	813	2025-10-09 05:57:26	618.80
2341	888	2025-06-14 14:16:09	930.20
2342	197	2025-12-27 12:36:23	759.18
2343	371	2025-08-31 03:35:42	210.90
2344	744	2025-05-07 20:10:34	808.29
2345	39	2025-06-30 12:40:01	247.50
2346	588	2026-04-12 15:15:34	1033.38
2347	829	2026-04-16 18:41:50	1048.57
2348	847	2026-01-12 22:13:13	617.96
2349	492	2025-08-20 00:06:51	274.20
2350	664	2026-02-01 09:42:03	377.56
2351	340	2025-04-24 12:14:19	196.94
2352	499	2025-09-05 13:27:23	1654.62
2353	631	2025-05-05 04:11:56	502.70
2354	68	2025-04-21 11:35:02	497.48
2355	680	2025-09-22 22:42:41	809.64
2356	964	2026-03-20 06:57:57	937.62
2357	36	2026-02-10 22:57:41	282.92
2358	783	2026-01-29 07:40:52	82.83
2359	218	2025-12-02 08:35:43	218.70
2360	816	2025-11-18 10:07:35	54.00
2361	257	2025-12-23 23:05:01	646.22
2362	706	2026-01-14 06:41:39	306.69
2363	207	2025-09-30 10:43:40	932.24
2364	233	2025-07-25 14:15:02	766.93
2365	885	2025-10-25 15:05:08	250.32
2366	150	2025-10-27 07:18:03	467.10
2367	165	2026-01-21 18:30:45	165.04
2368	408	2025-04-20 20:32:40	715.11
2369	550	2025-11-06 11:53:24	251.63
2370	613	2026-04-03 20:36:31	645.95
2371	349	2025-10-01 12:35:09	146.60
2372	255	2025-04-21 00:49:46	932.59
2373	117	2026-04-02 16:36:29	963.95
2374	641	2025-08-04 23:11:14	691.42
2375	526	2025-08-04 14:43:54	904.49
2376	877	2026-03-11 07:53:16	63.46
2377	857	2025-11-19 04:59:06	547.85
2378	638	2026-01-23 18:25:57	90.02
2379	101	2026-04-07 06:40:01	1254.60
2380	107	2025-05-13 13:33:28	746.46
2381	435	2025-08-07 05:18:30	430.53
2382	303	2026-02-09 05:41:27	445.96
2383	775	2025-09-24 11:29:03	840.94
2384	883	2026-01-29 15:26:00	1148.52
2385	25	2025-05-04 18:53:17	1361.54
2386	396	2025-05-15 04:40:12	697.10
2387	242	2025-09-12 19:44:19	844.17
2388	103	2025-07-26 04:21:32	831.10
2389	669	2025-10-11 17:53:55	803.27
2390	360	2026-01-02 13:40:31	817.32
2391	937	2025-12-07 01:44:32	386.75
2392	933	2026-01-17 05:36:41	348.03
2393	921	2025-07-10 00:23:37	393.06
2394	76	2025-12-02 23:25:49	1067.38
2395	209	2026-02-04 06:48:39	999.77
2396	915	2025-07-18 05:32:45	489.96
2397	780	2026-01-12 05:37:05	979.08
2398	621	2025-05-20 12:34:57	55.04
2399	746	2025-08-11 12:03:50	296.66
2400	517	2025-06-08 20:53:25	827.62
2401	52	2025-10-21 21:12:21	47.37
2402	816	2026-03-22 21:11:44	100.70
2403	663	2025-09-09 14:29:47	877.71
2404	2	2025-05-10 15:55:04	198.16
2405	744	2025-09-01 01:49:33	1128.71
2406	976	2025-04-24 09:33:39	697.08
2407	776	2026-01-25 03:52:04	673.85
2408	88	2026-01-27 18:25:08	222.35
2409	154	2026-03-17 20:41:50	347.93
2410	799	2025-08-16 15:22:45	450.50
2411	351	2025-11-30 01:27:37	574.47
2412	345	2025-10-20 05:50:18	645.88
2413	246	2025-06-24 17:35:55	499.74
2414	752	2026-03-13 09:44:31	493.95
2415	987	2025-08-25 19:32:54	282.24
2416	207	2025-12-15 23:21:55	539.08
2417	348	2026-04-06 07:46:46	544.72
2418	509	2026-03-08 21:41:32	512.31
2419	135	2025-12-20 06:38:27	618.11
2420	36	2025-07-29 11:29:49	1020.25
2421	406	2026-03-06 18:35:12	727.38
2422	355	2025-08-20 19:18:46	291.60
2423	874	2026-04-03 23:10:54	539.82
2424	324	2025-11-11 21:28:20	331.32
2425	787	2025-06-14 07:29:25	817.23
2426	857	2026-04-17 20:03:24	696.89
2427	731	2026-01-23 14:40:18	973.66
2428	911	2025-06-21 20:37:50	933.81
2429	574	2025-09-26 20:48:56	1120.19
2430	855	2025-06-17 14:28:14	1313.31
2431	450	2026-03-22 05:19:08	1035.51
2432	545	2026-01-29 22:31:11	99.26
2433	481	2025-08-29 00:55:37	289.01
2434	328	2025-05-01 21:01:22	887.10
2435	848	2025-06-11 04:17:57	137.25
2436	841	2025-10-28 23:38:01	300.80
2437	63	2025-11-25 20:27:16	936.04
2438	551	2026-04-04 11:18:41	1028.80
2439	17	2025-09-18 21:45:46	444.99
2440	503	2026-01-03 00:48:12	149.76
2441	297	2025-08-19 23:48:34	810.46
2442	295	2025-10-13 09:53:03	844.57
2443	605	2025-11-03 16:52:51	682.92
2444	892	2026-03-03 17:48:23	593.72
2445	153	2025-12-18 23:10:36	820.52
2446	392	2025-11-17 15:32:43	45.46
2447	205	2025-11-24 10:20:54	892.06
2448	196	2026-03-01 14:50:58	517.66
2449	449	2025-05-25 14:15:34	357.16
2450	12	2025-12-21 03:48:30	1337.70
2451	703	2025-09-17 15:27:06	897.61
2452	843	2025-09-16 05:15:01	991.44
2453	842	2025-06-22 17:58:17	444.99
2454	895	2026-01-18 05:39:08	851.60
2455	318	2025-10-08 03:24:20	1333.17
2456	778	2025-11-28 18:55:18	744.47
2457	597	2025-07-22 11:19:59	863.17
2458	224	2025-06-09 22:43:23	1184.58
2459	834	2025-05-18 12:14:43	597.61
2460	821	2025-12-09 11:03:31	912.60
2461	108	2026-01-21 18:46:39	999.70
2462	621	2026-01-11 03:39:05	696.82
2463	756	2026-02-20 09:13:50	22.76
2464	626	2025-07-13 11:17:09	214.20
2465	109	2025-05-16 02:58:10	1029.36
2466	145	2025-04-27 02:16:02	648.29
2467	251	2026-04-12 18:54:05	181.62
2468	583	2025-06-14 21:40:25	476.00
2469	37	2025-11-17 19:46:52	1641.33
2470	690	2025-10-06 22:36:10	372.20
2471	614	2025-04-29 15:23:19	964.67
2472	789	2025-12-23 21:01:19	201.40
2473	889	2026-01-26 00:10:20	341.54
2474	551	2025-05-25 04:22:26	1395.96
2475	850	2025-10-13 20:07:47	140.60
2476	569	2025-08-03 09:05:20	1107.65
2477	538	2026-02-26 11:50:30	716.83
2478	83	2025-04-20 20:40:38	692.09
2479	90	2025-06-30 18:48:19	201.72
2480	246	2025-05-09 18:27:27	361.58
2481	213	2025-07-10 00:40:53	431.75
2482	412	2025-12-08 16:33:27	708.93
2483	769	2025-09-12 07:13:39	246.45
2484	700	2026-02-03 16:58:23	234.30
2485	15	2026-02-18 08:04:07	328.31
2486	798	2025-06-17 15:42:30	752.59
2487	85	2026-04-10 17:53:00	551.15
2488	917	2026-02-14 10:52:28	700.90
2489	635	2025-08-31 15:48:20	808.88
2490	889	2026-03-22 17:12:47	1429.01
2491	348	2026-01-15 11:43:53	406.40
2492	37	2025-11-03 13:41:00	880.10
2493	992	2025-12-12 12:04:53	555.36
2494	395	2025-09-11 23:06:04	212.64
2495	77	2025-07-06 04:04:17	323.38
2496	203	2025-06-16 17:22:25	1083.88
2497	943	2025-07-27 12:23:35	978.27
2498	410	2025-12-22 18:01:41	533.51
2499	406	2025-12-12 20:54:02	960.30
2500	395	2025-09-09 18:11:23	141.86
2501	555	2025-05-13 06:19:29	607.03
2502	388	2025-08-15 21:56:18	799.64
2503	622	2025-12-31 16:29:48	416.71
2504	405	2026-02-20 02:58:20	959.91
2505	236	2026-02-12 07:28:59	635.57
2506	367	2025-09-06 16:28:24	203.10
2507	596	2025-06-18 00:01:43	391.80
2508	197	2026-02-23 05:15:14	898.59
2509	562	2026-04-17 02:00:02	1152.96
2510	821	2025-11-17 09:10:59	569.07
2511	378	2025-07-01 22:41:06	402.96
2512	613	2026-03-17 09:22:52	653.24
2513	628	2025-10-04 19:54:16	638.14
2514	505	2025-08-24 11:39:04	1241.55
2515	318	2025-11-17 23:11:31	724.63
2516	94	2025-09-28 08:10:39	283.72
2517	903	2026-03-29 19:38:22	887.85
2518	969	2025-05-25 09:26:58	71.36
2519	10	2025-06-07 09:10:14	346.91
2520	219	2025-07-17 11:53:56	720.99
2521	883	2025-06-05 08:32:12	168.22
2522	5	2025-09-13 23:16:44	431.86
2523	13	2025-06-13 02:26:26	143.10
2524	323	2026-01-24 11:41:11	525.62
2525	37	2025-09-22 03:05:29	395.63
2526	311	2025-08-06 06:03:22	790.52
2527	384	2026-02-27 22:42:25	117.58
2528	317	2025-12-20 03:37:08	788.36
2529	757	2026-03-08 12:14:28	854.75
2530	439	2026-02-27 17:48:41	839.31
2531	262	2025-12-13 15:23:07	944.60
2532	48	2025-09-29 04:19:13	729.68
2533	247	2026-03-18 20:17:58	980.92
2534	973	2025-05-08 14:10:02	194.00
2535	481	2025-10-09 09:08:30	1282.34
2536	382	2025-10-16 02:50:45	258.99
2537	55	2025-12-28 18:31:16	375.26
2538	322	2025-07-12 05:35:24	543.66
2539	633	2025-10-15 09:17:08	939.25
2540	922	2025-05-25 02:43:15	232.47
2541	183	2025-06-02 18:21:32	515.95
2542	843	2025-10-28 16:37:17	210.18
2543	80	2025-11-14 03:17:39	154.02
2544	202	2025-12-27 06:47:37	282.92
2545	607	2025-05-31 06:11:06	521.99
2546	891	2025-12-31 18:25:09	871.80
2547	482	2025-08-04 14:53:35	27.00
2548	898	2025-10-19 11:44:16	282.24
2549	882	2025-08-10 01:50:53	60.66
2550	774	2026-04-15 10:54:02	140.12
2551	815	2025-10-29 17:21:20	578.52
2552	796	2025-12-07 12:15:55	333.91
2553	734	2025-09-11 18:36:56	55.04
2554	825	2026-01-05 06:39:31	561.73
2555	986	2025-11-04 17:38:20	390.27
2556	642	2025-07-08 18:43:39	772.35
2557	370	2026-01-16 08:57:46	154.67
2558	265	2025-12-24 23:11:43	208.85
2559	613	2025-06-16 22:55:12	760.81
2560	186	2025-12-10 14:25:11	438.12
2561	55	2026-02-19 22:47:48	45.52
2562	456	2025-11-13 05:44:03	257.94
2563	889	2026-02-22 19:12:10	980.47
2564	368	2025-09-02 19:19:57	504.64
2565	72	2025-10-23 13:44:04	137.10
2566	426	2026-02-27 01:03:32	526.79
2567	883	2025-09-24 06:03:54	722.77
2568	622	2025-07-16 09:10:05	904.64
2569	400	2026-02-22 13:34:47	670.77
2570	362	2025-09-01 01:37:06	620.34
2571	690	2025-05-22 10:51:29	186.84
2572	264	2025-08-13 18:36:19	320.32
2573	848	2025-07-30 15:45:49	556.85
2574	234	2025-08-04 11:49:32	497.08
2575	723	2025-10-21 00:12:16	70.30
2576	590	2026-03-11 18:43:47	1243.40
2577	828	2025-05-25 18:53:51	331.32
2578	487	2025-08-28 00:56:02	202.24
2579	432	2026-02-19 04:57:47	489.30
2580	883	2025-07-18 14:28:03	427.41
2581	84	2025-05-28 13:40:27	509.79
2582	486	2026-03-17 07:37:58	526.86
2583	257	2025-10-30 00:05:07	170.52
2584	55	2026-04-09 05:36:48	550.27
2585	516	2025-11-05 11:41:07	82.50
2586	884	2026-01-25 11:43:27	1574.84
2587	95	2026-04-16 21:28:41	74.88
2588	271	2026-04-08 17:44:55	585.01
2589	439	2025-09-14 14:54:01	620.52
2590	133	2025-10-12 02:13:28	943.71
2591	554	2026-02-27 07:04:00	193.15
2592	482	2026-02-21 10:43:13	1252.24
2593	573	2025-07-07 18:11:57	582.90
2594	961	2025-12-20 09:58:15	583.15
2595	974	2025-10-16 10:15:06	390.96
2596	776	2026-01-20 15:07:09	174.51
2597	77	2025-11-14 21:04:27	151.49
2598	23	2025-06-01 02:40:28	1151.34
2599	33	2026-03-16 00:36:47	157.55
2600	236	2025-10-17 00:08:43	220.19
2601	370	2026-03-02 15:35:06	794.49
2602	836	2025-06-28 00:51:23	71.36
2603	521	2025-10-12 20:13:41	1501.57
2604	545	2026-02-09 19:28:06	97.20
2605	212	2026-02-22 04:24:53	72.44
2606	341	2025-06-14 19:19:16	159.66
2607	976	2025-06-08 05:53:18	150.40
2608	385	2026-02-14 09:10:17	500.66
2609	714	2026-04-01 16:55:56	231.88
2610	209	2025-08-04 16:38:47	981.50
2611	229	2025-07-23 04:52:49	232.14
2612	413	2025-05-05 08:55:02	318.61
2613	558	2025-04-27 11:06:14	488.56
2614	561	2025-05-12 01:14:52	262.04
2615	453	2025-12-22 19:14:41	632.94
2616	259	2025-12-04 19:50:36	1004.16
2617	837	2025-07-14 23:56:17	757.79
2618	644	2026-03-17 05:59:06	165.12
2619	127	2025-11-01 04:31:45	372.30
2620	232	2025-05-21 20:23:19	22.76
2621	111	2025-09-11 00:09:12	1422.53
2622	617	2025-07-16 18:28:18	574.75
2623	436	2026-01-27 11:18:39	392.46
2624	720	2026-03-21 08:43:43	630.38
2625	406	2025-06-28 19:07:06	568.65
2626	126	2025-07-08 15:05:55	596.82
2627	966	2026-02-06 08:27:15	1263.49
2628	930	2025-09-05 08:15:35	679.32
2629	762	2025-11-24 23:46:06	1323.88
2630	311	2025-07-05 17:56:46	919.87
2631	14	2025-06-27 00:02:17	349.02
2632	199	2025-07-12 12:14:22	568.90
2633	673	2025-09-19 16:23:51	844.47
2634	757	2026-03-08 08:49:57	610.10
2635	34	2025-06-20 05:01:59	546.17
2636	105	2025-07-13 20:12:34	1112.28
2637	468	2026-03-03 23:13:49	800.53
2638	223	2025-05-30 13:27:44	700.50
2639	174	2025-10-03 11:36:09	60.66
2640	590	2025-06-08 09:40:05	1102.07
2641	386	2025-09-05 07:59:15	135.91
2642	317	2025-12-20 05:50:03	733.98
2643	435	2025-05-31 00:17:53	530.86
2644	686	2025-05-18 06:34:21	858.38
2645	33	2026-01-14 13:31:34	865.42
2646	802	2026-01-15 01:40:01	1222.77
2647	831	2026-04-12 16:23:04	397.14
2648	342	2026-04-01 16:36:51	268.14
2649	252	2026-02-13 00:26:58	557.12
2650	221	2025-12-26 19:20:09	590.05
2651	315	2025-11-18 12:05:15	292.62
2652	257	2026-03-28 11:15:41	267.64
2653	694	2026-03-05 09:08:01	649.74
2654	582	2025-07-01 16:22:28	506.79
2655	759	2026-01-05 05:44:26	1498.13
2656	833	2025-08-20 14:48:07	335.66
2657	979	2026-02-19 01:35:28	926.55
2658	226	2026-03-17 10:21:54	483.30
2659	402	2025-11-10 06:06:42	1606.13
2660	787	2025-09-01 02:49:59	349.75
2661	116	2025-07-26 14:03:31	266.58
2662	376	2025-06-20 18:38:29	293.21
2663	542	2025-06-13 18:23:00	1073.58
2664	12	2026-02-16 16:38:40	899.15
2665	582	2025-11-09 19:28:15	536.79
2666	940	2025-10-27 07:34:45	140.12
2667	122	2025-08-09 07:10:24	867.51
2668	735	2025-10-20 10:19:30	1061.73
2669	365	2026-01-06 06:53:41	519.38
2670	778	2026-02-16 18:47:40	494.85
2671	281	2026-01-13 14:55:47	448.16
2672	327	2025-12-04 13:16:49	858.81
2673	569	2025-12-21 23:27:33	796.77
2674	155	2025-11-28 15:39:21	546.17
2675	638	2026-02-20 07:24:50	417.24
2676	450	2025-10-02 22:49:31	1027.34
2677	651	2025-10-31 22:28:23	82.50
2678	304	2025-06-03 15:45:58	1378.62
2679	822	2026-01-28 16:26:18	484.53
2680	527	2025-08-17 20:20:03	173.09
2681	331	2025-11-27 23:45:19	411.58
2682	967	2025-10-13 15:34:25	269.31
2683	383	2025-08-02 01:24:03	1064.13
2684	373	2026-02-28 07:43:55	564.78
2685	29	2025-05-27 05:08:07	291.60
2686	889	2025-05-25 16:08:33	421.26
2687	857	2025-06-01 12:05:36	209.72
2688	556	2025-07-13 21:47:32	530.47
2689	537	2026-02-18 13:14:30	480.61
2690	31	2026-01-09 10:19:52	177.91
2691	688	2025-10-11 02:58:19	322.07
2692	606	2026-04-20 07:19:05	393.88
2693	984	2025-06-27 21:19:52	219.27
2694	293	2025-06-24 18:24:31	472.65
2695	293	2025-06-24 07:43:30	379.64
2696	911	2025-11-15 11:23:24	191.86
2697	993	2025-09-08 16:41:25	276.40
2698	872	2025-07-03 12:57:52	1074.29
2699	177	2025-04-28 21:37:32	728.56
2700	868	2025-10-18 05:25:39	736.29
2701	607	2025-07-11 10:18:04	650.16
2702	482	2025-06-09 17:00:34	704.97
2703	909	2025-07-29 03:21:21	702.01
2704	629	2025-07-26 01:49:58	666.74
2705	490	2025-05-10 01:17:16	386.72
2706	759	2025-05-29 22:21:19	836.59
2707	465	2026-01-20 09:13:25	353.76
2708	666	2025-09-11 05:37:23	196.68
2709	575	2026-01-27 16:26:28	278.05
2710	983	2025-05-13 15:42:56	272.34
2711	9	2025-11-19 04:09:26	496.50
2712	785	2026-04-04 04:52:02	303.36
2713	971	2025-06-15 11:12:38	22.76
2714	338	2025-07-04 01:42:18	630.04
2715	891	2025-12-28 18:31:42	724.02
2716	400	2025-07-08 14:24:20	494.76
2717	362	2026-02-14 01:39:32	661.77
2718	162	2025-08-29 14:06:16	867.03
2719	321	2025-08-15 18:12:43	480.25
2720	9	2026-03-11 09:51:40	385.46
2721	641	2025-12-16 07:03:09	201.40
2722	792	2025-12-25 08:05:32	312.52
2723	995	2025-05-02 01:44:29	1204.60
2724	221	2025-05-15 15:48:53	730.12
2725	255	2026-03-23 10:27:00	464.45
2726	613	2026-03-02 15:36:20	852.64
2727	803	2026-04-02 19:33:08	346.94
2728	627	2025-08-20 00:51:15	1419.72
2729	951	2026-02-16 03:12:17	767.12
2730	482	2025-05-01 00:35:26	640.91
2731	315	2025-12-09 04:22:43	578.19
2732	797	2026-02-16 05:59:49	393.06
2733	97	2025-04-23 20:31:04	694.79
2734	748	2025-10-23 10:46:36	411.75
2735	821	2025-10-06 18:33:57	24.45
2736	527	2025-08-05 10:34:34	422.37
2737	776	2025-07-07 16:00:28	104.12
2738	243	2025-10-17 01:14:13	181.62
2739	569	2025-11-09 03:57:24	631.98
2740	172	2025-08-31 19:39:26	383.01
2741	710	2025-09-04 23:22:45	146.60
2742	605	2025-06-17 01:17:52	613.87
2743	236	2026-04-17 17:17:33	107.10
2744	954	2025-11-25 13:10:12	252.33
2745	21	2025-10-10 20:38:16	291.57
2746	8	2025-12-09 17:36:57	557.55
2747	662	2025-10-16 10:49:47	393.32
2748	2	2025-10-20 04:21:35	284.94
2749	174	2026-01-10 13:44:48	70.06
2750	279	2026-02-01 10:15:22	478.19
2751	758	2025-11-09 15:05:14	957.00
2752	195	2026-03-01 16:10:17	351.45
2753	600	2026-03-05 17:50:10	506.92
2754	610	2025-06-11 09:37:30	457.65
2755	945	2025-10-13 13:39:57	247.95
2756	354	2026-02-21 17:38:38	917.15
2757	897	2025-05-16 22:07:32	389.08
2758	205	2025-11-13 22:25:15	523.79
2759	968	2025-07-06 11:06:13	624.69
2760	764	2025-05-28 18:58:43	255.78
2761	628	2025-11-13 15:10:26	286.59
2762	764	2025-05-29 18:42:18	530.01
2763	55	2026-03-23 16:04:35	635.06
2764	628	2025-04-21 04:43:40	1041.42
2765	180	2025-06-01 20:03:50	933.68
2766	632	2026-04-20 03:29:19	127.64
2767	164	2025-10-19 16:50:19	1354.38
2768	854	2026-04-06 15:21:28	219.67
2769	723	2025-11-15 05:08:21	1635.87
2770	876	2025-05-22 11:32:07	1014.80
2771	475	2026-03-02 12:27:22	60.54
2772	342	2025-12-04 07:58:49	578.19
2773	974	2025-09-04 15:47:03	1167.37
2774	685	2025-09-28 11:18:20	399.84
2775	387	2025-10-05 10:12:33	590.82
2776	183	2026-04-06 04:42:42	416.49
2777	668	2026-04-07 07:42:30	1218.64
2778	411	2025-10-15 09:26:27	304.02
2779	499	2026-01-21 06:31:29	856.00
2780	562	2025-10-24 15:07:08	967.63
2781	458	2026-04-02 06:50:31	303.36
2782	657	2026-03-13 21:06:59	770.22
2783	433	2025-08-19 01:31:09	494.80
2784	792	2025-08-07 12:26:20	383.01
2785	234	2025-08-08 01:16:38	788.01
2786	816	2026-01-26 04:23:59	1302.77
2787	283	2025-12-12 13:41:51	344.58
2788	60	2026-01-23 22:03:38	976.05
2789	449	2025-06-11 14:17:32	107.10
2790	938	2025-09-20 20:46:35	462.06
2791	112	2025-04-23 14:21:07	451.08
2792	493	2025-07-14 13:10:42	102.23
2793	194	2025-07-02 08:33:15	516.70
2794	442	2025-12-26 11:05:54	765.18
2795	501	2025-07-28 08:25:32	547.75
2796	553	2026-01-01 03:02:46	521.19
2797	455	2025-10-08 13:43:06	468.46
2798	580	2025-06-01 15:26:40	847.07
2799	711	2026-02-21 18:07:03	754.44
2800	626	2026-01-03 22:58:47	545.08
2801	61	2025-10-17 17:46:43	472.65
2802	584	2026-01-12 14:18:58	780.37
2803	133	2025-08-13 04:18:03	500.10
2804	981	2026-01-09 04:24:07	344.66
2805	422	2025-05-15 17:33:11	1455.87
2806	515	2026-02-05 20:00:40	612.22
2807	511	2026-04-06 21:45:05	519.27
2808	360	2025-05-20 08:09:36	1283.61
2809	13	2025-06-01 19:22:38	237.36
2810	938	2026-03-04 17:30:20	400.74
2811	138	2025-07-31 00:41:24	82.26
2812	732	2025-05-20 08:46:23	411.75
2813	623	2026-01-25 15:11:46	94.08
2814	916	2026-01-03 00:38:04	335.22
2815	268	2025-09-06 21:38:54	704.76
2816	733	2026-02-11 14:01:21	1308.56
2817	353	2025-07-15 18:38:42	951.68
2818	628	2025-12-25 00:52:35	828.49
2819	173	2026-01-21 06:45:20	192.51
2820	807	2025-12-31 13:38:50	284.94
2821	367	2025-12-15 03:15:29	696.00
2822	146	2025-06-01 13:31:53	420.42
2823	387	2025-07-19 20:11:38	261.69
2824	943	2025-09-26 02:28:52	1061.73
2825	275	2025-06-19 01:45:50	278.94
2826	230	2025-07-28 21:57:09	1020.23
2827	912	2025-10-21 11:50:30	839.15
2828	319	2026-02-20 03:28:15	556.64
2829	734	2025-11-02 16:04:56	689.61
2830	779	2025-07-04 00:33:41	423.17
2831	674	2025-08-15 23:37:26	563.60
2832	741	2025-07-19 10:00:27	348.21
2833	291	2025-06-23 10:46:32	219.44
2834	622	2025-12-13 07:07:30	330.60
2835	848	2025-10-06 07:26:51	594.42
2836	535	2026-02-04 13:07:40	1148.69
2837	578	2026-02-03 00:54:58	159.66
2838	827	2025-09-22 21:04:07	963.98
2839	410	2025-07-24 20:22:25	754.40
2840	903	2025-09-24 04:49:26	545.51
2841	992	2025-09-15 00:43:15	217.46
2842	912	2026-02-07 14:47:31	346.18
2843	143	2025-06-11 18:30:18	553.14
2844	354	2025-05-30 23:09:38	283.28
2845	876	2026-03-01 20:13:01	485.22
2846	274	2025-07-01 02:19:57	592.41
2847	185	2025-06-06 19:08:43	1036.07
2848	651	2026-01-19 05:15:55	464.92
2849	551	2025-07-19 00:19:44	490.47
2850	978	2025-08-09 03:06:06	558.25
2851	729	2025-08-21 17:21:11	312.75
2852	881	2025-08-05 10:40:19	480.69
2853	249	2025-06-13 06:26:39	492.05
2854	805	2025-10-25 01:37:08	759.15
2855	284	2026-02-26 00:53:19	510.15
2856	493	2025-05-27 15:09:59	375.66
2857	465	2025-06-14 23:04:01	899.19
2858	915	2025-12-25 05:56:03	605.16
2859	786	2025-11-14 00:26:11	389.88
2860	518	2025-12-09 14:03:18	611.58
2861	365	2025-09-30 03:36:01	590.04
2862	61	2026-02-11 01:06:26	497.61
2863	88	2026-01-22 20:25:53	862.64
2864	375	2026-01-07 00:49:38	678.24
2865	777	2025-12-31 19:49:57	442.04
2866	571	2026-03-26 02:58:47	1089.55
2867	600	2026-01-05 16:15:20	251.37
2868	240	2025-07-08 06:47:11	733.64
2869	365	2025-10-20 10:37:45	330.78
2870	471	2025-09-10 20:26:11	538.48
2871	286	2025-05-29 16:09:16	496.98
2872	480	2025-05-24 05:20:17	196.68
2873	889	2025-10-13 01:03:56	573.76
2874	932	2025-05-23 11:29:56	390.68
2875	556	2025-09-28 17:28:23	886.74
2876	559	2026-03-21 14:57:52	251.37
2877	114	2025-10-22 06:39:05	1116.96
2878	657	2026-02-11 13:55:36	713.94
2879	564	2026-04-16 20:35:28	310.31
2880	487	2025-11-27 02:17:19	873.63
2881	797	2025-12-19 11:13:00	1079.43
2882	642	2025-06-15 01:52:21	129.06
2883	421	2025-06-07 21:30:34	255.34
2884	769	2025-07-21 00:10:58	296.74
2885	447	2025-11-26 13:02:58	411.31
2886	616	2025-06-03 19:21:33	439.80
2887	730	2026-02-20 21:21:54	178.84
2888	758	2026-01-25 21:23:20	616.16
2889	702	2025-06-29 01:15:51	458.42
2890	741	2026-01-20 17:06:27	949.06
2891	661	2025-09-30 07:36:54	1474.97
2892	626	2026-03-24 01:35:36	1091.22
2893	616	2025-11-15 03:42:38	808.22
2894	941	2025-07-01 01:17:05	490.47
2895	350	2025-12-07 18:41:06	612.92
2896	660	2025-05-20 00:17:32	1959.75
2897	548	2026-01-14 03:34:17	165.66
2898	216	2025-05-11 01:42:43	786.59
2899	681	2025-06-08 11:46:04	481.96
2900	572	2026-02-22 12:25:25	53.22
2901	589	2025-04-27 20:45:09	425.76
2902	196	2025-08-14 13:13:05	554.83
2903	122	2025-07-14 20:53:29	543.67
2904	13	2026-04-19 21:22:56	559.56
2905	894	2025-08-21 02:29:05	854.48
2906	718	2026-03-19 16:20:59	268.26
2907	392	2026-02-10 15:56:41	680.91
2908	424	2025-08-19 06:49:26	695.69
2909	173	2025-05-27 18:52:28	920.08
2910	102	2025-07-12 11:05:13	189.54
2911	180	2026-04-09 18:14:02	717.05
2912	394	2026-02-03 16:58:18	565.28
2913	874	2026-03-06 00:23:18	860.15
2914	919	2025-09-18 07:59:23	427.32
2915	867	2026-03-26 10:12:54	138.20
2916	497	2025-04-27 01:44:45	495.26
2917	344	2025-10-23 18:57:30	139.08
2918	755	2025-08-26 12:19:06	106.44
2919	574	2026-04-13 18:08:46	282.24
2920	990	2025-11-02 17:48:45	335.82
2921	124	2025-11-08 04:02:27	163.90
2922	790	2025-11-07 02:03:55	761.87
2923	45	2025-06-10 00:19:03	320.82
2924	531	2026-03-19 07:26:54	946.23
2925	587	2025-11-06 06:34:09	1024.55
2926	870	2025-11-20 17:07:12	135.90
2927	205	2025-09-06 03:36:41	965.59
2928	425	2026-03-29 08:31:12	868.10
2929	839	2025-12-29 04:01:15	645.64
2930	635	2025-06-10 05:29:34	146.04
2931	368	2025-11-06 15:07:46	578.19
2932	572	2025-05-21 04:21:20	531.18
2933	946	2025-05-02 15:58:39	412.47
2934	365	2025-07-28 00:21:26	385.86
2935	609	2026-03-27 00:33:42	153.00
2936	547	2025-07-26 19:24:59	479.96
2937	11	2025-07-29 11:19:15	729.10
2938	677	2025-07-10 06:58:42	830.82
2939	632	2025-09-01 04:23:54	1147.64
2940	310	2026-02-12 00:03:29	312.42
2941	687	2025-12-09 04:55:13	929.46
2942	991	2025-07-08 15:11:10	505.94
2943	368	2025-07-13 11:40:08	524.04
2944	978	2026-03-12 00:06:43	413.81
2945	224	2025-04-23 03:05:01	859.53
2946	620	2025-04-20 19:26:26	771.08
2947	159	2025-10-01 07:42:59	929.98
2948	587	2026-01-25 19:41:38	562.96
2949	897	2025-07-17 10:00:20	752.34
2950	465	2025-11-12 15:34:08	602.30
2951	594	2025-05-22 08:20:07	197.88
2952	473	2026-03-24 10:26:58	597.01
2953	449	2025-05-11 19:54:20	1058.63
2954	949	2025-11-26 17:10:02	795.49
2955	585	2025-08-01 12:01:21	385.26
2956	848	2026-02-16 08:44:52	641.47
2957	139	2025-08-07 21:25:00	840.36
2958	675	2025-11-07 22:01:30	692.21
2959	165	2025-12-12 19:52:24	613.79
2960	993	2026-01-10 07:44:03	639.78
2961	862	2025-09-10 20:51:41	1141.39
2962	934	2026-01-06 18:08:34	918.69
2963	518	2025-06-21 04:40:47	510.98
2964	644	2025-10-05 18:51:20	428.74
2965	75	2025-10-19 12:21:33	1222.05
2966	486	2026-04-07 06:44:30	552.38
2967	9	2025-09-18 18:02:00	444.99
2968	795	2026-04-04 18:38:38	414.60
2969	279	2025-05-26 16:13:16	673.96
2970	675	2025-12-11 21:53:37	435.26
2971	142	2025-07-25 07:32:24	305.10
2972	306	2026-01-09 16:52:18	370.14
2973	944	2025-10-05 10:25:13	63.82
2974	178	2025-07-04 15:44:32	1090.06
2975	827	2026-01-09 18:49:23	256.35
2976	830	2026-03-12 14:37:55	387.00
2977	532	2025-05-04 23:39:00	1023.77
2978	239	2025-08-31 07:12:27	297.51
2979	863	2025-11-17 17:08:24	447.97
2980	430	2025-05-09 08:57:24	346.96
2981	596	2025-05-23 14:11:38	883.98
2982	90	2025-06-23 14:32:43	392.46
2983	28	2026-03-17 14:41:10	349.96
2984	795	2026-02-15 12:09:35	800.17
2985	89	2025-10-07 19:08:19	945.92
2986	885	2025-07-19 09:47:25	728.49
2987	491	2025-08-31 11:40:19	1503.12
2988	304	2026-01-18 00:41:54	865.07
2989	693	2025-07-22 10:31:23	498.83
2990	757	2025-11-18 02:20:26	35.44
2991	63	2026-01-18 02:39:40	70.88
2992	892	2025-05-22 08:58:59	574.50
2993	929	2025-09-23 07:05:39	283.72
2994	599	2025-05-15 07:44:34	991.06
2995	118	2026-03-20 19:41:34	996.44
2996	835	2025-06-25 04:19:15	144.52
2997	835	2026-01-14 07:25:16	514.61
2998	223	2025-08-21 14:12:11	341.54
2999	868	2026-04-20 01:39:30	1082.40
3000	305	2025-11-08 18:59:55	550.76
3001	188	2026-02-06 17:20:35	677.26
3002	325	2026-03-11 07:00:12	1103.58
3003	279	2025-05-02 13:42:59	1507.45
3004	986	2025-10-24 07:13:26	514.71
3005	260	2026-03-15 14:43:50	962.62
3006	454	2025-04-25 18:58:57	605.93
3007	537	2026-02-07 12:41:06	1457.46
3008	757	2026-03-04 15:56:36	70.88
3009	525	2025-08-08 18:19:10	541.11
3010	553	2025-09-13 16:27:32	123.52
3011	646	2026-03-05 01:15:23	131.02
3012	825	2025-12-10 01:48:01	163.90
3013	485	2025-12-30 06:18:38	994.49
3014	875	2026-04-02 23:43:52	480.73
3015	278	2026-04-10 07:56:55	1353.90
3016	54	2025-05-21 22:57:06	135.90
3017	104	2026-03-01 05:38:04	596.82
3018	309	2025-07-17 15:40:44	268.26
3019	472	2025-05-17 21:15:23	660.29
3020	660	2025-11-06 12:15:43	604.29
3021	828	2025-06-28 13:49:00	182.93
3022	536	2025-09-25 21:53:36	472.28
3023	60	2025-05-09 10:35:29	481.29
3024	545	2025-11-21 07:42:18	138.20
3025	297	2025-09-06 04:22:37	457.65
3026	972	2026-03-03 01:51:00	106.32
3027	859	2025-10-25 02:57:59	934.14
3028	637	2025-08-10 00:44:19	762.84
3029	108	2026-02-20 19:25:15	701.34
3030	847	2025-05-23 09:25:01	960.77
3031	661	2025-06-22 08:46:56	1256.79
3032	801	2026-01-14 07:26:10	482.58
3033	181	2025-12-07 15:39:54	734.81
3034	23	2025-11-14 14:10:35	421.90
3035	155	2025-08-21 10:51:34	794.73
3036	412	2025-11-17 20:54:08	465.97
3037	903	2025-12-02 02:00:05	957.40
3038	708	2025-05-26 18:52:13	212.64
3039	943	2026-04-10 06:21:51	181.68
3040	244	2025-11-07 16:27:16	1213.00
3041	619	2026-01-13 19:30:13	313.66
3042	834	2026-03-08 05:50:52	783.62
3043	983	2025-05-04 18:22:16	627.71
3044	699	2026-04-17 17:31:29	592.30
3045	214	2025-08-23 18:18:18	484.28
3046	797	2025-12-02 09:55:19	1110.15
3047	310	2025-09-23 00:53:24	214.20
3048	962	2025-05-29 11:00:22	814.78
3049	64	2025-12-11 11:28:42	179.43
3050	848	2025-09-10 13:28:23	534.82
3051	198	2025-11-01 07:30:31	216.78
3052	463	2026-04-14 23:13:16	557.85
3053	415	2025-10-16 22:42:27	209.06
3054	763	2025-08-01 15:32:59	929.06
3055	851	2026-01-26 10:11:41	523.53
3056	33	2025-12-18 22:35:15	519.27
3057	203	2025-11-04 17:15:53	631.72
3058	107	2026-02-18 15:34:07	252.33
3059	693	2025-09-05 04:20:10	661.54
3060	783	2026-01-20 03:18:43	202.24
3061	145	2025-07-29 15:52:01	135.91
3062	320	2025-05-06 16:48:15	596.20
3063	939	2026-03-16 22:37:57	575.10
3064	866	2026-01-16 11:00:38	439.47
3065	709	2025-10-03 14:29:44	1165.20
3066	893	2026-03-06 00:47:18	393.78
3067	830	2025-11-18 07:22:46	906.85
3068	203	2025-05-26 18:08:48	600.21
3069	817	2026-01-10 11:57:51	581.15
3070	651	2025-07-17 09:48:44	649.56
3071	998	2026-01-13 22:22:05	611.64
3072	582	2025-11-17 20:59:32	539.54
3073	720	2025-09-01 12:22:20	164.52
3074	394	2025-06-11 11:30:21	219.27
3075	116	2026-03-17 23:44:24	971.26
3076	80	2026-03-25 16:24:19	135.48
3077	616	2025-11-09 08:38:26	163.90
3078	183	2025-07-25 12:23:40	469.00
3079	887	2025-10-20 02:17:06	489.32
3080	902	2025-09-08 06:50:39	319.84
3081	364	2025-06-08 08:25:15	640.58
3082	258	2026-04-05 00:19:04	797.89
3083	578	2025-04-26 04:47:50	480.88
3084	150	2026-02-06 05:06:54	183.72
3085	500	2026-01-13 11:11:55	841.94
3086	416	2025-08-03 08:17:15	651.15
3087	198	2025-07-31 05:14:01	823.51
3088	750	2025-06-19 00:38:20	804.78
3089	301	2025-09-05 12:39:39	707.49
3090	891	2026-04-10 23:28:49	210.60
3091	520	2025-12-23 14:14:44	422.15
3092	311	2026-01-25 15:16:24	127.64
3093	976	2025-12-05 17:32:12	850.57
3094	584	2025-04-28 08:10:26	590.04
3095	943	2025-05-19 04:34:44	142.47
3096	463	2026-04-03 04:02:57	651.12
3097	833	2025-12-23 02:49:33	85.26
3098	322	2025-06-28 20:58:18	1353.51
3099	588	2026-03-09 20:05:46	194.40
3100	381	2026-01-23 16:13:40	1237.18
3101	616	2025-10-26 15:36:14	973.44
3102	855	2025-05-07 22:43:05	348.21
3103	537	2025-07-06 04:22:57	1135.81
3104	306	2026-03-30 06:01:12	141.76
3105	856	2025-10-17 12:40:42	641.51
3106	649	2025-06-10 08:35:50	70.88
3107	119	2026-02-15 11:57:48	524.15
3108	20	2025-10-20 05:03:21	509.46
3109	554	2026-01-16 19:46:48	83.79
3110	816	2026-01-18 10:46:54	68.28
3111	662	2026-01-04 10:51:16	916.18
3112	947	2025-05-16 12:13:10	152.55
3113	226	2025-04-26 06:48:47	752.91
3114	4	2025-10-22 14:45:33	845.73
3115	569	2025-08-06 05:45:26	411.30
3116	635	2026-04-13 13:27:15	357.94
3117	137	2026-02-06 19:20:36	365.21
3118	860	2026-02-02 13:42:01	369.10
3119	98	2026-01-05 04:25:21	411.32
3120	710	2025-04-22 13:58:46	883.17
3121	310	2025-12-12 10:26:22	351.28
3122	357	2025-10-31 07:26:04	190.64
3123	299	2025-11-03 23:27:59	907.08
3124	160	2025-12-09 09:08:19	472.65
3125	507	2025-06-12 21:04:28	444.90
3126	967	2025-11-11 07:27:46	1088.10
3127	287	2025-05-11 04:01:46	495.69
3128	597	2025-08-07 19:07:24	836.76
3129	745	2025-05-05 16:11:29	170.52
3130	589	2026-01-28 19:54:44	1716.69
3131	695	2025-07-13 10:47:04	278.07
3132	502	2025-09-26 21:10:39	414.60
3133	689	2026-04-10 15:34:58	651.87
3134	995	2025-10-22 21:47:10	573.60
3135	367	2025-06-04 17:40:24	404.94
3136	225	2025-09-27 05:13:53	284.49
3137	205	2025-06-02 02:08:49	1011.94
3138	308	2025-10-06 12:55:03	268.26
3139	212	2026-03-01 08:38:25	519.62
3140	847	2025-11-06 22:43:28	596.31
3141	771	2025-10-10 07:51:15	1058.61
3142	404	2026-01-20 03:03:43	774.76
3143	717	2025-06-15 17:57:53	1674.37
3144	494	2025-10-17 06:44:19	578.19
3145	579	2025-11-12 05:54:18	767.43
3146	725	2026-02-22 21:07:58	596.82
3147	391	2025-10-29 10:01:21	325.72
3148	993	2025-07-23 09:05:14	682.53
3149	591	2025-11-05 04:16:14	758.48
3150	715	2025-06-13 19:59:53	902.22
3151	294	2025-12-30 10:42:15	461.00
3152	1	2026-01-03 04:43:48	861.06
3153	210	2026-01-10 04:41:12	864.15
3154	395	2025-07-29 03:52:38	930.28
3155	279	2025-11-27 23:03:11	1234.96
3156	880	2025-06-11 07:32:13	802.96
3157	512	2025-10-02 00:10:18	777.73
3158	140	2025-08-22 21:51:25	48.56
3159	262	2025-07-21 14:21:11	457.35
3160	414	2025-10-07 20:05:05	1034.20
3161	80	2026-01-31 11:04:54	926.35
3162	250	2025-05-18 04:39:30	590.05
3163	506	2025-08-11 23:27:23	94.83
3164	31	2025-12-13 20:14:07	326.98
3165	878	2026-01-17 06:43:01	339.64
3166	237	2025-06-15 23:45:12	516.62
3167	466	2026-02-09 19:58:26	170.52
3168	34	2025-05-11 04:41:07	511.50
3169	295	2026-04-03 22:54:00	581.06
3170	988	2026-02-18 07:04:22	407.70
3171	994	2026-03-13 18:30:05	411.75
3172	192	2025-05-12 14:55:49	268.40
3173	34	2025-06-09 04:42:40	262.04
3174	652	2026-01-24 13:23:30	986.91
3175	831	2025-09-29 16:29:40	172.52
3176	416	2025-12-19 07:10:19	902.55
3177	530	2026-03-25 07:52:58	293.76
3178	250	2025-07-17 20:55:02	1250.77
3179	244	2026-01-22 11:51:41	320.19
3180	625	2026-02-23 02:20:40	1209.14
3181	9	2025-10-06 10:02:40	861.00
3182	382	2025-10-22 18:31:04	1012.24
3183	61	2025-12-06 09:32:40	775.86
3184	609	2025-11-28 07:50:07	917.27
3185	903	2025-07-15 13:50:56	701.86
3186	384	2026-04-01 21:09:21	824.88
3187	52	2026-01-13 21:49:50	325.59
3188	8	2025-09-06 13:16:48	229.80
3189	763	2025-07-05 04:27:25	677.64
3190	560	2025-09-24 16:03:37	1413.16
3191	247	2026-01-09 10:44:24	117.01
3192	973	2025-10-19 11:14:35	106.06
3193	912	2025-12-01 23:59:32	533.31
3194	831	2026-04-19 04:57:37	834.60
3195	13	2025-04-22 01:43:18	555.70
3196	460	2025-06-21 14:51:05	84.28
3197	353	2026-03-29 13:48:18	393.36
3198	696	2025-05-20 22:02:17	129.06
3199	521	2025-12-24 19:34:19	1134.94
3200	279	2025-06-26 13:48:30	572.81
3201	922	2026-02-28 21:47:37	525.57
3202	53	2025-09-21 08:12:56	412.42
3203	995	2025-08-12 11:46:42	910.93
3204	270	2026-02-19 05:26:53	877.57
3205	42	2025-07-21 06:30:31	926.92
3206	491	2025-08-22 00:52:11	612.22
3207	639	2026-04-04 17:53:13	723.02
3208	587	2025-06-25 05:08:04	731.63
3209	73	2025-09-24 12:34:43	386.70
3210	297	2026-04-13 21:01:41	194.30
3211	308	2025-11-30 00:25:33	63.82
3212	224	2026-02-18 19:25:32	1068.11
3213	611	2025-10-14 10:56:55	820.74
3214	579	2025-05-13 19:52:38	717.33
3215	919	2026-03-21 02:28:27	186.84
3216	377	2026-02-03 09:20:17	644.86
3217	225	2025-08-10 06:09:33	341.54
3218	572	2026-04-15 01:55:55	459.33
3219	848	2025-09-18 15:50:56	377.28
3220	10	2025-10-11 02:39:05	173.09
3221	630	2025-12-14 00:02:49	24.45
3222	594	2025-10-04 07:15:28	298.74
3223	130	2025-04-25 15:55:51	373.82
3224	840	2025-05-19 20:28:53	786.60
3225	710	2025-07-06 11:28:12	1213.19
3226	473	2025-09-02 12:20:27	943.90
3227	561	2025-12-04 16:45:46	433.38
3228	346	2025-05-23 11:45:01	1420.21
3229	829	2025-08-17 09:00:29	1170.29
3230	765	2026-01-13 22:53:28	384.80
3231	90	2025-12-07 20:01:38	197.47
3232	597	2026-02-22 21:19:09	1377.82
3233	732	2026-04-05 09:24:04	583.74
3234	178	2026-01-16 19:51:32	745.43
3235	73	2026-03-01 10:16:48	676.01
3236	634	2025-11-05 19:15:54	534.64
3237	393	2026-04-10 15:10:31	1135.74
3238	415	2025-09-07 04:11:09	568.83
3239	695	2026-01-14 19:00:59	307.97
3240	919	2025-05-13 03:31:25	552.01
3241	771	2025-11-27 21:44:57	1195.40
3242	631	2025-06-22 09:20:13	221.28
3243	456	2026-01-14 15:43:44	1277.69
3244	426	2026-01-25 06:31:59	559.88
3245	256	2025-08-06 08:16:19	834.70
3246	261	2026-02-26 01:08:41	602.94
3247	184	2025-12-26 22:55:56	198.68
3248	474	2025-04-26 19:59:57	90.92
3249	879	2025-06-15 01:27:24	749.51
3250	256	2026-02-01 14:59:36	407.70
3251	734	2025-05-13 00:52:42	606.58
3252	239	2026-03-23 11:22:14	348.21
3253	799	2025-10-14 05:28:11	949.12
3254	431	2026-01-17 17:53:23	424.92
3255	518	2025-10-17 10:35:03	390.68
3256	903	2025-07-15 20:19:24	425.58
3257	156	2025-10-17 09:18:54	717.06
3258	14	2025-09-12 04:34:34	296.38
3259	383	2025-05-11 09:54:11	84.11
3260	643	2025-07-07 23:09:52	235.32
3261	860	2025-10-12 23:39:58	101.12
3262	783	2026-04-06 21:15:27	1072.20
3263	60	2026-03-19 02:01:00	1232.63
3264	771	2025-09-12 23:41:05	822.66
3265	951	2026-03-27 09:52:19	214.20
3266	460	2026-01-25 06:29:57	212.64
3267	250	2025-11-04 13:50:34	157.55
3268	878	2026-01-30 02:39:23	583.00
3269	859	2025-11-08 20:17:06	82.83
3270	567	2025-09-19 16:25:45	1276.29
3271	972	2025-11-28 22:40:37	619.24
3272	1000	2025-06-03 06:56:42	1082.51
3273	72	2025-11-06 23:31:50	884.36
3274	418	2025-11-07 17:13:29	1084.02
3275	569	2026-03-28 19:11:19	512.98
3276	984	2025-12-31 17:37:24	947.38
3277	652	2025-10-25 20:05:45	902.51
3278	185	2025-10-08 07:32:01	444.42
3279	356	2025-12-01 22:21:53	191.23
3280	803	2025-11-22 22:06:58	135.03
3281	478	2025-09-26 11:39:46	1001.72
3282	976	2025-06-26 02:46:11	1333.08
3283	670	2025-07-15 00:32:38	975.06
3284	515	2025-09-03 17:58:04	295.74
3285	38	2025-09-24 23:50:03	656.87
3286	335	2025-08-19 06:54:35	821.36
3287	125	2025-06-13 08:35:19	1039.26
3288	740	2026-01-09 22:52:45	1122.96
3289	352	2025-05-18 00:50:09	1256.37
3290	978	2025-05-16 23:49:44	615.12
3291	230	2025-12-20 17:59:57	1040.19
3292	452	2025-08-21 11:28:07	1138.06
3293	459	2025-06-21 17:17:06	906.51
3294	511	2025-08-01 09:27:00	686.33
3295	452	2025-11-13 12:39:51	624.04
3296	475	2025-05-12 18:49:16	963.28
3297	885	2025-12-18 17:37:10	586.47
3298	783	2025-05-30 02:55:39	1180.36
3299	573	2026-01-01 16:25:19	246.78
3300	24	2025-08-22 16:40:47	148.33
3301	721	2025-08-29 17:36:55	501.45
3302	804	2025-10-11 14:40:51	692.20
3303	362	2025-12-14 02:12:33	724.24
3304	417	2025-05-13 23:54:20	331.00
3305	62	2025-09-12 02:31:47	135.03
3306	532	2026-03-24 01:33:13	207.03
3307	148	2025-06-01 16:04:50	786.00
3308	423	2025-11-12 21:17:48	821.47
3309	771	2025-12-09 16:25:07	877.78
3310	792	2025-04-30 20:55:32	165.66
3311	641	2025-11-16 08:50:06	423.98
3312	669	2025-08-19 01:09:44	390.20
3313	209	2025-11-07 05:36:11	574.59
3314	285	2026-03-03 19:00:15	457.65
3315	130	2025-09-22 17:40:30	135.90
3316	567	2025-11-08 14:25:25	92.69
3317	960	2025-07-21 01:01:38	261.64
3318	743	2025-06-05 09:50:58	201.34
3319	647	2025-12-21 19:01:13	146.18
3320	881	2025-09-12 04:54:26	306.69
3321	522	2025-09-09 17:22:07	285.00
3322	328	2026-03-29 01:29:20	1044.61
3323	673	2025-05-04 13:25:26	1327.31
3324	491	2026-01-29 01:53:03	247.50
3325	747	2026-03-08 02:47:14	868.29
3326	783	2025-06-12 23:02:57	639.09
3327	766	2025-07-28 23:15:23	327.80
3328	48	2026-01-23 06:19:29	252.63
3329	338	2025-05-19 16:03:47	604.16
3330	992	2025-07-25 04:24:08	387.00
3331	497	2025-12-25 07:32:27	135.48
3332	820	2025-09-13 06:52:51	456.34
3333	736	2026-02-01 11:06:25	1075.70
3334	300	2026-03-09 13:47:19	878.32
3335	495	2025-07-13 00:27:03	470.35
3336	235	2026-04-01 05:26:18	259.96
3337	400	2026-03-22 00:34:43	306.05
3338	943	2026-03-28 07:16:31	142.32
3339	232	2026-01-23 02:25:48	444.18
3340	49	2025-08-28 19:41:31	943.70
3341	293	2025-08-11 03:45:46	338.42
3342	49	2025-09-30 07:00:43	757.16
3343	744	2025-10-18 11:31:58	493.12
3344	282	2025-06-02 04:22:59	94.08
3345	374	2025-09-05 06:55:14	685.99
3346	953	2026-04-12 09:56:03	454.49
3347	378	2026-03-05 04:36:40	70.88
3348	299	2026-04-18 08:29:14	946.00
3349	409	2026-03-29 02:22:37	1355.50
3350	941	2025-04-20 15:12:26	425.80
3351	564	2026-02-03 06:06:34	326.22
3352	942	2026-01-16 17:14:50	677.12
3353	799	2025-10-15 10:40:21	425.97
3354	221	2025-05-13 19:30:15	1666.57
3355	848	2025-09-28 01:11:04	1449.18
3356	476	2025-06-09 12:22:58	835.20
3357	35	2026-01-20 08:33:07	465.82
3358	301	2025-07-24 16:39:25	432.29
3359	50	2025-07-11 21:17:35	138.20
3360	891	2026-01-17 09:15:15	342.29
3361	591	2025-09-21 16:47:15	696.04
3362	750	2025-05-29 07:13:48	578.76
3363	379	2025-07-20 10:46:46	423.80
3364	751	2025-10-10 01:11:30	436.80
3365	613	2025-07-22 10:04:14	412.23
3366	959	2026-01-24 14:26:10	460.36
3367	164	2026-01-03 15:34:12	407.25
3368	996	2025-05-13 11:58:46	410.29
3369	471	2025-09-30 16:24:52	560.51
3370	861	2025-06-04 18:14:09	846.80
3371	710	2025-07-24 16:18:58	163.90
3372	519	2026-01-28 17:04:08	606.78
3373	91	2025-12-26 10:30:27	1146.72
3374	858	2026-03-29 08:32:06	1004.79
3375	51	2026-04-11 03:38:58	484.01
3376	44	2025-06-03 07:41:55	361.74
3377	647	2025-11-06 17:41:27	410.20
3378	286	2026-03-04 08:59:10	1114.04
3379	259	2026-02-15 23:25:20	311.66
3380	57	2025-07-05 20:54:56	271.80
3381	762	2025-05-15 21:08:58	362.23
3382	45	2026-04-10 20:35:38	721.01
3383	103	2025-04-21 03:01:35	1133.69
3384	79	2026-03-02 22:30:31	1342.31
3385	651	2025-09-28 06:56:24	1195.89
3386	423	2026-03-12 10:13:16	104.12
3387	947	2025-12-27 11:53:23	563.04
3388	377	2026-04-01 07:43:16	242.46
3389	790	2025-06-29 18:45:55	231.85
3390	851	2025-07-28 20:20:16	833.27
3391	80	2025-06-24 00:15:29	826.80
3392	458	2025-05-05 11:49:14	163.90
3393	842	2025-09-14 19:11:46	356.32
3394	87	2025-09-24 16:31:01	768.94
3395	863	2025-09-09 03:13:34	379.13
3396	436	2026-03-19 10:48:51	192.51
3397	627	2025-09-23 01:05:09	567.60
3398	804	2025-06-30 15:08:02	193.59
3399	590	2025-12-09 12:10:54	459.33
3400	476	2025-04-25 01:56:56	510.32
3401	632	2025-08-26 12:13:13	387.00
3402	220	2026-02-17 09:43:53	1445.58
3403	929	2025-11-23 17:44:58	516.31
3404	943	2026-04-18 02:43:41	515.33
3405	832	2025-11-26 08:48:30	542.37
3406	8	2025-05-19 16:57:43	809.77
3407	817	2026-03-11 21:13:04	820.22
3408	358	2025-04-26 04:59:37	195.34
3409	481	2025-09-07 14:35:26	293.87
3410	546	2026-03-08 12:06:58	497.32
3411	36	2025-07-20 05:32:38	1240.45
3412	326	2025-10-31 02:15:34	392.46
3413	170	2026-03-29 18:56:46	308.85
3414	355	2026-01-23 08:28:08	669.26
3415	38	2025-06-27 18:03:29	547.08
3416	758	2025-05-21 00:32:21	442.26
3417	297	2025-05-08 01:38:09	268.69
3418	439	2026-02-27 15:12:02	662.48
3419	459	2026-01-16 04:03:53	1498.71
3420	572	2025-07-30 17:37:31	627.49
3421	454	2026-04-14 09:55:37	441.62
3422	684	2025-09-30 03:05:48	611.88
3423	874	2026-01-26 04:57:14	1074.31
3424	709	2025-10-20 01:12:39	177.32
3425	727	2025-05-18 12:19:30	1196.37
3426	794	2025-07-08 07:16:38	816.59
3427	674	2026-01-08 02:04:57	466.17
3428	514	2026-02-08 18:25:37	320.10
3429	781	2026-03-26 07:38:31	665.70
3430	794	2026-03-05 05:29:47	1212.61
3431	484	2025-12-19 00:58:32	634.20
3432	227	2025-05-18 06:34:19	127.67
3433	556	2025-08-20 13:26:29	568.14
3434	216	2025-05-16 06:08:34	742.49
3435	417	2025-09-10 08:06:56	505.05
3436	961	2025-09-11 10:36:16	561.58
3437	178	2025-12-05 08:16:44	577.66
3438	535	2025-05-11 22:29:46	820.28
3439	445	2025-10-24 20:17:50	1293.84
3440	948	2025-11-02 08:17:14	609.13
3441	736	2025-08-26 22:58:57	1066.64
3442	524	2026-04-10 01:33:44	427.41
3443	890	2025-08-05 19:29:57	706.84
3444	127	2025-08-25 18:37:39	949.84
3445	638	2025-05-14 20:33:14	564.78
3446	863	2025-09-12 00:27:12	1428.90
3447	604	2025-05-12 05:50:23	892.76
3448	702	2025-04-25 03:26:09	130.82
3449	436	2025-10-22 00:34:31	1125.44
3450	691	2025-08-11 13:05:04	781.30
3451	446	2026-04-09 00:47:22	312.97
3452	456	2025-07-18 03:06:38	222.85
3453	294	2025-08-02 05:23:26	796.98
3454	63	2026-02-05 18:44:33	1240.26
3455	410	2025-12-21 02:40:54	137.41
3456	171	2026-02-28 21:46:31	204.46
3457	72	2026-03-18 09:38:23	582.90
3458	491	2025-05-15 17:39:46	715.93
3459	101	2025-11-01 05:51:15	335.73
3460	443	2026-01-28 03:14:40	1013.81
3461	884	2025-04-24 11:36:08	744.22
3462	62	2025-09-06 12:31:04	408.92
3463	699	2026-03-24 15:02:59	350.38
3464	869	2025-05-12 13:20:02	931.25
3465	412	2025-05-27 14:47:39	609.13
3466	161	2025-05-27 11:44:34	545.43
3467	727	2025-10-29 23:20:33	282.08
3468	837	2025-06-14 09:34:31	921.11
3469	4	2025-08-30 19:07:50	93.42
3470	886	2025-11-17 22:39:58	590.37
3471	200	2026-01-14 08:41:37	599.11
3472	741	2025-06-18 08:18:47	247.50
3473	286	2025-05-25 00:01:10	1103.25
3474	202	2025-08-17 16:20:46	731.28
3475	606	2025-04-23 19:53:23	692.64
3476	609	2025-09-04 13:31:14	283.28
3477	843	2025-12-09 07:41:48	836.89
3478	32	2025-06-08 00:31:27	399.90
3479	614	2025-10-27 13:37:05	793.74
3480	651	2025-08-16 19:36:17	255.78
3481	169	2026-03-19 12:02:19	54.00
3482	165	2026-04-05 02:16:39	181.98
3483	855	2025-04-20 20:36:35	135.03
3484	737	2025-11-06 01:25:00	165.00
3485	787	2025-08-16 06:01:05	820.28
3486	38	2026-01-02 03:32:49	1061.30
3487	36	2025-05-05 03:53:28	708.48
3488	264	2026-02-07 11:43:45	261.64
3489	580	2025-05-10 10:45:38	55.04
3490	748	2025-07-03 07:11:35	480.37
3491	265	2026-03-16 04:10:33	304.48
3492	730	2025-05-27 22:43:11	369.39
3493	100	2025-05-03 14:17:32	667.86
3494	126	2025-04-22 07:30:02	1357.25
3495	575	2025-09-25 13:57:39	542.37
3496	106	2026-01-26 21:51:30	920.08
3497	474	2026-03-19 04:55:55	51.34
3498	465	2025-12-24 21:08:49	106.44
3499	928	2025-09-20 15:45:48	842.30
3500	77	2025-11-14 17:26:59	1277.60
3501	618	2025-11-01 20:51:04	150.40
3502	132	2025-11-13 13:06:20	139.99
3503	252	2025-09-27 03:17:22	947.82
3504	203	2025-09-12 01:00:20	533.96
3505	527	2026-02-08 01:27:00	647.29
3506	602	2025-04-27 17:15:45	498.00
3507	413	2025-07-26 00:45:54	342.90
3508	984	2026-03-10 07:24:05	348.21
3509	928	2026-04-04 09:43:19	572.76
3510	254	2025-08-28 19:32:50	880.34
3511	608	2025-10-25 21:53:37	528.84
3512	908	2025-11-17 20:17:20	813.14
3513	624	2025-12-03 15:36:47	1665.87
3514	443	2025-09-21 06:25:09	511.00
3515	668	2025-04-24 03:33:29	1085.56
3516	684	2025-07-30 07:56:11	385.46
3517	384	2025-12-14 08:40:06	1229.54
3518	131	2026-02-03 18:33:14	765.42
3519	496	2025-09-16 05:06:20	499.65
3520	303	2025-07-11 19:57:27	305.01
3521	888	2026-02-09 22:23:41	283.72
3522	21	2026-03-12 14:13:12	244.08
3523	580	2025-12-20 04:59:45	443.38
3524	966	2025-05-24 23:12:40	248.80
3525	746	2025-07-01 00:59:39	135.48
3526	530	2025-10-07 14:25:27	560.46
3527	875	2026-02-20 05:23:05	431.09
3528	424	2026-04-05 02:51:59	1383.16
3529	69	2026-04-05 09:39:51	700.54
3530	36	2026-02-18 18:26:17	215.55
3531	94	2025-12-19 08:08:20	1502.04
3532	26	2026-02-21 23:55:16	610.06
3533	816	2025-08-18 10:22:46	581.32
3534	275	2026-02-06 06:52:21	1218.53
3535	919	2025-09-18 19:22:09	1262.55
3536	342	2025-08-21 12:51:03	1204.02
3537	920	2025-10-06 12:03:39	791.94
3538	551	2025-11-06 14:02:19	558.09
3539	785	2025-12-15 02:29:28	686.02
3540	887	2026-01-21 01:14:55	339.64
3541	181	2026-03-02 03:39:40	194.40
3542	573	2026-03-09 20:43:21	745.01
3543	729	2025-09-11 03:51:08	951.84
3544	310	2026-04-02 18:53:09	1128.97
3545	354	2025-10-19 13:46:25	55.04
3546	301	2025-11-28 21:13:06	1261.56
3547	479	2026-03-20 20:01:26	931.65
3548	76	2025-06-25 22:42:19	321.16
3549	926	2025-06-07 22:23:23	215.27
3550	390	2025-06-14 06:18:10	866.87
3551	46	2025-12-25 22:45:48	746.36
3552	305	2025-09-01 20:01:14	95.32
3553	381	2025-04-20 20:43:52	519.04
3554	837	2026-04-12 02:01:48	102.68
3555	361	2025-05-17 05:11:02	82.83
3556	82	2026-01-15 09:16:22	996.73
3557	922	2025-09-21 18:22:42	577.58
3558	638	2026-01-26 02:28:46	424.90
3559	605	2026-03-17 22:20:16	714.38
3560	731	2025-09-17 08:42:04	432.81
3561	635	2026-01-19 05:05:45	156.71
3562	427	2025-12-27 17:08:15	401.88
3563	739	2025-07-24 16:28:45	137.41
3564	837	2025-12-12 00:30:53	1111.14
3565	330	2025-10-17 15:17:06	1123.30
3566	754	2026-04-18 03:36:34	195.34
3567	202	2025-11-15 21:51:39	361.58
3568	644	2026-02-01 17:25:34	149.76
3569	268	2025-07-26 08:54:44	752.20
3570	544	2025-06-16 10:44:56	99.17
3571	693	2025-08-31 19:41:37	391.54
3572	112	2026-03-24 22:24:16	881.08
3573	387	2026-03-28 02:19:50	561.67
3574	695	2026-02-15 22:17:58	592.41
3575	686	2026-03-27 17:31:41	719.10
3576	892	2025-06-14 11:04:45	374.25
3577	550	2025-05-17 14:24:14	610.10
3578	883	2025-04-28 11:42:29	885.57
3579	923	2025-12-11 23:13:54	636.33
3580	161	2025-12-08 17:58:02	787.47
3581	819	2025-12-05 11:18:28	442.84
3582	677	2026-02-09 20:44:40	1162.65
3583	491	2025-09-22 06:20:58	464.21
3584	472	2025-06-30 12:01:03	560.81
3585	471	2026-04-08 15:23:47	283.88
3586	804	2025-09-05 08:54:22	228.94
3587	992	2025-10-30 09:20:06	399.90
3588	76	2025-07-01 20:32:41	1140.34
3589	936	2026-02-07 19:59:07	552.47
3590	168	2025-10-23 03:05:25	35.44
3591	751	2025-04-26 12:23:56	724.71
3592	16	2026-03-19 05:02:09	814.30
3593	955	2026-01-31 13:00:35	108.66
3594	779	2026-02-15 15:53:54	1197.93
3595	733	2026-01-30 23:26:28	483.11
3596	598	2025-12-05 13:08:12	709.98
3597	590	2025-07-19 09:12:42	710.38
3598	856	2026-04-07 23:45:47	106.44
3599	653	2025-06-28 02:05:30	831.48
3600	18	2026-02-16 05:40:31	703.29
3601	684	2026-02-02 12:00:09	543.25
3602	281	2025-07-08 16:52:35	35.68
3603	665	2025-09-17 07:33:21	110.08
3604	913	2025-06-21 22:39:53	973.98
3605	608	2025-07-02 02:26:37	412.23
3606	806	2026-03-09 16:28:34	335.36
3607	925	2026-04-10 05:38:53	137.41
3608	797	2025-12-14 10:03:13	1064.54
3609	52	2026-01-30 23:40:15	745.13
3610	472	2026-02-01 17:40:44	850.81
3611	63	2025-12-25 05:59:21	1034.05
3612	982	2025-10-09 01:19:53	438.44
3613	669	2026-01-11 12:07:48	464.94
3614	150	2026-02-28 04:13:50	566.20
3615	620	2025-08-01 15:41:40	541.24
3616	911	2026-03-22 09:52:47	1226.42
3617	569	2025-06-06 13:09:38	710.02
3618	992	2026-03-13 04:59:10	551.13
3619	730	2025-05-07 21:57:50	875.65
3620	781	2026-01-19 09:59:07	1095.85
3621	11	2026-01-09 01:11:59	707.40
3622	525	2026-04-18 19:32:11	602.38
3623	690	2025-07-05 08:45:17	589.65
3624	205	2025-06-18 05:45:03	433.94
3625	276	2026-04-11 10:44:07	794.76
3626	216	2025-06-16 20:12:13	142.47
3627	221	2026-03-27 08:22:46	692.67
3628	153	2025-07-01 02:30:48	292.08
3629	908	2025-06-14 21:43:17	300.80
3630	577	2025-09-21 05:24:29	610.74
3631	12	2025-09-19 23:16:14	1530.51
3632	176	2025-05-30 12:30:09	498.86
3633	199	2026-01-03 04:29:43	795.48
3634	682	2026-04-09 03:25:40	517.65
3635	572	2025-12-15 16:57:55	413.01
3636	302	2025-06-13 06:58:03	916.62
3637	444	2026-03-04 04:53:26	724.63
3638	954	2026-01-12 11:49:02	397.57
3639	355	2025-12-29 20:12:46	190.38
3640	201	2026-02-02 07:17:40	472.65
3641	952	2026-01-21 11:11:13	189.66
3642	2	2025-06-19 18:14:13	1073.33
3643	854	2025-11-24 21:24:38	426.60
3644	725	2025-07-05 11:57:13	955.14
3645	435	2025-06-28 08:11:25	831.47
3646	975	2026-04-03 02:41:50	541.67
3647	501	2026-04-16 17:59:16	348.82
3648	646	2025-07-22 14:01:09	915.78
3649	855	2025-10-09 01:13:54	898.21
3650	137	2025-10-19 18:27:24	1002.12
3651	809	2025-09-29 15:47:54	407.73
3652	424	2026-02-02 11:02:23	452.58
3653	420	2025-10-31 20:59:06	1067.23
3654	109	2025-08-31 05:00:19	959.16
3655	613	2025-05-20 05:38:14	621.48
3656	431	2025-05-12 09:11:48	128.35
3657	750	2025-08-15 17:32:18	560.34
3658	27	2026-01-03 12:11:01	453.61
3659	348	2025-12-12 15:58:59	251.55
3660	766	2026-01-21 03:21:36	370.99
3661	422	2025-06-18 11:27:41	216.26
3662	25	2025-08-28 09:54:12	82.26
3663	610	2025-10-21 08:08:17	705.64
3664	163	2026-02-25 05:45:57	210.54
3665	95	2025-11-26 00:46:28	278.94
3666	910	2025-06-01 07:09:01	542.37
3667	991	2025-07-24 06:07:25	426.07
3668	276	2025-04-22 17:46:42	1049.17
3669	255	2026-04-10 23:13:38	534.73
3670	647	2025-07-17 17:15:11	296.38
3671	916	2025-09-22 14:53:13	304.59
3672	449	2025-12-23 23:28:38	55.04
3673	156	2026-02-16 05:38:09	514.14
3674	77	2026-02-28 20:06:13	85.26
3675	782	2025-11-20 02:05:01	197.47
3676	729	2026-04-09 11:45:58	348.21
3677	46	2025-11-30 06:00:18	288.55
3678	482	2026-02-15 03:08:08	1380.97
3679	669	2025-05-09 16:06:14	1245.29
3680	403	2025-06-04 21:21:38	246.12
3681	166	2026-01-04 20:19:55	390.68
3682	997	2026-03-10 22:28:15	216.78
3683	324	2025-12-10 19:16:10	493.72
3684	98	2025-09-16 15:19:26	129.06
3685	84	2025-09-05 11:38:14	875.26
3686	133	2025-08-04 04:15:01	379.11
3687	514	2025-11-01 19:07:26	450.20
3688	748	2026-03-03 00:44:50	424.58
3689	369	2025-07-17 05:22:11	231.83
3690	312	2026-01-03 09:03:39	583.75
3691	850	2025-10-28 18:59:48	319.60
3692	741	2025-08-19 10:36:18	418.82
3693	710	2025-07-13 15:38:27	73.35
3694	167	2026-02-19 13:32:21	1085.09
3695	854	2026-01-24 14:06:16	194.40
3696	65	2025-07-27 07:55:32	747.97
3697	120	2025-12-08 04:30:39	438.81
3698	95	2025-10-13 15:07:46	639.86
3699	418	2026-02-15 09:35:46	275.34
3700	152	2025-06-03 09:33:19	479.52
3701	610	2026-01-27 19:24:34	643.62
3702	890	2025-08-31 12:24:35	225.20
3703	378	2025-05-15 09:21:16	399.18
3704	776	2026-02-05 17:30:50	891.81
3705	710	2025-08-02 17:16:41	1033.73
3706	910	2025-04-21 21:14:18	534.72
3707	889	2025-11-09 13:53:38	257.14
3708	865	2025-12-26 21:05:48	94.83
3709	216	2025-04-27 17:23:02	788.75
3710	947	2025-05-08 14:27:10	566.88
3711	908	2025-04-20 23:34:04	192.73
3712	649	2026-04-08 09:53:36	479.97
3713	979	2025-06-04 22:38:28	247.50
3714	646	2026-02-17 15:27:20	110.08
3715	232	2025-05-26 15:28:13	267.22
3716	91	2025-12-11 04:36:46	278.94
3717	520	2025-12-13 06:04:57	421.25
3718	1000	2025-06-06 22:26:29	836.24
3719	578	2026-03-05 14:08:41	1076.08
3720	393	2025-08-26 00:30:35	380.84
3721	354	2025-05-21 09:39:27	447.90
3722	828	2025-04-22 05:01:13	126.42
3723	833	2026-02-03 04:36:06	640.59
3724	653	2025-11-02 00:05:47	656.88
3725	517	2026-03-01 14:37:47	502.19
3726	170	2025-08-23 09:32:18	857.22
3727	516	2026-01-28 08:25:21	736.24
3728	607	2026-02-17 15:50:47	746.80
3729	288	2025-06-10 11:02:41	689.84
3730	614	2026-01-21 18:52:06	252.91
3731	984	2025-07-19 15:12:44	574.02
3732	989	2025-12-03 12:19:35	371.17
3733	372	2025-10-11 23:50:09	82.26
3734	992	2025-08-27 06:41:08	126.92
3735	120	2026-02-17 18:53:55	397.88
3736	83	2025-08-23 23:43:40	45.01
3737	662	2026-01-29 02:46:15	593.50
3738	343	2025-07-07 07:45:26	126.37
3739	661	2026-03-22 09:26:10	765.33
3740	792	2025-06-16 20:54:06	908.90
3741	755	2025-11-01 17:32:31	700.40
3742	140	2026-01-22 14:44:50	572.88
3743	461	2026-01-13 22:21:19	1447.14
3744	508	2026-03-10 04:04:35	274.82
3745	432	2026-02-25 08:38:52	216.78
3746	598	2025-10-30 10:11:35	470.34
3747	277	2026-01-06 11:30:17	321.27
3748	431	2025-08-15 04:21:25	271.04
3749	8	2025-10-03 20:53:58	817.09
3750	931	2025-10-16 01:43:34	529.00
3751	368	2025-08-04 13:53:51	853.34
3752	15	2025-11-26 23:47:32	476.46
3753	294	2026-04-01 12:42:31	153.11
3754	3	2025-06-10 23:06:49	275.62
3755	902	2025-10-20 10:31:03	645.26
3756	971	2026-01-05 00:21:21	645.87
3757	220	2025-12-02 06:12:36	181.62
3758	321	2025-04-26 08:58:18	456.78
3759	503	2025-07-10 15:32:34	149.76
3760	824	2025-04-25 14:11:12	982.17
3761	59	2025-05-21 06:56:52	148.19
3762	160	2025-07-19 10:43:54	1100.64
3763	433	2026-04-13 01:52:55	251.37
3764	821	2026-01-27 04:47:11	581.17
3765	531	2026-01-06 05:53:52	517.99
3766	67	2025-08-14 19:27:15	327.80
3767	335	2025-11-07 09:10:55	620.93
3768	346	2025-07-14 23:30:10	60.54
3769	507	2026-03-19 02:43:16	613.92
3770	165	2025-10-22 03:24:28	568.32
3771	953	2026-01-06 17:49:44	802.64
3772	504	2025-10-15 17:52:38	446.34
3773	128	2026-01-13 23:57:25	894.52
3774	942	2025-09-11 03:07:51	109.10
3775	517	2025-10-14 08:04:41	800.99
3776	480	2025-07-19 03:04:37	1559.74
3777	106	2026-04-18 16:53:28	604.48
3778	693	2026-04-19 00:19:19	190.64
3779	827	2026-04-10 18:21:00	129.06
3780	995	2025-06-10 20:30:17	448.47
3781	318	2025-06-10 04:05:09	433.12
3782	35	2025-09-11 20:32:11	148.19
3783	531	2025-08-31 10:30:46	967.22
3784	854	2025-05-27 19:50:54	156.18
3785	286	2025-12-16 17:35:26	430.56
3786	587	2026-01-06 02:16:50	383.01
3787	723	2026-03-22 21:55:45	246.78
3788	42	2025-08-09 19:48:34	157.55
3789	351	2025-08-03 06:49:03	60.66
3790	950	2025-10-04 06:50:12	490.02
3791	104	2026-02-17 23:49:57	656.56
3792	177	2026-02-02 09:38:32	610.35
3793	470	2025-12-04 00:03:23	148.19
3794	92	2025-09-01 07:36:11	549.47
3795	237	2026-03-30 12:32:24	1769.61
3796	705	2025-07-18 20:03:48	60.66
3797	575	2026-03-30 00:46:40	418.41
3798	548	2025-08-22 16:36:57	552.60
3799	850	2026-02-12 15:15:17	476.25
3800	473	2025-07-31 05:11:12	198.94
3801	672	2025-05-10 04:48:27	733.71
3802	656	2025-09-26 16:28:19	920.81
3803	488	2025-12-07 09:28:44	580.50
3804	569	2025-07-13 14:55:32	523.22
3805	401	2026-02-27 13:28:29	915.89
3806	231	2026-01-03 19:58:39	881.54
3807	346	2025-11-26 08:49:54	584.56
3808	842	2026-01-30 03:04:58	880.31
3809	527	2025-04-24 17:22:49	107.04
3810	503	2026-02-01 23:19:24	1288.59
3811	219	2025-11-08 03:54:57	852.73
3812	648	2025-11-13 12:02:14	130.82
3813	213	2026-01-22 02:19:21	1055.19
3814	904	2025-11-09 16:43:24	633.91
3815	160	2025-11-20 09:06:58	541.67
3816	330	2026-01-20 18:19:06	1293.12
3817	519	2026-03-20 10:31:11	733.71
3818	165	2025-11-25 10:54:40	1474.12
3819	956	2025-12-01 07:41:57	404.09
3820	816	2025-09-20 06:49:01	650.99
3821	796	2025-08-26 11:46:37	1361.85
3822	762	2025-10-14 07:37:41	442.97
3823	111	2025-09-17 20:20:12	821.31
3824	480	2025-04-26 22:50:46	1075.22
3825	486	2025-10-16 02:39:41	607.67
3826	279	2025-09-22 00:51:44	586.02
3827	501	2025-05-17 03:16:54	1116.07
3828	427	2025-12-13 03:25:46	773.40
3829	456	2025-09-22 14:50:02	582.90
3830	145	2025-12-27 14:59:19	703.04
3831	776	2025-12-04 03:31:04	137.25
3832	155	2025-12-10 03:32:20	198.34
3833	173	2026-04-13 20:34:59	718.68
3834	157	2025-06-16 05:15:20	1229.95
3835	983	2025-08-09 10:21:12	390.27
3836	511	2025-12-21 02:47:34	609.42
3837	834	2025-11-25 23:36:36	102.12
3838	472	2025-10-14 11:19:54	442.06
3839	179	2026-02-21 15:32:04	543.45
3840	751	2025-08-11 02:25:25	746.00
3841	462	2026-01-13 23:33:07	844.19
3842	746	2026-01-05 07:06:51	583.18
3843	230	2025-12-17 06:34:13	448.35
3844	33	2025-08-20 08:47:52	309.59
3845	540	2025-12-10 21:20:39	922.27
3846	757	2025-09-02 21:28:47	779.90
3847	260	2025-12-03 23:00:29	1043.65
3848	743	2026-01-17 08:12:18	744.90
3849	974	2025-10-13 06:30:31	340.17
3850	209	2025-11-19 23:52:40	443.94
3851	219	2025-07-29 15:10:10	611.09
3852	625	2025-05-09 02:41:20	53.22
3853	666	2026-02-15 17:59:13	626.52
3854	881	2025-09-18 05:24:40	439.80
3855	701	2025-05-25 12:42:30	689.86
3856	598	2025-12-14 04:11:17	771.66
3857	276	2025-11-19 23:32:33	165.12
3858	300	2025-11-17 18:26:28	258.75
3859	651	2025-08-04 17:02:51	606.18
3860	626	2025-10-14 20:47:10	331.47
3861	992	2025-07-03 00:52:48	282.55
3862	49	2025-06-05 09:02:49	1252.93
3863	426	2025-10-26 22:05:20	721.15
3864	869	2025-07-11 05:37:35	706.27
3865	764	2025-05-15 11:37:11	352.65
3866	985	2025-05-23 13:18:18	1205.09
3867	662	2025-12-14 18:50:47	496.50
3868	351	2025-08-12 12:37:21	278.07
3869	875	2025-07-01 01:59:33	644.11
3870	701	2025-10-05 02:32:32	780.29
3871	701	2026-01-04 21:36:41	708.06
3872	658	2026-03-30 03:03:10	869.91
3873	58	2025-04-29 13:10:31	1046.75
3874	410	2025-09-06 09:37:05	648.33
3875	431	2025-11-12 19:27:00	686.72
3876	47	2025-11-14 07:33:52	176.37
3877	139	2025-09-21 22:02:01	732.03
3878	349	2025-08-18 14:30:23	247.38
3879	702	2025-06-15 06:03:12	146.18
3880	713	2025-12-21 11:26:01	676.14
3881	219	2025-06-06 03:56:03	860.89
3882	789	2025-11-23 04:40:30	1151.10
3883	208	2025-06-16 09:16:24	844.41
3884	474	2026-01-20 12:09:31	717.60
3885	471	2025-05-05 10:36:59	899.08
3886	232	2025-08-26 06:14:13	519.39
3887	852	2025-08-18 08:02:07	489.22
3888	534	2025-05-30 03:18:58	1702.29
3889	398	2025-06-14 06:54:36	535.98
3890	489	2026-04-10 23:46:55	484.24
3891	986	2025-04-26 08:31:41	201.40
3892	515	2026-03-17 13:54:06	763.08
3893	859	2025-05-20 11:25:37	278.16
3894	320	2026-04-19 08:44:03	447.39
3895	976	2026-04-16 17:23:53	97.20
3896	244	2025-09-17 07:27:06	309.04
3897	71	2025-04-21 06:22:58	472.32
3898	963	2025-12-04 09:16:24	373.25
3899	859	2025-05-13 15:57:52	262.66
3900	427	2025-06-24 18:52:17	504.14
3901	555	2025-12-18 04:38:07	142.20
3902	378	2025-08-28 05:46:02	242.16
3903	525	2026-04-20 05:41:47	1648.14
3904	789	2025-07-05 13:43:09	471.60
3905	646	2025-11-23 18:37:48	417.06
3906	1	2025-05-25 00:23:16	245.74
3907	238	2025-12-15 06:10:39	519.00
3908	393	2026-01-26 06:09:25	141.64
3909	897	2025-12-14 08:04:45	914.31
3910	377	2025-04-22 03:56:04	1005.57
3911	148	2025-12-22 18:11:09	900.91
3912	860	2026-04-09 19:33:06	491.70
3913	349	2026-03-09 14:30:02	921.53
3914	528	2025-06-01 01:08:20	1096.88
3915	500	2025-06-15 13:10:35	85.26
3916	182	2026-02-05 12:47:25	497.01
3917	610	2025-10-16 12:21:17	135.90
3918	614	2025-10-27 17:15:00	94.08
3919	1	2026-03-20 03:54:26	596.26
3920	598	2026-03-08 12:50:07	718.10
3921	145	2025-05-15 01:46:22	191.46
3922	846	2025-09-29 08:40:52	542.37
3923	826	2025-05-19 08:00:44	170.52
3924	612	2026-02-08 14:32:06	261.64
3925	949	2025-07-30 03:56:46	584.79
3926	361	2025-09-04 03:57:16	102.68
3927	507	2025-11-17 20:15:22	755.74
3928	609	2025-10-15 10:08:38	430.37
3929	283	2026-02-21 04:49:27	511.20
3930	397	2025-12-23 20:09:45	290.94
3931	479	2026-01-15 11:32:31	1102.10
3932	489	2025-11-23 21:07:50	411.75
3933	332	2025-11-12 01:44:41	64.02
3934	109	2026-02-11 21:38:27	556.31
3935	572	2025-12-18 14:56:21	94.08
3936	632	2025-12-27 13:20:12	316.34
3937	584	2026-03-22 05:57:21	36.22
3938	860	2025-10-04 11:01:43	81.00
3939	166	2025-07-02 08:16:38	711.71
3940	440	2026-03-10 00:28:15	163.49
3941	936	2026-02-24 15:26:14	106.44
3942	406	2025-11-01 08:12:24	998.29
3943	551	2026-02-17 11:49:09	941.53
3944	160	2025-12-20 04:25:30	278.16
3945	262	2025-11-06 11:30:30	1145.24
3946	697	2025-11-14 17:50:54	434.07
3947	675	2025-05-16 22:23:42	242.95
3948	151	2026-01-12 07:47:33	171.57
3949	449	2025-08-02 00:14:25	903.01
3950	906	2026-01-05 03:09:27	197.47
3951	93	2025-10-09 19:18:49	760.23
3952	481	2025-05-27 16:03:36	1206.67
3953	829	2026-01-13 09:27:38	169.82
3954	637	2025-12-19 14:24:24	417.10
3955	106	2026-03-04 11:20:29	481.23
3956	322	2026-01-13 13:28:46	1124.76
3957	154	2025-05-28 10:01:17	183.54
3958	869	2026-01-17 02:20:58	544.37
3959	803	2026-02-07 23:58:59	139.08
3960	231	2026-02-14 20:56:15	139.08
3961	732	2025-07-08 08:33:27	774.77
3962	241	2025-10-14 07:23:25	907.46
3963	561	2025-10-24 01:44:12	651.06
3964	965	2025-07-20 09:43:49	568.05
3965	296	2025-11-30 16:14:11	559.05
3966	84	2025-08-31 20:42:05	416.42
3967	516	2025-08-22 15:34:36	296.66
3968	956	2025-09-12 12:19:39	744.50
3969	596	2025-10-20 09:49:34	1177.40
3970	220	2026-02-11 16:19:10	521.30
3971	683	2025-07-13 02:14:55	1203.94
3972	532	2026-01-20 01:55:25	347.58
3973	291	2025-07-03 11:45:01	220.25
3974	705	2025-11-14 04:00:41	139.08
3975	291	2026-01-06 15:00:05	130.82
3976	675	2025-06-15 19:59:42	998.47
3977	629	2025-10-26 20:09:58	193.59
3978	353	2025-12-11 04:02:56	270.96
3979	497	2025-12-06 10:18:31	586.26
3980	900	2026-03-21 10:24:36	664.48
3981	857	2025-10-18 09:40:51	622.92
3982	513	2026-02-10 21:02:41	813.50
3983	115	2026-04-19 10:04:14	299.41
3984	27	2026-01-23 10:22:23	819.91
3985	99	2025-12-28 20:06:54	606.97
3986	955	2025-07-16 08:40:10	357.58
3987	940	2025-07-11 13:48:28	1395.12
3988	785	2026-02-25 17:53:55	669.07
3989	478	2025-06-23 09:53:40	602.23
3990	792	2026-02-06 17:22:17	498.98
3991	626	2025-11-04 14:37:20	83.79
3992	571	2025-11-09 13:13:55	582.74
3993	292	2025-10-01 09:21:38	82.83
3994	383	2025-08-09 17:08:33	521.25
3995	954	2025-10-05 04:23:23	727.85
3996	365	2025-08-27 20:34:36	437.83
3997	972	2025-08-24 20:14:29	742.28
3998	201	2025-06-02 22:00:27	669.68
3999	554	2025-06-14 21:43:59	70.06
4000	73	2026-03-27 01:18:07	973.75
4001	980	2025-12-28 12:22:08	74.88
4002	170	2025-07-20 12:54:38	716.49
4003	894	2026-04-13 01:52:19	406.84
4004	425	2026-04-13 16:38:39	654.00
4005	185	2025-12-10 04:54:49	306.22
4006	814	2025-06-24 19:26:05	702.28
4007	269	2025-08-11 19:02:22	621.73
4008	774	2026-01-08 15:49:29	926.37
4009	549	2026-02-12 02:57:35	414.25
4010	441	2026-02-28 11:37:09	193.59
4011	276	2026-03-15 14:34:22	1042.35
4012	620	2025-11-13 14:49:32	455.21
4013	605	2025-07-17 04:24:12	205.66
4014	766	2026-02-14 15:19:30	398.04
4015	326	2026-04-04 04:59:36	482.00
4016	43	2025-08-18 10:35:31	982.96
4017	136	2026-03-29 20:25:59	24.45
4018	714	2026-02-28 10:31:59	170.52
4019	812	2026-01-25 11:16:38	545.09
4020	770	2026-01-23 05:31:54	519.27
4021	46	2026-02-07 10:46:22	476.86
4022	603	2026-03-15 12:23:36	178.84
4023	242	2025-10-29 13:20:14	424.92
4024	118	2026-02-15 06:29:08	979.35
4025	556	2025-09-12 17:25:15	45.52
4026	125	2025-08-14 00:24:44	580.90
4027	798	2025-04-23 20:40:42	535.44
4028	463	2025-08-28 02:10:36	395.74
4029	709	2025-07-25 20:43:17	157.55
4030	450	2025-12-30 04:15:40	728.02
4031	934	2025-11-18 21:34:58	733.83
4032	853	2025-10-16 10:54:36	558.23
4033	575	2025-09-29 14:05:26	202.24
4034	614	2025-12-12 16:32:37	73.35
4035	782	2025-09-29 17:34:01	285.96
4036	460	2025-10-14 18:05:25	142.11
4037	319	2026-03-23 04:52:44	425.34
4038	738	2026-01-29 19:02:39	532.96
4039	298	2026-01-24 13:28:44	566.63
4040	438	2025-07-28 00:13:24	1019.84
4041	599	2025-05-12 03:28:15	1229.56
4042	940	2026-03-20 21:38:08	390.68
4043	825	2025-06-29 20:38:20	177.11
4044	353	2026-04-17 22:55:35	299.51
4045	18	2026-01-25 19:09:39	582.63
4046	620	2026-04-17 19:28:42	668.16
4047	997	2025-10-10 11:50:10	299.70
4048	720	2026-04-01 18:37:56	779.24
4049	735	2025-12-03 23:34:10	699.04
4050	99	2025-07-04 22:41:20	749.58
4051	395	2025-12-20 00:11:11	137.25
4052	263	2025-12-31 06:31:00	448.24
4053	659	2025-05-20 06:41:04	152.55
4054	156	2026-02-16 21:57:41	1002.54
4055	668	2025-05-01 07:51:46	719.85
4056	627	2025-08-17 10:22:25	397.88
4057	579	2026-03-12 06:12:33	884.62
4058	449	2026-04-15 12:00:48	136.38
4059	926	2025-12-12 18:25:19	879.36
4060	47	2025-10-11 23:03:24	35.68
4061	389	2025-12-30 15:55:41	268.48
4062	572	2025-12-28 02:07:15	239.93
4063	42	2025-10-03 16:58:17	695.02
4064	57	2025-06-20 12:14:51	107.04
4065	968	2026-03-30 22:38:25	97.20
4066	326	2025-05-19 10:50:02	315.10
4067	100	2025-09-07 08:27:50	1029.67
4068	126	2025-11-13 14:40:21	760.46
4069	478	2025-09-02 13:50:16	492.64
4070	427	2025-10-27 11:11:43	163.90
4071	246	2026-04-13 20:19:12	572.85
4072	977	2026-01-11 06:25:34	724.79
4073	366	2025-09-02 06:42:35	954.87
4074	655	2026-02-03 16:49:11	708.70
4075	886	2025-10-09 19:11:38	908.16
4076	469	2025-12-16 00:13:31	451.12
4077	798	2025-04-22 01:37:53	637.11
4078	138	2025-10-13 10:16:25	1077.17
4079	50	2026-01-12 22:12:41	771.96
4080	961	2025-08-14 10:44:53	1100.37
4081	436	2025-06-24 09:30:53	550.00
4082	362	2025-11-08 06:42:45	886.82
4083	763	2025-07-29 12:58:55	664.98
4084	825	2026-03-18 23:45:48	974.31
4085	719	2025-05-18 09:52:14	394.74
4086	254	2026-01-25 04:04:03	310.09
4087	664	2026-03-20 19:41:35	513.49
4088	588	2025-05-18 05:01:05	861.21
4089	190	2025-11-28 11:17:04	385.46
4090	372	2026-03-29 20:12:24	201.40
4091	797	2026-01-14 03:02:39	317.19
4092	550	2025-12-02 15:08:24	843.73
4093	498	2026-02-23 06:03:45	692.93
4094	835	2025-04-24 16:31:34	51.34
4095	257	2025-04-22 21:41:14	436.90
4096	337	2025-10-23 11:15:26	286.30
4097	375	2025-04-21 00:44:18	93.42
4098	571	2025-06-03 22:50:56	369.89
4099	593	2026-02-04 16:15:55	821.31
4100	221	2026-01-09 13:23:19	596.89
4101	733	2026-02-08 16:10:01	275.08
4102	661	2025-12-24 00:53:11	402.82
4103	683	2025-05-21 14:11:48	836.02
4104	965	2025-07-15 15:28:10	663.45
4105	122	2025-09-24 09:42:01	1003.93
4106	313	2025-07-08 01:35:25	427.41
4107	538	2026-02-27 03:18:35	60.66
4108	550	2025-10-04 19:55:23	646.32
4109	947	2026-02-23 17:59:07	834.33
4110	230	2025-08-11 09:41:53	782.83
4111	214	2025-08-07 16:43:10	701.82
4112	601	2025-09-08 06:45:16	442.44
4113	514	2025-06-22 19:27:25	669.39
4114	612	2025-06-18 01:35:45	172.26
4115	91	2025-12-15 09:05:00	522.72
4116	675	2025-06-26 20:03:31	478.63
4117	944	2025-10-21 08:21:22	339.64
4118	350	2025-09-05 08:47:16	557.64
4119	144	2025-12-17 01:59:51	225.85
4120	787	2025-08-10 22:33:32	108.66
4121	411	2025-11-17 05:04:01	787.93
4122	374	2025-08-11 18:38:05	194.19
4123	886	2025-11-14 20:09:48	728.29
4124	924	2025-10-02 15:00:18	1395.03
4125	857	2026-01-11 00:01:17	195.34
4126	243	2025-05-07 20:10:41	306.22
4127	243	2026-02-23 06:27:57	302.31
4128	261	2025-12-01 11:12:27	315.26
4129	796	2025-06-24 06:08:59	596.82
4130	589	2025-07-06 02:50:27	819.87
4131	309	2026-02-10 19:09:26	599.76
4132	865	2025-06-17 02:52:24	63.46
4133	359	2025-05-11 00:38:46	315.90
4134	155	2025-06-04 14:09:04	146.60
4135	203	2026-03-02 12:03:11	648.69
4136	322	2026-01-20 21:42:25	316.80
4137	101	2026-03-16 15:32:26	975.03
4138	285	2025-10-20 04:09:14	773.54
4139	831	2025-11-13 07:40:56	248.49
4140	370	2025-09-25 19:01:45	756.73
4141	235	2026-04-02 02:38:16	138.20
4142	39	2025-11-18 08:02:12	466.80
4143	463	2025-08-02 17:58:26	1344.73
4144	245	2025-07-23 00:51:13	670.54
4145	618	2025-10-21 01:58:24	730.96
4146	710	2026-01-11 20:20:06	424.38
4147	300	2025-12-28 09:14:04	554.59
4148	815	2025-12-29 11:16:47	1118.04
4149	88	2026-02-08 00:50:06	356.44
4150	26	2025-11-15 23:10:59	126.37
4151	547	2025-06-09 09:57:18	580.50
4152	117	2025-05-24 02:53:22	143.10
4153	560	2025-11-22 11:43:50	806.45
4154	933	2026-02-05 16:24:26	542.37
4155	723	2025-08-06 09:41:48	610.70
4156	999	2025-06-08 21:20:14	737.52
4157	163	2026-03-24 06:59:01	829.10
4158	455	2025-10-20 14:59:05	696.68
4159	779	2025-12-03 22:05:01	393.88
4160	453	2025-10-01 18:39:40	1034.27
4161	873	2025-07-20 16:12:35	680.56
4162	542	2025-07-26 08:17:44	958.37
4163	37	2025-08-05 02:07:24	645.69
4164	571	2025-06-15 04:56:18	337.84
4165	420	2025-08-15 14:03:57	397.54
4166	549	2025-08-10 06:36:08	546.94
4167	625	2025-07-07 23:55:58	456.37
4168	8	2025-10-14 17:50:16	626.75
4169	657	2025-06-22 23:14:30	531.13
4170	342	2026-01-26 17:30:22	236.27
4171	431	2025-06-08 03:14:43	22.76
4172	98	2025-04-24 03:35:38	472.65
4173	811	2025-06-27 19:07:19	161.36
4174	93	2025-12-02 07:03:09	509.69
4175	752	2026-01-28 07:01:41	1015.32
4176	151	2025-05-29 09:52:40	886.70
4177	660	2025-10-15 19:12:50	135.48
4178	162	2025-06-24 07:59:57	843.28
4179	685	2026-01-15 03:11:28	280.94
4180	121	2025-05-31 04:22:53	892.47
4181	838	2025-09-07 04:54:05	957.11
4182	997	2025-09-27 14:19:01	868.82
4183	350	2025-04-29 06:24:40	545.13
4184	835	2025-08-22 13:58:00	504.66
4185	255	2025-06-11 07:12:09	928.09
4186	903	2026-01-25 01:24:54	292.68
4187	643	2025-10-12 11:02:14	414.56
4188	703	2026-01-30 02:35:48	1081.14
4189	388	2025-09-23 03:01:16	809.31
4190	775	2025-04-29 23:57:28	946.43
4191	53	2025-12-30 19:57:19	54.00
4192	832	2025-08-08 09:41:24	106.44
4193	920	2025-12-07 08:33:40	403.68
4194	326	2025-12-30 01:13:42	869.10
4195	254	2025-10-29 05:18:49	690.62
4196	270	2025-11-04 00:55:16	1382.29
4197	115	2025-11-20 19:48:30	475.62
4198	872	2025-09-19 19:45:20	441.80
4199	735	2025-07-31 01:36:22	535.99
4200	230	2025-12-16 22:09:22	360.06
4201	227	2026-02-27 15:48:17	380.00
4202	288	2025-09-03 08:06:40	150.40
4203	801	2025-08-05 15:44:46	993.28
4204	128	2026-04-09 22:46:40	881.06
4205	275	2025-12-07 07:40:25	270.21
4206	695	2025-12-29 05:13:32	252.74
4207	449	2025-07-17 10:07:36	274.31
4208	778	2025-11-02 03:57:42	680.34
4209	476	2025-06-29 09:06:08	896.83
4210	109	2025-06-13 13:26:58	252.74
4211	843	2025-10-15 08:53:20	348.27
4212	479	2025-08-03 14:46:32	821.47
4213	307	2025-12-05 03:21:46	741.33
4214	924	2025-05-15 20:51:32	904.91
4215	567	2026-02-08 11:57:31	765.69
4216	849	2026-02-04 03:32:52	141.46
4217	993	2026-02-16 17:20:59	698.42
4218	535	2026-02-03 11:37:17	1071.30
4219	219	2025-07-23 04:24:29	126.92
4220	902	2025-10-29 00:20:50	520.73
4221	79	2026-03-04 10:52:06	681.13
4222	632	2025-12-11 23:50:32	160.41
4223	497	2025-04-30 03:04:55	652.20
4224	251	2025-05-25 14:58:27	196.68
4225	156	2025-06-17 12:45:33	1412.43
4226	655	2025-09-03 03:52:10	485.32
4227	377	2025-08-10 20:23:29	752.28
4228	715	2025-06-21 01:43:44	194.40
4229	464	2026-01-13 18:40:30	55.04
4230	352	2025-10-29 07:45:00	444.99
4231	352	2025-10-25 16:36:08	680.97
4232	622	2025-11-02 06:16:50	614.81
4233	728	2026-02-12 20:44:01	947.22
4234	158	2025-08-25 12:43:56	1089.16
4235	379	2025-07-23 19:17:20	169.82
4236	844	2026-01-27 15:06:04	1228.40
4237	389	2025-08-11 17:44:53	269.51
4238	942	2025-06-24 22:24:17	308.42
4239	342	2025-06-04 23:10:06	324.52
4240	809	2025-05-10 01:06:34	755.85
4241	181	2025-06-24 22:09:49	392.46
4242	33	2025-11-02 16:57:01	352.04
4243	258	2025-07-19 06:24:29	518.33
4244	891	2025-12-30 08:33:17	1076.09
4245	763	2025-11-26 07:06:29	779.66
4246	180	2025-09-12 08:19:08	385.46
4247	945	2026-01-14 02:08:47	1160.35
4248	340	2026-01-16 06:57:28	970.58
4249	383	2025-11-29 14:02:42	804.04
4250	115	2026-03-05 11:10:52	608.16
4251	534	2025-06-03 12:42:41	829.90
4252	816	2025-10-31 03:04:14	84.28
4253	505	2025-08-06 10:51:33	516.67
4254	785	2025-05-08 19:16:08	274.69
4255	883	2025-11-29 06:58:05	787.56
4256	53	2025-09-23 12:55:37	648.89
4257	952	2025-07-08 21:13:40	509.58
4258	802	2025-07-20 13:31:54	509.42
4259	32	2025-09-11 08:06:22	909.79
4260	259	2025-08-16 16:43:17	726.80
4261	296	2025-07-31 00:47:15	968.91
4262	65	2025-12-01 23:45:31	163.49
4263	886	2025-08-21 13:41:09	679.43
4264	843	2026-02-19 01:22:13	470.89
4265	349	2026-03-28 05:17:51	904.20
4266	809	2026-03-22 15:09:06	848.25
4267	442	2025-12-20 18:09:13	428.77
4268	726	2025-07-25 03:06:42	1001.34
4269	444	2025-07-26 20:29:39	1503.01
4270	338	2025-07-28 03:25:04	282.24
4271	102	2026-01-14 00:53:49	848.71
4272	974	2025-04-20 23:25:17	1047.39
4273	662	2026-02-10 15:06:08	71.36
4274	213	2025-12-25 19:25:43	648.25
4275	434	2026-01-23 00:46:47	766.60
4276	650	2026-04-10 01:45:42	1300.77
4277	174	2025-10-13 05:08:44	770.24
4278	902	2026-01-25 13:30:27	786.42
4279	638	2025-11-26 03:24:54	702.87
4280	321	2025-09-09 16:55:52	106.99
4281	830	2025-08-13 16:21:46	310.91
4282	700	2026-04-11 02:37:27	626.85
4283	566	2025-07-19 22:02:11	1116.09
4284	881	2026-03-14 11:29:23	705.60
4285	588	2025-05-28 15:19:17	837.68
4286	983	2026-03-27 15:01:03	149.76
4287	8	2025-09-04 17:28:25	395.11
4288	287	2025-10-15 23:33:18	153.11
4289	322	2025-10-18 17:29:21	397.54
4290	733	2025-10-25 06:33:40	876.10
4291	345	2026-03-30 19:19:05	99.17
4292	776	2025-06-24 01:27:32	842.45
4293	377	2025-06-10 06:54:25	371.45
4294	99	2026-01-09 23:32:16	573.77
4295	209	2026-02-21 04:46:51	802.44
4296	119	2025-07-29 00:35:23	603.24
4297	878	2026-04-14 19:53:56	520.70
4298	984	2025-09-01 00:00:25	1350.64
4299	95	2025-09-24 18:56:05	591.68
4300	925	2026-02-07 12:18:01	881.38
4301	877	2025-06-10 03:26:07	712.52
4302	585	2026-04-04 04:49:40	859.84
4303	832	2025-11-28 16:39:24	399.90
4304	83	2025-12-05 07:43:41	744.64
4305	151	2025-10-19 05:09:00	130.82
4306	585	2026-01-16 04:16:43	855.18
4307	379	2025-05-17 04:51:52	586.02
4308	813	2025-06-07 04:08:50	315.10
4309	52	2026-01-02 22:44:14	171.57
4310	314	2026-03-14 06:05:17	476.98
4311	34	2025-10-27 15:10:10	997.36
4312	642	2026-02-19 18:46:19	812.55
4313	505	2025-12-16 22:47:32	621.02
4314	196	2025-10-08 13:52:57	721.63
4315	139	2025-10-11 21:02:36	903.34
4316	166	2025-10-01 00:40:51	562.77
4317	780	2025-12-17 11:30:58	927.61
4318	917	2025-08-21 23:46:04	392.12
4319	340	2026-02-26 18:24:36	648.75
4320	728	2026-03-02 06:16:06	862.49
4321	177	2025-12-29 22:12:12	348.96
4322	203	2025-11-03 23:16:49	360.98
4323	898	2026-01-04 12:31:16	781.16
4324	915	2025-12-13 18:10:44	637.29
4325	668	2025-10-19 15:34:15	60.54
4326	851	2025-10-06 20:27:54	462.59
4327	291	2026-02-01 20:33:30	466.23
4328	341	2025-10-03 05:46:28	865.73
4329	805	2026-04-17 21:52:00	404.06
4330	683	2026-03-10 21:44:37	570.68
4331	968	2025-09-28 08:20:13	328.22
4332	784	2026-04-17 10:39:10	261.64
4333	170	2025-06-30 11:33:51	578.94
4334	479	2025-10-13 13:13:46	484.60
4335	836	2025-05-19 12:59:03	376.35
4336	565	2026-03-31 17:39:46	1432.24
4337	914	2025-08-07 05:30:06	35.68
4338	26	2025-10-30 10:46:20	621.81
4339	462	2025-09-30 14:57:14	939.36
4340	842	2025-07-04 00:02:58	794.27
4341	280	2025-08-15 20:03:08	1149.61
4342	822	2025-04-24 16:08:12	84.28
4343	861	2025-05-11 15:09:38	989.24
4344	701	2026-02-05 04:27:37	448.48
4345	34	2025-09-20 01:32:19	248.49
4346	443	2025-08-10 08:19:40	839.73
4347	125	2025-08-02 14:01:56	435.70
4348	21	2026-03-10 13:08:31	193.79
4349	220	2026-03-01 13:59:27	285.96
4350	773	2026-01-27 17:47:26	1264.07
4351	904	2025-12-29 21:14:44	293.76
4352	48	2025-04-27 05:34:57	1402.71
4353	239	2026-03-22 21:54:17	671.65
4354	370	2026-02-10 02:21:14	1062.58
4355	444	2025-09-05 06:56:12	148.33
4356	768	2025-11-10 16:48:24	390.68
4357	736	2025-06-28 05:35:13	1006.24
4358	235	2025-05-29 13:30:24	180.79
4359	896	2026-03-13 03:32:53	212.47
4360	291	2025-07-01 10:36:02	901.10
4361	371	2026-02-20 15:39:58	1266.88
4362	171	2025-07-03 16:28:43	247.87
4363	18	2025-12-29 04:26:33	119.20
4364	808	2026-02-13 03:17:40	845.05
4365	259	2026-03-16 20:27:36	383.56
4366	686	2025-10-20 02:43:04	948.58
4367	997	2025-11-23 08:17:40	1219.31
4368	271	2025-07-23 16:34:16	94.83
4369	501	2025-05-22 12:45:11	192.51
4370	86	2025-12-08 21:12:25	476.29
4371	274	2026-03-20 06:35:42	427.41
4372	10	2025-12-22 19:50:44	90.92
4373	652	2025-05-16 07:01:44	1128.21
4374	211	2025-07-29 11:22:52	278.07
4375	706	2025-10-19 10:05:34	110.08
4376	609	2025-05-11 18:42:11	209.36
4377	729	2025-06-07 03:01:21	1097.41
4378	472	2025-07-30 05:19:09	42.14
4379	824	2025-12-27 12:38:11	117.43
4380	975	2026-03-07 18:45:57	89.42
4381	912	2026-01-22 04:25:55	618.98
4382	179	2026-02-12 04:32:24	841.83
4383	143	2025-09-06 20:54:00	839.71
4384	360	2026-04-12 02:07:19	551.67
4385	511	2025-05-17 09:06:33	160.41
4386	376	2025-05-25 13:45:13	82.26
4387	587	2026-01-15 17:33:28	906.70
4388	122	2025-11-26 16:51:39	449.14
4389	207	2025-08-01 12:07:06	402.98
4390	706	2025-08-09 18:48:42	907.40
4391	165	2026-03-30 16:11:56	90.02
4392	980	2025-09-18 00:02:56	300.80
4393	184	2025-06-01 16:12:04	576.90
4394	307	2026-01-18 01:07:39	401.63
4395	216	2026-02-16 02:16:14	676.21
4396	74	2025-07-24 09:53:58	132.69
4397	384	2025-06-11 22:01:56	668.94
4398	589	2026-03-25 04:10:23	879.84
4399	324	2025-08-03 02:01:27	1001.99
4400	503	2025-08-01 13:03:15	835.94
4401	163	2026-01-05 21:05:38	1003.04
4402	503	2025-04-21 08:20:59	588.28
4403	688	2025-08-07 16:15:18	772.20
4404	28	2026-02-08 15:53:01	493.63
4405	61	2025-06-12 18:58:45	117.82
4406	889	2025-09-02 14:24:13	469.51
4407	526	2025-05-25 12:31:21	636.83
4408	158	2025-11-29 19:24:22	357.99
4409	622	2025-09-08 01:05:44	109.04
4410	762	2025-05-25 23:57:26	424.10
4411	730	2025-11-15 08:09:38	45.01
4412	291	2026-01-04 01:51:16	278.94
4413	413	2025-11-09 13:13:17	525.77
4414	227	2026-02-02 20:04:20	431.37
4415	638	2025-08-22 01:35:36	45.16
4416	763	2025-05-29 08:45:37	502.03
4417	669	2025-06-14 22:06:40	774.45
4418	611	2026-04-08 05:37:57	815.61
4419	183	2026-02-26 10:03:06	981.01
4420	841	2025-12-23 00:42:03	918.29
4421	983	2025-08-30 23:09:12	527.22
4422	155	2025-09-02 01:45:41	293.58
4423	271	2025-10-09 13:36:48	121.32
4424	249	2026-02-07 15:44:25	174.51
4425	309	2026-04-05 05:20:55	893.53
4426	431	2026-03-22 12:57:45	408.96
4427	594	2025-11-06 21:26:51	64.02
4428	379	2026-01-19 21:22:47	629.30
4429	141	2025-07-26 06:53:01	658.87
4430	651	2025-07-05 04:10:10	933.39
4431	456	2025-11-24 14:26:43	1220.63
4432	847	2026-01-23 01:49:01	281.78
4433	24	2025-05-17 02:55:24	204.16
4434	388	2026-03-04 13:23:17	300.18
4435	880	2025-06-24 22:37:16	1232.63
4436	945	2025-07-22 15:20:09	596.31
4437	36	2026-02-01 10:53:37	341.30
4438	847	2025-04-29 21:29:47	223.38
4439	322	2025-05-20 13:12:01	181.98
4440	592	2025-04-28 05:30:19	579.24
4441	71	2025-10-11 06:48:48	368.83
4442	622	2025-06-29 19:15:37	475.66
4443	161	2025-12-23 19:30:24	1238.62
4444	560	2025-07-20 22:52:38	1341.10
4445	99	2025-07-07 09:58:18	403.70
4446	236	2026-04-10 20:32:59	477.00
4447	965	2025-11-13 08:58:37	516.16
4448	894	2025-11-21 15:29:47	58.79
4449	781	2025-09-21 19:56:26	88.28
4450	153	2025-07-13 12:41:42	212.64
4451	923	2025-08-02 13:45:56	415.43
4452	503	2025-11-13 09:09:58	85.26
4453	289	2025-11-11 13:03:52	472.57
4454	958	2025-06-14 09:15:21	277.74
4455	547	2025-09-24 14:38:47	515.65
4456	836	2025-08-21 00:22:33	475.86
4457	52	2025-07-12 00:51:44	1203.98
4458	406	2026-03-17 17:08:29	467.58
4459	313	2026-02-19 16:56:44	953.35
4460	158	2025-10-29 18:34:58	224.64
4461	73	2025-06-20 16:35:31	768.35
4462	698	2025-08-31 16:47:49	160.41
4463	817	2025-10-13 16:38:43	231.40
4464	757	2025-09-24 06:27:00	918.41
4465	208	2025-12-24 08:46:17	762.34
4466	62	2025-09-14 03:12:53	565.06
4467	734	2026-01-13 13:00:49	210.90
4468	282	2025-09-12 20:43:18	82.26
4469	450	2025-12-30 13:35:06	357.50
4470	27	2025-07-04 16:18:54	130.82
4471	375	2025-05-17 19:55:15	444.99
4472	40	2026-02-08 07:18:03	84.34
4473	20	2025-05-28 00:51:35	963.18
4474	166	2026-02-27 09:05:46	438.47
4475	368	2025-10-29 14:02:23	108.66
4476	471	2025-07-31 09:54:21	553.15
4477	18	2025-08-19 22:31:54	649.45
4478	146	2025-08-30 17:01:32	578.46
4479	874	2025-07-25 04:14:00	418.54
4480	902	2026-03-16 10:48:03	590.14
4481	134	2025-06-07 15:22:01	689.19
4482	816	2025-06-01 12:16:56	55.04
4483	929	2025-07-12 14:50:40	192.73
4484	645	2025-10-12 06:28:37	490.03
4485	386	2025-11-03 23:38:38	753.24
4486	91	2025-05-02 07:08:26	300.84
4487	165	2025-05-02 10:12:38	997.16
4488	363	2025-08-26 10:29:08	291.60
4489	83	2025-10-12 17:36:27	928.92
4490	873	2025-08-31 20:15:30	193.59
4491	505	2026-02-23 01:12:36	529.62
4492	839	2025-10-03 18:03:17	489.96
4493	630	2026-01-02 20:29:42	579.96
4494	112	2025-08-04 00:08:12	426.60
4495	467	2025-07-23 02:35:30	494.83
4496	851	2025-10-22 17:22:28	674.83
4497	961	2026-03-06 18:49:12	671.72
4498	683	2025-09-12 19:35:39	265.70
4499	650	2025-07-24 12:50:32	198.34
4500	991	2025-10-07 23:30:33	397.88
4501	584	2025-07-22 15:43:38	883.16
4502	132	2025-10-07 06:07:48	856.10
4503	479	2025-09-08 21:07:29	542.05
4504	406	2025-05-21 19:06:55	530.53
4505	777	2025-09-25 02:45:49	794.34
4506	943	2025-11-28 13:06:07	890.02
4507	6	2026-01-05 16:40:58	734.45
4508	840	2025-12-10 15:55:07	995.07
4509	829	2026-04-07 06:09:32	412.23
4510	647	2026-01-05 02:30:36	224.64
4511	727	2026-03-23 07:44:34	346.18
4512	950	2025-12-02 01:47:12	286.10
4513	918	2025-05-14 13:49:40	157.55
4514	243	2025-12-15 15:37:55	285.96
4515	917	2026-01-03 16:22:11	437.48
4516	224	2025-11-29 22:38:23	612.05
4517	706	2025-06-10 02:10:44	416.54
4518	93	2025-07-09 22:22:23	58.79
4519	633	2025-08-06 05:07:27	1323.04
4520	927	2026-03-24 19:54:15	705.73
4521	78	2025-08-25 17:15:34	470.89
4522	642	2026-02-13 05:12:49	603.20
4523	298	2025-06-30 05:56:22	183.44
4524	406	2025-12-29 13:29:38	283.72
4525	897	2025-08-11 06:50:09	730.64
4526	175	2026-02-07 11:55:33	216.78
4527	775	2025-12-13 05:53:00	188.83
4528	792	2026-03-17 14:01:26	1378.20
4529	571	2025-08-19 07:44:17	178.84
4530	283	2026-02-10 11:03:36	661.93
4531	409	2025-06-28 03:15:57	625.87
4532	582	2025-06-14 20:34:53	599.75
4533	499	2025-09-02 23:06:04	609.05
4534	914	2026-01-18 17:42:54	1050.56
4535	179	2025-08-12 15:49:37	104.12
4536	771	2025-05-12 20:23:54	188.16
4537	783	2025-10-13 08:52:41	514.71
4538	948	2025-09-26 14:44:44	916.87
4539	666	2026-04-20 06:20:24	259.43
4540	785	2025-07-27 03:02:58	252.33
4541	560	2026-01-26 09:52:36	1219.07
4542	625	2026-01-13 01:47:15	165.12
4543	248	2025-11-29 16:02:45	128.12
4544	642	2025-11-02 23:04:44	699.12
4545	944	2025-05-22 20:31:47	997.32
4546	182	2025-09-14 01:32:17	725.71
4547	844	2025-07-18 08:36:23	595.21
4548	446	2025-12-28 06:28:48	443.48
4549	714	2025-05-28 12:47:33	1091.23
4550	746	2026-04-09 07:12:09	199.96
4551	591	2025-10-12 16:33:58	344.04
4552	808	2025-11-25 02:24:46	95.32
4553	609	2025-12-17 11:34:47	342.74
4554	742	2025-08-21 01:45:56	1032.55
4555	343	2025-09-17 16:30:40	1369.98
4556	55	2025-10-21 18:47:58	689.91
4557	13	2025-12-01 14:48:49	142.39
4558	705	2025-04-22 07:00:59	995.99
4559	510	2026-02-13 21:23:42	73.09
4560	601	2026-04-05 11:42:02	365.28
4561	748	2026-01-17 18:55:11	626.54
4562	200	2025-07-23 16:58:39	210.54
4563	672	2026-03-17 15:30:30	490.47
4564	667	2025-06-26 12:11:04	838.22
4565	232	2025-08-01 17:35:51	117.15
4566	584	2025-10-14 04:06:50	412.17
4567	736	2025-06-17 17:19:16	556.03
4568	463	2025-05-16 22:49:37	202.24
4569	12	2025-12-10 09:43:48	569.31
4570	995	2025-08-04 02:38:08	192.30
4571	764	2026-01-08 14:11:52	650.89
4572	178	2026-02-07 05:02:39	932.50
4573	348	2025-12-17 21:12:17	1140.58
4574	338	2025-06-11 03:33:03	520.62
4575	476	2025-04-27 13:03:41	578.21
4576	674	2025-10-23 19:45:20	82.26
4577	991	2025-09-29 23:34:15	807.78
4578	563	2026-03-24 04:54:20	437.14
4579	228	2025-12-04 09:42:01	795.11
4580	485	2026-04-01 18:49:49	95.32
4581	803	2025-09-21 06:12:44	306.22
4582	850	2025-11-13 11:44:08	560.38
4583	556	2026-01-11 17:26:27	786.22
4584	292	2026-01-14 04:46:48	94.83
4585	674	2025-10-22 16:59:47	792.44
4586	849	2025-08-20 19:53:34	590.93
4587	168	2025-11-27 09:21:22	1278.34
4588	32	2025-09-07 14:44:51	1387.90
4589	7	2025-12-18 08:26:27	279.41
4590	977	2025-04-21 10:59:54	936.13
4591	487	2025-05-12 03:43:34	855.24
4592	927	2025-09-01 08:51:31	1220.54
4593	883	2025-06-08 10:59:41	439.80
4594	829	2025-08-14 07:59:38	424.87
4595	305	2026-01-30 09:27:31	526.58
4596	730	2025-09-09 13:19:20	376.66
4597	988	2025-12-07 05:50:42	830.90
4598	706	2025-11-04 02:13:52	582.20
4599	21	2025-08-05 14:00:07	431.47
4600	372	2025-07-26 16:34:11	708.76
4601	288	2025-12-16 01:37:52	106.44
4602	791	2025-05-15 15:36:28	375.21
4603	771	2025-04-28 22:45:28	628.08
4604	839	2025-04-21 02:22:28	406.35
4605	662	2026-04-16 10:52:43	509.03
4606	656	2025-06-04 19:56:32	303.36
4607	190	2025-08-17 20:09:30	1199.47
4608	140	2025-10-21 00:22:45	584.52
4609	220	2026-01-06 10:46:05	94.83
4610	332	2025-06-04 12:43:20	439.80
4611	942	2025-05-03 17:37:06	490.47
4612	450	2026-04-07 00:10:35	515.28
4613	564	2026-03-06 11:44:28	421.87
4614	1000	2025-05-12 19:31:17	1274.44
4615	141	2025-12-22 16:21:30	662.71
4616	547	2025-07-22 21:10:37	514.46
4617	892	2025-11-14 00:35:54	438.12
4618	753	2025-12-11 17:30:16	559.00
4619	841	2025-04-22 18:38:17	824.10
4620	934	2025-05-30 18:04:19	1012.06
4621	417	2026-03-24 10:34:07	282.24
4622	177	2025-07-31 19:39:09	372.38
4623	111	2025-07-18 23:38:52	60.66
4624	250	2025-06-18 03:07:14	795.16
4625	658	2025-09-04 10:52:59	142.20
4626	186	2025-07-17 01:36:36	261.64
4627	548	2025-08-09 07:08:10	832.24
4628	943	2025-07-21 05:03:04	894.18
4629	543	2025-08-01 12:27:51	126.37
4630	805	2025-06-16 17:30:48	382.20
4631	753	2025-05-18 01:57:12	351.45
4632	619	2025-09-29 12:34:38	84.11
4633	674	2025-12-01 09:19:57	797.75
4634	808	2025-07-05 03:37:12	1144.50
4635	943	2025-09-19 00:45:33	1045.64
4636	657	2025-06-12 23:20:53	1502.90
4637	887	2025-07-27 01:11:35	917.07
4638	326	2026-04-18 11:59:05	193.59
4639	34	2025-12-30 22:27:03	360.97
4640	93	2025-05-06 20:59:11	527.80
4641	284	2025-12-28 03:31:53	127.67
4642	247	2025-08-24 01:06:36	387.00
4643	338	2026-01-10 21:22:30	466.71
4644	299	2025-08-05 05:13:23	727.32
4645	852	2025-04-27 11:14:53	654.07
4646	301	2025-10-29 14:38:43	493.65
4647	914	2026-03-11 14:55:17	298.65
4648	662	2026-01-09 22:16:20	312.96
4649	916	2025-11-25 03:35:06	321.37
4650	445	2025-10-06 10:25:53	780.59
4651	281	2025-11-30 00:32:44	165.00
4652	90	2025-05-30 01:38:14	90.92
4653	342	2025-07-06 09:55:37	348.80
4654	857	2026-02-06 10:29:28	995.90
4655	399	2025-07-11 08:26:03	853.89
4656	32	2025-07-20 02:23:37	55.04
4657	764	2025-09-23 10:17:46	1525.19
4658	939	2026-04-02 04:13:00	688.20
4659	15	2025-10-02 19:58:33	430.82
4660	619	2025-05-18 20:11:17	794.29
4661	858	2025-07-01 09:54:48	1224.20
4662	837	2025-04-21 21:09:25	612.72
4663	269	2025-07-26 02:20:24	229.27
4664	884	2026-02-03 21:59:06	196.94
4665	195	2025-08-06 12:27:32	647.95
4666	543	2025-09-29 05:29:55	483.46
4667	994	2025-10-07 15:40:13	502.03
4668	832	2026-03-14 06:21:22	204.40
4669	199	2025-12-05 22:41:08	488.54
4670	467	2025-08-23 09:34:20	187.45
4671	861	2026-02-04 22:45:32	639.96
4672	124	2025-06-02 22:30:06	482.72
4673	389	2025-08-10 09:29:11	387.40
4674	340	2026-03-10 14:14:27	459.00
4675	163	2025-12-18 00:19:57	185.38
4676	270	2025-12-27 04:31:55	769.46
4677	801	2025-05-18 17:29:16	658.35
4678	304	2025-08-03 07:15:36	518.72
4679	901	2025-06-06 10:56:17	333.33
4680	557	2025-05-05 01:40:28	554.72
4681	830	2026-04-06 16:35:31	250.14
4682	42	2025-08-22 07:34:35	825.32
4683	908	2025-08-31 05:08:28	735.83
4684	362	2025-05-13 02:25:04	713.46
4685	365	2025-06-13 16:06:59	121.32
4686	950	2026-03-21 16:33:41	1340.92
4687	154	2026-03-06 04:26:36	843.71
4688	898	2025-05-01 08:50:34	300.16
4689	739	2025-05-29 16:34:34	247.50
4690	984	2026-03-13 08:10:04	400.89
4691	359	2025-07-11 04:56:49	439.80
4692	247	2025-09-28 21:12:11	925.72
4693	626	2025-10-30 01:41:34	739.22
4694	587	2025-11-14 09:25:41	746.82
4695	589	2025-08-16 11:16:01	496.50
4696	204	2025-08-08 15:30:09	392.46
4697	323	2025-05-07 16:19:02	791.82
4698	325	2025-12-06 00:48:40	168.00
4699	573	2025-05-01 22:21:22	1100.58
4700	962	2025-05-10 18:56:40	313.14
4701	617	2025-12-26 23:00:44	341.52
4702	388	2025-05-19 06:04:22	191.08
4703	268	2025-08-31 04:29:08	126.92
4704	780	2025-05-08 20:08:29	866.61
4705	502	2025-05-24 23:07:07	994.36
4706	855	2026-03-15 18:15:05	579.35
4707	389	2025-10-07 17:11:22	364.37
4708	868	2025-08-20 18:34:12	456.89
4709	142	2026-03-17 09:36:10	393.88
4710	247	2025-06-20 05:54:37	282.24
4711	505	2025-12-27 06:05:57	247.50
4712	418	2026-01-14 03:06:27	1035.11
4713	236	2025-07-07 05:09:51	729.99
4714	779	2025-07-06 03:29:04	711.44
4715	314	2025-11-04 00:49:32	84.28
4716	341	2025-05-08 08:38:19	552.60
4717	662	2026-03-11 05:48:03	672.68
4718	848	2025-09-07 07:53:47	583.54
4719	77	2026-04-04 09:15:18	973.90
4720	784	2025-08-12 17:16:26	165.00
4721	890	2026-02-01 21:38:00	419.01
4722	251	2026-01-21 11:38:41	626.43
4723	663	2025-07-29 01:04:22	490.47
4724	777	2025-09-29 16:27:47	1281.13
4725	805	2025-10-19 19:49:40	511.50
4726	532	2025-12-01 14:35:37	427.41
4727	771	2025-06-18 03:22:02	1166.34
4728	500	2025-07-19 13:31:33	1034.32
4729	950	2026-03-12 09:02:47	97.20
4730	171	2025-07-22 01:23:52	834.63
4731	15	2026-02-21 11:55:46	303.36
4732	240	2025-10-28 01:29:08	302.71
4733	644	2026-02-23 05:06:43	1174.89
4734	450	2026-02-20 02:51:04	1183.28
4735	852	2026-02-15 18:23:56	489.94
4736	240	2026-03-17 06:20:30	122.89
4737	865	2025-09-14 01:43:10	194.40
4738	347	2026-02-10 11:07:57	426.19
4739	470	2026-02-03 20:12:56	73.09
4740	754	2026-04-04 22:15:58	495.56
4741	724	2026-01-05 05:46:13	502.70
4742	64	2025-06-07 16:48:22	897.08
4743	85	2026-02-25 08:42:17	690.96
4744	837	2025-07-06 00:48:05	840.64
4745	637	2025-07-02 10:29:41	382.39
4746	713	2025-12-02 19:44:02	471.11
4747	566	2026-04-07 19:52:51	671.44
4748	165	2025-10-07 00:50:14	1039.39
4749	864	2025-12-10 20:10:10	407.13
4750	608	2025-10-14 06:37:39	225.93
4751	687	2025-10-09 11:07:19	749.90
4752	667	2026-03-21 01:37:50	496.50
4753	150	2025-06-17 04:23:50	102.23
4754	978	2026-02-04 00:41:55	252.74
4755	804	2026-01-02 09:10:49	1058.67
4756	789	2025-05-21 00:57:16	722.73
4757	768	2025-05-12 01:21:30	372.25
4758	466	2025-07-14 10:40:05	914.54
4759	357	2025-09-22 15:28:32	674.13
4760	992	2026-02-12 09:31:14	330.54
4761	789	2025-07-07 07:01:08	799.60
4762	539	2025-11-17 08:01:04	738.19
4763	27	2025-11-03 05:24:48	304.80
4764	42	2025-10-29 20:07:13	1102.55
4765	159	2026-03-24 16:17:08	246.78
4766	949	2026-04-12 11:20:55	907.17
4767	402	2025-11-05 09:46:04	333.39
4768	2	2026-04-01 08:32:41	651.93
4769	365	2025-10-12 08:45:49	851.46
4770	506	2025-07-28 07:36:21	590.04
4771	780	2025-05-27 00:22:25	74.88
4772	547	2025-07-07 08:37:34	106.32
4773	487	2026-01-30 06:07:04	901.48
4774	840	2025-06-09 02:12:40	73.09
4775	289	2025-11-11 14:33:03	648.87
4776	604	2025-05-08 19:47:16	156.55
4777	475	2026-04-07 08:23:34	35.44
4778	532	2025-07-24 15:04:00	1229.39
4779	480	2025-09-23 14:09:23	638.58
4780	317	2026-01-06 10:52:20	229.56
4781	6	2025-10-02 06:08:52	135.91
4782	187	2025-05-24 05:26:19	464.23
4783	609	2025-05-02 03:01:55	731.90
4784	743	2026-03-23 03:15:41	1083.27
4785	754	2026-01-22 20:42:15	901.15
4786	298	2025-08-30 11:15:32	320.52
4787	40	2025-05-28 21:56:00	236.33
4788	12	2025-06-13 23:33:34	214.65
4789	638	2025-08-01 01:19:55	1508.28
4790	709	2026-01-13 06:06:06	1123.71
4791	929	2025-05-18 04:13:45	993.07
4792	628	2025-11-15 00:34:59	624.18
4793	919	2026-02-03 21:25:55	1309.20
4794	785	2025-11-23 06:02:55	387.87
4795	857	2025-07-31 08:12:21	149.32
4796	497	2025-08-31 04:35:49	164.40
4797	822	2025-06-21 20:55:13	582.90
4798	128	2026-02-19 19:20:23	240.02
4799	617	2026-02-18 12:30:09	402.22
4800	714	2025-10-02 12:49:04	827.35
4801	208	2025-09-07 01:41:42	326.20
4802	655	2026-03-21 10:05:20	239.46
4803	564	2026-03-21 04:28:49	1357.88
4804	512	2025-06-16 23:04:30	720.97
4805	221	2025-06-04 03:24:07	532.24
4806	841	2025-08-10 10:28:10	45.01
4807	713	2026-01-14 22:23:19	292.19
4808	233	2025-06-18 02:07:34	516.24
4809	147	2025-05-12 15:05:06	1367.07
4810	409	2025-04-25 19:53:14	517.99
4811	259	2025-11-04 15:23:42	71.36
4812	216	2025-08-11 17:04:18	255.48
4813	569	2025-09-22 05:26:37	468.32
4814	801	2025-09-21 08:51:52	858.40
4815	993	2025-11-09 17:05:44	369.38
4816	649	2025-07-06 03:17:26	981.28
4817	834	2025-06-21 13:02:32	247.62
4818	988	2026-03-10 16:22:06	331.32
4819	852	2025-10-10 08:01:19	841.30
4820	87	2026-02-25 21:05:18	306.22
4821	98	2025-10-18 00:30:46	568.35
4822	547	2026-02-27 12:33:40	82.83
4823	301	2025-04-22 08:31:50	1727.32
4824	433	2025-09-01 01:48:54	935.39
4825	650	2025-06-18 13:33:11	1081.03
4826	562	2025-10-26 09:27:25	346.18
4827	70	2026-02-03 17:38:23	338.93
4828	551	2025-11-27 18:42:27	531.88
4829	48	2025-05-24 01:06:57	1049.64
4830	445	2025-11-17 16:46:20	444.57
4831	988	2025-06-17 02:34:06	407.43
4832	510	2025-10-23 09:10:50	440.37
4833	791	2025-11-22 16:25:10	562.36
4834	19	2026-02-10 22:43:29	265.12
4835	167	2026-03-03 16:14:13	299.17
4836	989	2025-08-03 19:09:57	668.27
4837	392	2025-11-09 17:39:36	440.64
4838	258	2026-02-23 05:56:48	687.95
4839	318	2026-04-13 08:05:49	160.97
4840	100	2025-11-16 15:06:19	141.76
4841	927	2025-09-09 11:22:48	741.78
4842	647	2026-03-27 20:24:51	1320.40
4843	257	2025-12-29 01:11:26	345.96
4844	773	2025-12-07 03:36:09	582.22
4845	600	2025-10-20 13:47:56	574.38
4846	745	2026-01-08 20:23:56	331.00
4847	73	2026-02-06 08:44:15	881.23
4848	699	2026-02-14 20:53:43	176.97
4849	750	2025-06-14 09:02:30	1077.58
4850	630	2025-11-01 06:23:45	1142.54
4851	750	2025-04-22 09:58:34	243.32
4852	695	2025-05-02 09:56:26	432.94
4853	175	2025-09-24 11:42:49	424.57
4854	300	2025-12-03 20:09:45	434.02
4855	384	2025-07-06 14:45:30	1208.34
4856	109	2026-03-19 07:36:01	216.78
4857	173	2025-09-05 03:45:08	231.99
4858	260	2025-04-24 05:46:33	141.66
4859	592	2025-12-11 20:51:01	477.40
4860	546	2025-10-31 19:39:11	422.13
4861	349	2025-07-29 05:08:29	302.22
4862	724	2025-08-03 05:49:02	739.02
4863	851	2025-11-11 03:33:10	580.30
4864	89	2025-05-06 07:00:50	672.14
4865	563	2025-06-03 12:47:43	838.31
4866	536	2026-04-15 22:00:23	630.92
4867	803	2025-08-13 14:54:01	1109.54
4868	633	2025-08-22 11:30:54	588.46
4869	3	2026-01-25 06:01:39	197.74
4870	919	2025-09-02 02:10:05	663.48
4871	267	2026-02-17 16:25:01	107.04
4872	553	2026-03-15 18:26:06	443.92
4873	327	2026-01-18 08:12:01	352.46
4874	536	2025-07-31 09:38:43	544.47
4875	911	2025-09-05 04:41:20	410.95
4876	637	2026-03-05 12:10:38	572.56
4877	749	2025-12-12 07:27:00	444.84
4878	425	2025-11-26 14:37:21	463.58
4879	102	2025-12-13 21:49:33	673.14
4880	244	2025-12-01 16:08:29	574.96
4881	155	2026-04-16 19:05:55	348.65
4882	850	2026-01-01 19:05:33	521.26
4883	907	2025-06-29 22:57:53	341.56
4884	145	2025-12-11 03:03:19	356.22
4885	254	2025-09-14 19:54:40	247.10
4886	546	2026-02-28 16:02:00	22.76
4887	693	2025-05-06 08:13:22	293.20
4888	746	2025-10-21 08:45:34	992.51
4889	44	2026-01-27 00:29:29	616.47
4890	475	2025-07-26 22:53:22	655.56
4891	30	2025-06-08 20:53:57	396.71
4892	756	2025-09-15 08:32:52	318.96
4893	67	2025-12-14 06:59:54	204.65
4894	911	2025-05-23 00:09:23	1038.48
4895	978	2025-11-08 07:04:13	925.67
4896	832	2026-01-05 17:38:30	1140.61
4897	529	2025-06-20 16:45:01	101.12
4898	650	2025-07-10 22:36:43	169.82
4899	93	2025-10-05 22:13:05	884.81
4900	371	2025-06-07 00:55:13	727.00
4901	696	2025-07-15 13:01:18	1180.35
4902	770	2025-10-31 09:40:54	724.41
4903	199	2025-04-25 09:24:27	859.62
4904	40	2025-05-11 07:50:11	816.31
4905	21	2025-11-17 05:17:00	729.73
4906	54	2025-12-28 10:08:27	398.00
4907	275	2026-01-27 07:09:34	571.03
4908	846	2025-06-08 15:31:41	458.54
4909	620	2025-05-16 00:56:42	596.31
4910	695	2026-02-05 00:06:13	273.12
4911	279	2026-01-07 19:51:35	165.66
4912	547	2026-02-17 17:12:14	148.33
4913	617	2025-10-23 06:59:16	137.25
4914	999	2026-01-11 20:17:10	851.00
4915	510	2025-06-18 21:34:38	401.58
4916	282	2025-06-09 19:43:59	72.44
4917	869	2025-06-17 22:01:48	789.43
4918	387	2025-11-24 23:22:29	985.95
4919	731	2025-10-01 06:26:14	142.20
4920	823	2026-02-21 06:32:57	679.71
4921	122	2026-03-11 06:29:21	857.19
4922	950	2026-04-07 14:48:21	121.00
4923	789	2025-08-23 10:12:38	359.76
4924	351	2025-09-17 11:26:27	424.92
4925	828	2026-02-22 23:54:50	567.20
4926	727	2025-08-12 02:39:15	399.79
4927	77	2025-07-27 03:53:06	434.38
4928	684	2025-05-22 18:04:04	141.76
4929	491	2025-05-31 13:19:15	577.53
4930	829	2025-08-13 15:34:40	498.95
4931	469	2025-08-23 06:01:31	210.44
4932	127	2026-01-05 10:33:44	542.53
4933	616	2026-03-14 23:44:13	788.48
4934	483	2026-03-17 19:28:14	451.16
4935	127	2026-04-20 01:29:08	258.80
4936	833	2026-01-01 23:52:19	631.06
4937	161	2026-03-05 06:41:07	702.32
4938	888	2026-01-09 13:34:04	393.06
4939	452	2026-03-31 01:30:31	408.68
4940	262	2026-03-04 05:03:24	830.32
4941	921	2025-10-03 07:14:08	1008.00
4942	77	2025-11-12 00:10:28	126.42
4943	920	2025-12-23 02:15:03	788.73
4944	979	2025-05-04 09:32:37	820.39
4945	91	2026-02-02 04:08:15	407.73
4946	683	2025-11-15 22:47:24	550.14
4947	316	2026-04-08 19:40:24	360.19
4948	714	2025-10-14 04:53:05	481.94
4949	80	2026-01-20 06:42:16	712.81
4950	647	2025-08-20 02:14:49	309.57
4951	803	2026-02-26 01:41:59	185.38
4952	201	2026-02-28 09:21:57	189.66
4953	222	2025-10-07 02:29:33	95.32
4954	682	2026-01-09 20:13:48	146.04
4955	956	2025-09-08 03:06:30	152.55
4956	507	2026-02-08 17:48:08	278.16
4957	931	2026-01-23 11:30:14	102.23
4958	784	2026-02-05 05:08:48	720.44
4959	202	2025-07-30 09:08:59	384.18
4960	436	2025-11-18 08:28:19	1145.97
4961	511	2026-01-15 16:49:04	767.05
4962	182	2025-10-20 12:08:43	361.83
4963	124	2025-10-06 15:44:12	749.83
4964	550	2025-07-21 09:14:49	396.80
4965	509	2026-02-05 05:24:09	117.15
4966	418	2025-12-30 22:37:49	636.08
4967	332	2026-01-17 17:04:06	551.12
4968	600	2025-08-31 02:15:22	113.83
4969	494	2025-07-05 13:02:42	1303.32
4970	595	2025-07-31 20:39:15	401.27
4971	346	2025-09-11 18:30:32	527.30
4972	368	2025-09-11 07:38:17	731.90
4973	451	2026-03-24 03:35:10	980.09
4974	736	2025-07-22 01:19:23	391.52
4975	896	2025-09-26 03:48:51	475.16
4976	461	2025-11-03 05:54:45	931.29
4977	403	2026-03-20 17:17:31	361.53
4978	703	2025-12-16 18:11:04	165.12
4979	758	2025-11-03 06:35:31	790.65
4980	886	2025-09-18 14:06:08	1491.96
4981	167	2025-06-18 16:47:16	1148.52
4982	28	2025-05-11 00:13:43	551.80
4983	774	2026-03-03 14:54:13	472.65
4984	918	2025-11-16 09:16:38	575.29
4985	964	2025-08-22 09:58:37	710.83
4986	382	2025-05-31 18:08:27	218.64
4987	133	2025-05-07 19:22:53	619.01
4988	489	2025-05-05 15:31:02	339.63
4989	866	2025-10-21 07:51:55	954.96
4990	475	2025-06-26 02:45:19	1118.95
4991	964	2025-05-24 13:25:43	828.60
4992	820	2025-06-04 06:23:49	506.56
4993	983	2026-04-18 08:23:53	368.97
4994	391	2026-04-05 20:44:19	770.50
4995	484	2025-07-17 04:12:57	291.34
4996	583	2026-04-14 00:13:36	893.64
4997	619	2025-08-05 12:12:28	284.09
4998	183	2025-12-16 02:03:40	412.23
4999	689	2025-07-28 17:39:24	640.33
5000	516	2026-01-31 02:16:16	369.58
\.


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 215
-- Name: customers_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customerid_seq', 1000, true);


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 217
-- Name: inventory_inventoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_inventoryid_seq', 100, true);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 219
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderid_seq', 5000, true);


--
-- TOC entry 4754 (class 2606 OID 16405)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);


--
-- TOC entry 4756 (class 2606 OID 16412)
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventoryid);


--
-- TOC entry 4760 (class 2606 OID 16430)
-- Name: orderline orderline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderline
    ADD CONSTRAINT orderline_pkey PRIMARY KEY (orderid, inventoryid);


--
-- TOC entry 4758 (class 2606 OID 16420)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- TOC entry 4762 (class 2606 OID 16436)
-- Name: orderline orderline_inventoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderline
    ADD CONSTRAINT orderline_inventoryid_fkey FOREIGN KEY (inventoryid) REFERENCES public.inventory(inventoryid);


--
-- TOC entry 4763 (class 2606 OID 16431)
-- Name: orderline orderline_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderline
    ADD CONSTRAINT orderline_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);


--
-- TOC entry 4761 (class 2606 OID 16421)
-- Name: orders orders_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);


-- Completed on 2026-04-20 09:34:36

--
-- PostgreSQL database dump complete
--

\unrestrict oErvhaHfbaRu7gmmWbBHGJ46GBU2Jz5G25ODHR8dXBCVpqJv4VzFbpmtonKWcNc


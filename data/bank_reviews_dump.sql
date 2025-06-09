--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    bank_id integer NOT NULL,
    bank_name character varying(100) NOT NULL
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_bank_id_seq OWNER TO postgres;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_bank_id_seq OWNED BY public.banks.bank_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    bank_id integer NOT NULL,
    review_text text NOT NULL,
    rating integer,
    review_date date NOT NULL,
    source character varying(50) NOT NULL,
    sentiment_label character varying(10),
    sentiment_score double precision,
    themes character varying(500),
    CONSTRAINT reviews_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_review_id_seq OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- Name: banks bank_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN bank_id SET DEFAULT nextval('public.banks_bank_id_seq'::regclass);


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (bank_id, bank_name) FROM stdin;
1	CBE
2	BOA
3	Dashen
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (review_id, bank_id, review_text, rating, review_date, source, sentiment_label, sentiment_score, themes) FROM stdin;
1	1	"Why don’t your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"	4	2025-06-06	Google Play	NEGATIVE	0.9964652061462402	Transaction Performance;Customer Support
2	1	what is this app problem???	1	2025-06-05	Google Play	NEGATIVE	0.9996225833892822	Other
3	1	the app is proactive and a good connections.	5	2025-06-05	Google Play	POSITIVE	0.9998679161071776	Other
4	1	I cannot send to cbebirr app. through this app.	3	2025-06-05	Google Play	NEGATIVE	0.9953354001045228	Other
5	1	good	4	2025-06-05	Google Play	POSITIVE	0.999816119670868	Other
6	1	not functional	1	2025-06-05	Google Play	NEGATIVE	0.999778687953949	Other
7	1	everytime you uninstall the app you have to reach them out physically. very oldy! if that's one of security layer, they'd check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).	1	2025-06-04	Google Play	NEGATIVE	0.9905162453651428	Other
8	1	አካውንት የምናስገባበት ቦታ ስም ጽፈን ነው ከዚህ በፊት የላክንባቸውን አካዉንቶች የምንፈልገዉ ነገር ግን አዲስ አካውንቶች mr ብለዉ የሚጀምሩ በዝተዋል ግን አፕልኬሽኑ space ስንጽፍ አይቀበልም ቢስተካከል	4	2025-06-04	Google Play	NEGATIVE	0.9616847634315492	Other
9	1	best	5	2025-06-04	Google Play	POSITIVE	0.9997941851615906	Other
10	1	bezabih	5	2025-06-04	Google Play	POSITIVE	0.9654072523117064	Other
11	1	Best Mobile Banking app ever	5	2025-06-04	Google Play	POSITIVE	0.9997294545173644	Other
12	1	it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring	2	2025-06-04	Google Play	NEGATIVE	0.998119294643402	Transaction Performance
13	1	Good	5	2025-06-04	Google Play	POSITIVE	0.999816119670868	Other
14	1	👌👍	5	2025-06-04	Google Play	NEGATIVE	0.697056770324707	Other
15	1	very niec	5	2025-06-04	Google Play	NEUTRAL	0.5	Other
16	1	best app of finance	5	2025-06-04	Google Play	POSITIVE	0.9996503591537476	Other
17	1	yetemeta	1	2025-06-03	Google Play	POSITIVE	0.6553669571876526	Other
18	1	Engida Kebede Fetera	5	2025-06-03	Google Play	NEGATIVE	0.8396735787391663	Other
19	1	it is not safety	1	2025-06-03	Google Play	NEGATIVE	0.9997867941856384	Other
20	1	NICE bank	5	2025-06-03	Google Play	POSITIVE	0.999805510044098	Other
21	1	it is like a childish app make it better the worst I have ever seen	1	2025-06-02	Google Play	NEGATIVE	0.9997958540916444	Other
22	1	It's a problem solver application, go ahead CBE, I love so much.	5	2025-06-02	Google Play	POSITIVE	0.9997678399086	Other
23	1	It's good but try to make it facilitate for your client	4	2025-06-02	Google Play	POSITIVE	0.9491764903068542	Other
24	1	best app	5	2025-06-01	Google Play	POSITIVE	0.999686598777771	Other
25	1	Awesome bank	5	2025-06-01	Google Play	POSITIVE	0.99984610080719	Other
26	1	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	2025-05-31	Google Play	NEGATIVE	0.9983141422271729	Account Access Issues;Transaction Performance;User Interface
27	1	Masha alla	5	2025-05-31	Google Play	NEGATIVE	0.9514626860618592	Other
28	1	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	2025-05-31	Google Play	NEGATIVE	0.9991102814674376	Other
29	1	better service	5	2025-05-31	Google Play	POSITIVE	0.9982219338417052	Other
30	1	it,s good app and time manager 👍	5	2025-05-30	Google Play	POSITIVE	0.999837040901184	Other
31	1	malkaamuu Jiidhaa Namoo	5	2025-05-30	Google Play	NEGATIVE	0.9887813329696656	Other
32	1	lower system everything	3	2025-05-30	Google Play	NEGATIVE	0.9993475079536438	Other
33	1	Nice!	5	2025-05-30	Google Play	POSITIVE	0.999863862991333	Other
34	1	Keep it up My CBE	5	2025-05-29	Google Play	POSITIVE	0.9996104836463928	Other
35	1	yes good	5	2025-05-28	Google Play	POSITIVE	0.9998410940170288	Other
36	1	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	2025-05-27	Google Play	NEGATIVE	0.9996353387832642	Transaction Performance;Reliability
37	1	i like everything of this app	5	2025-05-27	Google Play	POSITIVE	0.9996908903121948	Other
38	1	🤬🤬🤬🤬 network 🛜	1	2025-05-26	Google Play	NEGATIVE	0.6856126189231873	Other
39	1	Best	5	2025-05-26	Google Play	POSITIVE	0.9997941851615906	Other
40	1	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	2025-05-26	Google Play	POSITIVE	0.9982792139053344	Other
41	1	nice	5	2025-05-26	Google Play	POSITIVE	0.9998552799224854	Other
42	1	good job	5	2025-05-26	Google Play	POSITIVE	0.999835729598999	Other
43	1	it's awesome!!	5	2025-05-25	Google Play	POSITIVE	0.999871015548706	Other
44	1	thankyou every one	5	2025-05-25	Google Play	POSITIVE	0.99984610080719	Other
45	1	Ronaldo 🇵🇹 🥇	5	2025-05-25	Google Play	POSITIVE	0.994828760623932	Other
46	1	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	2025-05-25	Google Play	POSITIVE	0.9998852014541626	Customer Support
47	1	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	2025-05-25	Google Play	NEGATIVE	0.9997394680976868	Account Access Issues
48	1	mortuary app	5	2025-05-25	Google Play	NEGATIVE	0.7924914360046387	Other
49	1	it is smart app but it has stoped after some period of time on my device with out any reason .	5	2025-05-25	Google Play	NEGATIVE	0.9961044788360596	Other
171	1	super	5	2025-04-26	Google Play	POSITIVE	0.998783528804779	Other
50	1	amazing app I am used this app for one year	4	2025-05-24	Google Play	POSITIVE	0.9991408586502076	Other
51	1	👍	5	2025-05-24	Google Play	NEGATIVE	0.697056770324707	Other
52	1	good app	5	2025-05-24	Google Play	POSITIVE	0.9998493194580078	Other
53	1	i love it 😍😘	5	2025-05-24	Google Play	POSITIVE	0.9998791217803956	Other
54	1	It makes life easy!👌	5	2025-05-24	Google Play	POSITIVE	0.9993600249290466	Other
55	1	its not fast	1	2025-05-24	Google Play	NEGATIVE	0.9949808716773988	Other
56	1	wow	4	2025-05-24	Google Play	POSITIVE	0.999592125415802	Other
57	1	it is sooo good	5	2025-05-24	Google Play	POSITIVE	0.9998735189437866	Other
58	1	excellent	5	2025-05-24	Google Play	POSITIVE	0.9998434782028198	Other
59	1	ok	1	2025-05-24	Google Play	POSITIVE	0.9997851252555848	Other
60	1	Fantastic	5	2025-05-23	Google Play	POSITIVE	0.9998743534088136	Other
61	1	accessible to using	5	2025-05-23	Google Play	POSITIVE	0.9991167187690736	Account Access Issues
62	1	I like it	4	2025-05-23	Google Play	POSITIVE	0.99985933303833	Other
63	1	why you change default network?	5	2025-05-23	Google Play	NEGATIVE	0.9962357878684998	Other
64	1	very nice 👍	5	2025-05-23	Google Play	POSITIVE	0.999857783317566	Other
65	1	nice fast app	5	2025-05-23	Google Play	POSITIVE	0.999833345413208	Other
66	1	how to I get my money	5	2025-05-23	Google Play	NEGATIVE	0.9934091567993164	Other
67	1	Very bad, can't even load they need to improve their services.	1	2025-05-22	Google Play	NEGATIVE	0.999816596508026	Other
68	1	Very good app, but please make it reliable . it crashes sometimes .	4	2025-05-22	Google Play	POSITIVE	0.964985489845276	Reliability
69	1	very busy I don't know why... I prefer 889	3	2025-05-22	Google Play	NEGATIVE	0.9991938471794128	Other
70	1	Sometimes it has a nasty lag for several hour fix that , the rest is 👌	4	2025-05-22	Google Play	NEGATIVE	0.9966771602630616	Other
71	1	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	2025-05-22	Google Play	NEGATIVE	0.9986202716827391	Other
72	1	hojii bonsaadha	5	2025-05-22	Google Play	POSITIVE	0.9568661451339722	Other
73	1	user-friendly apps.because this app is easy.	5	2025-05-22	Google Play	POSITIVE	0.955450713634491	Other
74	1	Awosome!!!	5	2025-05-22	Google Play	POSITIVE	0.6944913268089294	Other
75	1	Very good app,	5	2025-05-22	Google Play	POSITIVE	0.9998691082000732	Other
76	1	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-05-22	Google Play	NEGATIVE	0.992516815662384	Customer Support
77	1	ይህ መተግበሪያ በጣም ጥሩ ነው. this app is very nice	5	2025-05-22	Google Play	POSITIVE	0.9997020363807678	Other
78	1	I hate this app 😒	1	2025-05-22	Google Play	NEGATIVE	0.9996378421783448	Other
79	1	trustful	5	2025-05-22	Google Play	POSITIVE	0.9998213648796082	Other
80	1	I like	5	2025-05-22	Google Play	POSITIVE	0.9998149275779724	Other
81	1	update issue	4	2025-05-22	Google Play	NEUTRAL	0.5	Other
82	1	its not working over safari network	1	2025-05-22	Google Play	NEGATIVE	0.9991377592086792	Other
83	1	oldie	1	2025-05-22	Google Play	NEGATIVE	0.6663151383399963	Other
84	1	it doesn't work	1	2025-05-21	Google Play	NEGATIVE	0.9997813105583192	Other
85	1	This app is good, and we are using it well	1	2025-05-21	Google Play	POSITIVE	0.999855637550354	Other
86	1	very nice 👌 app for android phone	5	2025-05-21	Google Play	POSITIVE	0.9994401335716248	Other
87	1	Yes Yes	5	2025-05-21	Google Play	POSITIVE	0.9997482895851136	Other
88	1	በጣም ከርፋፋ	1	2025-05-21	Google Play	NEGATIVE	0.7850590348243713	Other
89	1	easy to use helpful in my life	5	2025-05-21	Google Play	POSITIVE	0.9981144666671752	Customer Support
90	1	good 👍	4	2025-05-21	Google Play	POSITIVE	0.9998576641082764	Other
91	1	the best mobile banking app	5	2025-05-21	Google Play	POSITIVE	0.9998278617858888	Other
92	1	this app is very useful app,it saves time,and it is secure	4	2025-05-21	Google Play	POSITIVE	0.9992597699165344	Other
93	1	it's a good application 👍	5	2025-05-21	Google Play	POSITIVE	0.9998123049736024	Other
94	1	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	2025-05-21	Google Play	NEGATIVE	0.9997513890266418	Transaction Performance
95	1	poor service	1	2025-05-21	Google Play	NEGATIVE	0.999653458595276	Other
96	1	amazing	5	2025-05-20	Google Play	POSITIVE	0.999875545501709	Other
97	1	it is reliable and easy to use.	5	2025-05-20	Google Play	POSITIVE	0.9998389482498168	Other
98	1	the most annoying mobile banking app I've ever seen	1	2025-05-20	Google Play	NEGATIVE	0.9994208812713624	Other
99	1	Cbe mobile banking	5	2025-05-20	Google Play	POSITIVE	0.8304278254508972	Other
100	1	i can't make Screenshout in this app, please made modification	5	2025-05-20	Google Play	NEGATIVE	0.9966920614242554	Other
101	1	Best app I loved it	5	2025-05-19	Google Play	POSITIVE	0.999849796295166	Other
102	1	nice app	5	2025-05-19	Google Play	POSITIVE	0.9998061060905457	Other
103	1	Amazing applicatiom sometimes doesnt work!	5	2025-05-18	Google Play	NEGATIVE	0.6448792815208435	Other
104	1	well satisfied with this beautiful app	5	2025-05-18	Google Play	POSITIVE	0.999858856201172	Other
105	1	very good	4	2025-05-17	Google Play	POSITIVE	0.9998520612716676	Other
106	1	best app.	5	2025-05-17	Google Play	POSITIVE	0.999774158000946	Other
107	1	not working,why???	5	2025-05-17	Google Play	NEGATIVE	0.9995881915092468	Other
108	1	Great impact but why Developer option turnoff if you fix 🙏 🙏 🙏	5	2025-05-17	Google Play	NEGATIVE	0.9841780066490172	Other
109	1	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	2025-05-17	Google Play	NEGATIVE	0.9996201992034912	Other
110	1	woxe harimo ribiso	5	2025-05-17	Google Play	NEGATIVE	0.9374371767044068	Other
111	1	Good ,easy to use	5	2025-05-16	Google Play	POSITIVE	0.9998592138290404	Other
112	1	Good app	5	2025-05-15	Google Play	POSITIVE	0.9998493194580078	Other
113	1	Good job👍	5	2025-05-14	Google Play	POSITIVE	0.9998576641082764	Other
114	1	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	2025-05-14	Google Play	POSITIVE	0.9939066767692566	Account Access Issues
172	1	ጠጀጨገጀ።ጀገ	5	2025-04-26	Google Play	NEGATIVE	0.8337255716323853	Other
173	1	i like the app	5	2025-04-26	Google Play	POSITIVE	0.9994398951530457	Other
115	1	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	2025-05-13	Google Play	NEGATIVE	0.947411835193634	Account Access Issues
116	1	customer service is bad nothing is good about this bank	1	2025-05-13	Google Play	NEGATIVE	0.9996613264083862	Customer Support
117	1	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	2025-05-13	Google Play	NEGATIVE	0.992915153503418	Other
118	1	fast and simple easy to use 👌	5	2025-05-12	Google Play	POSITIVE	0.998494267463684	Other
119	1	The fastest transferring app I ever had its so reliable	5	2025-05-11	Google Play	POSITIVE	0.9844427704811096	Transaction Performance
120	1	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	2025-05-11	Google Play	NEGATIVE	0.9986681938171388	Transaction Performance
121	1	it's easy and fast	5	2025-05-10	Google Play	POSITIVE	0.9995684027671814	Other
122	1	This app don't have self activation only you have to look near cbe branch that's disgusting	1	2025-05-10	Google Play	NEGATIVE	0.9960438013076782	Other
123	1	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	2025-05-09	Google Play	POSITIVE	0.999572217464447	Customer Support
124	1	wow best application ever	5	2025-05-09	Google Play	POSITIVE	0.9997984766960144	Other
125	1	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	2025-05-08	Google Play	NEGATIVE	0.9997019171714784	Other
126	1	the pride of Ethiopian bank 🏦	5	2025-05-08	Google Play	POSITIVE	0.999118983745575	Other
127	1	why the app telling me to turn of developer options please fix it.	1	2025-05-07	Google Play	NEGATIVE	0.9990994930267334	Other
128	1	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	2025-05-07	Google Play	POSITIVE	0.9976927042007446	Transaction Performance
129	1	amazing apps	5	2025-05-06	Google Play	POSITIVE	0.9998716115951538	Other
130	1	All service of Mobile Banking	5	2025-05-06	Google Play	POSITIVE	0.8924254179000854	Other
131	1	needs improvement	1	2025-05-06	Google Play	NEGATIVE	0.9966731071472168	Other
132	1	i miss the old one i couldn't send my mony to other bank..	1	2025-05-06	Google Play	NEGATIVE	0.995843231678009	Other
133	1	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	2025-05-06	Google Play	NEGATIVE	0.9984410405158995	Transaction Performance
134	1	good but these week not oky	4	2025-05-06	Google Play	NEGATIVE	0.9554153680801392	Other
135	1	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	2025-05-06	Google Play	POSITIVE	0.99980491399765	User Interface;Reliability
136	1	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	2025-05-05	Google Play	NEGATIVE	0.9975224137306212	Other
137	1	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	2025-05-05	Google Play	POSITIVE	0.899111807346344	Transaction Performance
138	1	CBE mobilr bankg	5	2025-05-05	Google Play	POSITIVE	0.8703054785728455	Other
139	1	verygood	3	2025-05-05	Google Play	POSITIVE	0.9988996982574464	Other
140	1	ممتاز جدا	5	2025-05-04	Google Play	NEGATIVE	0.803174614906311	Other
141	1	it's very low quality application	1	2025-05-04	Google Play	NEGATIVE	0.9996594190597534	Other
142	1	Very Amazing Apps	5	2025-05-04	Google Play	POSITIVE	0.9998774528503418	Other
143	1	አዛ	1	2025-05-04	Google Play	NEGATIVE	0.697056770324707	Other
144	1	wow simple life	5	2025-05-04	Google Play	POSITIVE	0.9997076392173768	Other
145	1	it's nice	5	2025-05-03	Google Play	POSITIVE	0.9998672008514404	Other
146	1	Why stacked sometimes	5	2025-05-03	Google Play	NEGATIVE	0.9941052198410034	Other
147	1	okay 👍 but sometimes busy	1	2025-05-03	Google Play	NEGATIVE	0.8515539765357971	Other
148	1	the worst commercial company that fails to do even the most normal things again and and again.	1	2025-05-03	Google Play	NEGATIVE	0.9997990727424622	Other
149	1	Very good app. but disappointed by general cessation of system.	5	2025-05-02	Google Play	NEGATIVE	0.998118817806244	Other
150	1	Good and fast	5	2025-05-02	Google Play	POSITIVE	0.9998561143875122	Other
151	1	Unreliable!	1	2025-05-02	Google Play	NEGATIVE	0.9997379183769226	Other
152	1	Best the best fast	5	2025-05-02	Google Play	POSITIVE	0.9998427629470824	Other
153	1	happy	5	2025-05-02	Google Play	POSITIVE	0.99987530708313	Other
154	1	fast and reliable	5	2025-05-02	Google Play	POSITIVE	0.9998595714569092	Other
155	1	network errorrrrrr	2	2025-05-02	Google Play	NEGATIVE	0.9978076815605164	Reliability
156	1	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	2025-05-02	Google Play	NEGATIVE	0.9982808828353882	Other
157	1	its good and simple to use	5	2025-05-02	Google Play	POSITIVE	0.9998610019683838	Other
158	1	worest app like that bank for security and network access	1	2025-05-02	Google Play	NEGATIVE	0.9927296042442322	Account Access Issues
159	1	it's the best app i	5	2025-05-02	Google Play	POSITIVE	0.999834418296814	Other
160	1	not bad not good	1	2025-05-02	Google Play	NEGATIVE	0.9715348482131958	Other
161	1	its very nice	5	2025-05-02	Google Play	POSITIVE	0.9998526573181152	Other
162	1	do not work this week	3	2025-04-30	Google Play	NEGATIVE	0.99776029586792	Other
163	1	It crashes frequently	4	2025-04-30	Google Play	NEGATIVE	0.9993256330490112	Reliability
164	1	the best	5	2025-04-28	Google Play	POSITIVE	0.9998332262039183	Other
165	1	I can simply describe this app as "Making all your work easier".	5	2025-04-28	Google Play	POSITIVE	0.838257908821106	Other
166	1	goid	5	2025-04-28	Google Play	NEGATIVE	0.7087010741233826	Other
167	1	best appearance	5	2025-04-27	Google Play	POSITIVE	0.9996986389160156	Other
168	1	it's very good 👍 app	5	2025-04-27	Google Play	POSITIVE	0.999859094619751	Other
169	1	I need support you	5	2025-04-27	Google Play	NEGATIVE	0.9881442785263062	Customer Support
170	1	the worst Mobile banking i have ever seen in my life	1	2025-04-26	Google Play	NEGATIVE	0.9997807145118712	Other
174	1	the Best	1	2025-04-26	Google Play	POSITIVE	0.9998332262039183	Other
175	1	to other bank is bad	1	2025-04-25	Google Play	NEGATIVE	0.9997149109840392	Other
176	1	tank's	5	2025-04-25	Google Play	NEGATIVE	0.9855977892875672	Other
177	1	its good but add more features such like. bank statement showing	5	2025-04-24	Google Play	POSITIVE	0.9881665110588074	Other
178	1	it is so nice	5	2025-04-24	Google Play	POSITIVE	0.9998714923858644	Other
179	1	Very Good👍	5	2025-04-21	Google Play	POSITIVE	0.8243632316589355	Other
180	1	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	2025-04-21	Google Play	NEGATIVE	0.9995972514152528	Transaction Performance;Reliability
181	1	wow, amazing app	5	2025-04-21	Google Play	POSITIVE	0.9998503923416138	Other
182	1	use ful	5	2025-04-21	Google Play	NEGATIVE	0.9949980974197388	Other
183	1	Great app	5	2025-04-21	Google Play	POSITIVE	0.999821126461029	Other
184	1	well app	5	2025-04-20	Google Play	POSITIVE	0.9993765950202942	Other
185	1	Actually it is inactive	4	2025-04-19	Google Play	NEGATIVE	0.9996483325958252	Other
186	1	slow, only one account is used	2	2025-04-19	Google Play	NEGATIVE	0.9997527003288268	Transaction Performance
187	1	always CBE is the leading Commercial Bank💪💪💪	5	2025-04-18	Google Play	POSITIVE	0.9975135326385498	Other
188	1	i like it	5	2025-04-18	Google Play	POSITIVE	0.99985933303833	Other
189	1	why removing screenshot feature why?	1	2025-04-18	Google Play	NEGATIVE	0.9981147050857544	Other
190	1	nice apps where network is good in connection	5	2025-04-18	Google Play	POSITIVE	0.9994925260543824	Other
191	1	Thank you!!!	5	2025-04-18	Google Play	POSITIVE	0.9998666048049928	Other
192	1	i can't take screenshot	1	2025-04-18	Google Play	NEGATIVE	0.9897894263267516	Other
193	1	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	2025-04-18	Google Play	NEGATIVE	0.9861215949058532	User Interface
194	1	perfectly special	5	2025-04-18	Google Play	POSITIVE	0.999879002571106	Other
195	1	Fast and Reliable	5	2025-04-18	Google Play	POSITIVE	0.9998595714569092	Other
196	1	The best application I have ever seen in Ethiopia banking industry.	5	2025-04-17	Google Play	POSITIVE	0.9997448325157166	Other
197	1	great app!!!	5	2025-04-17	Google Play	POSITIVE	0.9998501539230348	Other
198	1	because sometimes it doesn't working it load too much	3	2025-04-17	Google Play	NEGATIVE	0.9911932349205016	Other
199	1	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	2025-04-17	Google Play	POSITIVE	0.9998784065246582	Other
200	1	very nice app ever!!!	5	2025-04-16	Google Play	POSITIVE	0.9998270869255066	Other
201	1	the best app	5	2025-04-16	Google Play	POSITIVE	0.9998469352722168	Other
202	1	Biometric security for mobile banking is not available	5	2025-04-16	Google Play	NEGATIVE	0.9996340274810792	Other
203	1	great	5	2025-04-15	Google Play	POSITIVE	0.9998630285263062	Other
204	1	Nice service	5	2025-04-15	Google Play	POSITIVE	0.9998397827148438	Other
205	1	great app	5	2025-04-15	Google Play	POSITIVE	0.999821126461029	Other
206	1	it's special apps	5	2025-04-15	Google Play	POSITIVE	0.9995416402816772	Other
207	1	In the updated version of the app, it takes more time to download the receipt.	3	2025-04-15	Google Play	NEGATIVE	0.9985652565956116	Other
208	1	ለምንድነው ትራንዛክሽን ትንሽ ብቻ የሚያሳየው ?	3	2025-04-14	Google Play	NEGATIVE	0.9647620320320128	Other
209	1	Good 🔥	5	2025-04-14	Google Play	POSITIVE	0.9998576641082764	Other
210	1	very interesting app i am using every day fantastic	5	2025-04-14	Google Play	POSITIVE	0.9998443126678468	Other
211	1	lebaa bank	5	2025-04-14	Google Play	NEGATIVE	0.9437295198440552	Other
212	1	Can't scan/recognize other banks' Interoperable QR Codes	1	2025-04-13	Google Play	NEGATIVE	0.9983273148536682	Other
213	1	OK	5	2025-04-13	Google Play	POSITIVE	0.9997851252555848	Other
214	1	grateful app	5	2025-04-13	Google Play	POSITIVE	0.9998038411140442	Other
215	1	100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏	5	2025-04-13	Google Play	POSITIVE	0.9974650144577026	Other
216	1	everthing wellbeok	3	2025-04-13	Google Play	NEGATIVE	0.7055767178535461	Other
217	1	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	2025-04-13	Google Play	NEGATIVE	0.9963226318359376	Account Access Issues
218	1	nice app 👌	5	2025-04-12	Google Play	POSITIVE	0.9996724128723145	Other
219	1	why did this app is not screenshot	5	2025-04-12	Google Play	NEGATIVE	0.9989493489265442	Other
220	1	it so good app	5	2025-04-12	Google Play	POSITIVE	0.999868631362915	Other
221	1	جميل	5	2025-04-11	Google Play	POSITIVE	0.9271727204322816	Other
222	1	less network, specially to make fee for utility purpose	1	2025-04-11	Google Play	NEGATIVE	0.994688868522644	Other
223	1	simply for used	4	2025-04-11	Google Play	NEGATIVE	0.9918004870414734	Other
224	1	wow keep up	5	2025-04-10	Google Play	POSITIVE	0.9998539686203004	Other
225	1	its great app but when updating we can't take screen shot please try to fix it	3	2025-04-10	Google Play	NEGATIVE	0.9934490323066713	Other
226	1	good one	5	2025-04-10	Google Play	POSITIVE	0.9998288154602052	Other
227	1	everything is easy thank you cebe	5	2025-04-10	Google Play	POSITIVE	0.9998396635055542	Other
228	1	ፈጣን ቀልጣፋ	5	2025-04-10	Google Play	NEGATIVE	0.7850590348243713	Other
229	1	ጎበዝ	5	2025-04-09	Google Play	NEGATIVE	0.697056770324707	Other
230	1	but this app says can't sync	5	2025-04-09	Google Play	NEGATIVE	0.9988365769386292	Other
231	1	waw	5	2025-04-09	Google Play	NEGATIVE	0.7346176505088806	Other
232	1	to slow	3	2025-04-09	Google Play	NEGATIVE	0.999487280845642	Transaction Performance
233	1	work on screen shot system	4	2025-04-08	Google Play	NEUTRAL	0.5	Other
234	1	very very nice aplication	1	2025-04-08	Google Play	POSITIVE	0.9998292922973632	Other
235	1	wonder full and it is easy to use	5	2025-04-08	Google Play	POSITIVE	0.9996142387390136	Other
443	1	Wow	5	2025-03-14	Google Play	POSITIVE	0.999592125415802	Other
236	1	easy and reliable	2	2025-04-08	Google Play	POSITIVE	0.9998584985733032	Other
237	1	it is Very Useful app 👍	5	2025-04-07	Google Play	POSITIVE	0.994536280632019	Other
238	1	perfect app	5	2025-04-07	Google Play	POSITIVE	0.9998340606689452	Other
239	1	I like it.	5	2025-04-07	Google Play	POSITIVE	0.999869465827942	Other
240	1	bugs	3	2025-04-07	Google Play	NEGATIVE	0.9988303780555724	Reliability
241	1	commerial Bank	5	2025-04-06	Google Play	NEGATIVE	0.6810263991355896	Other
242	1	Genat biru	2	2025-04-06	Google Play	NEGATIVE	0.966159999370575	Other
243	1	🙏	5	2025-04-06	Google Play	NEGATIVE	0.697056770324707	Other
244	1	it is good but it doesn't allow screen shot	4	2025-04-06	Google Play	POSITIVE	0.672315239906311	Other
245	1	the best one	5	2025-04-06	Google Play	POSITIVE	0.9998371601104736	Other
246	1	You need to copy many things from other bank apps like Amole(Dashen)	2	2025-04-06	Google Play	NEGATIVE	0.9967620372772216	Other
247	1	bring back the screenshot feature.	1	2025-04-05	Google Play	POSITIVE	0.9942916631698608	Other
248	1	Good!👍	3	2025-04-05	Google Play	POSITIVE	0.9998579025268556	Other
249	1	best app to experience him that to smooth transaction among the customers	1	2025-04-05	Google Play	POSITIVE	0.9985142350196838	Transaction Performance
250	1	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	2025-04-05	Google Play	NEGATIVE	0.9551453590393066	User Interface
251	1	easy to use	5	2025-04-05	Google Play	POSITIVE	0.9988542795181274	Other
252	1	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	2025-04-04	Google Play	POSITIVE	0.9998189806938172	User Interface
253	1	ለኔ በጣም ምርጥ ነው ግን screenshot ማረግ ቢቻል ምርጥ ነበር	5	2025-04-04	Google Play	NEGATIVE	0.8819233775138855	Other
254	1	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	2025-04-04	Google Play	NEGATIVE	0.9973511695861816	Transaction Performance
255	1	cool ❤	4	2025-04-04	Google Play	POSITIVE	0.9997991919517516	Other
256	1	Best app	5	2025-04-04	Google Play	POSITIVE	0.999686598777771	Other
257	1	best banking App	4	2025-04-03	Google Play	POSITIVE	0.999736487865448	Other
258	1	satisfied	5	2025-04-03	Google Play	POSITIVE	0.9997212290763856	Other
259	1	this app is very necessary app many people found it	5	2025-04-03	Google Play	POSITIVE	0.9980692267417908	Other
260	1	cbe very active Bank I'm using CBE app very very satisfaction	5	2025-04-03	Google Play	POSITIVE	0.989459753036499	Other
261	1	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	2025-04-03	Google Play	POSITIVE	0.9997400641441344	Transaction Performance
262	1	perfect	5	2025-04-03	Google Play	POSITIVE	0.9998517036437988	Other
263	1	thankyou	5	2025-04-02	Google Play	POSITIVE	0.999842882156372	Other
264	1	I Like it	5	2025-04-02	Google Play	POSITIVE	0.99985933303833	Other
265	1	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	2025-04-02	Google Play	NEGATIVE	0.9986600875854492	Account Access Issues
266	1	smart app	5	2025-04-02	Google Play	POSITIVE	0.999789297580719	Other
267	1	isin ga'a	2	2025-04-02	Google Play	POSITIVE	0.760728120803833	Other
268	1	it's great	5	2025-04-02	Google Play	POSITIVE	0.9998691082000732	Other
269	1	very good app and stars faction with work	5	2025-04-02	Google Play	POSITIVE	0.999858856201172	Other
270	1	It is excelent	5	2025-04-01	Google Play	POSITIVE	0.9998881816864014	Other
271	1	Smart	5	2025-04-01	Google Play	POSITIVE	0.9998456239700316	Other
272	1	በየወሩ አፕደት እየጠየቀኝ ነው ለነገሩ ብር ስሌለኝ ይሆናል እና ምን ለማለት ፈልገ መሰላቹ ወላህ ቼግሮኛል 🥺🥺🥺	3	2025-04-01	Google Play	NEGATIVE	0.9570208191871644	Other
273	1	very interesting app	5	2025-04-01	Google Play	POSITIVE	0.9997968077659608	Other
274	1	wow.......cbe.....keep it up.....!!!!!!	5	2025-04-01	Google Play	POSITIVE	0.998596966266632	Other
275	1	ጊዜን ቆጣቢ እና ህይወትን ቀለል ከሚያደርጉ ኢትዬጲያ ካሉ ፋይናንስ አፕልኬሽኖች ሁሉ ይሄ ይለያል	5	2025-04-01	Google Play	NEGATIVE	0.9510265588760376	Other
276	1	Excellent🙏app	5	2025-04-01	Google Play	NEGATIVE	0.697056770324707	Other
277	1	the most useful	5	2025-04-01	Google Play	POSITIVE	0.9997223019599916	Other
278	1	I am more satisfied in this app . More sure you have to secure.	4	2025-04-01	Google Play	POSITIVE	0.9787843823432922	Other
279	1	Easy to use	5	2025-04-01	Google Play	POSITIVE	0.9988542795181274	Other
280	1	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	2025-04-01	Google Play	NEGATIVE	0.9585952758789062	Other
281	1	Excellent !!!	5	2025-04-01	Google Play	POSITIVE	0.999865174293518	Other
282	1	always we relay on	5	2025-04-01	Google Play	POSITIVE	0.9971832633018494	Other
283	1	I'm lucky to have this🙏 thank you CBE.	5	2025-04-01	Google Play	POSITIVE	0.999750792980194	Other
284	1	it's need more improvement like Tellbirr.	4	2025-04-01	Google Play	NEGATIVE	0.999363124370575	Other
285	1	goode app	5	2025-04-01	Google Play	POSITIVE	0.9997406601905824	Other
286	1	a very nice app.👍👍👍	5	2025-04-01	Google Play	POSITIVE	0.9998323917388916	Other
287	1	safe easy & fast	5	2025-04-01	Google Play	POSITIVE	0.999711573123932	Other
288	1	it's good app	5	2025-04-01	Google Play	POSITIVE	0.9998689889907836	Other
289	1	It is veary useful app but screen shout was impossible .solve this problem	5	2025-04-01	Google Play	NEGATIVE	0.9958590865135192	Other
290	1	ጥሩ ነው	5	2025-04-01	Google Play	NEGATIVE	0.7850590348243713	Other
291	1	እጅግ በጣም ጥሩ አፕ	5	2025-04-01	Google Play	NEGATIVE	0.8616330027580261	Other
292	1	በጣም ሃሪፍ ነው ግን ብር በሚተላለፍበት ወቅት ተቀንሷል ይላል እላፊ መልክቱ ይደርሳል ግን አይቀንስም	5	2025-04-01	Google Play	NEGATIVE	0.9528433680534364	Other
293	1	suitable app	4	2025-04-01	Google Play	POSITIVE	0.9997665286064148	User Interface
294	1	Dear cbe this app is not comparable with 21century and pls try to solve it.💀💀💀	1	2025-04-01	Google Play	NEGATIVE	0.9995038509368896	Other
295	1	best transaction method of financial	5	2025-04-01	Google Play	POSITIVE	0.9995972514152528	Transaction Performance
296	1	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	2025-04-01	Google Play	POSITIVE	0.9995881915092468	Transaction Performance
297	1	It literarily don't work at all	4	2025-04-01	Google Play	NEGATIVE	0.9995075464248656	Other
298	1	good give us plus	5	2025-04-01	Google Play	POSITIVE	0.9998716115951538	Other
299	1	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	2025-04-01	Google Play	POSITIVE	0.9895473718643188	Transaction Performance
300	1	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	2025-04-01	Google Play	NEGATIVE	0.9852171540260316	Transaction Performance
301	1	Tnc Cbe	5	2025-04-01	Google Play	POSITIVE	0.907030701637268	Other
302	1	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	2025-03-31	Google Play	NEGATIVE	0.915197730064392	Other
303	1	great apps	5	2025-03-31	Google Play	POSITIVE	0.999853491783142	Other
304	1	Excellent	5	2025-03-31	Google Play	POSITIVE	0.9998434782028198	Other
305	1	Great app!	4	2025-03-31	Google Play	POSITIVE	0.9998462200164796	Other
306	1	CBE	5	2025-03-31	Google Play	POSITIVE	0.9966009855270386	Other
307	1	very good 👍 👏	5	2025-03-31	Google Play	POSITIVE	0.99985933303833	Other
308	1	great when it works	5	2025-03-31	Google Play	POSITIVE	0.9998693466186525	Other
309	1	the app is very good, but why screenshots is impossible?	5	2025-03-31	Google Play	NEGATIVE	0.981265127658844	Other
310	1	excellent match application	5	2025-03-31	Google Play	POSITIVE	0.9998453855514526	Other
311	1	The Best app😍😍😍	5	2025-03-31	Google Play	POSITIVE	0.9998503923416138	Other
312	1	excellent app	5	2025-03-31	Google Play	POSITIVE	0.9998356103897096	Other
313	1	easy to use and user friendly	5	2025-03-31	Google Play	POSITIVE	0.9979179501533508	User Interface
314	1	very nice	5	2025-03-31	Google Play	POSITIVE	0.9998563528060912	Other
315	1	አሪፍ ነው በተለይ የአሻራ ደህነቱ መረጋገጡ ተመችቶኛል	3	2025-03-31	Google Play	NEGATIVE	0.9200406670570374	Other
316	1	well software	5	2025-03-31	Google Play	POSITIVE	0.999262273311615	Other
317	1	ጥሩ ነው አንዳንዴ ስታክ ቢያደርግም	4	2025-03-31	Google Play	NEGATIVE	0.8832130432128906	Other
318	1	CBE very good apps	5	2025-03-31	Google Play	POSITIVE	0.9998394250869752	Other
319	1	This application fast, secure and more convenient. Thanks CBE	5	2025-03-31	Google Play	POSITIVE	0.9992094039916992	Other
320	1	excellent service	5	2025-03-31	Google Play	POSITIVE	0.9998576641082764	Other
321	1	it's best	5	2025-03-31	Google Play	POSITIVE	0.999842643737793	Other
322	1	Why didn't you display cash transactions and bank statement in the mobile banking app?	4	2025-03-31	Google Play	NEGATIVE	0.9976195693016052	Transaction Performance
323	1	Amazing app	5	2025-03-31	Google Play	POSITIVE	0.9998670816421508	Other
324	1	our legitimate bank	4	2025-03-31	Google Play	POSITIVE	0.9954161643981934	Other
325	1	Ever and never seen this kind of app I proud my CBE	5	2025-03-31	Google Play	POSITIVE	0.9952196478843688	Other
326	1	very good and safe for me!	5	2025-03-31	Google Play	POSITIVE	0.9998769760131836	Other
327	1	it is best bank	5	2025-03-31	Google Play	POSITIVE	0.9997767806053162	Other
328	1	very good, but sometimes....	4	2025-03-31	Google Play	POSITIVE	0.9997310042381288	Other
329	1	ከአንድ መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ በርከት ላለ ሰው ሲላክ የላኪውን መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ እንዲያሳይ አታደርጉም ? ግለሰብ ለግለሰብ ወይም ለድርጅት ሲከፍል ያሳያል ።	5	2025-03-31	Google Play	NEGATIVE	0.972727358341217	Other
330	1	Why not allowed to pay for fuel?	4	2025-03-31	Google Play	NEGATIVE	0.9974955916404724	Other
331	1	Really! this app is more simple to use at any time in every where also it's transaction quality between the users within the transaction receipt as abank that means this app is our bank on hand in mobile frankly I proud on this bank digital. I have no word to wrote ...... but it's have weakness on poor connection.	5	2025-03-31	Google Play	NEGATIVE	0.9962796568870544	Transaction Performance
332	1	ቆንጆ ነው	5	2025-03-31	Google Play	NEGATIVE	0.7850590348243713	Other
333	1	Great version	5	2025-03-31	Google Play	POSITIVE	0.9998726844787598	Other
334	1	Good and easy to use	5	2025-03-31	Google Play	POSITIVE	0.9998656511306764	Other
335	1	nice app and fast money transfer	5	2025-03-31	Google Play	POSITIVE	0.9994321465492249	Transaction Performance
336	1	Really automated...	5	2025-03-31	Google Play	POSITIVE	0.8894490003585815	Other
337	1	good App	5	2025-03-31	Google Play	POSITIVE	0.9998493194580078	Other
338	1	bek betam kelal	5	2025-03-31	Google Play	POSITIVE	0.932547926902771	Other
339	1	ምርጥ አፕ ነው ተመችቶኛል❤❤	3	2025-03-31	Google Play	NEGATIVE	0.8616330027580261	Other
340	1	Recently app keeps closing and the notification after says this app has a bug. Can you make an update please	4	2025-03-31	Google Play	NEGATIVE	0.9968405961990356	Reliability
341	1	very good, keep it up	5	2025-03-31	Google Play	POSITIVE	0.9998643398284912	Other
342	1	there is some issue the process it delay	3	2025-03-31	Google Play	NEGATIVE	0.9957571625709534	Other
343	1	what an amazing application in Ethiopian Banking industry which is very interested one!	5	2025-03-31	Google Play	POSITIVE	0.9997572302818298	Other
344	1	interesting	3	2025-03-30	Google Play	POSITIVE	0.9998446702957152	Other
345	1	simple&fast!!!	5	2025-03-30	Google Play	POSITIVE	0.9997504353523254	Other
346	1	it is very good app	5	2025-03-30	Google Play	POSITIVE	0.9998699426651	Other
347	1	It is very excellent anddynamic plus user friend all in one bank apps of the era. I loved it.	5	2025-03-30	Google Play	POSITIVE	0.999854326248169	Other
348	1	Very God thanks	5	2025-03-30	Google Play	POSITIVE	0.9993305206298828	Other
349	1	The sum is good.	3	2025-03-30	Google Play	POSITIVE	0.9998589754104614	Other
350	1	best of bests	5	2025-03-30	Google Play	POSITIVE	0.99969482421875	Other
351	1	am happy thank you CBE🫡	5	2025-03-30	Google Play	POSITIVE	0.9998605251312256	Other
352	1	it's very nice 👍.	5	2025-03-30	Google Play	POSITIVE	0.9998632669448853	Other
353	1	The history sometimes misses transactions, tranfer to cbe birr debited but not really transferred, We need to really cop up with the world for real. The hacks and security problems, invest on and solve them.	3	2025-03-30	Google Play	NEGATIVE	0.994558334350586	Transaction Performance
354	1	Very good	5	2025-03-30	Google Play	POSITIVE	0.9998520612716676	Other
355	1	halan garidhaa cbe	5	2025-03-30	Google Play	POSITIVE	0.9760899543762208	Other
356	1	best apps for useing	5	2025-03-30	Google Play	POSITIVE	0.9989523887634276	Other
357	1	like it	5	2025-03-29	Google Play	POSITIVE	0.9997184872627258	Other
358	1	Good apps ...But fix the screenshot its not easy like before ......	5	2025-03-29	Google Play	NEGATIVE	0.9470353722572328	Other
359	1	l love it	5	2025-03-29	Google Play	POSITIVE	0.9998722076416016	Other
360	1	I am not exaggerating when I say that this application is one of the biggest players in the banking industry. It has simplified a lot of things for the user, even if the bank is in his pocket. But my opinion is (1), when we transfer money, there is a word limit on the (Note) at the end. Why can't we write our reason briefly? I don't understand why it is limited. On the other hand, there is no limit on the bank. Could you explain this? (2), when we pay for water, why is the code not mentioned	5	2025-03-29	Google Play	NEGATIVE	0.9912715554237366	Transaction Performance
361	1	in this update why screenshoot is disabled now it's not working	1	2025-03-28	Google Play	NEGATIVE	0.9996315240859984	Other
362	1	realy I donot seen like this application ! fast ,safe ande confortable	5	2025-03-28	Google Play	POSITIVE	0.989232301712036	Other
363	1	Excellent but needed upgrading!	5	2025-03-28	Google Play	POSITIVE	0.926374852657318	Other
364	1	goods app!! pleace update this apps??	4	2025-03-28	Google Play	NEGATIVE	0.9845630526542664	Other
365	1	The latest update prevents taking screenshots, which is really annoying! please allow us to take screenshots! we need it for evidence (particularly, in case of transfer failure!).	1	2025-03-27	Google Play	NEGATIVE	0.9977697134017944	Transaction Performance
366	1	Fantastic app! I appreciate it very much	5	2025-03-27	Google Play	POSITIVE	0.9998745918273926	Other
367	1	Convenient app	5	2025-03-27	Google Play	POSITIVE	0.9977468848228456	Other
368	1	Doesn't work properly. It crashes some many times. commercial bank of Ethiopia not only the application but also sending money to own CBE birr doesn't get your money in your bank account. forcefully you must wait 3-5 days to get your money back to your account. walk up CBE the world is going to decentralized finance.	1	2025-03-26	Google Play	NEGATIVE	0.9995678067207336	Reliability
369	1	It crashes multiple times everytime you launch it. Fix it. Edit: crash fixed but screenshots has been disabled. I don't know who thought this was a good idea.	1	2025-03-26	Google Play	NEGATIVE	0.9995493292808532	Reliability
370	1	why why u remove screen shoot😡😡	2	2025-03-26	Google Play	NEGATIVE	0.9993287324905396	Other
371	1	I fails mid transaction, No screenshot, download don't work, link shared not working bring back the old app this is usless	1	2025-03-26	Google Play	NEGATIVE	0.9996533393859864	Transaction Performance
372	1	very nice one	5	2025-03-26	Google Play	POSITIVE	0.9998561143875122	Other
373	1	good application	5	2025-03-25	Google Play	POSITIVE	0.999854564666748	Other
374	1	problem solver and the best fast app	5	2025-03-25	Google Play	POSITIVE	0.9997761845588684	Other
375	1	ምርጥ አፕሊከሽን ነው ገንዘብ ለመላክም ሆነ ለማንኛውም ነገር ተመችቶኛል በዚው ቀጥሉበት	5	2025-03-25	Google Play	NEGATIVE	0.944585382938385	Other
376	1	Please bring back the screenshot option. The screenshot download option takes like 15 second appear in gallery and most people don't know about it.	3	2025-03-25	Google Play	NEGATIVE	0.995722770690918	Other
377	1	you must added dark mode options ❗	3	2025-03-25	Google Play	NEGATIVE	0.9864996671676636	Other
378	1	Thank you	5	2025-03-25	Google Play	POSITIVE	0.9998352527618408	Other
379	1	cbe	5	2025-03-25	Google Play	POSITIVE	0.9966009855270386	Other
380	1	ممتاز جدا جدا	5	2025-03-24	Google Play	NEGATIVE	0.8608055114746094	Other
381	1	very nice and convenient app	5	2025-03-24	Google Play	POSITIVE	0.999826729297638	Other
382	1	there are to many bugs app keeps crashi ng and the update file seems to keep getting worse	2	2025-03-24	Google Play	NEGATIVE	0.9997902512550354	Reliability
383	1	👍👍👍	5	2025-03-24	Google Play	NEGATIVE	0.697056770324707	Other
384	1	Great experience so far but why this app ain't working while developer mode is on?	4	2025-03-24	Google Play	NEGATIVE	0.9967141151428224	Other
385	1	why did the screen shot stopped ?????	3	2025-03-24	Google Play	NEGATIVE	0.999007761478424	Other
386	1	it's genuine app..	5	2025-03-24	Google Play	POSITIVE	0.9998555183410645	User Interface
387	1	okay 👌👍	5	2025-03-24	Google Play	POSITIVE	0.998088538646698	Other
388	1	it's a very good application but sometimes it takes a long time to synchronize	4	2025-03-23	Google Play	NEGATIVE	0.9900750517845154	Other
389	1	commercial dank...	5	2025-03-23	Google Play	NEGATIVE	0.9671615362167358	Other
390	1	it's very good	5	2025-03-23	Google Play	POSITIVE	0.9998470544815063	Other
391	1	to getting money	5	2025-03-23	Google Play	POSITIVE	0.8595288395881653	Other
392	1	some times it is difficult to get reciepts for the payment made	1	2025-03-23	Google Play	NEGATIVE	0.9993370175361632	Transaction Performance
393	1	this app is best	1	2025-03-23	Google Play	POSITIVE	0.998983919620514	Other
394	1	it's very useful	5	2025-03-23	Google Play	POSITIVE	0.9997983574867249	Other
395	1	best app and update more features *****	5	2025-03-23	Google Play	POSITIVE	0.9995169639587402	Other
396	1	best app for this vast digital finanical word	5	2025-03-23	Google Play	POSITIVE	0.9931873083114624	Other
397	1	this app is my favorite application	5	2025-03-23	Google Play	POSITIVE	0.9985677003860474	Other
398	1	Hooo I love this application	5	2025-03-22	Google Play	POSITIVE	0.9998517036437988	Other
399	1	The app protects me from screenshot after update. Please make revision on the app.	4	2025-03-22	Google Play	POSITIVE	0.952551245689392	Other
400	1	Screenshot or slip not working	2	2025-03-22	Google Play	NEGATIVE	0.9997146725654602	Other
401	1	thank you for help	5	2025-03-22	Google Play	POSITIVE	0.9998223185539246	Customer Support
402	1	I'm sad guys what are you doing? Why did you add the screenshot restriction to the app? You just made it worse it was a great value to us. You need to rethink it. i will change the 1 star rating when you resolve the issue.	1	2025-03-22	Google Play	NEGATIVE	0.9993658661842346	Other
504	1	No work	5	2025-02-28	Google Play	NEGATIVE	0.999386191368103	Other
403	1	Thise is helpfull and have good and easy for mobile money usage in ethiopia	5	2025-03-22	Google Play	POSITIVE	0.996585488319397	Customer Support
404	1	thank you	5	2025-03-22	Google Play	POSITIVE	0.9998352527618408	Other
405	1	good app.	5	2025-03-22	Google Play	POSITIVE	0.9998503923416138	Other
406	1	Old version was very friendly to use. Now we can't see the #Reason The #transaction history (very limited) and now it crash every time it's opened. More over, the last update prevents us from taking #screenshots. Thanks for the developers as they are getting more stupid than ever.	1	2025-03-21	Google Play	NEGATIVE	0.9987834095954896	Transaction Performance;Reliability
407	1	Since last week this app has started not working. It simply log in without network but can't sync. Please fix it.	5	2025-03-21	Google Play	NEGATIVE	0.999341070652008	Other
408	1	amazing👌🫶🙏	5	2025-03-21	Google Play	NEGATIVE	0.697056770324707	Other
409	1	What an absolutely terrible update. No screenshots and you still have this stupid restriction on developer options. WHAT ABOUT THOSE OF US WHO ARE ACTUALLY DEVELOPERS!!!!!! At this point telebirr just wins the game 100%. CBE. Do. Better!	1	2025-03-21	Google Play	POSITIVE	0.9841668605804444	Other
410	1	Wow its my in	5	2025-03-21	Google Play	POSITIVE	0.9993413090705872	Other
411	1	In the lasted update you removed the capability to screenshot transactions.	3	2025-03-21	Google Play	NEGATIVE	0.998357355594635	Transaction Performance
412	1	how do you disable screenshots on a banking app you are very unserious people	1	2025-03-21	Google Play	NEGATIVE	0.9976205229759216	Other
413	1	no screenshot and biometrics on this version wtfk?	3	2025-03-21	Google Play	NEGATIVE	0.9994788765907288	Other
414	1	Not Good, too lame to use	1	2025-03-21	Google Play	NEGATIVE	0.9997883439064026	Other
415	1	ረዘም ላለ ግዜ እየተጠቀምኩት ነው ይህን መተግበሪያ ጥሩ ነው ነገር ግን አንዳንድ ችግሮች አሉበት 1ኛ የከፈልኩበትን ደረሰኝ በግዜው ከልወሰድኩ ከሰላሳ ትራንዛክሽን በኅላ መልሼ ከዚህ በፊት የተገበያየውበትን ማግኘት አልችልም ልክ እንደ ሌሎች ባንኮች ምሳሌ (አቢሲኒያ አዋሽ..) ሌላው ብር ለመላክ አስቤ እልካለው ግን አካውንቴ ላይ ለተወሰነ ደቂቃ ከአካውንት ሰይቀንስ ይቆይና ያልገባ መስሎኝ ድጋሜ እልካለው ሁለት ግዜ ሰው ጋ ይገባና ሌላ ችግር ውስጥ መግባት ይህኛው በጣም ትኩረት ሊሰጠው የሚገባ ጉዳይ ነው ሌሎችንም ስህተቶችን ማንሳት ይቻላል ዋናውን ላንሳ ብዬ ነው እንጂ developerሮች በርቱ በየ ግዜው የሚሰጣችሁን feedback ተቀበሉ አሻሽሉት	3	2025-03-20	Google Play	NEGATIVE	0.9662055373191832	Other
416	1	CBE app is great	5	2025-03-20	Google Play	POSITIVE	0.9997064471244812	Other
417	1	zaku	5	2025-03-20	Google Play	POSITIVE	0.9918259382247924	Other
418	1	its good and saving time	5	2025-03-20	Google Play	POSITIVE	0.9998652935028076	Other
419	1	this new update(Mar 19,2025) is great in fixing bugs, stability and smooth experience I'll give u that but it came with a big shortcoming which is not allowing to take screenshot. I can't screenshot neither my balance nor the transaction or anything within the app, i understand it's for security reasons but please bring that back, allow us to take screenshot we need that. Thanks.	4	2025-03-20	Google Play	NEGATIVE	0.9968382120132446	Transaction Performance;Reliability
420	1	what went wrong, I couldn't take a screenshot.	3	2025-03-20	Google Play	NEGATIVE	0.9995883107185364	Other
421	1	full	5	2025-03-20	Google Play	POSITIVE	0.9994632601737976	Other
422	1	App is crushing recently. Please update.	4	2025-03-20	Google Play	NEGATIVE	0.9964634776115416	Other
423	1	It is good but why screenshot is forbidden	4	2025-03-20	Google Play	NEGATIVE	0.910074770450592	Other
424	1	Taking away the screenshot of the receipt is just silly. Worse is tbe download button putting a copy of the screenshot - which you prevented to be taken - in tbe downloads folder where we cant attach directly from Whatsapp. Millions of people use the screenshot as proof of payment / transfer yet you make that harder for everyone? I have every user contacts the developer or manager who made this awful decision.	1	2025-03-20	Google Play	NEGATIVE	0.9997187256813048	Transaction Performance
425	1	very good app	5	2025-03-20	Google Play	POSITIVE	0.9998675584793092	Other
426	1	New update version 5.0.9 keeps crashing it needs maintenance	3	2025-03-19	Google Play	NEGATIVE	0.9985888600349426	Reliability
427	1	the update is unneeded	1	2025-03-19	Google Play	NEGATIVE	0.9976237416267396	Other
428	1	Reliable bank	5	2025-03-19	Google Play	POSITIVE	0.9994505047798156	Other
429	1	as if the update of march 19 i can't take a screenshot in the app. i can just save it as file and that is so annoying. i used to save all screenshot in my gallery in one folder now with the extra steps added i have to save the file go to file and then screenshot it. the solution is to allow the screenshot to be save in to gallery automatically. i wish you give this review attention and resolve the issue shortly.	2	2025-03-19	Google Play	NEGATIVE	0.9995331764221193	Other
430	1	it is good app but when I make inter bank transaction It can't display The receiver account number and name of receiver and also receiver bank	4	2025-03-19	Google Play	NEGATIVE	0.8934971690177917	Transaction Performance
431	1	ጥሩነዉ።	5	2025-03-19	Google Play	NEGATIVE	0.7850590348243713	Other
432	1	It was nice but now it dose not opened the transactions	5	2025-03-18	Google Play	NEGATIVE	0.9970568418502808	Transaction Performance
433	1	ኧረ ውረድ	5	2025-03-18	Google Play	NEGATIVE	0.7850590348243713	Other
434	1	simple to use	5	2025-03-17	Google Play	POSITIVE	0.9970622658729552	Other
435	1	The apps is good to use	5	2025-03-17	Google Play	POSITIVE	0.999810755252838	Other
436	1	It's best app but Please add(included) payment of water bill	4	2025-03-17	Google Play	POSITIVE	0.9458625316619872	Transaction Performance
437	1	the app has a bug and it keeps crashing 😑 please provide an update and fix the issue thank you....	3	2025-03-17	Google Play	NEGATIVE	0.9920021295547484	Reliability
438	1	This is my favorite App	5	2025-03-17	Google Play	POSITIVE	0.9985333681106568	Other
439	1	CBE i like	5	2025-03-16	Google Play	POSITIVE	0.9995959401130676	Other
440	1	1.we can't get mobile Token on CBE App or any other online. This is need to improve 2.internet banking is always say authenticate error after some weeks this is need to improve.	4	2025-03-16	Google Play	NEGATIVE	0.998772919178009	Reliability
441	1	excellent app for account transaction specially for bussiness customers and a good method to pay bills and different personal payment.	5	2025-03-15	Google Play	POSITIVE	0.9994691014289856	Transaction Performance
442	1	የሚገርም አፕ ተመችቶኛል 🙏❤	5	2025-03-14	Google Play	NEGATIVE	0.8616330027580261	Other
444	1	The app has brought a new problem. When i open the app, it closes itself then i have to open it again. Please fix this issue if it's your problem	3	2025-03-14	Google Play	NEGATIVE	0.999236822128296	Other
445	1	በጣም ጥሩ አፕልኬሽን ነው	2	2025-03-14	Google Play	NEGATIVE	0.8616330027580261	Other
446	1	In my view, I can't give any conclusion because it's the starting of an online banking in my country. However, the commercial bank of ethiopia must rebuild this app and also need to make more access to changing the system. Keep continuing ethiopia 🇪🇹 🇪🇹🇪🇹🇪🇹	5	2025-03-14	Google Play	NEGATIVE	0.997592270374298	Account Access Issues;User Interface
447	1	Very attractive and user-friendly	5	2025-03-13	Google Play	POSITIVE	0.9998558759689332	Other
448	1	Good apps	5	2025-03-13	Google Play	POSITIVE	0.9998608827590942	Other
449	1	My special app and my proud bank of Ethiopia.	5	2025-03-13	Google Play	POSITIVE	0.999779999256134	Other
450	1	The app need update it always crash	1	2025-03-13	Google Play	NEGATIVE	0.9979516863822936	Reliability
451	1	It is very comfortable and simple to use!!! But whay standing order is not work?	5	2025-03-13	Google Play	NEGATIVE	0.6184165477752686	Other
452	1	One of the best apps I have used ,	5	2025-03-13	Google Play	POSITIVE	0.999804675579071	Other
453	1	Asela	1	2025-03-13	Google Play	POSITIVE	0.9828375577926636	Other
454	1	I am appreciate this app	5	2025-03-13	Google Play	POSITIVE	0.999800145626068	Other
455	1	Excellent app	5	2025-03-12	Google Play	POSITIVE	0.9998356103897096	Other
456	1	I'm very happy using this app. Thanks to developers.	5	2025-03-12	Google Play	POSITIVE	0.9998389482498168	Other
457	1	CBE birr app is my best choice.	5	2025-03-12	Google Play	POSITIVE	0.9923669695854188	Other
458	1	Exceptional/incredible	5	2025-03-12	Google Play	POSITIVE	0.9998782873153688	Other
459	1	Joyful app	5	2025-03-11	Google Play	POSITIVE	0.9998759031295776	Other
460	1	Unstatisfied with the new update keeps crashing every now and then and even though i haven't reached the max txn per day still refuses to transfer...probably going to change my bank if it's not fixed asap	1	2025-03-10	Google Play	NEGATIVE	0.9992684721946716	Transaction Performance;Reliability
461	1	It is one of the disappointed Bank you don't suppose to include Ethiopian on your name you don't deserve it.	1	2025-03-10	Google Play	NEGATIVE	0.9991734623908995	Other
462	1	Simple and easy to use	5	2025-03-10	Google Play	POSITIVE	0.9997318387031556	Other
463	1	it's not good app	5	2025-03-10	Google Play	NEGATIVE	0.9998034834861756	Other
464	1	I have been using CBE App for long, but recently it has started crashing repeatedly and even my phone is reporting that the app has bugs and tells me to wait the developer to fix these bugs.	1	2025-03-09	Google Play	NEGATIVE	0.999707281589508	Reliability
465	1	The great app CBE	5	2025-03-09	Google Play	POSITIVE	0.9937465190887452	Other
466	1	Why it asks me Update repeatedly as soon as I download it !!	1	2025-03-09	Google Play	NEGATIVE	0.9959967136383056	Other
467	1	Commercial Bnk Rate this	5	2025-03-08	Google Play	NEGATIVE	0.96379292011261	Other
468	1	ዋው	5	2025-03-08	Google Play	NEGATIVE	0.697056770324707	Other
469	1	It is good for many aspect. If I can get transactions report with time duration(periodically)	3	2025-03-07	Google Play	POSITIVE	0.999314308166504	Transaction Performance
470	1	its so excellent app	5	2025-03-07	Google Play	POSITIVE	0.9998623132705688	Other
471	1	Due to connection problem	1	2025-03-07	Google Play	NEGATIVE	0.9959508180618286	Other
472	1	Best performing app	5	2025-03-07	Google Play	POSITIVE	0.9995966553688048	Other
473	1	I love it	5	2025-03-06	Google Play	POSITIVE	0.9998799562454224	Other
474	1	Best banck in Ethiopia	5	2025-03-06	Google Play	POSITIVE	0.9990218877792358	Other
475	1	Two step verification update is fake (meaningless). Why because the app gives you an option of to use pin while requesting two step verification step. 🔐 This updated app is not differ than the previous one in case of security & safegaurding users.👹👹💀💀 The other features of the app are best and easy to use it.⭐️⭐️⭐️⭐️⭐️	1	2025-03-06	Google Play	NEGATIVE	0.8035407066345215	Other
476	1	Its good	5	2025-03-05	Google Play	POSITIVE	0.9998385906219482	Other
477	1	Tashoo damisee	4	2025-03-05	Google Play	NEGATIVE	0.96140855550766	Other
478	1	Why don't install	5	2025-03-05	Google Play	NEGATIVE	0.9989054203033448	Other
479	1	Ok	5	2025-03-05	Google Play	POSITIVE	0.9997851252555848	Other
480	1	I'm glad to use it.	5	2025-03-05	Google Play	POSITIVE	0.9996554851531982	Other
481	1	Very good thank you	5	2025-03-04	Google Play	POSITIVE	0.9998544454574584	Other
482	1	it's not working good	5	2025-03-04	Google Play	NEGATIVE	0.999778926372528	Other
483	1	Best service	5	2025-03-04	Google Play	POSITIVE	0.999809205532074	Other
484	1	Best best	5	2025-03-04	Google Play	POSITIVE	0.9998223185539246	Other
485	1	I have been a customer of the Commercial Bank of Ethiopia for many years	5	2025-03-03	Google Play	POSITIVE	0.8422420620918274	Other
486	1	We need this app to work properly, and it looks like an outdated	2	2025-03-03	Google Play	NEGATIVE	0.9998142123222352	Other
487	1	NICE APP	5	2025-03-03	Google Play	POSITIVE	0.9998061060905457	Other
488	1	አሊሳራኝ ም	5	2025-03-03	Google Play	NEGATIVE	0.7850590348243713	Other
489	1	The app crashes too many times. It's a buggy app	1	2025-03-03	Google Play	NEGATIVE	0.9997268319129944	Reliability
490	1	Best App	5	2025-03-03	Google Play	POSITIVE	0.999686598777771	Other
491	1	Thankz	5	2025-03-02	Google Play	POSITIVE	0.9998202919960022	Other
492	1	Verry good it is easy to use anything	5	2025-03-01	Google Play	POSITIVE	0.99958473443985	Other
493	1	Nice	5	2025-03-01	Google Play	POSITIVE	0.9998552799224854	Other
494	1	Its gopd	5	2025-03-01	Google Play	POSITIVE	0.7383992075920105	Other
495	1	system problem	4	2025-03-01	Google Play	NEGATIVE	0.9995689988136292	Other
496	1	So slow with Internet	1	2025-03-01	Google Play	NEGATIVE	0.9990552067756652	Transaction Performance
497	1	I phone app is not working	2	2025-03-01	Google Play	NEGATIVE	0.9997590184211732	Other
498	1	Sometimes it dosent work	4	2025-03-01	Google Play	NEGATIVE	0.7836236953735352	Other
499	1	It's very useful Apps	5	2025-03-01	Google Play	POSITIVE	0.999657392501831	Other
500	1	It is better app	5	2025-03-01	Google Play	POSITIVE	0.9772394895553588	Other
501	1	Good work very important	5	2025-03-01	Google Play	POSITIVE	0.9998600482940674	Other
502	1	It is exlent app it is helful	5	2025-02-28	Google Play	POSITIVE	0.76986163854599	Other
503	1	Best app I like	5	2025-02-28	Google Play	POSITIVE	0.9996886253356934	Other
505	1	It don't work	1	2025-02-28	Google Play	NEGATIVE	0.999772608280182	Other
506	1	Bad security 🔓	2	2025-02-28	Google Play	NEGATIVE	0.9994636178016664	Other
507	1	It's a shame,it can't performe well,you guys can't even fix a bug, It's getting unusable, shame shame shame 😡	1	2025-02-28	Google Play	NEGATIVE	0.9996347427368164	Reliability
508	1	Easy to Use and Effecent System.	5	2025-02-28	Google Play	NEGATIVE	0.9448729157447816	Other
509	1	Great	5	2025-02-28	Google Play	POSITIVE	0.9998630285263062	Other
510	1	የሞባይል ባንኪንጋችሁ ግብይትን ቀለል ያደርጋል	5	2025-02-28	Google Play	NEGATIVE	0.8832130432128906	Other
511	1	It is good but i can not install the app why? And the other one is it is better to show the earliest transactions for instanse before 30 days ago	3	2025-02-27	Google Play	NEGATIVE	0.9948434829711914	Transaction Performance
512	1	Sometimes it does not.work	3	2025-02-27	Google Play	NEGATIVE	0.9903799295425416	Other
513	1	I have been using the App since it is first released and it has been nice, but the latest Update are very worse the app crashes frequently and drains battery highly.	3	2025-02-27	Google Play	NEGATIVE	0.9996823072433472	Reliability
514	1	Commercial bank and it's mobile banking is very good	5	2025-02-27	Google Play	POSITIVE	0.9998273253440856	Other
515	1	Good very good	5	2025-02-27	Google Play	POSITIVE	0.9998477697372437	Other
516	1	Friendly mobile banking application	5	2025-02-27	Google Play	POSITIVE	0.9987659454345704	Other
517	1	Vary good	5	2025-02-27	Google Play	POSITIVE	0.9998520612716676	Other
518	1	1 star because I have to visit my bank for new installation of the app and reactivation takes about 45 to 60 minutes with there long queue and system failures. Learn from telebire app and give options to customers to apt out of this ridiculous security feature. Second why is there no customization in the settings for displaying which account I want displayed in the first section rather that slide to my main account every time. You are making us pay a monthly subscription. Bare minimum is not it	1	2025-02-26	Google Play	NEGATIVE	0.999330759048462	Other
519	1	Recently it is not working please check it	2	2025-02-26	Google Play	NEGATIVE	0.9990835189819336	Other
520	1	Amazing	4	2025-02-26	Google Play	POSITIVE	0.999875545501709	Other
521	1	This app😎	5	2025-02-26	Google Play	POSITIVE	0.8105981349945068	Other
522	1	It is a user friendly excellent app.	5	2025-02-26	Google Play	POSITIVE	0.9998384714126588	User Interface
523	1	Simple and efficient	5	2025-02-26	Google Play	POSITIVE	0.9998663663864136	Other
524	1	Goooood	5	2025-02-25	Google Play	NEUTRAL	0.5	Other
525	1	It is Better to use and Save time. I truly appreciate the Bank System.	5	2025-02-25	Google Play	POSITIVE	0.999414324760437	Other
526	1	Good Work	5	2025-02-25	Google Play	POSITIVE	0.999841332435608	Other
527	1	Simple and secure app	5	2025-02-25	Google Play	POSITIVE	0.9991549253463744	Other
528	1	Crashing frequently every time I try to log in.. it's so annoying	1	2025-02-25	Google Play	NEGATIVE	0.9994563460350036	Reliability
529	1	FIX THE BUG! so frustrating	3	2025-02-25	Google Play	NEGATIVE	0.9993608593940736	Reliability
530	1	The app is full of bugs here and there, perhaps it's from the backend side idk. For instance the transaction history you see on top is one made a couple of months ago and you have to refresh until you reach the top. it's just so bizarre. And you can't even search for a transaction you made. Someone with a lot of transactions will find it annoying. Even simple things like localising dates to Amharic dates are now correctly implemented.	2	2025-02-25	Google Play	NEGATIVE	0.9962574243545532	Transaction Performance;Reliability
531	1	Good experience	5	2025-02-24	Google Play	POSITIVE	0.9998599290847778	Other
532	1	My device install up updated all data access all function but can't support transaction i. e first login password works but can't conformation last transaction password	5	2025-02-24	Google Play	NEGATIVE	0.997616171836853	Account Access Issues;Transaction Performance;Customer Support
533	1	Constantly crashing after new update	1	2025-02-24	Google Play	NEGATIVE	0.9982088804244996	Reliability
534	1	Ani Addunyaa Eebbisaa Tolasaa ti. Magaalaa Mandii keessaa dukkaana qorichaa dhuunfaan qaba. Appilikeeshiniin kun hojii koo kana naaf saffisiisuu keessatti qooda ol’aanaa qaba. Akka ‘mobile banking’ ‘busy’ waan hin ta’u. Namoonni hundumtuu Appii kana akka fayyadaman cimseen gorsa. Galatoomaa!💪🙏❤️	5	2025-02-24	Google Play	NEGATIVE	0.995214343070984	Other
535	1	Great UX, simple to use yet has all necessary features.	4	2025-02-24	Google Play	POSITIVE	0.998058259487152	Other
536	1	Nice 👍 this is app	5	2025-02-23	Google Play	POSITIVE	0.999530792236328	Other
537	1	Why can't we use this app with Developer Mode turned on, when other big international banks apps allow it?	1	2025-02-22	Google Play	NEGATIVE	0.998376965522766	Other
538	1	It is Good application	4	2025-02-22	Google Play	POSITIVE	0.9998681545257568	Other
539	1	Guys after the last update it's crushing a lot like alot look in to it	3	2025-02-22	Google Play	POSITIVE	0.9512686133384703	Other
540	1	The best app	5	2025-02-22	Google Play	POSITIVE	0.9998469352722168	Other
541	1	This is agood app	5	2025-02-22	Google Play	NEGATIVE	0.9740092754364014	Other
542	1	It have a bug it keeps shut down when I open the app. Without any notification. Please fix the bug.	3	2025-02-22	Google Play	NEGATIVE	0.9995484948158264	Reliability
543	1	Very best and fast money transferring app	5	2025-02-22	Google Play	POSITIVE	0.9991329312324524	Transaction Performance
544	1	Why is it so hard to use this app why don't you make it simple like other apps sometimes it doesn't function right	1	2025-02-22	Google Play	NEGATIVE	0.9993847608566284	Other
545	1	Sweet	5	2025-02-22	Google Play	POSITIVE	0.9998382329940796	Other
546	1	Very best app	5	2025-02-22	Google Play	POSITIVE	0.9998177886009216	Other
547	1	couldnt update the app	1	2025-02-22	Google Play	NEGATIVE	0.9958498477935792	Other
548	1	ምርጥ አፕ ነው ሌላ ማለት አይቻልም ፡ግ	5	2025-02-22	Google Play	NEGATIVE	0.9239576458930968	Other
549	1	Too much commission and service charges, not fair at all this is stealing	1	2025-02-21	Google Play	NEGATIVE	0.9996604919433594	Other
550	1	Very god	4	2025-02-21	Google Play	POSITIVE	0.9914793372154236	Other
551	1	Not work some tumes	5	2025-02-21	Google Play	NEGATIVE	0.9993159770965576	Other
552	1	It is easy and user friendly	5	2025-02-21	Google Play	POSITIVE	0.9986781477928162	User Interface
553	1	When I open the app it turns off keep says (app has a bug ) the app needs update	2	2025-02-21	Google Play	NEGATIVE	0.9987732768058776	Reliability
554	1	Solve unwanted time and the time to losses cbe office	5	2025-02-21	Google Play	NEGATIVE	0.9968206882476808	Other
766	1	Goood app	5	2025-01-18	Google Play	NEGATIVE	0.9925320744514464	Other
555	1	I faced a big problem with this due to Developer mode problem How can you help me pls?	5	2025-02-21	Google Play	NEGATIVE	0.9996224641799928	Customer Support
556	1	utilizes too much power & Crashes often	3	2025-02-20	Google Play	NEGATIVE	0.9769357442855836	Reliability
557	1	Most effective so far.	5	2025-02-20	Google Play	POSITIVE	0.9996976852416992	Other
558	1	Not working normally	1	2025-02-20	Google Play	NEGATIVE	0.9995996356010436	Other
559	1	this is the simplest bookeeping system or method. I like it .	5	2025-02-19	Google Play	POSITIVE	0.9957929849624634	Other
560	1	These days the App is Crashing immediately after Login please check	5	2025-02-19	Google Play	NEGATIVE	0.993334174156189	Account Access Issues;Reliability
561	1	I gave it 5🌟 BC this app deserves. Thank you for your services. Appreciated.	5	2025-02-19	Google Play	POSITIVE	0.9996128678321838	Other
562	1	fantastic and best	5	2025-02-18	Google Play	POSITIVE	0.9998780488967896	Other
563	1	It lags before showing the transaction and you have to use the one in the sms message , why doesn't it work on the app it just says loading	1	2025-02-18	Google Play	NEGATIVE	0.9993646740913392	Transaction Performance
564	1	♡	5	2025-02-18	Google Play	NEGATIVE	0.697056770324707	Other
565	1	Very amazing application	5	2025-02-18	Google Play	POSITIVE	0.9998730421066284	Other
566	1	Easy and fantastic to use	5	2025-02-18	Google Play	POSITIVE	0.999881148338318	Other
567	1	ዋውነው	3	2025-02-17	Google Play	NEGATIVE	0.697056770324707	Other
568	1	The way its menu arranged to use is easy to use.	5	2025-02-17	Google Play	POSITIVE	0.9718008041381836	Other
569	1	Nice app	3	2025-02-17	Google Play	POSITIVE	0.9998061060905457	Other
570	1	Beya	5	2025-02-17	Google Play	NEUTRAL	0.5	Other
571	1	Its not bad, but there are plenty of errors .	2	2025-02-17	Google Play	NEGATIVE	0.99788099527359	Reliability
572	1	Waw fantastic Aplication	5	2025-02-16	Google Play	POSITIVE	0.9994812607765198	Other
573	1	I am satisfied by this Ap Thank you	5	2025-02-16	Google Play	POSITIVE	0.9998270869255066	Other
574	1	Best of the best application for ever	5	2025-02-16	Google Play	POSITIVE	0.999823033809662	Other
575	1	This app is better	5	2025-02-15	Google Play	POSITIVE	0.9131496548652648	Other
576	1	It's very good in reminding the account numbers you have been used, but Need to show recipient history whenever you want to present it.or it has to have a search on options for a spesfic time you want to look for receipts with out going for account details at bank. if you lost your receipt without downloading it and need to look sometime a while you can't get in simple search on the app.	1	2025-02-15	Google Play	NEGATIVE	0.9966444969177246	Transaction Performance
577	1	CBE NOOR	5	2025-02-15	Google Play	POSITIVE	0.979977011680603	Other
578	1	It is good app	5	2025-02-15	Google Play	POSITIVE	0.9998652935028076	Other
579	1	Amazing App	5	2025-02-15	Google Play	POSITIVE	0.9998670816421508	Other
580	1	ያስቸግራል	4	2025-02-15	Google Play	NEGATIVE	0.697056770324707	Other
581	1	It crashes a lot; it doesn't work at all sometimes. By far, it is the worst mobile banking app I have ever used.	1	2025-02-15	Google Play	NEGATIVE	0.9997912049293518	Reliability
582	1	Very buggy!	2	2025-02-14	Google Play	NEGATIVE	0.9886261820793152	Reliability
583	1	WOW good	5	2025-02-14	Google Play	POSITIVE	0.9998598098754884	Other
584	1	Very good 😊	3	2025-02-14	Google Play	POSITIVE	0.999870777130127	Other
585	1	Very sad.	5	2025-02-14	Google Play	NEGATIVE	0.9996789693832396	Other
586	1	Excellent arrangements	5	2025-02-14	Google Play	POSITIVE	0.9998513460159302	Other
587	1	So good	5	2025-02-14	Google Play	POSITIVE	0.999841570854187	Other
588	1	a good apps to save my money &withdraw my money to service	5	2025-02-13	Google Play	POSITIVE	0.9948310256004332	Other
589	1	It's easy and good	5	2025-02-13	Google Play	POSITIVE	0.9998728036880492	Other
590	1	It is best app	5	2025-02-13	Google Play	POSITIVE	0.9997313618659972	Other
591	1	አለሚቱ ምስጋነዉ	1	2025-02-13	Google Play	NEGATIVE	0.7850590348243713	Other
592	1	It is not functioning most of the time	3	2025-02-13	Google Play	NEGATIVE	0.9997466206550598	Other
593	1	Best!	5	2025-02-13	Google Play	POSITIVE	0.9998348951339722	Other
594	1	It sends unwanted welcome notification every time you login. There is no way that you can disable this.	3	2025-02-13	Google Play	NEGATIVE	0.9949735403060912	Account Access Issues
595	1	This app now not open what's problem? Please solve it	1	2025-02-13	Google Play	NEGATIVE	0.9984076619148254	Other
596	1	nice thanks	5	2025-02-13	Google Play	POSITIVE	0.999849796295166	Other
597	1	በቅርቡ ችግር ተፈጥሯል ፣ Developer Option ካልተዘጋ አይሰራም፣ Developer Option ከተዘጋ ደግሞ ስልካችን ፍጥነት ለመታዘዝ ይዘገያል ፣ ከዚህ አማራጭ ሌላ ብትጠቀሙ ባይ ነኝ :: Android ላይ	1	2025-02-12	Google Play	NEGATIVE	0.9661839604377748	Other
598	1	Very nice i'm happy	5	2025-02-11	Google Play	POSITIVE	0.99985933303833	Other
599	1	It used to be better in the previous. But after the recent update it keeps crashing as soon as it logs in.. it needs to be fixed.	1	2025-02-11	Google Play	NEGATIVE	0.9991856217384338	Reliability
600	1	❤️	5	2025-02-11	Google Play	NEGATIVE	0.697056770324707	Other
601	1	Can't even load our transaction history!!	1	2025-02-11	Google Play	NEGATIVE	0.9994427561759948	Transaction Performance
602	1	I am happy of this app	5	2025-02-11	Google Play	POSITIVE	0.9998650550842284	Other
603	1	Great app, but try to include an access to water bill payment for places other than Adis Ababa & try top the app not to be inactive while developer option setting in Samsung phones is activated	4	2025-02-11	Google Play	POSITIVE	0.6683254241943359	Account Access Issues;Transaction Performance
604	1	Very good app	5	2025-02-10	Google Play	POSITIVE	0.9998675584793092	Other
605	1	👍 good	5	2025-02-10	Google Play	POSITIVE	0.9998576641082764	Other
606	1	this app is very useful but sometimes when you want to see specific transactions it didn't work so that way i gave you 3	3	2025-02-10	Google Play	NEGATIVE	0.9931367635726928	Transaction Performance
607	1	It is stop working !	1	2025-02-10	Google Play	NEGATIVE	0.9996010661125184	Other
608	1	It's not bad 👍	2	2025-02-10	Google Play	POSITIVE	0.9996799230575562	Other
609	1	It shut down without warning	1	2025-02-10	Google Play	NEGATIVE	0.985458254814148	Other
610	1	Best app of the bank.But,when it needs apdate,customer must be notified in my point of view.Otherwise,customers saying "Mobile banking is not working today" is bad moto.	5	2025-02-10	Google Play	NEGATIVE	0.997967541217804	Other
712	1	Best App👌🏿	5	2025-01-25	Google Play	POSITIVE	0.9997019171714784	Other
611	1	I use this app all the time on my business but sometimes it is difficult to use in rural areas. because there is not enough network. so what if you prepared it for the public to use offline?	3	2025-02-09	Google Play	NEGATIVE	0.999372661113739	Other
612	1	So good 👍 👏	5	2025-02-09	Google Play	POSITIVE	0.9998732805252076	Other
613	1	This app is very interesting and simple to use.	5	2025-02-09	Google Play	POSITIVE	0.9996544122695924	Other
614	1	Add customer service please other than calling 951. Why would you have a mobile app but not an online text-based customer service? Why? Disappointing And I will never use the top-up feature again, I have been trying to recharge my safaricom balance but your app would say time out and then credit my account but never recharge my balance, why? Where is my money? Do you expect me to call 951 at midnight?	2	2025-02-08	Google Play	NEGATIVE	0.9992187023162842	Customer Support
615	1	Smart and easy to use, i like this app	5	2025-02-08	Google Play	POSITIVE	0.9998407363891602	Other
616	1	በፊት ጥሩነበር አሁን ምኑን ነካችሁት ተበላሽቷል አይሰራም	1	2025-02-08	Google Play	NEGATIVE	0.9200406670570374	Other
617	1	The best app I love it	5	2025-02-08	Google Play	POSITIVE	0.9998717308044434	Other
618	1	Is not useful	3	2025-02-08	Google Play	NEGATIVE	0.9997987151145936	Other
619	1	It's ok	5	2025-02-08	Google Play	POSITIVE	0.9998351335525512	Other
620	1	Like	3	2025-02-08	Google Play	POSITIVE	0.9910564422607422	Other
621	1	It's good	5	2025-02-08	Google Play	POSITIVE	0.9998360872268676	Other
622	1	Its good service	4	2025-02-07	Google Play	POSITIVE	0.999849796295166	Other
623	1	Recent transactions doesn't load properly sometimes . And also when transferring to someone sometimes it says failed and but already transferred which might cause to double transfer	1	2025-02-07	Google Play	NEGATIVE	0.99915611743927	Transaction Performance
624	1	It used to work properly, but not anymore. I used to use the app from abroad; but these days, it kept saying "unable to connect" when I tried to check my balance and do transactions.	1	2025-02-07	Google Play	NEGATIVE	0.9991911053657532	Transaction Performance
625	1	Awash birr pro	1	2025-02-07	Google Play	NEGATIVE	0.9963383674621582	Other
626	1	It is a very important application.	5	2025-02-07	Google Play	POSITIVE	0.999725878238678	Other
627	1	አፕሊኬሽኑ ብዙ ግዜ ወደኋላ ይመልሳል	3	2025-02-07	Google Play	NEGATIVE	0.8832130432128906	Other
628	1	To save my time best app to me i like this app tnx cbe !!!	5	2025-02-07	Google Play	NEGATIVE	0.9875180125236512	Other
629	1	Very nice	5	2025-02-06	Google Play	POSITIVE	0.9998563528060912	Other
630	1	It is a shame not to appreciate the recent system improvements that the Commercial Bank of Ethiopia has been making, and I have no doubt that it will be different from this, InshaAllah. Another thing I would like to comment on is that the current method for transferring money to Telebir can own be sent to the person. So, it is possible to send money directly from the Commercial Bank to other banks. If you make it possible to transfer money directly to anyone, I would be very grateful.thank you	5	2025-02-06	Google Play	POSITIVE	0.987940549850464	Transaction Performance
631	1	Comfortable	5	2025-02-06	Google Play	POSITIVE	0.9998550415039062	Other
632	1	Help	5	2025-02-05	Google Play	POSITIVE	0.9892712831497192	Customer Support
633	1	App keeps on crashing after the latest update. Failures are frequent.	3	2025-02-05	Google Play	NEGATIVE	0.9993783235549928	Reliability
634	1	I don't need to update this app	5	2025-02-05	Google Play	POSITIVE	0.8771609663963318	Other
635	1	Good work !! Thank you !	5	2025-02-05	Google Play	POSITIVE	0.9998635053634644	Other
636	1	Application Baay'ee Gaariidha . Hojii Keenya Salphisuu fi Yeroo Nuuf Qusachuu Keeysatti .... Waan Jajjabeeyfamuu Qabuudha !!!	5	2025-02-05	Google Play	NEGATIVE	0.9899823069572448	Other
637	1	After the new update I'm struggling to use this app,it suddenly crush or close automatically pls fix this problem	1	2025-02-05	Google Play	NEGATIVE	0.9996976852416992	Other
638	1	Very fast and easy to use	5	2025-02-05	Google Play	POSITIVE	0.9995383024215698	Other
639	1	It is best application	5	2025-02-04	Google Play	POSITIVE	0.999606192111969	Other
640	1	This apps amazing	5	2025-02-04	Google Play	POSITIVE	0.9998751878738404	Other
641	1	100%👍	5	2025-02-04	Google Play	POSITIVE	0.9974650144577026	Other
642	1	This App. Is just a Meaningful Application for our country..	5	2025-02-04	Google Play	POSITIVE	0.9990418553352356	Other
643	1	This App Is Best and Fantastic Because easy to use, It has Best security Specially Two Specific Authentication so this security is not path unauthorized person to Our account History. Thankyou CBE For We give this service	5	2025-02-04	Google Play	POSITIVE	0.9993579983711244	Account Access Issues
644	1	The app is crashing several times it's really annoying and sometimes it's says failed during different operations ?????? Please fix it!?	1	2025-02-04	Google Play	NEGATIVE	0.999722182750702	Reliability
645	1	Efficient	5	2025-02-04	Google Play	POSITIVE	0.9998533725738524	Other
646	1	ሰሞኑን እያሰቸገረ ነው እንጂ ቀላል እና ፈጣን	3	2025-02-04	Google Play	NEGATIVE	0.9200406670570374	Other
647	1	So nice	5	2025-02-03	Google Play	POSITIVE	0.9998610019683838	Other
648	1	New update new version not working	1	2025-02-03	Google Play	NEGATIVE	0.999659538269043	Other
649	1	that is good	5	2025-02-03	Google Play	POSITIVE	0.9998364448547364	Other
650	1	I have seen lots of great updates right here, especially the 2FA using the biometric security technique, I suggest you work on minimising app crashing due to the accumulation of cache, very little cache crash it.	4	2025-02-03	Google Play	POSITIVE	0.8294109106063843	Reliability
651	1	The Best mobile banking app in Ethiopia. Thanks CBE	5	2025-02-03	Google Play	POSITIVE	0.9998087286949158	Other
652	1	Cbe	5	2025-02-03	Google Play	POSITIVE	0.9966009855270386	Other
653	1	Too poor comparing to other countries.	1	2025-02-03	Google Play	NEGATIVE	0.99960595369339	Other
654	1	Tank	5	2025-02-03	Google Play	NEGATIVE	0.9976772665977478	Other
655	1	Senà shelu	5	2025-02-02	Google Play	POSITIVE	0.7489115595817566	Other
656	1	it is not working	5	2025-02-02	Google Play	NEGATIVE	0.9997721314430236	Other
657	1	Waww	1	2025-02-02	Google Play	NEGATIVE	0.9088253378868104	Other
658	1	It is good	5	2025-02-02	Google Play	POSITIVE	0.9998494386672974	Other
659	1	I updated to the new version a while ago and it keeps crashing, maybe you can fix it.	3	2025-02-02	Google Play	NEGATIVE	0.9964020252227784	Reliability
660	1	Simple good app	4	2025-02-02	Google Play	POSITIVE	0.9998643398284912	Other
661	1	After the last two update, I am facing the worst experience with this app.	1	2025-02-02	Google Play	NEGATIVE	0.999794065952301	Other
662	1	Now it's crashing like crazy. It doesn't even open after a recent update.	1	2025-02-01	Google Play	NEGATIVE	0.9995834231376648	Reliability
663	1	This app is so incredible	5	2025-02-01	Google Play	POSITIVE	0.9998726844787598	Other
664	1	Mobail banking is the letest tecnologi	5	2025-02-01	Google Play	NEGATIVE	0.9940383434295654	Other
665	1	without any reason it shows white screen and can't make transfers. Then when I went to branch then they reply go to the branch where you open your account.	1	2025-02-01	Google Play	NEGATIVE	0.9968906044960022	Transaction Performance
666	1	It used to be the best bank app in Ethiopia. But now using it is a terrible experience. For every transaction it shows an error message. Making a simple payment requires 5 to 6 trials to complete.	1	2025-01-31	Google Play	NEGATIVE	0.9970723390579224	Transaction Performance;User Interface;Reliability
667	1	it does not connect	1	2025-01-31	Google Play	NEGATIVE	0.9997904896736144	Other
668	1	Good application	5	2025-01-31	Google Play	POSITIVE	0.999854564666748	Other
669	1	The worst I had to flight back to fix my app it need you to go back every 4 month not reliable for foreigners	1	2025-01-31	Google Play	NEGATIVE	0.9997552037239076	Other
670	1	This should run for worst app of the year	1	2025-01-31	Google Play	NEGATIVE	0.9997993111610411	Other
671	1	Very bad	1	2025-01-31	Google Play	NEGATIVE	0.999788463115692	Other
672	1	Bad	1	2025-01-31	Google Play	NEGATIVE	0.999782383441925	Other
673	1	It is nice app!	4	2025-01-31	Google Play	POSITIVE	0.9998447895050048	Other
674	1	Very nice app	5	2025-01-31	Google Play	POSITIVE	0.9998562335968018	Other
675	1	It's easy to use, but there is some problems sometimes when update the app in the network areas...	4	2025-01-31	Google Play	NEGATIVE	0.9943804144859314	Other
676	1	No manage beneficiary for my app	1	2025-01-30	Google Play	NEGATIVE	0.999631404876709	Other
677	1	Its good but we need an option of choosing a specific period to get a historique of transactions. For example when i want to check my previous transactions i only get few transactions. Thank you.	2	2025-01-30	Google Play	POSITIVE	0.8520449995994568	Transaction Performance
678	1	Very good mobile app	5	2025-01-30	Google Play	POSITIVE	0.9998629093170166	Other
679	1	Very Good	5	2025-01-30	Google Play	POSITIVE	0.9998520612716676	Other
680	1	Something is wrong with the new update,it keep closing itself and i couldn't made an important transaction.	3	2025-01-30	Google Play	NEGATIVE	0.9995330572128296	Transaction Performance
681	1	The latest updates crushes repeatedly on my Redmi Note 12 pro plus. If you could correct the issue.	1	2025-01-30	Google Play	NEGATIVE	0.9994816184043884	Other
682	1	Not worek recipient !!	1	2025-01-29	Google Play	NEGATIVE	0.6950612664222717	Other
683	1	Best application	5	2025-01-29	Google Play	POSITIVE	0.9998098015785216	Other
684	1	I’ve been using the CBE mobile banking app, and overall, I appreciate its features. However, I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications. Thank you for your attention to this matter!	1	2025-01-29	Google Play	NEGATIVE	0.9523296356201172	Account Access Issues
685	1	I like the app	5	2025-01-29	Google Play	POSITIVE	0.9994398951530457	Other
686	1	If you are living outside of Ethiopia you better not deposit large money into your mobile account. It can kick you off any time for some small reasons and the only way you can recover is either to go to the bank in person or you need to have access to your phone which is impossible if you are living outside Ethiopia. The only option you will be left with is, you can't use your money. At least it would be better if you can recover your account using email or other verification ...	1	2025-01-29	Google Play	NEGATIVE	0.9994357228279114	Account Access Issues
687	1	Number one	5	2025-01-29	Google Play	POSITIVE	0.999716579914093	Other
688	1	Updating the app is must everytime they release it even to reload the transaction.	2	2025-01-29	Google Play	NEGATIVE	0.9953692555427552	Transaction Performance
689	1	These app is beast But the new update is great	5	2025-01-29	Google Play	POSITIVE	0.9992660880088806	Other
690	1	Bahilu ketema	2	2025-01-29	Google Play	NEGATIVE	0.9338396787643432	Other
691	1	It's easy and user friendly!	5	2025-01-29	Google Play	POSITIVE	0.9988501071929932	User Interface
692	1	It is helpful to save time and energy	5	2025-01-28	Google Play	POSITIVE	0.9988180994987488	Customer Support
693	1	DIGITAL LEADER BANK IN ETHIOPIA CBE	5	2025-01-28	Google Play	POSITIVE	0.973425030708313	Other
694	1	Turning off the developers' options :( This is getting out of hand. We don't need to go through that...	1	2025-01-28	Google Play	NEGATIVE	0.9956077933311462	Other
695	1	🤙best	5	2025-01-28	Google Play	NEGATIVE	0.697056770324707	Other
696	1	😔	2	2025-01-28	Google Play	NEGATIVE	0.697056770324707	Other
697	1	I don't have an idea why our country soft wares needs some beroucracy?? How many peoples knew that about developer options N why is the new app forceing to disable that?? in my side i didn't get the apps as of b4.	1	2025-01-28	Google Play	NEGATIVE	0.9992456436157228	Other
698	1	BEST APP EVER,BUT WHEN CBE BE INTEGRATED WITH INTERNATIONAL TRANSFER	5	2025-01-28	Google Play	POSITIVE	0.9357489943504332	Transaction Performance
699	1	Where ever you go no one is like cbe mobile banking.it's absolutely perfect	5	2025-01-28	Google Play	POSITIVE	0.9998345375061036	Other
700	1	Does"nt give you a list of beneficieries.	2	2025-01-27	Google Play	POSITIVE	0.9234077334403992	Other
701	1	Ti	1	2025-01-27	Google Play	POSITIVE	0.9913841485977172	Other
702	1	trasaction history needs to be more,	2	2025-01-27	Google Play	NEGATIVE	0.99702125787735	Other
703	1	This app is more helpful and best	5	2025-01-27	Google Play	POSITIVE	0.998884618282318	Customer Support
704	1	I like it more the app cbe thank you !	5	2025-01-27	Google Play	POSITIVE	0.9997392296791076	Other
705	1	Alert The device developer Mode is turned on. Please turn off Developer Mode from device settings and try again to use this app OK What is this ?	1	2025-01-27	Google Play	NEGATIVE	0.99681156873703	Other
706	1	Correct your order of incoming and outgoing birr	3	2025-01-27	Google Play	NEGATIVE	0.8908081650733948	Other
707	1	Nice App	5	2025-01-27	Google Play	POSITIVE	0.9998061060905457	Other
708	1	The apk doesn't work when the phones developer option is turned on. It always asks me to turn off the developer options to open the apk. Please fix it as it is unnecessary.	4	2025-01-26	Google Play	NEGATIVE	0.9993588328361512	Other
709	1	Wow amazing app	4	2025-01-26	Google Play	POSITIVE	0.9998513460159302	Other
710	1	Woow app	2	2025-01-25	Google Play	NEGATIVE	0.98646742105484	Other
711	1	Wow 👌 👏	5	2025-01-25	Google Play	POSITIVE	0.998944103717804	Other
713	1	Why on earth is CBE telling me to turn off developer mode? As the name clearly states, it's for developers, not for CBE to dictate. There are countless financial apps out there that work just fine without demanding such an unnecessary restriction. If your app can’t handle developer mode, that’s a you problem. Fix your code instead of disabling features that have absolutely nothing to do with you.	2	2025-01-25	Google Play	NEUTRAL	0.5	Other
714	1	It keeps asking for an update recursively since the last update. What is going on??	2	2025-01-25	Google Play	NEGATIVE	0.998496413230896	Other
715	1	I donot want to update.	5	2025-01-25	Google Play	POSITIVE	0.6200502514839172	Other
716	1	The qr code scans must be backed to see the transfer is done and to use it easily	2	2025-01-25	Google Play	NEGATIVE	0.9893652200698853	Transaction Performance
717	1	አፕልኬሽኑ የተላከልኝን ብር ቶሎ አያሳይም ። ከ 24 ሰዓት በላይ ይቆያል። ይህ ለቢዝነስ በጣም አስቸጋሪ ሆኖብኛል። መፍትሔ አላችሁ ? This application is too slow & inactive to notify & record transactions, & hence I faced difficulty using it for businesses. would you fix it?	1	2025-01-25	Google Play	NEGATIVE	0.9996609687805176	Transaction Performance
718	1	Nice app thanks cbe	5	2025-01-25	Google Play	POSITIVE	0.9998252987861632	Other
719	1	NICE	5	2025-01-25	Google Play	POSITIVE	0.9998552799224854	Other
720	1	It is very nice to use	5	2025-01-25	Google Play	POSITIVE	0.999810755252838	Other
721	1	the "developer mode" need to be fixed, it sucks	2	2025-01-25	Google Play	NEGATIVE	0.9996726512908936	Other
722	1	The app is simply trash, the only thing that's keeping them afloat is that the woods for the other Ethiopian banks is even trashier	1	2025-01-25	Google Play	NEGATIVE	0.999788224697113	Other
723	1	It very important app	5	2025-01-25	Google Play	POSITIVE	0.9997138381004332	Other
724	1	Data problems	1	2025-01-24	Google Play	NEGATIVE	0.9996092915534972	Other
725	1	nice one	5	2025-01-24	Google Play	POSITIVE	0.9998481273651124	Other
726	1	This app after update they ask verification .why they restricted for update?	5	2025-01-24	Google Play	NEGATIVE	0.9927914142608644	Other
727	1	Best and ease to use	5	2025-01-24	Google Play	POSITIVE	0.9997965693473816	Other
728	1	thank you very much and we are very very happy with your service🥰	5	2025-01-24	Google Play	POSITIVE	0.9998617172241212	Other
729	1	Cbe is the leader bank in Ethiopia by digital payment system	5	2025-01-24	Google Play	POSITIVE	0.9959623217582704	Transaction Performance
730	1	Like it	5	2025-01-24	Google Play	POSITIVE	0.9997184872627258	Other
731	1	it's not working properly	1	2025-01-24	Google Play	NEGATIVE	0.9997792840003968	Other
732	1	Make an option to send statement by email	1	2025-01-24	Google Play	NEGATIVE	0.9493923783302308	Other
733	1	It is simple and very accurate system	1	2025-01-24	Google Play	POSITIVE	0.999847412109375	Other
734	1	I am happy for using CBE. How ever, i am happy we can not send money to other tele birr by this app. why???	5	2025-01-24	Google Play	POSITIVE	0.9919834733009338	Other
735	1	Why developer option is off ? Please remove this feature.	4	2025-01-24	Google Play	NEGATIVE	0.9992109537124634	Other
736	1	Reminding me to update and pay every month	5	2025-01-23	Google Play	POSITIVE	0.9341620802879332	Other
737	1	its excellent app	5	2025-01-23	Google Play	POSITIVE	0.9998421669006348	Other
738	1	After a recent update, this app stopped working with a message " the developer turned off advanced ... etc.	3	2025-01-23	Google Play	NEGATIVE	0.9997231364250184	Other
739	1	እብድ ባነክ፣ ይሄ ዝምብሎ Update ብቻ የሚለውን እና Update የማያደርገውን ሲስተማችሁን አስተካክሉት። አናዳጆች!	1	2025-01-23	Google Play	NEGATIVE	0.8708974719047546	Other
740	1	I am students of accounting and finance when i graduate i wish to do in CBE thanks	5	2025-01-23	Google Play	POSITIVE	0.998768150806427	Other
741	1	wow . what i can say thank you.	5	2025-01-23	Google Play	POSITIVE	0.9998680353164672	Other
742	1	Good App	5	2025-01-23	Google Play	POSITIVE	0.9998493194580078	Other
743	1	very inconvenience to use. unreliable and needs upgrades!!!	1	2025-01-23	Google Play	NEGATIVE	0.9996125102043152	Other
744	1	Good I like it .	5	2025-01-22	Google Play	POSITIVE	0.9998548030853271	Other
745	1	Wow❤🙏..	5	2025-01-22	Google Play	POSITIVE	0.624569296836853	Other
746	1	The worst bank in Ethiopia!	1	2025-01-22	Google Play	NEGATIVE	0.9997764229774476	Other
747	1	Annoying app Very poor	1	2025-01-22	Google Play	NEGATIVE	0.9997809529304504	Other
748	1	I have been accessing my CBE from abroad very easily without problems .Good job, guy.	2	2025-01-22	Google Play	POSITIVE	0.999575674533844	Account Access Issues
749	1	I love ❤️ 😍 💖 ❣️ 💕	5	2025-01-21	Google Play	POSITIVE	0.999438464641571	Other
750	1	Waw	5	2025-01-21	Google Play	NEGATIVE	0.7346176505088806	Other
751	1	Why force-disable Developer Options in the latest update? I get that it's a security precaution, but it's overkill. Plenty of other financial apps do not require it and it's sometimes necessary for debugging/experimental reasons	1	2025-01-21	Google Play	NEGATIVE	0.9979910850524902	User Interface;Reliability
752	1	በጣም ምርጥ እና ላጠቃቀም ቀላል አፕ ነው ደስ ብሎኛል	4	2025-01-20	Google Play	NEGATIVE	0.932232677936554	Other
753	1	The app resets without customer interaction or confirmation, which is concerning. Please improve the user experience to ensure better control and transparency for customers.	5	2025-01-20	Google Play	NEGATIVE	0.9712159633636476	Other
754	1	It was very convenient and cool to use, but for some reason it hasn't been working for me lately.	1	2025-01-20	Google Play	NEGATIVE	0.8924975991249084	Other
755	1	cBENooR	5	2025-01-19	Google Play	POSITIVE	0.93030846118927	Other
756	1	Breaks after a week	1	2025-01-19	Google Play	NEGATIVE	0.953212559223175	Other
757	1	Good work keep it uo.	5	2025-01-19	Google Play	POSITIVE	0.9998258948326112	Other
758	1	ምርጥ ባንክ	5	2025-01-19	Google Play	NEGATIVE	0.7850590348243713	Other
759	1	teliga	5	2025-01-19	Google Play	NEGATIVE	0.9704235196113586	Other
760	1	Jest i like this app esy and fast	4	2025-01-19	Google Play	POSITIVE	0.9978528022766112	Other
761	1	First	5	2025-01-18	Google Play	POSITIVE	0.9977535605430604	Other
762	1	abdulkarem	5	2025-01-18	Google Play	POSITIVE	0.9752503633499146	Other
763	1	Reliable & Simplified Service🎉💜🙏🙏	5	2025-01-18	Google Play	POSITIVE	0.9995490908622742	Other
764	1	Muhajer Naser	5	2025-01-18	Google Play	POSITIVE	0.8194685578346252	Other
765	1	This application is an unreliable application. Please do not use it. Hackers will enter through the application and take the certificate from CBE.	1	2025-01-18	Google Play	NEGATIVE	0.9993547797203064	Other
767	1	Please make it active it is delaying in low connection thanks.	5	2025-01-18	Google Play	POSITIVE	0.8377192616462708	Other
768	1	Best app for adroid user	5	2025-01-18	Google Play	POSITIVE	0.995593011379242	Other
769	1	Excellent condition security code used	5	2025-01-18	Google Play	POSITIVE	0.9990721940994264	Other
770	1	Saadahmuu	1	2025-01-18	Google Play	NEGATIVE	0.9790335297584534	Other
771	1	Yeah its very important in our daily life	5	2025-01-17	Google Play	POSITIVE	0.999648094177246	Other
772	1	The new update is seems force enable developer options on setting. And please fix the problem on iphones it only works for few days every time it get maintained at branches	1	2025-01-17	Google Play	POSITIVE	0.7807742953300476	Other
773	1	Kedir nuri jemal	5	2025-01-16	Google Play	POSITIVE	0.9445419311523438	Other
774	1	The great app and banking system 🤩	5	2025-01-16	Google Play	POSITIVE	0.9985370635986328	Other
775	1	Money transfer options is not giving correct input, and there is no way of knowing whether the money was successfully transferred.	2	2025-01-16	Google Play	NEGATIVE	0.9997788071632384	Transaction Performance
776	1	Over	5	2025-01-15	Google Play	NEGATIVE	0.9339755773544312	Other
777	1	GOOD app	5	2025-01-15	Google Play	POSITIVE	0.9998493194580078	Other
778	1	i enabled two step verification..when i press Authenticate it says Authentication failed.	5	2025-01-15	Google Play	NEGATIVE	0.9996612071990968	Account Access Issues
779	1	Very much helpful	5	2025-01-15	Google Play	POSITIVE	0.9998149275779724	Customer Support
780	1	Please add mini statement	2	2025-01-15	Google Play	POSITIVE	0.9677758812904358	Other
781	1	It simplify every step.	5	2025-01-15	Google Play	POSITIVE	0.9977728724479676	Other
782	1	It's good app	5	2025-01-15	Google Play	POSITIVE	0.9998689889907836	Other
783	1	Taliyemuxumid mahamuud	2	2025-01-15	Google Play	NEGATIVE	0.788462221622467	Other
784	1	Keep up guys you're always trustful service giver. I appereciated so much.	5	2025-01-14	Google Play	POSITIVE	0.9996887445449828	Other
785	1	Abuu irbo	5	2025-01-14	Google Play	NEUTRAL	0.5	Other
786	1	Go	5	2025-01-14	Google Play	POSITIVE	0.9994152784347534	Other
787	1	Too good	5	2025-01-14	Google Play	POSITIVE	0.9997445940971376	Other
788	1	ከድር ሁሴን አብደላ	5	2025-01-13	Google Play	NEGATIVE	0.8337255716323853	Other
789	1	Suuuuu	5	2025-01-13	Google Play	NEGATIVE	0.9772840738296508	Other
790	1	This app is the worst the current release doesn't work when developers mode is on and the transaction errors make you transfer money twice with errors	1	2025-01-13	Google Play	NEGATIVE	0.9996973276138306	Transaction Performance;Reliability
791	1	Baayyee gaariidha Garuu App keessan altokko tokko isa ati tokko ergitu irra deebi'ee ergaa isa nu sirreessaa	4	2025-01-12	Google Play	NEGATIVE	0.9913952946662904	Other
792	1	Developer mode?????	1	2025-01-12	Google Play	NEGATIVE	0.995884120464325	Other
793	1	It is Nice, but some times details of credited amount not shown from whom sent.	4	2025-01-12	Google Play	NEGATIVE	0.6728790402412415	Other
794	1	ዳኒል ትዛዙ	1	2025-01-11	Google Play	NEGATIVE	0.7850590348243713	Other
795	1	I am facing difficulties related to network issues, while I have a good internet connection.	1	2025-01-11	Google Play	NEGATIVE	0.8891935348510742	Other
796	1	Hulum yalfal	5	2025-01-11	Google Play	NEGATIVE	0.9677175283432008	Other
797	1	How to make developer mode off	5	2025-01-11	Google Play	NEGATIVE	0.9988376498222352	Other
798	1	Alert The device developer Mode is turned on. You can't use this app, Please turn off Developer Mode and try again. OK Why reason?	1	2025-01-11	Google Play	NEGATIVE	0.9970587491989136	Other
799	1	Galaxy j7	5	2025-01-11	Google Play	POSITIVE	0.9231310486793518	Other
800	1	በጣም አሪፍ	5	2025-01-10	Google Play	NEGATIVE	0.7850590348243713	Other
801	1	Tariku kasahun	5	2025-01-10	Google Play	POSITIVE	0.9682701230049132	Other
802	1	I am leul	5	2025-01-10	Google Play	NEGATIVE	0.7330933213233948	Other
803	1	Exelent App	5	2025-01-10	Google Play	POSITIVE	0.996878743171692	Other
804	1	Smart app❤️	5	2025-01-10	Google Play	POSITIVE	0.9998408555984496	Other
805	1	አሪፍና ምቹ ተመችቶኛል ለኔ	5	2025-01-10	Google Play	NEGATIVE	0.8616330027580261	Other
806	1	የራሱ የሆነ ኪቦርድ ቢኖረው _ እና ትራንዛክሽን ሂስትሪው ቢስተካከል እና ገቢ እና ወጪ ላይ ቀኑን አስከነ ሰአቱ በስነ ስርአቱ ቢያስቀምጥ አሪፍ ይመስለኛል	3	2025-01-10	Google Play	NEGATIVE	0.9668055176734924	Other
807	1	aqf WWE the ga	2	2025-01-09	Google Play	NEGATIVE	0.7552670240402222	Other
808	1	Good cbe app but it frequently need update , after you update you will go to the Bank officer for verification . But my question is why not verify own self .	2	2025-01-09	Google Play	NEGATIVE	0.9766365885734558	Other
809	1	Best and easy to use	5	2025-01-09	Google Play	POSITIVE	0.9997791647911072	Other
810	1	EMAMU WUBETUDERESE	3	2025-01-09	Google Play	NEUTRAL	0.5	Other
811	1	Merjerbehel.	5	2025-01-09	Google Play	POSITIVE	0.8828279972076416	Other
812	1	First this app was pretty good and well connection while transferring money, but now there's no such a worst mob app ever while transferring money it corrupts due to the network and took the amount of money you were transferring from your account then after seconds interruptions it's shows that the money is transferred (this case happens especially to telebirrr wallet) then after you report the issue to the CBE customer service they refund your money to your CBE account after 3-5 days.	2	2025-01-09	Google Play	NEGATIVE	0.9965466856956482	Transaction Performance;Customer Support
813	1	Satisfied	5	2025-01-08	Google Play	POSITIVE	0.9997212290763856	Other
814	1	It nice but some connection limitation	3	2025-01-08	Google Play	NEGATIVE	0.8407272696495056	Other
815	1	Ok. C	5	2025-01-08	Google Play	POSITIVE	0.9995594620704652	Other
816	1	It's bestv forever!!	4	2025-01-08	Google Play	POSITIVE	0.9998586177825928	Other
817	1	It is good app but not have statment 1 week 1 month only 2 days and it is not order by time	5	2025-01-08	Google Play	NEGATIVE	0.9727411866188048	Other
818	1	8 expriance	1	2025-01-08	Google Play	NEGATIVE	0.7426707148551941	Other
819	1	this app is very good	5	2025-01-08	Google Play	POSITIVE	0.9998623132705688	Other
820	1	It fast and satisfied	5	2025-01-08	Google Play	POSITIVE	0.9997804760932922	Other
821	1	Best app for the bank	5	2025-01-08	Google Play	POSITIVE	0.9994045495986938	Other
822	1	best bank	5	2025-01-08	Google Play	POSITIVE	0.9997438788414	Other
823	1	Good challenge good.	5	2025-01-08	Google Play	POSITIVE	0.9998480081558228	Other
824	1	👍👍👍👍 👍👍👍👍	3	2025-01-08	Google Play	NEGATIVE	0.7850590348243713	Other
825	1	Best app I was but the message updated and it refused to work for me	5	2025-01-07	Google Play	NEGATIVE	0.9994940757751464	Other
826	1	More	5	2025-01-07	Google Play	POSITIVE	0.9968525767326356	Other
827	1	Why do i have to close the developer option to use it. After the update it's not even working unless I close the developer option	1	2025-01-07	Google Play	NEGATIVE	0.9997721314430236	Other
828	1	❤❤😂😂	5	2025-01-07	Google Play	NEGATIVE	0.697056770324707	Other
829	1	Atractive and easy to use	5	2025-01-07	Google Play	POSITIVE	0.9762108325958252	Other
830	1	You can not track your transaction history with correct date, time and order	1	2025-01-07	Google Play	NEGATIVE	0.9983684420585632	Transaction Performance
831	1	Important	5	2025-01-07	Google Play	POSITIVE	0.999708354473114	Other
832	1	Keep saying "unable to connect" after a normal phone update. Please update the app to match latest phone "updates"	1	2025-01-07	Google Play	NEGATIVE	0.9996213912963868	Other
833	1	Sufiyan ahmade umara	5	2025-01-07	Google Play	NEGATIVE	0.7965816855430603	Other
834	1	It's simple and easy to use	1	2025-01-06	Google Play	POSITIVE	0.999755561351776	Other
835	1	I like this app	5	2025-01-06	Google Play	POSITIVE	0.9996516704559326	Other
836	1	good app I like it	4	2025-01-06	Google Play	POSITIVE	0.9998677968978882	Other
837	1	WOW	5	2025-01-06	Google Play	POSITIVE	0.999592125415802	Other
838	1	i,ts not working, not good	1	2025-01-06	Google Play	NEGATIVE	0.9998045563697816	Other
839	1	Thank you free 2 years	4	2025-01-06	Google Play	POSITIVE	0.9996683597564696	Other
840	1	Please Add A dark theme😭😭	1	2025-01-06	Google Play	POSITIVE	0.9205663204193116	Other
841	1	Open	2	2025-01-06	Google Play	POSITIVE	0.9997945427894592	Other
842	1	Good service	5	2025-01-06	Google Play	POSITIVE	0.9998499155044556	Other
843	1	Abara	5	2025-01-06	Google Play	POSITIVE	0.9515085816383362	Other
844	1	ABC 1234d	5	2025-01-06	Google Play	NEUTRAL	0.5	Other
845	1	I don't understand the reason why this app asks me to turn off my developer options whenever I try to log into the app 🙄 This issue immediately needs to be fixed. Why would I sacrifice my phone's performance to use only this app? It's ridiculous 😒	2	2025-01-06	Google Play	NEGATIVE	0.9996905326843262	Other
846	1	Teaching 12 years	5	2025-01-06	Google Play	POSITIVE	0.9878355860710144	Other
847	1	I have been using it for a years and it is beautiful in i the time have been using it	1	2025-01-06	Google Play	POSITIVE	0.9997625946998596	Other
848	1	Flexible & easy service	4	2025-01-05	Google Play	POSITIVE	0.999793827533722	Other
849	1	Not functional when i need a transactions	1	2025-01-05	Google Play	NEGATIVE	0.9996778964996338	Transaction Performance
850	1	Merchant	5	2025-01-05	Google Play	POSITIVE	0.9695749282836914	Other
851	1	The banks logo, the hidden accounts data are not seen. It is saying it saying unconnected and hence does not sync.	2	2025-01-05	Google Play	NEGATIVE	0.9996697902679444	Other
852	1	𝕓𝕖𝕥𝕒𝕞 𝕒𝕣𝕚𝕗𝕖 𝕟𝕖𝕨	4	2025-01-05	Google Play	NEGATIVE	0.8337255716323853	Other
853	1	Is not working for last update	1	2025-01-05	Google Play	NEGATIVE	0.9989091157913208	Other
854	1	Why is it asking me for developer option	1	2025-01-05	Google Play	NEGATIVE	0.9979903697967528	Other
855	1	We need more update soon! once I updated it, it authomatically stop working😭	1	2025-01-05	Google Play	NEGATIVE	0.9997543692588806	Other
856	1	Very slagish to operate, needs upgraded.	2	2025-01-05	Google Play	NEGATIVE	0.9978467226028442	Other
857	1	Sayid hasien	5	2025-01-05	Google Play	POSITIVE	0.9634491205215454	Other
858	1	Very Goods 👍	5	2025-01-04	Google Play	POSITIVE	0.990605652332306	Other
859	1	Eas for use	5	2025-01-04	Google Play	NEGATIVE	0.6878728866577148	Other
860	1	It nice apps	2	2025-01-04	Google Play	POSITIVE	0.99986469745636	Other
861	1	It gives service great	5	2025-01-04	Google Play	POSITIVE	0.999842882156372	Other
862	1	Ahmedmohammed	5	2025-01-04	Google Play	POSITIVE	0.9835383892059326	Other
863	1	በጣም አሪፍ መገልጊያ ነው 👍	5	2025-01-04	Google Play	NEGATIVE	0.8832130432128906	Other
864	1	Why did this application stopped working at the moment	1	2025-01-04	Google Play	NEGATIVE	0.9997424483299256	Other
865	1	The worst update seen in the bank industry for mobile banking. If you're unable to make it smooth and reliable at the same time , return it to previous version. It shows that you don't have the best expertise like other banks in the country.	1	2025-01-04	Google Play	NEGATIVE	0.9997628331184388	Other
866	1	It's a very good fast service provider but at the moment the system is denying me	5	2025-01-04	Google Play	NEGATIVE	0.9946014881134032	Other
867	1	Wuu fican lkn wali cilad ba haysata sodee ku xaliya wuxu I lahay the developer mode is turned muxu ka wada	5	2025-01-04	Google Play	NEGATIVE	0.9985989928245544	Other
868	1	It is fine	5	2025-01-04	Google Play	POSITIVE	0.9998645782470704	Other
869	1	It's good nice job	5	2025-01-03	Google Play	POSITIVE	0.9998599290847778	Other
870	1	መልካም ነው።	4	2025-01-03	Google Play	NEGATIVE	0.8337255716323853	Other
871	1	3 year	3	2025-01-03	Google Play	POSITIVE	0.9850422739982604	Other
872	1	Very good app forever	5	2025-01-03	Google Play	POSITIVE	0.9998764991760254	Other
873	1	Nigatu Niguse	5	2025-01-03	Google Play	NEGATIVE	0.7539274096488953	Other
874	1	Thank u for the easy operating service .It made life simple and accurate.Keep it up!!!	4	2025-01-03	Google Play	POSITIVE	0.9998249411582948	Other
875	1	ፕ9ፕ፸፻ሸሸቀቀዘጠዠቀቀሰቀረዠ፶፺፹ወከረረአ፻፯ክይልክ8ኡሽ9ፑፐክሰሰከአቀቀዘ፻ጰቀኡ7ፕሽክፕ፺ይዝ8ኡ87ብርፕ8ፕይፐኦጂጁጅእህፕይይ9ለሉ8ኡፕ9፱ፕ፵ክ977ሹ88ፕኢኦህከከፕል88ፕንኩክክኢኡጅሁይጉጎ8ጅይኢኢህኡይሽ9	5	2025-01-03	Google Play	NEGATIVE	0.697056770324707	Other
876	1	This App The Best One	5	2025-01-03	Google Play	POSITIVE	0.9998379945755004	Other
877	1	Developer option	2	2025-01-03	Google Play	POSITIVE	0.9724228978157043	Other
878	1	🙏🙏🙏	4	2025-01-03	Google Play	NEGATIVE	0.697056770324707	Other
879	1	It's not working	1	2025-01-03	Google Play	NEGATIVE	0.9997857213020324	Other
880	1	Axc	5	2025-01-03	Google Play	NEUTRAL	0.5	Other
881	1	How i can divice developer mood off	5	2025-01-03	Google Play	NEGATIVE	0.9969462752342224	Other
882	1	Sand me naw	2	2025-01-03	Google Play	NEGATIVE	0.997702658176422	Other
883	1	5 years	5	2025-01-03	Google Play	POSITIVE	0.9828450679779052	Other
884	1	Wat is problem	5	2025-01-03	Google Play	NEGATIVE	0.998581886291504	Other
885	1	Aliyi	5	2025-01-02	Google Play	POSITIVE	0.988175630569458	Other
886	1	Cammercial bank	4	2025-01-02	Google Play	NEGATIVE	0.9768934845924376	Other
887	1	TadeseD	5	2025-01-02	Google Play	NEGATIVE	0.941580891609192	Other
888	1	What's your problem with developer option ???	1	2025-01-02	Google Play	NEGATIVE	0.9991196990013124	Other
889	1	ጥሩ	5	2025-01-02	Google Play	NEGATIVE	0.697056770324707	Other
890	1	Alert on	5	2025-01-02	Google Play	POSITIVE	0.9915254712104796	Other
891	1	i can't access this app without turning off the developer option mode 🤬👎	1	2025-01-02	Google Play	NEGATIVE	0.9775351881980896	Account Access Issues
892	1	Always their is a mal function	1	2025-01-02	Google Play	NEGATIVE	0.9996755123138428	Other
893	1	2041 Habib tahir	5	2025-01-02	Google Play	POSITIVE	0.9945799112319946	Other
894	1	It slow and unused app	1	2025-01-02	Google Play	NEGATIVE	0.999658226966858	Transaction Performance
895	1	No speed to reload	5	2025-01-02	Google Play	NEGATIVE	0.999594748020172	Other
896	1	Not working	1	2025-01-02	Google Play	NEGATIVE	0.999777853488922	Other
897	1	Thanks for your	5	2025-01-02	Google Play	POSITIVE	0.9997199177742004	Other
898	1	I am proud	5	2025-01-02	Google Play	POSITIVE	0.9998743534088136	Other
899	1	Its not opening	5	2025-01-02	Google Play	NEGATIVE	0.99965500831604	Other
900	1	👍👍	4	2025-01-01	Google Play	NEGATIVE	0.697056770324707	Other
901	1	Comfrtable app	5	2025-01-01	Google Play	NEGATIVE	0.9750620722770692	Other
902	1	Very nice and fast app	5	2025-01-01	Google Play	POSITIVE	0.9998739957809448	Other
903	1	Pelisce ubedat	5	2025-01-01	Google Play	NEGATIVE	0.722387969493866	Other
904	1	Simple bug fix, would help if current exchange rate is displayed on the app.	4	2025-01-01	Google Play	NEGATIVE	0.998939335346222	Reliability;Customer Support
905	1	The not allowing the app while "developer options" is on needs to be fixed! Why the hell is an app telling me what to do with my own OS??? This is an unnecessary fix that needs to be fixed!!!	1	2025-01-01	Google Play	NEGATIVE	0.9998024106025696	Other
906	1	Update	2	2025-01-01	Google Play	POSITIVE	0.9908272624015808	Other
907	1	The recent update automatically turns the developers option on, and when one starts the app, a message pops up saying the app does not work with the developers option on. So, one has to go to the settings and manually turn the developers option off. Otherwise the app doesn't work.	3	2025-01-01	Google Play	NEGATIVE	0.9997578263282776	Other
908	1	Very useful app	2	2025-01-01	Google Play	POSITIVE	0.9995785355567932	Other
909	1	Good sistem	5	2025-01-01	Google Play	POSITIVE	0.9998559951782228	Other
910	1	I like it for overall services	4	2025-01-01	Google Play	POSITIVE	0.9997093081474304	Other
911	1	When after updating the app it asked me to turn off developer mode how do i do that	4	2025-01-01	Google Play	NEGATIVE	0.998258888721466	Other
912	1	Arebu Haji	5	2025-01-01	Google Play	POSITIVE	0.9545525908470154	Other
913	1	Amzaa Abdalaa	5	2025-01-01	Google Play	NEGATIVE	0.8108916878700256	Other
914	1	Excellent!!!Keep it up!!!	5	2025-01-01	Google Play	POSITIVE	0.9998701810836792	Other
915	1	Thats good for me	4	2025-01-01	Google Play	POSITIVE	0.999849796295166	Other
916	1	Working doing fastly	5	2025-01-01	Google Play	POSITIVE	0.996116042137146	Other
917	1	The poorest app	4	2025-01-01	Google Play	NEGATIVE	0.9997407793998718	Other
918	1	The inconvenience of this app is that it requires developer options to be turned off. This hinders my ability to customize my phone as some of the customization can only be done in the developer options. Also, it didn't have this requirement before, so why now? And please return it how it was because this should not be an issue. Also, when a transaction is completed before it used to allow me to save the image of the completed transaction, now it doesn't, so please fix that also.	1	2025-01-01	Google Play	NEGATIVE	0.9995642304420472	Transaction Performance;User Interface
919	1	Smart App	5	2025-01-01	Google Play	POSITIVE	0.999789297580719	Other
920	1	Worst update ever. It asked to disable the developer's option which they don't have any authority over. Most useless update ever. I wish I could give it a 0 star if it was possible. Why do you care about my phone's settings? Stupid developers. Should Switch to other banks.	1	2025-01-01	Google Play	NEGATIVE	0.9998212456703186	Other
921	1	Muftearashide	5	2025-01-01	Google Play	NEGATIVE	0.9893559813499452	Other
922	1	Wow wonderful app thank you so much.	4	2025-01-01	Google Play	POSITIVE	0.9998775720596312	Other
923	1	I appreciate you	5	2025-01-01	Google Play	POSITIVE	0.9998019337654114	Other
924	1	It ask me your developer mode is on and its not working for me???	1	2025-01-01	Google Play	NEGATIVE	0.9996711015701294	Other
925	1	Exellent	5	2025-01-01	Google Play	NEGATIVE	0.9927697777748108	Other
926	1	opn	5	2025-01-01	Google Play	NEGATIVE	0.9232096672058104	Other
927	1	Wwŵw	5	2024-12-31	Google Play	POSITIVE	0.9401970505714417	Other
928	1	The last update is useless!!	1	2024-12-31	Google Play	NEGATIVE	0.9997901320457458	Other
929	1	It is varey good	5	2024-12-31	Google Play	POSITIVE	0.9998663663864136	Other
930	1	Hi Hi Hi	5	2024-12-31	Google Play	POSITIVE	0.9976546168327332	Other
931	1	Good very	3	2024-12-31	Google Play	POSITIVE	0.9998435974121094	Other
932	1	Awesom	5	2024-12-31	Google Play	POSITIVE	0.9916402101516724	Other
933	1	Excellent job.	5	2024-12-31	Google Play	POSITIVE	0.9998528957366944	Other
934	1	Security	1	2024-12-31	Google Play	POSITIVE	0.9965949654579164	Other
935	1	Batam arf new	5	2024-12-31	Google Play	NEGATIVE	0.9874332547187804	Other
936	1	I like you this App..	5	2024-12-31	Google Play	POSITIVE	0.9996801614761353	Other
937	1	Its good app	1	2024-12-31	Google Play	POSITIVE	0.9998613595962524	Other
938	1	It is and better than *889#.	5	2024-12-31	Google Play	POSITIVE	0.9997976422309875	Other
939	1	The update isn't working	1	2024-12-31	Google Play	NEGATIVE	0.9997337460517884	Other
940	1	No text, no update.....	1	2024-12-31	Google Play	NEGATIVE	0.9989455342292786	Other
941	1	No installed	5	2024-12-31	Google Play	NEGATIVE	0.999492883682251	Other
942	1	🙏🙏	5	2024-12-31	Google Play	NEGATIVE	0.697056770324707	Other
943	1	As an app developer, I rely on Developer Mode to build and test apps, but this app blocks access entirely if it's enabled. This restriction is unnecessary and makes it impossible for developers to use the service. Instead of outright blocking, consider implementing enhanced security measures that don't alienate professionals who need this setting. Please reconsider this policy.	2	2024-12-31	Google Play	NEGATIVE	0.9983273148536682	Account Access Issues;User Interface
944	1	It's really helpful	1	2024-12-31	Google Play	POSITIVE	0.9998189806938172	Customer Support
945	1	Sales person	3	2024-12-31	Google Play	POSITIVE	0.9952869415283204	Other
946	1	cbe noor	5	2024-12-31	Google Play	POSITIVE	0.979977011680603	Other
947	1	No work on my device	5	2024-12-31	Google Play	NEGATIVE	0.99971741437912	Other
948	1	nayis	4	2024-12-31	Google Play	NEGATIVE	0.9524695873260498	Other
949	1	not convinet in slow Nw	5	2024-12-31	Google Play	POSITIVE	0.9845283627510072	Transaction Performance
950	1	Weak update ! . b/c it stops when I want to set two step verification on. And it is only applicable if developer options are on. Why ??? Please tell me the reason 🙏	1	2024-12-31	Google Play	NEGATIVE	0.9996737241744996	Other
951	1	Why I not used on these devices	5	2024-12-30	Google Play	NEGATIVE	0.9940035939216614	Other
952	1	Very very good	5	2024-12-30	Google Play	POSITIVE	0.9998621940612792	Other
953	1	Apdates went to dismiss the developer option	2	2024-12-30	Google Play	NEGATIVE	0.9997792840003968	Other
954	1	Best Mobile-Banking app! Moreover, I will rate 5 stars as soon as you add "account statement display" menu in it. Hopefully waiting, Thank you in advance!	4	2024-12-30	Google Play	POSITIVE	0.9989995360374452	Other
955	1	Updater	5	2024-12-30	Google Play	POSITIVE	0.8213794827461243	Other
956	1	Wowwwwwwwweed	5	2024-12-30	Google Play	NEGATIVE	0.8593728542327881	Other
957	1	Even it is a problem to update the app. Fix the issue first	1	2024-12-30	Google Play	NEGATIVE	0.999527096748352	Other
958	1	olanaa mulugeta	5	2024-12-30	Google Play	NEGATIVE	0.9776028990745544	Other
959	1	Any	1	2024-12-30	Google Play	POSITIVE	0.9676826596260072	Other
960	1	God appes	5	2024-12-30	Google Play	POSITIVE	0.807509183883667	Other
961	1	ምንም አትሉም	5	2024-12-30	Google Play	NEGATIVE	0.7850590348243713	Other
962	1	gud	5	2024-12-30	Google Play	NEGATIVE	0.8956557512283325	Other
963	1	The review page keeps loading, and even sync is completed. The history page always shows old/unknown transactions. ...... Edited: I guess the loading page means it expires and needs to go to the nearest bank and ask for an extension for another 3 years. Upgrade to 3 stars .	3	2024-12-30	Google Play	NEGATIVE	0.993030846118927	Transaction Performance
964	1	Simple, Easy platform	5	2024-12-30	Google Play	POSITIVE	0.9995031356811525	Other
965	1	Pure & secure I like it	5	2024-12-30	Google Play	POSITIVE	0.9998677968978882	Other
966	1	More than 10years	5	2024-12-30	Google Play	POSITIVE	0.9733986258506776	Other
967	1	እየሰራልኝ አደለም	5	2024-12-30	Google Play	NEGATIVE	0.7850590348243713	Other
968	1	ታንክስ	5	2024-12-30	Google Play	NEGATIVE	0.697056770324707	Other
969	1	AsenafeDemelee	2	2024-12-29	Google Play	NEGATIVE	0.7528271079063416	Other
970	1	13 years ecxepiranes	5	2024-12-29	Google Play	POSITIVE	0.7449209690093994	Other
971	1	Best app from any others app	5	2024-12-29	Google Play	POSITIVE	0.9975526928901672	Other
972	1	Student	1	2024-12-29	Google Play	POSITIVE	0.9856825470924376	Other
973	1	It's very Simple and useful for customer and also easier from other options of this Bank but its hard sometimes when the net work is bussy and inquiry some add update from the Branch technical stuff when you want this application for critical case the application was inquiring you un wanted update	5	2024-12-29	Google Play	NEGATIVE	0.9932366013526917	User Interface
974	1	ለተሻለ ቅልጥፍናሸ	5	2024-12-29	Google Play	NEGATIVE	0.7850590348243713	Other
975	1	Abraham hailu ara	5	2024-12-29	Google Play	POSITIVE	0.9884116053581238	Other
976	1	Hiio	2	2024-12-29	Google Play	POSITIVE	0.9921185970306396	Other
977	1	This app is best if you add fingerprint or facial authentication instead of the current one.	5	2024-12-29	Google Play	NEGATIVE	0.9890193343162536	Account Access Issues
978	1	I like this application	4	2024-12-29	Google Play	POSITIVE	0.9995908141136168	Other
979	1	Best quality servic	5	2024-12-29	Google Play	POSITIVE	0.9998027682304382	Other
980	1	your service is very very nice	5	2024-12-29	Google Play	POSITIVE	0.9998544454574584	Other
981	1	sintayohu sirika	5	2024-12-29	Google Play	POSITIVE	0.9875356554985046	Other
982	1	the worst app i have ever seen	1	2024-12-28	Google Play	NEGATIVE	0.999790370464325	Other
983	1	it is best uplication Which i real on	5	2024-12-28	Google Play	POSITIVE	0.9972715973854064	Other
984	1	Why we can't make a transfer with foreign banks?	1	2024-12-28	Google Play	NEGATIVE	0.9979678988456726	Transaction Performance
985	1	The worst update	1	2024-12-28	Google Play	NEGATIVE	0.9997891783714294	Other
986	1	yes important	5	2024-12-28	Google Play	POSITIVE	0.999671459197998	Other
987	1	Not flexible	2	2024-12-27	Google Play	NEGATIVE	0.9997934699058532	Other
988	1	looks great but it has no option for accessing our transaction history....for some days back ...this makes our work bad	5	2024-12-27	Google Play	NEGATIVE	0.999768316745758	Account Access Issues;Transaction Performance
989	1	Everything is good except that it's asking me for update too much even though I updated the app many times and still mentioning that "it is critical update" so pls fix that	4	2024-12-27	Google Play	NEGATIVE	0.874369740486145	Other
990	1	Difficult to update	1	2024-12-27	Google Play	NEGATIVE	0.9997279047966005	Other
991	1	You should be boa b/c the app active by self so please 🙏 arrange now and for activation service l was pay 20 birr this is unfair	1	2024-12-27	Google Play	NEGATIVE	0.9997192025184632	Other
992	1	simplest app. that i have ever used..	5	2024-12-27	Google Play	POSITIVE	0.7280794382095337	Other
993	1	This app is the best, easy and more clear to use including its features to understand so i liked it 100% because the app made the life of customers easy. Thanks cbe and the app.	5	2024-12-27	Google Play	POSITIVE	0.9997873902320862	Other
994	1	Nice 👍 app 💯 🙏	5	2024-12-26	Google Play	POSITIVE	0.9991274476051332	Other
995	1	After the update the system the requirement for minimal is not fair	2	2024-12-26	Google Play	NEGATIVE	0.999625563621521	User Interface
996	1	Tajaajilaa gaarii 🤩	5	2024-12-26	Google Play	NEGATIVE	0.8106322884559631	Other
997	1	It's so good	5	2024-12-26	Google Play	POSITIVE	0.9998452663421632	Other
998	1	Perfect	5	2024-12-26	Google Play	POSITIVE	0.9998517036437988	Other
999	1	its the best and fast	5	2024-12-26	Google Play	POSITIVE	0.999862551689148	Other
1000	1	Its great	5	2024-12-26	Google Play	POSITIVE	0.9998660087585448	Other
1001	1	Nice program	5	2024-12-26	Google Play	POSITIVE	0.9998121857643129	Other
1002	1	Vgood	5	2024-12-26	Google Play	POSITIVE	0.945227324962616	Other
1003	1	Good and the Great	5	2024-12-25	Google Play	POSITIVE	0.9998606443405152	Other
1004	1	Wow wow wow cbe; gud job, keep it up.	5	2024-12-25	Google Play	POSITIVE	0.9993834495544434	Other
1005	1	Not used fully amount	1	2024-12-25	Google Play	NEGATIVE	0.999546229839325	Other
1006	1	Timeout	5	2024-12-25	Google Play	NEGATIVE	0.9808634519577026	Other
1007	1	ተጨማሪ ፒን የጣትአሻራ መጨመሩ በጣምጥሩነው ስጠብቀው የነበረ ፊውቸርነው👍	5	2024-12-25	Google Play	NEGATIVE	0.9239576458930968	Other
1008	1	Nice ap	5	2024-12-25	Google Play	POSITIVE	0.9997959733009338	Other
1009	1	Good commercial bank of ethiopia	5	2024-12-25	Google Play	POSITIVE	0.9995922446250916	Other
1010	1	I used for long time its best app	5	2024-12-24	Google Play	POSITIVE	0.9956963062286376	Other
1011	1	Very good and easy to use.	5	2024-12-24	Google Play	POSITIVE	0.9998786449432372	Other
1012	1	I have very happiness by this service thank you cbe	5	2024-12-24	Google Play	POSITIVE	0.9998687505722046	Other
1013	1	This app is not working properly	5	2024-12-24	Google Play	NEGATIVE	0.9997966885566713	Other
1014	1	CBE my device don't work	1	2024-12-23	Google Play	NEGATIVE	0.999734103679657	Other
1015	1	Its good enough to transaction	4	2024-12-23	Google Play	POSITIVE	0.9998494386672974	Transaction Performance
1016	1	I love it its simple to use	5	2024-12-23	Google Play	POSITIVE	0.9998571872711182	Other
1017	1	Lot of errors.	1	2024-12-22	Google Play	NEGATIVE	0.9993113279342652	Reliability
1018	1	Good but it needs good network.	5	2024-12-22	Google Play	NEGATIVE	0.9671788215637208	Other
1019	1	Thank you CBE.	5	2024-12-22	Google Play	POSITIVE	0.9997511506080629	Other
1020	1	Simplest and good way of using Internet banking it very interesting app	5	2024-12-21	Google Play	POSITIVE	0.9975357055664062	Other
1021	1	Woooooo	5	2024-12-21	Google Play	POSITIVE	0.7888647317886353	Other
1022	1	very good for security	5	2024-12-21	Google Play	POSITIVE	0.9997959733009338	Other
1023	1	ወደሌላ ባንክ ሲላክ የሚቆርጠው በጣም ብዙነው	2	2024-12-21	Google Play	NEGATIVE	0.904695212841034	Other
1024	1	Try to fix ur night time network setup	4	2024-12-20	Google Play	NEGATIVE	0.9994114637374878	Other
1025	1	Yuu	2	2024-12-20	Google Play	POSITIVE	0.993859887123108	Other
1026	1	App Baayyee Bareedaadha.	3	2024-12-20	Google Play	NEGATIVE	0.9816723465919496	Other
1027	1	Its Good works great	5	2024-12-20	Google Play	POSITIVE	0.999869704246521	Other
1028	1	This is the worst update ever, the older version was better. It has so much bug.	1	2024-12-20	Google Play	NEGATIVE	0.9997972846031188	Reliability
1029	1	Best mobile banking app in Ethiopia	5	2024-12-20	Google Play	POSITIVE	0.9996216297149658	Other
1030	1	Deserve 5 star	5	2024-12-20	Google Play	POSITIVE	0.7735859751701355	Other
1031	1	It doesnt work	5	2024-12-20	Google Play	NEGATIVE	0.999631404876709	Other
1032	1	Sometimes stack.	1	2024-12-20	Google Play	NEGATIVE	0.9173986315727234	Other
1033	1	The most worst update. It even doesn't let you know ur balance. It doesn't respond quickly.	1	2024-12-20	Google Play	NEGATIVE	0.9997528195381165	User Interface
1034	1	In the previous, I gave 4 🌟 for this app based on my evaluation. This app was without biometric security and may be exposed to cheaters unexpectedly. It is solved now. You can add verification security on the setting app. But there is something problem still with verification. It must prevent logging in without correct input fingerprint.	5	2024-12-20	Google Play	NEGATIVE	0.9971532821655272	Account Access Issues
1035	1	it is the best	5	2024-12-20	Google Play	POSITIVE	0.9998602867126464	Other
1036	1	Vivo v2333s	4	2024-12-20	Google Play	POSITIVE	0.9721411466598512	Other
1037	1	Etyo 👌👌👌🌍🌍	5	2024-12-19	Google Play	POSITIVE	0.8849575519561768	Other
1038	1	This is a good appp	5	2024-12-19	Google Play	POSITIVE	0.9998570680618286	Other
1039	1	Before the new version, the app was fast and merits 4 ⭐. However, following the upgrade, the app is slow and takes time to reload. Apps are useless without speed, so make them work.	1	2024-12-19	Google Play	NEGATIVE	0.999106466770172	Transaction Performance
1040	1	Yeah	5	2024-12-18	Google Play	POSITIVE	0.9993269443511964	Other
1041	1	The bank you relays on	5	2024-12-18	Google Play	POSITIVE	0.9651447534561156	Other
1042	1	Fuadseif	5	2024-12-18	Google Play	NEGATIVE	0.977762758731842	Other
1043	1	This app fast and fact every solution thanks	5	2024-12-18	Google Play	POSITIVE	0.9995457530021667	Other
1044	1	It stuck many time i can't transfer my own money the time i need it must be update but if the stucking prevent it is great app	3	2024-12-18	Google Play	NEUTRAL	0.5	Transaction Performance
1045	1	Easy to use and fast.	4	2024-12-18	Google Play	POSITIVE	0.9994307160377502	Other
1046	1	it is ni ce	5	2024-12-18	Google Play	NEGATIVE	0.9566715359687804	Other
1047	1	My desire	5	2024-12-18	Google Play	POSITIVE	0.9867066740989684	Other
1048	1	ከንዙ ኢብራሂም	5	2024-12-18	Google Play	NEGATIVE	0.7850590348243713	Other
1049	1	It is very nice app	5	2024-12-18	Google Play	POSITIVE	0.9998601675033568	Other
1050	1	It might be fake be aware (it’s not working)	1	2024-12-17	Google Play	NEGATIVE	0.999491572380066	Other
1051	1	Best sistms	3	2024-12-17	Google Play	POSITIVE	0.999514937400818	Other
1052	1	Rated	5	2024-12-17	Google Play	POSITIVE	0.9994613528251648	Other
1053	1	Bulbule masfin	5	2024-12-17	Google Play	NEGATIVE	0.9848324656486512	Other
1054	1	It Made Life Simple	5	2024-12-17	Google Play	POSITIVE	0.9997851252555848	Other
1055	1	It's easy and convenient 🙌	5	2024-12-17	Google Play	POSITIVE	0.9934213757514954	Other
1056	1	Gud	2	2024-12-17	Google Play	NEGATIVE	0.8956557512283325	Other
1057	1	This bank is one of worst bank stealing poor peoples money 😭	1	2024-12-17	Google Play	NEGATIVE	0.9992907047271729	Other
1058	1	So amazing app I've ever seen	4	2024-12-17	Google Play	POSITIVE	0.9998512268066406	Other
1059	1	Very convenient and user-friendly app. I love it	4	2024-12-17	Google Play	POSITIVE	0.9997279047966005	Other
1060	1	My experience with this app has been outstanding so far,but sometimes it has a hard time connecting with network and makes it hard to make transactions. Apart from that it's amazing.	4	2024-12-17	Google Play	POSITIVE	0.9803682565689088	Transaction Performance
1061	1	Even if i had a balance of >0 i couldn't Even transfer any of my balance starting from 0-10257.	1	2024-12-17	Google Play	NEGATIVE	0.998729169368744	Transaction Performance
1062	1	Best Application Mobile Bank	5	2024-12-17	Google Play	POSITIVE	0.99954092502594	Other
1063	1	It is keeping to say" this app is rooted you can't use it "what is the problem	1	2024-12-17	Google Play	POSITIVE	0.9084519147872924	Other
1064	1	is this the latest CBE app	5	2024-12-17	Google Play	POSITIVE	0.988097608089447	Other
1065	1	iI can not see the receipt, why?	5	2024-12-17	Google Play	NEGATIVE	0.9993755221366882	Other
1066	1	How to play sirra critical	5	2024-12-16	Google Play	POSITIVE	0.8102287650108337	Other
1067	1	Yoyo	5	2024-12-16	Google Play	POSITIVE	0.9969800114631652	Other
1068	1	V.good	5	2024-12-16	Google Play	POSITIVE	0.994877278804779	Other
1069	1	Awesome	5	2024-12-16	Google Play	POSITIVE	0.9998682737350464	Other
1070	1	It's very good app for transactions, to give you 5star one more thing you need to do is include bank statement showing methods. And one more thing after you take your commission why you take 5birr monthly without my confirmation?	4	2024-12-16	Google Play	POSITIVE	0.9873142838478088	Transaction Performance
1071	1	It's excellent 👌 app	5	2024-12-16	Google Play	POSITIVE	0.999842643737793	Other
1072	1	Fast app	4	2024-12-16	Google Play	POSITIVE	0.9983617663383484	Other
1073	1	Please Add the Biometric system on the app	5	2024-12-15	Google Play	POSITIVE	0.8240332007408142	Other
1074	1	nic	4	2024-12-15	Google Play	POSITIVE	0.9977141618728638	Other
1075	1	So cool app	5	2024-12-15	Google Play	POSITIVE	0.9998453855514526	Other
1076	1	I am so disappointed because the application doesn't clearly show how many birr it will charge for every transaction rather than just deducted the money , as a user we should have the right to know the amount of money that is going to be deducted. It is a very deceptive tactic , it should be improved immediately.	1	2024-12-15	Google Play	NEGATIVE	0.9984980821609496	Transaction Performance
1077	1	Transfer to telebirr fee above 10 birr	1	2024-12-15	Google Play	NEGATIVE	0.9715496301651	Transaction Performance
1078	1	perfekt	5	2024-12-15	Google Play	POSITIVE	0.9874942898750304	Other
1079	1	Super fast	5	2024-12-14	Google Play	POSITIVE	0.9992691874504088	Other
1080	1	Convenient and safe to use! Better to show more transaction history 👍	5	2024-12-14	Google Play	NEGATIVE	0.9925737380981444	Transaction Performance
1081	1	Best application for ever Thank you very much indeed for your understanding me	5	2024-12-14	Google Play	POSITIVE	0.9998273253440856	Other
1082	1	It takes ur money out of no where!!!!	1	2024-12-14	Google Play	NEGATIVE	0.9982123374938964	Other
1083	1	Best & easy app!	5	2024-12-14	Google Play	POSITIVE	0.9994521737098694	Other
1084	1	Jaabir	5	2024-12-14	Google Play	NEGATIVE	0.9914588928222656	Other
1085	1	Tegehegn sayile	3	2024-12-13	Google Play	POSITIVE	0.7403296232223511	Other
1086	1	Good service for me because it saves my time. There's no need to go to the brunch to transfer the money my bank is going to anywhere with so I can do anything on my mobile banking.thanks for your service.	5	2024-12-13	Google Play	POSITIVE	0.9988201260566713	Transaction Performance
1087	1	Awesome and very simple to use, love it👍🏽	5	2024-12-13	Google Play	POSITIVE	0.9998764991760254	Other
1088	1	SUBSCRAYB	3	2024-12-12	Google Play	NEUTRAL	0.5	Other
1089	1	CBE. is most fantastic and mor action app bee used every parson. CEB. Is my dream a yeat com. for every population if you need highly educated to see about CEB USEED APP of CEB Wallet With all transactions in All world bank to bee exchange raet More information ⬇️With CBE Mobile app you can perform banking tasks anywhere at anytime! Commercial Bank of Ethiopia Mobile Banking The Official app of CBE for Android CBE Android Mobile application gives you access to your account on your Android phone.	5	2024-12-12	Google Play	POSITIVE	0.9416585564613342	Account Access Issues;Transaction Performance
1090	1	የ 1 ወር transaction ቢያሳይ አሪፍ ነው እንዲያሳይ አድርጉልን	4	2024-12-12	Google Play	NEGATIVE	0.9343537092208862	Transaction Performance
1091	1	It's good but it is very busy occasionally.	3	2024-12-12	Google Play	NEGATIVE	0.8259996771812439	Other
1092	1	Amadin Abrahim	5	2024-12-11	Google Play	POSITIVE	0.9909023642539978	Other
1093	1	CBE is great app	5	2024-12-09	Google Play	POSITIVE	0.9997981190681458	Other
1094	1	Its weak application	1	2024-12-09	Google Play	NEGATIVE	0.9996856451034546	Other
1095	1	Vary excellent but update balance not seen at time transaction.	4	2024-12-09	Google Play	NEUTRAL	0.5	Transaction Performance
1096	1	432forget	5	2024-12-09	Google Play	POSITIVE	0.777737557888031	Other
1097	1	Why it havent cbbirr	5	2024-12-08	Google Play	NEGATIVE	0.9979460835456848	Other
1098	1	Hasan.dawee	5	2024-12-08	Google Play	POSITIVE	0.6612502932548523	Other
1099	1	Its not work as expectations	1	2024-12-07	Google Play	NEGATIVE	0.9967843294143676	Other
1100	1	Not that much good!	1	2024-12-07	Google Play	NEGATIVE	0.9997987151145936	Other
1101	1	Good & Perfect 👌	5	2024-12-06	Google Play	POSITIVE	0.9998761415481568	Other
1102	1	💯💯💯👌👌👌👌Perfect	5	2024-12-06	Google Play	NEGATIVE	0.697056770324707	Other
1103	1	Great app convenient for making payments and transactions. Tnxs CBE 👏👏👏	5	2024-12-06	Google Play	POSITIVE	0.996038556098938	Transaction Performance
1104	1	My all time best application	5	2024-12-06	Google Play	POSITIVE	0.9998243451118468	Other
1105	1	Hayye	5	2024-12-06	Google Play	POSITIVE	0.9991071820259094	Other
1106	1	2 Year Exprianced on this app	5	2024-12-06	Google Play	NEGATIVE	0.987575352191925	Other
1107	1	It's professional app ilike this app	5	2024-12-06	Google Play	POSITIVE	0.9623323678970336	Other
1108	1	It is very good, it is very useful, it is a problem solver	5	2024-12-06	Google Play	POSITIVE	0.9998414516448976	Other
1109	1	COmmercial	1	2024-12-05	Google Play	NEGATIVE	0.9959623217582704	Other
1110	1	Superb app. Serves better than I expected in a remote and hardly Internet connection covered areas while in the field work. Thanks team	5	2024-12-03	Google Play	POSITIVE	0.995970606803894	Other
1111	1	It's amazing	5	2024-12-02	Google Play	POSITIVE	0.9998785257339478	Other
1112	1	Goood	1	2024-12-02	Google Play	NEGATIVE	0.9943867921829224	Other
1113	1	No speed	2	2024-12-01	Google Play	NEGATIVE	0.9996943473815918	Other
1114	1	I’ve noticed two key issues with your app: 1. Username Visibility: The app doesn’t display the username, making verification difficult. Please add this feature. 2. Transaction History: Transaction history gets deleted if the app is reinstalled. This data should remain accessible unless manually deleted by the user. A "Load More" option for older transactions would also be helpful. These issues have caused inconvenience. Fixing them would greatly improve the user experience. Thank you.	5	2024-12-01	Google Play	NEGATIVE	0.9981787204742432	Account Access Issues;Transaction Performance;Customer Support
1115	1	I want to download	5	2024-11-30	Google Play	POSITIVE	0.9819483757019044	Other
1116	1	This app is just sweet	5	2024-11-30	Google Play	POSITIVE	0.9998192191123962	Other
1117	1	It is the best application that makes life easier and provides fast service	5	2024-11-30	Google Play	POSITIVE	0.99981027841568	Other
1118	1	Fast and reliable	4	2024-11-30	Google Play	POSITIVE	0.9998595714569092	Other
1119	1	the good app	5	2024-11-29	Google Play	POSITIVE	0.99986732006073	Other
1173	1	Very great job	4	2024-11-09	Google Play	POSITIVE	0.9998703002929688	Other
1174	1	I have no experiance about this	5	2024-11-09	Google Play	NEGATIVE	0.9956859350204468	Other
1120	1	Self transfer has a problem. Doesn't tell weather trasfered or not after the process,ie ignors the final issuance of reciept .....	2	2024-11-28	Google Play	NEGATIVE	0.997632622718811	Transaction Performance
1121	1	Best for users	5	2024-11-28	Google Play	POSITIVE	0.9996201992034912	Other
1122	1	really	5	2024-11-27	Google Play	POSITIVE	0.9980352520942688	Other
1123	1	1.I have to log out and wait for more minutes to make another transfer . 2. I get charged for a not satisfactory transfer amount. 3.On some days I see some transactions with different amount of transfers which I don't do . 4.I can not transfer more than 20K. and charger for every transfer is not fair 5.And l wish to know "For Ethiopians where exactly is there country to live in"	1	2024-11-26	Google Play	NEGATIVE	0.9992608428001404	Transaction Performance
1124	1	Gugu gaga	3	2024-11-26	Google Play	NEUTRAL	0.5	Other
1125	1	Agriculture in genral	5	2024-11-26	Google Play	POSITIVE	0.989987313747406	Other
1126	1	ንግድ	4	2024-11-25	Google Play	NEGATIVE	0.697056770324707	Other
1127	1	Pretty straightforward, does what it's supposed to do. Wish it had beefier/ more detailed recent transactions though.	4	2024-11-25	Google Play	NEGATIVE	0.98154217004776	Transaction Performance
1128	1	milyon	1	2024-11-24	Google Play	POSITIVE	0.9962282180786132	Other
1129	1	ስግብግብ , Unfair (Tele + CBE )😫	2	2024-11-23	Google Play	NEGATIVE	0.9997060894966124	Other
1130	1	Yadani Nagaro	4	2024-11-23	Google Play	NEGATIVE	0.8292443752288818	Other
1131	1	Less functional	1	2024-11-22	Google Play	NEGATIVE	0.9997671246528624	Other
1132	1	The system is slow	5	2024-11-22	Google Play	NEGATIVE	0.9997988343238832	Transaction Performance
1133	1	This works fine !! Nice !!! But I was wondering can I see my statement from the app?	4	2024-11-21	Google Play	POSITIVE	0.9906226992607116	Other
1134	1	Nsiro	5	2024-11-20	Google Play	NEGATIVE	0.9279549717903136	Other
1135	1	USE ENGLISH LANGUAGE.	5	2024-11-20	Google Play	POSITIVE	0.9923190474510192	Other
1136	1	Wooooow	5	2024-11-20	Google Play	POSITIVE	0.8580713272094727	Other
1137	1	It used to work fine but nowadays if u try to use it after midnight it doesn't always work either with Wi-Fi or data and sometimes we gotta pay things before the dead line and boom it doesn't work	3	2024-11-20	Google Play	NEGATIVE	0.999744713306427	Other
1138	1	I like this app! it's easy to use and quite flexible. it's nice 👍	5	2024-11-19	Google Play	POSITIVE	0.9998548030853271	User Interface
1139	1	From my over thirty five years custemer of the Commercial Bank of Ethiopia I find it to dependable bank.	5	2024-11-19	Google Play	POSITIVE	0.804757297039032	Other
1140	1	improvement	4	2024-11-19	Google Play	POSITIVE	0.9987468719482422	Other
1141	1	Its good bank in ethiopia	4	2024-11-19	Google Play	POSITIVE	0.9997450709342957	Other
1142	1	It good	5	2024-11-18	Google Play	POSITIVE	0.9998427629470824	Other
1143	1	The best banking and application	5	2024-11-18	Google Play	POSITIVE	0.9998595714569092	Other
1144	1	👍👍👍👌👌👌👌👌👌👌🤣	5	2024-11-18	Google Play	NEGATIVE	0.697056770324707	Other
1145	1	So Good	2	2024-11-18	Google Play	POSITIVE	0.999841570854187	Other
1146	1	ZAYINE SALMAN	5	2024-11-17	Google Play	POSITIVE	0.9868489503860474	Other
1147	1	feature to add beneficiary account from older version isn't available on this one, and the greeting notification that pops out during every log in is boring.	1	2024-11-17	Google Play	NEGATIVE	0.9994866847991944	Other
1148	1	Problems seen account banning without my permission	2	2024-11-17	Google Play	NEGATIVE	0.9990825653076172	Other
1149	1	maashaallaah	5	2024-11-17	Google Play	NEGATIVE	0.9823579788208008	Other
1150	1	Excellent performance	5	2024-11-16	Google Play	POSITIVE	0.999862790107727	Other
1151	1	I like this app. It is very helpfull. The draw back is it doesn't order transactions accordingly and it stops responding without any notification.	3	2024-11-16	Google Play	POSITIVE	0.9578426480293274	Transaction Performance;Customer Support
1152	1	በጣም የሚያስጠላ ሲስተም ነው ኣሻሽሉ	2	2024-11-16	Google Play	NEGATIVE	0.8832130432128906	Other
1153	1	Sometimes, it is very difficult to open	1	2024-11-15	Google Play	NEGATIVE	0.9993867874145508	Other
1154	1	It is easy;comfortable and smart latest advanced digitaluzed application of CBE!!!!!!!	5	2024-11-15	Google Play	POSITIVE	0.9997350573539734	Other
1155	1	ሲስተሙ ምንም አይሰራም ያአቸግራል 😔😔 ብስታካከል መላካም ነው	1	2024-11-14	Google Play	NEGATIVE	0.9239576458930968	Other
1156	1	One of the best	5	2024-11-14	Google Play	POSITIVE	0.999864101409912	Other
1157	1	Best app to use money transfer	5	2024-11-13	Google Play	POSITIVE	0.977408230304718	Transaction Performance
1158	1	Best in ethiopia	5	2024-11-13	Google Play	POSITIVE	0.999779999256134	Other
1159	1	It is very easy to use and preferable overall I really liked this app	4	2024-11-13	Google Play	POSITIVE	0.9995989203453064	Other
1160	1	That's good	5	2024-11-12	Google Play	POSITIVE	0.9998168349266052	Other
1161	1	fantastic and very helpful	5	2024-11-12	Google Play	POSITIVE	0.9998767375946044	Customer Support
1162	1	It s nice	5	2024-11-12	Google Play	POSITIVE	0.9998586177825928	Other
1163	1	No fast	1	2024-11-12	Google Play	NEGATIVE	0.981540024280548	Other
1164	1	I really love this App It's amazing 🙏	5	2024-11-11	Google Play	POSITIVE	0.9998778104782104	Other
1165	1	The 'unsubscribe' button in the CBE Android app is misplaced. It should be at the middle of the menu or somewhere else rather than at the end. The end is usually for a 'log out" and I inadvertently touched ''unsubscribe" many times. This could lead to customers accidentally unsubscribing from the service.	4	2024-11-11	Google Play	NEGATIVE	0.9997537732124328	Other
1166	1	Very good service	5	2024-11-11	Google Play	POSITIVE	0.9998648166656494	Other
1167	1	hello,all ethiopian to east africa and all over the world.i am from ethiopia.i wos have disegned new digital transaction system in ethiopia.this our money transaction to be active when we need all our transaction to any where.this is also exellent way to connect by digital transaction with global country.......like china...us...italy....phli....etc through the world...we have been lucky by making a great digital connection system to develop our CBE birr with global transaction...in ethiopia...	5	2024-11-10	Google Play	POSITIVE	0.9685645699501038	Transaction Performance
1168	1	Best app in ethiopia	5	2024-11-10	Google Play	POSITIVE	0.999491810798645	Other
1169	1	Interesting application	5	2024-11-10	Google Play	POSITIVE	0.999768078327179	Other
1170	1	The best application and easy my life	5	2024-11-10	Google Play	POSITIVE	0.9998654127120972	Other
1171	1	ኘተ	5	2024-11-09	Google Play	NEGATIVE	0.697056770324707	Other
1172	1	Amazing it's easy to use	5	2024-11-09	Google Play	POSITIVE	0.99987530708313	Other
1175	1	It is good but not sufficient !!	5	2024-11-09	Google Play	POSITIVE	0.9958510398864746	Other
1176	1	1. Statement is limited with one screen display. There should be access to see my transactions of at least 6 months before. 2. Sometimes debit/credit is not shown on the account details.......	2	2024-11-09	Google Play	NEGATIVE	0.9951480031013488	Account Access Issues;Transaction Performance
1177	1	The Commercial Bank of Ethiopia (CBE) is a pillar of financial strength and stability in Ethiopia. As the largest and most established bank in the country, it fosters economic growth, promotes financial inclusion, and supports businesses of all sizes. CBE’s mobile banking app enhances convenience by enabling millions to access banking services anytime, anywhere. Keep up Good work❤.	5	2024-11-09	Google Play	POSITIVE	0.9996888637542723	Account Access Issues;Customer Support
1178	1	Teachings	5	2024-11-09	Google Play	POSITIVE	0.9910919070243835	Other
1179	1	I am unable to open or use the application	2	2024-11-08	Google Play	NEGATIVE	0.9997318387031556	Other
1180	1	Thinkbyou	2	2024-11-07	Google Play	POSITIVE	0.6470203399658203	Other
1181	1	I like this application and your Banking systems	5	2024-11-07	Google Play	POSITIVE	0.9994945526123048	Other
1182	1	Wow fast network	5	2024-11-07	Google Play	POSITIVE	0.9995744824409484	Other
1183	1	Mahir	5	2024-11-07	Google Play	POSITIVE	0.9960935711860656	Other
1184	1	It's so intermittent.	2	2024-11-07	Google Play	NEGATIVE	0.9898327589035034	Other
1185	1	ሰላም የኢት ንግድ ባንክ አፑ በጣም አሪፍ ነው ግን የተላላክነውን ሂስትሪ ላይ በካላንደር እንድወጣልን ስርች ማድረጊያ ጨምሩበት	5	2024-11-07	Google Play	NEGATIVE	0.9582906365394592	Other
1186	1	Super convenient and accessible	5	2024-11-06	Google Play	POSITIVE	0.9996293783187866	Account Access Issues
1187	1	you brought new feature which is standing order, but it doest have option to delete/edit amount	4	2024-11-06	Google Play	NEGATIVE	0.9900402426719666	Other
1188	1	I like this app but it's done not work so fix it please!!!	1	2024-11-06	Google Play	NEGATIVE	0.997734785079956	Other
1189	1	just do it	5	2024-11-06	Google Play	POSITIVE	0.999190628528595	Other
1190	1	Very Nice	5	2024-11-06	Google Play	POSITIVE	0.9998563528060912	Other
1191	1	Very Good.	5	2024-11-05	Google Play	POSITIVE	0.9998475313186646	Other
1192	1	Open ok	5	2024-11-05	Google Play	POSITIVE	0.9998559951782228	Other
1193	1	Easy and accessible easily	5	2024-11-05	Google Play	POSITIVE	0.9998401403427124	Account Access Issues
1194	1	Very nice app ግን አንዳንዴ በጣም ይንቀረፈፋል ማሻሻል አለባችሁ ፍጥነት ያስፈልጋል	4	2024-11-05	Google Play	POSITIVE	0.9993495345115662	Other
1195	1	Very great application	5	2024-11-04	Google Play	POSITIVE	0.9998713731765748	Other
1196	1	It shows a limited number of transaction history. And it does show transactions history in the order of arrival	1	2024-11-04	Google Play	NEGATIVE	0.9768219590187072	Transaction Performance
1197	1	Good and better app compared to other bank's, but the remard/naration is ommited when we make a screenshoot, so better to include the remark.	5	2024-11-04	Google Play	NEGATIVE	0.9974195957183838	Other
1198	1	the best service	5	2024-11-04	Google Play	POSITIVE	0.9998639822006226	Other
1199	1	Very nice applications. Very useful app.	5	2024-11-02	Google Play	POSITIVE	0.9998236298561096	Other
1200	1	I am using. The Ap it is amazing	5	2024-11-02	Google Play	POSITIVE	0.9998713731765748	Other
1201	1	Good luck tanks 😍	5	2024-11-02	Google Play	POSITIVE	0.9958145022392272	Other
1202	1	WOW BANK	5	2024-11-01	Google Play	POSITIVE	0.9991248250007628	Other
1203	1	Loved it! Exceptionally easy, friendly interface with no adds and complicated extensions app!	5	2024-10-31	Google Play	POSITIVE	0.9993869066238404	User Interface
1204	1	Keep the good work	5	2024-10-30	Google Play	POSITIVE	0.9998652935028076	Other
1205	1	Working very good yet than the other methods I know before	5	2024-10-30	Google Play	POSITIVE	0.9997135996818542	Other
1206	1	baste	5	2024-10-30	Google Play	POSITIVE	0.996582329273224	Other
1207	1	This app is very interesting, fast transaction and preferable system!	5	2024-10-30	Google Play	POSITIVE	0.9996836185455322	Transaction Performance
1208	1	Avery good app designed by CBE makes life easier.	4	2024-10-30	Google Play	POSITIVE	0.999360740184784	User Interface
1209	1	Best ethiopian bank	5	2024-10-28	Google Play	POSITIVE	0.9997190833091736	Other
1210	1	Fast service.	5	2024-10-28	Google Play	POSITIVE	0.9994139671325684	Other
1211	1	The leading bank in Ethiopia.	5	2024-10-27	Google Play	POSITIVE	0.9994997978210448	Other
1212	1	Very efficient app	5	2024-10-27	Google Play	POSITIVE	0.9998348951339722	Other
1213	1	Is good	5	2024-10-26	Google Play	POSITIVE	0.9998394250869752	Other
1214	1	less active	1	2024-10-26	Google Play	NEGATIVE	0.9994578957557678	Other
1215	1	It's better for using Wherever we are .	5	2024-10-24	Google Play	NEGATIVE	0.997108280658722	Other
1216	1	ብርለማስተላፍ ፈልጌ አልሰራልኝም ለምን?	4	2024-10-24	Google Play	NEGATIVE	0.9661957621574402	Other
1217	1	I get it fast	5	2024-10-24	Google Play	POSITIVE	0.9987016916275024	Other
1218	1	I liked this app	5	2024-10-24	Google Play	POSITIVE	0.9995848536491394	Other
1219	1	ممتاز	5	2024-10-23	Google Play	NEUTRAL	0.5	Other
1220	1	just nice	5	2024-10-23	Google Play	POSITIVE	0.9998681545257568	Other
1221	1	ፒን ቁጥር ካስገባሁ በኋላ የሚመጣው ስከሪን ተቀማጭ ባላነሴን አያሳይም!	1	2024-10-23	Google Play	POSITIVE	0.9892830848693848	Other
1222	1	Amazing for saving time	5	2024-10-22	Google Play	POSITIVE	0.9998732805252076	Other
1223	1	The best mobile banking in the world. I love it, thank you!!!! But try to have more servers, sometimes it is busy.	4	2024-10-21	Google Play	NEGATIVE	0.987160325050354	Other
1224	1	Fast	5	2024-10-21	Google Play	POSITIVE	0.9989494681358336	Other
1225	1	New Technology	5	2024-10-21	Google Play	POSITIVE	0.9992990493774414	Other
1226	1	bast mobile banking in Ethiopia	2	2024-10-20	Google Play	POSITIVE	0.9974229335784912	Other
1227	1	its so good app	5	2024-10-20	Google Play	POSITIVE	0.9998642206192015	Other
1228	1	Nasri.huseen	5	2024-10-19	Google Play	POSITIVE	0.9738314151763916	Other
1229	1	App is not working	1	2024-10-19	Google Play	NEGATIVE	0.9997467398643494	Other
1230	1	Very good for transaction	5	2024-10-19	Google Play	POSITIVE	0.999824583530426	Transaction Performance
1231	1	Baayyee gaariidha	5	2024-10-19	Google Play	NEGATIVE	0.844869077205658	Other
1232	1	ጥሩ ነው በዚሁ ቀጥሉበት።	2	2024-10-19	Google Play	NEGATIVE	0.8832130432128906	Other
1288	1	CBE is a great way to use it.	4	2024-10-04	Google Play	POSITIVE	0.9984910488128662	Other
1233	1	This good mobile banking app ever used but it says this device is rooted. You cannot run this app on this device	1	2024-10-18	Google Play	POSITIVE	0.969990074634552	Other
1234	1	try to update it	1	2024-10-18	Google Play	NEGATIVE	0.9985365867614746	Other
1235	1	Fantastic, It has supersonic speed.	5	2024-10-18	Google Play	POSITIVE	0.9998606443405152	Other
1236	1	Beast	5	2024-10-18	Google Play	POSITIVE	0.9882547855377196	Other
1237	1	Nice &simple app	4	2024-10-18	Google Play	POSITIVE	0.999787986278534	Other
1238	1	Such a great app😘	5	2024-10-16	Google Play	POSITIVE	0.9994964599609376	Other
1239	1	It is a service that is not expected from such a large institution. I saw that your work is very complicated. The user does not understand well your application. In general, you have many problems. This application is not convenient for the end user. For instance I can't access my account from abroad what I depsited amount and transfer from my account to any any one .It is a shame.	1	2024-10-16	Google Play	NEGATIVE	0.9995642304420472	Account Access Issues;Transaction Performance
1240	1	20 year	5	2024-10-16	Google Play	POSITIVE	0.9958376884460448	Other
1241	1	Cannot access with no reason,	1	2024-10-16	Google Play	NEGATIVE	0.9994827508926392	Account Access Issues
1242	1	Abdullaxif sherashid	5	2024-10-15	Google Play	POSITIVE	0.9452438354492188	Other
1243	1	use full	5	2024-10-15	Google Play	POSITIVE	0.9933939576148988	Other
1244	1	I like the app, easy to use, if possible please add some more features like calculator. Simply add one more icon with calculator function, so the users can easily do some calculation without closing the app.	4	2024-10-15	Google Play	POSITIVE	0.9953567385673524	Other
1245	1	It was good because of its wide area usage possibility but has so many problem with transaction daily information and availability duration	3	2024-10-15	Google Play	NEGATIVE	0.9924762845039368	Transaction Performance
1246	1	Wow👌	5	2024-10-15	Google Play	NEGATIVE	0.697056770324707	Other
1247	1	👍🏽	5	2024-10-14	Google Play	NEGATIVE	0.697056770324707	Other
1248	1	It's not secure enough,you don't have biometric option	1	2024-10-14	Google Play	NEGATIVE	0.999625325202942	Other
1249	1	@12ahme afar	5	2024-10-14	Google Play	NEGATIVE	0.6068770885467529	Other
1250	1	-The app only shows a limited record amount of transaction (20) - it crashes again and again	1	2024-10-14	Google Play	NEGATIVE	0.999650239944458	Transaction Performance;Reliability
1251	1	I need money	3	2024-10-13	Google Play	NEGATIVE	0.9991008043289183	Other
1252	1	HAYlDER A/ZiABAA	5	2024-10-13	Google Play	POSITIVE	0.9386845231056212	Other
1253	1	That was good app😍	5	2024-10-13	Google Play	POSITIVE	0.9998452663421632	Other
1254	1	Fast and easy to use, simple app at all!👌	4	2024-10-13	Google Play	POSITIVE	0.9965975880622864	Other
1255	1	Best application ever	5	2024-10-13	Google Play	POSITIVE	0.9998244643211364	Other
1256	1	Cod	5	2024-10-13	Google Play	NEGATIVE	0.9964717626571656	Other
1257	1	It is an amazing App I like its features	5	2024-10-13	Google Play	POSITIVE	0.9998801946640016	Other
1258	1	Please bring back the reason of transfer/reference format on the receipt. Pls pls, for those of us who have multiple transactions,it's very important to trace the receipts by looking at the references.	3	2024-10-13	Google Play	NEGATIVE	0.8823053240776062	Transaction Performance
1259	1	Commercial Date	5	2024-10-12	Google Play	NEGATIVE	0.9603798985481262	Other
1260	1	No have all monthly statement,	2	2024-10-12	Google Play	NEGATIVE	0.980148196220398	Other
1261	1	I love this app it is fast and suitable for use.	5	2024-10-11	Google Play	POSITIVE	0.9998207688331604	User Interface
1262	1	Wow Ethio Tele 🤯🤣🤣🤣🤣	3	2024-10-11	Google Play	POSITIVE	0.9984460473060608	Other
1263	1	I find this app user friendly and reliable.	5	2024-10-11	Google Play	POSITIVE	0.9993358254432678	User Interface
1264	1	It's good ,but in the history list, it doesn't show a reason for transactions.	4	2024-10-11	Google Play	NEGATIVE	0.9974019527435304	Transaction Performance
1265	1	This app is not set up for diaspora users. It works fine until you needed a new verification code, or you change your cell phone and try to use the app on the new phone. You will not be able to get the verification key that it is asking for just for changing your phone. It requires you to go the nearest branch to get the verification key. For me this will be travelling to Ethiopia from USA just to get this code. Even my sister - a joint aact holder & has my Power of Attorney, could not help me.	1	2024-10-11	Google Play	NEGATIVE	0.9949235320091248	User Interface;Customer Support
1266	1	Which is very important!	5	2024-10-10	Google Play	POSITIVE	0.9998410940170288	Other
1267	1	please send me your details please	5	2024-10-10	Google Play	POSITIVE	0.9973697662353516	Other
1268	1	Good job	5	2024-10-10	Google Play	POSITIVE	0.999835729598999	Other
1269	1	No one like cbe	5	2024-10-09	Google Play	NEGATIVE	0.9300255179405212	Other
1270	1	Its good for digital marketing	5	2024-10-09	Google Play	POSITIVE	0.99904865026474	Other
1271	1	Superexcellent	5	2024-10-08	Google Play	NEGATIVE	0.9577898383140564	Other
1272	1	No word	5	2024-10-07	Google Play	NEGATIVE	0.9993126392364502	Other
1273	1	too nice app my time savaing	5	2024-10-07	Google Play	POSITIVE	0.9865217804908752	Other
1274	1	This app is so strong💪	2	2024-10-07	Google Play	NEGATIVE	0.9838597774505616	Other
1275	1	Useless	1	2024-10-07	Google Play	NEGATIVE	0.9997991919517516	Other
1276	1	ይህ አፕሊኬሽን ብዙ አገልግሎት እየሰጠ ይገኛል ሆኖም በየጊዜው አዳዲስ አሰራሮችን ከማደስ አንፃር ሲታይ ይቀረዋል አሁን ላይ ሂሳብ አያሳየኝም ምን ላድርግ	5	2024-10-06	Google Play	NEGATIVE	0.9600718021392822	Other
1277	1	100 %	5	2024-10-06	Google Play	POSITIVE	0.999744474887848	Other
1278	1	One of the best banking apps.	5	2024-10-06	Google Play	POSITIVE	0.9998432397842408	Other
1279	1	Unexpected apps becouse this is bad unfortunately error	1	2024-10-06	Google Play	NEGATIVE	0.9988136291503906	Reliability
1280	1	One of the fastest app ever used.	5	2024-10-06	Google Play	POSITIVE	0.9989832043647766	Other
1281	1	My best bank	5	2024-10-05	Google Play	POSITIVE	0.9995287656784058	Other
1282	1	Your app is so amazing	5	2024-10-05	Google Play	POSITIVE	0.999870538711548	Other
1283	1	Very good 👍	5	2024-10-05	Google Play	POSITIVE	0.999870777130127	Other
1284	1	በጣምጠሩ	5	2024-10-05	Google Play	NEGATIVE	0.697056770324707	Other
1285	1	Discount service fee	2	2024-10-05	Google Play	POSITIVE	0.7452895045280457	Other
1286	1	My choice bank Comertial bank of Ethiopia	5	2024-10-05	Google Play	POSITIVE	0.954100489616394	Other
1287	1	This app is very active and past	5	2024-10-04	Google Play	NEGATIVE	0.9883084297180176	Other
1351	1	Jira yesus	5	2024-09-18	Google Play	POSITIVE	0.993204951286316	Other
1289	1	The app very nice but it stuck by now. What is the reason?	5	2024-10-04	Google Play	NEGATIVE	0.9980801343917848	Other
1290	1	It's reliable, fast,and easy to use	5	2024-10-04	Google Play	POSITIVE	0.9998078942298888	Other
1291	1	The app is okay!	5	2024-10-04	Google Play	POSITIVE	0.9997506737709044	Other
1292	1	There is problem on application to transfer money and adjust please.	3	2024-10-04	Google Play	NEGATIVE	0.9979314804077148	Transaction Performance
1293	1	It make my life easy my time my energey	5	2024-10-04	Google Play	POSITIVE	0.9987146854400636	Other
1294	1	Am happy for the service	4	2024-10-03	Google Play	POSITIVE	0.9998617172241212	Other
1295	1	Good application commercial bank of Ethiopia	5	2024-10-03	Google Play	POSITIVE	0.9995546936988832	Other
1296	1	It is my best apps ever. Thank you CBE!	5	2024-10-03	Google Play	POSITIVE	0.999866247177124	Other
1297	1	Its very good application specialy with 4G Network Conection. However The Service Payment is Expensive. Do It Please Justified With Our Economy Label	3	2024-10-03	Google Play	NEGATIVE	0.9837250113487244	Transaction Performance
1298	1	App is not working for days now.	1	2024-10-03	Google Play	NEGATIVE	0.9971845746040344	Other
1299	1	Tnx for the team	5	2024-10-02	Google Play	NEGATIVE	0.983264982700348	Other
1300	1	Interesting application any updates should have to included timely	5	2024-10-02	Google Play	POSITIVE	0.9440318942070008	Other
1301	1	Fantastic app	5	2024-10-01	Google Play	POSITIVE	0.999858856201172	Other
1302	1	Excellent appn that is easy to use it, the bank we trust and rely CBE. Thank you Abdi Farah	5	2024-10-01	Google Play	POSITIVE	0.9995470643043518	Other
1303	1	Bank	5	2024-09-30	Google Play	POSITIVE	0.8260878324508667	Other
1304	1	takies	5	2024-09-30	Google Play	POSITIVE	0.9880828261375428	Other
1305	1	Maashoo.abduuroo	5	2024-09-30	Google Play	NEGATIVE	0.9726585149765016	Other
1306	1	Double PIN request is extremely worthful. Keep working on security. I rate *****.	5	2024-09-30	Google Play	POSITIVE	0.9996386766433716	Other
1307	1	IAM satisfied for the application.	5	2024-09-30	Google Play	POSITIVE	0.9864009022712708	Other
1308	1	Exlence service	5	2024-09-28	Google Play	POSITIVE	0.849420964717865	Other
1309	1	The increase in the amount of the Daily Exchange should be increased to 6,000,000 ETB instead of 600,000 ETB.	4	2024-09-28	Google Play	NEGATIVE	0.9991143345832824	Other
1310	1	aags hshja	1	2024-09-28	Google Play	POSITIVE	0.6030277013778687	Other
1311	1	It's the best appks	5	2024-09-28	Google Play	POSITIVE	0.999852180480957	Other
1312	1	Fast and Easy to Use. By far the best mobile banking application in 🇪🇹	5	2024-09-27	Google Play	POSITIVE	0.9997501969337464	Other
1313	1	Excllent app	5	2024-09-27	Google Play	NEGATIVE	0.9464938044548036	Other
1314	1	It's time consuming up for using electronic money every were	5	2024-09-27	Google Play	NEGATIVE	0.9954534769058228	Other
1315	1	Very special app	1	2024-09-27	Google Play	POSITIVE	0.9997159838676452	Other
1316	1	It's esay and very fast to use and sync.	5	2024-09-26	Google Play	POSITIVE	0.9976510405540466	Other
1317	1	This app sometimes 🛑	1	2024-09-26	Google Play	NEGATIVE	0.93929123878479	Other
1318	1	Verification code website	5	2024-09-26	Google Play	NEGATIVE	0.9053179025650024	Other
1319	1	I loved it	5	2024-09-26	Google Play	POSITIVE	0.9998809099197388	Other
1320	1	The best way..i like it#1👍	5	2024-09-26	Google Play	POSITIVE	0.9997747540473938	Other
1321	1	😁	5	2024-09-26	Google Play	NEGATIVE	0.697056770324707	Other
1322	1	I like it but can bring for us to link with PayPal please	5	2024-09-26	Google Play	POSITIVE	0.9268391728401184	Other
1323	1	please add the fingerprint security. All most the app is very good app.	5	2024-09-26	Google Play	POSITIVE	0.9997076392173768	Account Access Issues
1324	1	Best appk	5	2024-09-26	Google Play	POSITIVE	0.9996206760406494	Other
1325	1	I have been using this app for log time since It come to existence and its its marvelous app and usually enjoy its function and simplicity. I know pay everything with this app and make my transaction all by this app. Great Job by CBE.	4	2024-09-25	Google Play	POSITIVE	0.9988895058631896	Transaction Performance
1326	1	It's good but it must add some especial item like statement or transaction list place	5	2024-09-25	Google Play	POSITIVE	0.98356956243515	Transaction Performance
1327	1	This best app	5	2024-09-25	Google Play	POSITIVE	0.9998522996902466	Other
1328	1	fast and easy	5	2024-09-25	Google Play	POSITIVE	0.9994889497756958	Other
1329	1	trust to use	5	2024-09-25	Google Play	POSITIVE	0.9996029734611512	Other
1330	1	It the bast app in mobile money to trasfer to receive payment use it !	5	2024-09-25	Google Play	NEGATIVE	0.9245885610580444	Transaction Performance
1331	1	It is an interesting app	3	2024-09-24	Google Play	POSITIVE	0.999748170375824	Other
1332	1	not working well	1	2024-09-24	Google Play	NEGATIVE	0.9997866749763488	Other
1333	1	oromosikorkreshn	5	2024-09-23	Google Play	NEGATIVE	0.6985654234886169	Other
1334	1	Its eassy to use	5	2024-09-23	Google Play	NEGATIVE	0.951185941696167	Other
1335	1	It is very, for more experience please upgrade it	5	2024-09-23	Google Play	POSITIVE	0.9808638095855712	Other
1336	1	failed to give receipt or confirm payment	2	2024-09-23	Google Play	NEGATIVE	0.9997404217720032	Transaction Performance
1337	1	The best	5	2024-09-23	Google Play	POSITIVE	0.9998332262039183	Other
1338	1	Faster and convertible,,,,,CBE App👍👍	5	2024-09-23	Google Play	POSITIVE	0.9693023562431335	Other
1339	1	አብዛውን ጊዜ ያስቸግራል	5	2024-09-23	Google Play	NEGATIVE	0.8337255716323853	Other
1340	1	Remzi	1	2024-09-22	Google Play	NEGATIVE	0.7439941763877869	Other
1341	1	Best app 🤙	5	2024-09-22	Google Play	POSITIVE	0.999170184135437	Other
1342	1	Sulxan nuree muhammad godinaa harargee lixaa anaa buqa dhintuu zone	5	2024-09-21	Google Play	NEGATIVE	0.9843953847885132	Other
1343	1	Yes we can	3	2024-09-21	Google Play	POSITIVE	0.9997782111167908	Other
1344	1	At g CA	5	2024-09-20	Google Play	POSITIVE	0.7366005182266235	Other
1345	1	𝙼𝚒𝚔𝚒	5	2024-09-20	Google Play	NEGATIVE	0.697056770324707	Other
1346	1	Abdurahman Abdalkarim	1	2024-09-19	Google Play	POSITIVE	0.970058262348175	Other
1347	1	Has not show recent exact information. Some transactions are included and others excluded. Bad experiance. Always I got in truble by thinking the correct balance.	1	2024-09-19	Google Play	NEGATIVE	0.9994696974754332	Transaction Performance
1348	1	Taju Mohammed Belda	5	2024-09-18	Google Play	POSITIVE	0.9798380136489868	Other
1349	1	Very bad application not working properly every time	1	2024-09-18	Google Play	NEGATIVE	0.9997959733009338	Other
1350	1	It's safe ever	5	2024-09-18	Google Play	POSITIVE	0.9996181726455688	Other
1352	1	It's ask me update then i was going to my branch they updated my mobile banking but still not working!"	1	2024-09-18	Google Play	NEGATIVE	0.9993274211883544	Other
1353	1	Good 👍	5	2024-09-17	Google Play	POSITIVE	0.9998576641082764	Other
1354	1	Nice mobile banking	5	2024-09-17	Google Play	POSITIVE	0.9997056126594543	Other
1355	1	It ask KYC for the 3rd time in one moths what wrong with your system. If this thing keep going most of your customers start using other banks including My family and friends.	1	2024-09-17	Google Play	NEGATIVE	0.9994754195213318	Other
1356	1	09mikaa.il	1	2024-09-17	Google Play	NEUTRAL	0.5	Other
1357	1	It's true and is my favorite Banks	5	2024-09-16	Google Play	POSITIVE	0.9998605251312256	Other
1358	1	Experience	5	2024-09-16	Google Play	POSITIVE	0.980140745639801	Other
1359	1	It is great app	5	2024-09-16	Google Play	POSITIVE	0.9998583793640136	Other
1360	1	This service is qulity and very easy to use by any place any time also i could have save my time. Just i can say fantastic.	5	2024-09-16	Google Play	POSITIVE	0.6253812909126282	Other
1361	1	How can I trust a bank that doesn't have a cyber crime reporting mechanism. I recently traveled out of the country. After a week I got a text message stating that more than 1000bir withdrawn from my account without my knowledge. When I tried to download the receipt, it doesn't even work. I only know it was transfered to a Wegagen bank account via a POS machine. Please be carefull and take a lesson from me. 😡😡😡	1	2024-09-16	Google Play	NEGATIVE	0.999208390712738	Transaction Performance
1362	1	Very nice work	5	2024-09-15	Google Play	POSITIVE	0.9998642206192015	Other
1363	1	Finance manager	5	2024-09-15	Google Play	POSITIVE	0.9604266881942748	Other
1364	1	Very good simple and easy app thank you very much Ethiopian commercial Bank 👍👍 🏧	5	2024-09-15	Google Play	POSITIVE	0.9997966885566713	Other
1365	1	it is good app . but i had some essue's lately, they app don't show Transaction history properly in order of date of withdrawal . You should fix that in the next Update.	3	2024-09-14	Google Play	NEGATIVE	0.996747612953186	Transaction Performance
1366	1	It is great and fast app to transfer money	5	2024-09-14	Google Play	POSITIVE	0.9992750287055968	Transaction Performance
1367	1	Best up Ever.	5	2024-09-14	Google Play	POSITIVE	0.9998549222946168	Other
1368	1	Error free, user friendly best app🙏	4	2024-09-14	Google Play	POSITIVE	0.8171703815460205	User Interface;Reliability
1369	1	As	5	2024-09-13	Google Play	POSITIVE	0.8932051062583923	Other
1370	1	Mameameni	5	2024-09-12	Google Play	POSITIVE	0.884626030921936	Other
1371	1	I really like this app as it is being updated from time to time and includes multiple payment options. In particular, giving a receipt makes it even more preferable. However, when it is refreshed, it does not show the history of credit and deposit in order and, I am of the opinion that it is better if the recent history is fixed respectively according to the transaction date in the future because there is a problem of confusion.	3	2024-09-12	Google Play	NEGATIVE	0.958642601966858	Transaction Performance
1372	1	G ghost	5	2024-09-12	Google Play	NEGATIVE	0.9145143628120422	Other
1373	1	This application is very nice mobile banking agent and various transactions can be used download and use	4	2024-09-12	Google Play	POSITIVE	0.998009979724884	Transaction Performance
1374	1	Way to go!	5	2024-09-12	Google Play	POSITIVE	0.9997908473014832	Other
1375	1	If there was a lesser rating I'd have given it to this app! What's with all this service charges? With the amount they're charging for everything I'm afraid we'll be paying to even look in their direction.	1	2024-09-12	Google Play	NEGATIVE	0.9993182420730592	Other
1376	1	I hate apps and all management of cbe	1	2024-09-12	Google Play	NEGATIVE	0.9994792342185974	Other
1377	1	its ok	5	2024-09-11	Google Play	POSITIVE	0.99971204996109	Other
1378	1	The fast and easy to use app there is nothing to deny aboutt that... but it has a serious issue on showing transaction history like if i send or receive money i ll find the transaction history after a day. When the sms message is not working at some days the issue get worse like we dont have an idea how much money we have received. I dont this this issue is hard to fix for you hope you will fix it on the next update....the app deserve 4stars tbh but i just want you to see this seriously thankyou	1	2024-09-11	Google Play	POSITIVE	0.981439769268036	Transaction Performance
1379	1	Updet every time	5	2024-09-11	Google Play	NEGATIVE	0.9724060893058776	Other
1380	1	When I enter values in the Amount and Remark fields and click the Continue button, I encounter an error. However, the transaction still deducts the specified amount. It is essential to test this error handling functionality.	4	2024-09-11	Google Play	NEGATIVE	0.9891904592514038	Transaction Performance;Reliability
1381	1	Tilahun Getachew	5	2024-09-11	Google Play	NEUTRAL	0.5	Other
1382	1	backward banking app	2	2024-09-11	Google Play	NEGATIVE	0.9975273013114928	Other
1383	1	What a trash app! Trash! Trash! Trash! Whenever you want to use the app after once you uninstall it, or receive it from someone else, it will ask you for a new verification. Again, after you clear the cache and data, you will be required to ask a verification code from the nearby bank physically too! What a shame! Never use this app! Your account pass code is unsecure in this app. STOP using this app! I Do!	1	2024-09-10	Google Play	NEGATIVE	0.9997019171714784	User Interface
1384	1	Satisfactory	5	2024-09-10	Google Play	POSITIVE	0.9998334646224976	Other
1385	1	Not working out of Ethiopia this week mine is	1	2024-09-10	Google Play	NEGATIVE	0.9959843158721924	Other
1386	1	Easy and safe to use	3	2024-09-10	Google Play	POSITIVE	0.9997230172157288	Other
1387	1	I was looking for this application and finally succeeded. It's wonderful application to receive and send money with the speed of light. Thank you so much CBE. I wish you all CBE staffs happy new year. May this year be the year of peace and prosperity for all and everyone. HAPPY ETHIOPIAN NEW YEAR!!! #2017 E.C.🐦	5	2024-09-09	Google Play	POSITIVE	0.9998201727867126	Other
1388	1	this app is very good app	5	2024-09-09	Google Play	POSITIVE	0.9998575448989868	Other
1389	1	The app only shows 25 transaction. The most frustrating it ever. Other banks gives you months of transactions ans statement. What a joke	1	2024-09-09	Google Play	NEGATIVE	0.9985112547874452	Transaction Performance
1390	1	it's not best like abyssinya mobile bank. This not show the transaction and didn't get notification , SMS text.	3	2024-09-09	Google Play	NEGATIVE	0.9980388283729552	Transaction Performance
1391	1	Easy to use and private.	5	2024-09-09	Google Play	POSITIVE	0.9988442659378052	Other
1392	1	አዋሽ	1	2024-09-08	Google Play	NEGATIVE	0.697056770324707	Other
1393	1	please fix the recent transaction page, it's not showing recent transactions	4	2024-09-08	Google Play	NEGATIVE	0.9994070529937744	Transaction Performance
1394	1	Wow 👌 great 👍	5	2024-09-08	Google Play	POSITIVE	0.999698281288147	Other
1395	1	Why can't we transfer funds directly to another's person telebirr wallet	5	2024-09-08	Google Play	NEGATIVE	0.9988688826560974	Transaction Performance
1396	1	this app is so smart	5	2024-09-08	Google Play	POSITIVE	0.999835729598999	Other
1397	1	Wowe	5	2024-09-07	Google Play	POSITIVE	0.9986492991447448	Other
1398	1	Our best app	5	2024-09-07	Google Play	POSITIVE	0.999811351299286	Other
1399	1	It is a good app overall but you need to improve some features like the recent transactions section which doesn't accurately show recent transactions.	3	2024-09-07	Google Play	NEGATIVE	0.9921080470085144	Transaction Performance
1400	1	It need some listed improvements below. 1. Try to desplay at lst one month transaction 2. Try to solve weekend transaction display error 3. "Failed" message after few processing	3	2024-09-07	Google Play	NEGATIVE	0.9996285438537598	Transaction Performance;Reliability
1401	1	Very easy and interesting	5	2024-09-07	Google Play	POSITIVE	0.999858260154724	Other
1402	1	It's the worst! I just transfer from my cbe account in to my tele birr account for urgent case but unfortunately it holds. And there customer service workers told me it will be returned in to my cbe account after 3 or 5 working days if its not credited in to my telebirr account. How's that working? This bank is a pioneer in from the country. It's really annoying this happens for second time. Please amend your network services. Am totally annoyed by cbe.	1	2024-09-07	Google Play	NEGATIVE	0.9997766613960266	Transaction Performance;Customer Support
1403	1	🄾7🄰.	4	2024-09-07	Google Play	NEGATIVE	0.6269724369049072	Other
1404	1	I loved digital bankink(Internet banking of CBE)	5	2024-09-07	Google Play	POSITIVE	0.9964009523391724	Other
1405	1	Ilike it	5	2024-09-07	Google Play	POSITIVE	0.9974337220191956	Other
1406	1	Good application to use especially it helps me while I buy and sell goods. Thanks	1	2024-09-07	Google Play	POSITIVE	0.9997839331626892	Customer Support
1407	1	It is very friendly and easy to use.	5	2024-09-06	Google Play	POSITIVE	0.9998342990875244	Other
1408	1	Transaction problems 😔	1	2024-09-06	Google Play	NEGATIVE	0.9987001419067384	Transaction Performance
1409	1	User friendly application.	5	2024-09-06	Google Play	POSITIVE	0.9871475100517272	User Interface
1410	1	vgood	5	2024-09-05	Google Play	POSITIVE	0.945227324962616	Other
1411	1	I have never such a disgusting app in my life , i swear it doesn't even work properly	1	2024-09-05	Google Play	NEGATIVE	0.9997758269309998	Other
1412	1	Wow app	5	2024-09-05	Google Play	POSITIVE	0.9995105266571044	Other
1413	1	Obsaa.Abdallaa	1	2024-09-05	Google Play	NEGATIVE	0.9927104711532592	Other
1414	1	Very good app but why all the theme is just Islamic?	5	2024-09-04	Google Play	NEGATIVE	0.9613928198814392	Other
1415	1	It donsnt show the new amount after there is a deposit	3	2024-09-04	Google Play	NEGATIVE	0.9781150221824646	Other
1416	1	i use this application many time it works perfectly 10Q	5	2024-09-04	Google Play	POSITIVE	0.9848166108131408	Other
1417	1	The CBE mobile banking app is a time-saver, but it needs several improvements, like adding fingerprint authentication. It's risky when people see me entering my PIN. Additionally, the fees are unreasonable. You could learn from Tele Birr, which adjusts fees based on the transaction amount. However, the CBEMB app charges a flat 10 birr fee for amounts between 5 and 1000 birr, which I think is unfair.	2	2024-09-04	Google Play	NEGATIVE	0.9991649389266968	Account Access Issues;Transaction Performance
1418	1	Nice to meet you my bank	5	2024-09-03	Google Play	POSITIVE	0.9996019005775452	Other
1419	1	Fast service and reliable it works from everywhere across the globe love it	5	2024-09-03	Google Play	POSITIVE	0.9998664855957032	Other
1420	1	Very convenient and easy to use	4	2024-09-03	Google Play	POSITIVE	0.999509572982788	Other
1421	1	I used to mobile bsnking	5	2024-09-03	Google Play	NEGATIVE	0.9900145530700684	Other
1422	1	It is very comfortable!	5	2024-09-02	Google Play	POSITIVE	0.9998623132705688	Other
1423	1	It is the best app I like it	4	2024-09-02	Google Play	POSITIVE	0.9998462200164796	Other
1424	1	Good at all	5	2024-09-02	Google Play	POSITIVE	0.9998443126678468	Other
1425	1	The app doesn't have 1. mini statement service In my opinion, I don't have to go to cbe branch to get mini statements and transactions I have done and pay for it.why? 2. Recent transaction The app doesn't store numerous or enough recent transactions, even it doesn't store what stored properly sometimes.	1	2024-09-02	Google Play	NEGATIVE	0.9952440857887268	Transaction Performance
1426	1	Bulchaa ibsa	5	2024-09-01	Google Play	NEGATIVE	0.9950087070465088	Other
1427	1	It's Great App 💪🏼wow which i like it z most👌🏼 but please add biometric authentication	5	2024-09-01	Google Play	POSITIVE	0.9944749474525452	Account Access Issues
1428	1	I can't describe enough how helpful it was. It's best version than ever mobile banking services.	1	2024-09-01	Google Play	POSITIVE	0.9991114735603333	Customer Support
1429	1	SUBSCRAIB	3	2024-09-01	Google Play	NEGATIVE	0.9408435225486756	Other
1430	1	Thank you, everyone	5	2024-08-31	Google Play	POSITIVE	0.9998548030853271	Other
1431	1	Mabratu	5	2024-08-31	Google Play	NEUTRAL	0.5	Other
1432	1	ሀውልቱ ታረቀኝ	1	2024-08-30	Google Play	NEGATIVE	0.7850590348243713	Other
1433	1	It says you are debited 20birr but it transfers another 10 birr with it I don't understand if it's under their rules	1	2024-08-29	Google Play	NEGATIVE	0.9959338307380676	Transaction Performance
1434	1	This is the best transaction app	5	2024-08-29	Google Play	POSITIVE	0.999640941619873	Transaction Performance
1435	1	በጣም ጥሩ ነው እናመሰግናለይ ኑራችን ቀላል ስለዳረገቹልን	5	2024-08-29	Google Play	NEGATIVE	0.9200406670570374	Other
1436	1	It functions to the most part until you need it. The most common flaw is when you send money to another bank account. It shows error but the money is actually gone. I paid twice at least 4 times because of this.	2	2024-08-29	Google Play	NEGATIVE	0.998916745185852	Reliability
1437	1	Good appl	5	2024-08-29	Google Play	POSITIVE	0.9998406171798706	Other
1438	1	Best mobile banking application,it makes it easy for any of my financial transactions	5	2024-08-28	Google Play	POSITIVE	0.9991186261177064	Transaction Performance
1439	1	This app is update not yet	5	2024-08-28	Google Play	NEGATIVE	0.9962039589881896	Other
1440	1	ይመቻችሁ	5	2024-08-28	Google Play	NEGATIVE	0.697056770324707	Other
1441	1	CBE birr app	5	2024-08-28	Google Play	POSITIVE	0.661762535572052	Other
1442	1	መጣም በጣም ተመችቶኛል በተላይ ነፃ ብድር ቢኖረው	5	2024-08-28	Google Play	NEGATIVE	0.9200406670570374	Other
1443	1	It's a best application to exchange our money in a best speed and time saving way	1	2024-08-27	Google Play	POSITIVE	0.9994996786117554	Other
1444	1	Ibrahim mahamed	5	2024-08-27	Google Play	POSITIVE	0.979892075061798	Other
1445	1	Hedduu bareda	5	2024-08-27	Google Play	NEGATIVE	0.9729205965995787	Other
1446	1	How can I link with my CBEbirr wallet.	5	2024-08-27	Google Play	NEGATIVE	0.995787799358368	Other
1447	1	Exchange rate is not applicable or not functional,what is the reason ?	5	2024-08-27	Google Play	NEGATIVE	0.9997877478599548	Other
1448	1	I used for more than two years although needs improvements...	5	2024-08-27	Google Play	NEGATIVE	0.9883418679237366	Other
1449	1	1 year	5	2024-08-27	Google Play	POSITIVE	0.976816713809967	Other
1450	1	Still needs development on several features.... For example - bank statements available online. The text feature of available balance and debited/credited notifications is very old school and involves too much digital trail. App doesn't always work, could be due to network issues in Ethiopia though. Another major issue is an error message is displayed when transferring from CBE to other banks. Ive almost lost a few thousands doing this once. Always cross check your balances.	1	2024-08-27	Google Play	NEGATIVE	0.9995390176773072	Transaction Performance;Reliability
1451	1	Good service at Baburehama branch	5	2024-08-27	Google Play	POSITIVE	0.9995009899139404	Other
1452	1	First and best Online banking in Ethiopia	5	2024-08-26	Google Play	POSITIVE	0.9997549653053284	Other
1453	1	Best application! You have to upgrade additional services like help to withdraw card less amount from ATM machine.	5	2024-08-26	Google Play	POSITIVE	0.9225341081619264	Customer Support
1454	1	ስማርት አፕፕስ!!!	5	2024-08-25	Google Play	POSITIVE	0.98277747631073	Other
1455	1	It is best easy to use fast and trustworthy	5	2024-08-25	Google Play	POSITIVE	0.980881929397583	Other
1456	1	Some transaction is not going to be processed accordingly. Which going to take 3-5days which is not completely right. since this bank has mass of customers. However, It should be considered as the money can be needed for emergency purposes.	2	2024-08-25	Google Play	NEGATIVE	0.9985381364822388	Transaction Performance
1457	1	The Best Mobile Banking App In Ethiopia	5	2024-08-25	Google Play	POSITIVE	0.9997679591178894	Other
1458	1	This app has several issues based on my experience. Below are the problems that I encountered: 1. The app frequently crashes. 2. It only shows a limited transaction record history (25 transactions). 3. You can't access the transaction records after 8:00 pm and on Sundays. 4. It displays a "payment failed" message. It would be greatly appreciated if you could address these issues	1	2024-08-25	Google Play	NEGATIVE	0.9991637468338012	Account Access Issues;Transaction Performance;Reliability
1459	1	Verey excellent	1	2024-08-24	Google Play	POSITIVE	0.9998279809951782	Other
1460	1	Afgkk	5	2024-08-24	Google Play	NEGATIVE	0.911948561668396	Other
1461	1	it is not well functional. It always sluggish and poor application.	1	2024-08-24	Google Play	NEGATIVE	0.9998244643211364	Other
1462	1	በጣም ምቹና ቀልጣፋ አፓ ነው	5	2024-08-23	Google Play	NEGATIVE	0.8832130432128906	Other
1463	1	A useless application that doesn't work.	1	2024-08-23	Google Play	NEGATIVE	0.999817192554474	Other
1464	1	Can not synchronize	1	2024-08-22	Google Play	NEGATIVE	0.9997753500938416	Other
1465	1	Amazing,fast andvaluable application for 🇪🇹 citizens	5	2024-08-21	Google Play	POSITIVE	0.9998495578765868	Other
1466	1	It's very suitable app for using	5	2024-08-21	Google Play	POSITIVE	0.9992914199829102	User Interface
1467	1	😍😍	5	2024-08-21	Google Play	NEGATIVE	0.697056770324707	Other
1468	1	App needs lots of updates to accomodate more demographic for Ethiopians leaving overseas. - Ability to use user name and password to use the application. People leaving over seas if they lose their phone, they can't have access to the application again unless u got to Ethiopia and activated it on the new phone! That's rediocoulus. - This application seems like it's a transfer application, not a bank application. I should be able to do more things such as viewing bank statements and more....	3	2024-08-21	Google Play	NEGATIVE	0.9988054037094116	Account Access Issues;Transaction Performance
1469	1	Some time network problems	5	2024-08-21	Google Play	NEGATIVE	0.9987394213676452	Other
1470	1	Government Bank	1	2024-08-21	Google Play	POSITIVE	0.7156456708908081	Other
1471	1	It is help full ilike it	5	2024-08-20	Google Play	POSITIVE	0.9967149496078492	Customer Support
1472	1	Helpful app	5	2024-08-20	Google Play	POSITIVE	0.9995542168617249	Customer Support
1473	1	Why don't work	5	2024-08-20	Google Play	NEGATIVE	0.9993895292282104	Other
1474	1	Absolutely terrible App	1	2024-08-19	Google Play	NEGATIVE	0.998920202255249	Other
1475	1	Love	5	2024-08-18	Google Play	POSITIVE	0.9998735189437866	Other
1476	1	From all commercial banks in Ethiopia this app is very easy to use and the fastest one From other banks Mobile banking app.	4	2024-08-18	Google Play	POSITIVE	0.998766541481018	Other
1477	1	Recently I have been struggling accessing Cbe app with safaricom network... why???	4	2024-08-18	Google Play	NEGATIVE	0.9993330836296082	Account Access Issues
1478	1	it's better	5	2024-08-18	Google Play	POSITIVE	0.9996365308761596	Other
1479	1	It is good application	3	2024-08-17	Google Play	POSITIVE	0.9998681545257568	Other
1480	1	Banking	5	2024-08-17	Google Play	POSITIVE	0.9922246932983398	Other
1481	1	Wow good	5	2024-08-17	Google Play	POSITIVE	0.9998598098754884	Other
1482	1	No proper transaction is being recorded or presented on your the UI, the main features of the app is not working properly yet they have so many service in the app	1	2024-08-17	Google Play	NEGATIVE	0.999594509601593	Transaction Performance;User Interface
1483	1	በጣም አሪፍ እና ለአጠቃቀም ቀላል ነው	4	2024-08-17	Google Play	NEGATIVE	0.904695212841034	Other
1484	1	mirx appk	5	2024-08-16	Google Play	NEGATIVE	0.9473889470100404	Other
1485	1	There is no option even to check your transactions. And is not users friendly.	2	2024-08-16	Google Play	NEGATIVE	0.9997125267982484	Transaction Performance
1486	1	DANTRO BAND	5	2024-08-16	Google Play	POSITIVE	0.8824521899223328	Other
1487	1	Fuad Abduraman	5	2024-08-15	Google Play	POSITIVE	0.8245093822479248	Other
1488	1	Thanks to the number of branches. Mobile banking is not very satisfactory.	1	2024-08-14	Google Play	NEGATIVE	0.999679446220398	Other
1489	1	መቼም ይሻላል 889ከመዛግ በርቱ	5	2024-08-14	Google Play	NEGATIVE	0.8616330027580261	Other
1490	1	Mot	5	2024-08-14	Google Play	NEGATIVE	0.989713191986084	Other
1491	1	it is not good it's like eka eka chewata	1	2024-08-14	Google Play	NEGATIVE	0.9997758269309998	Other
1492	1	Increadable app	5	2024-08-13	Google Play	NEGATIVE	0.9284149408340454	Other
1493	1	I like it this app	5	2024-08-13	Google Play	POSITIVE	0.9997456669807434	Other
1494	1	You're genuine	1	2024-08-13	Google Play	POSITIVE	0.9998776912689208	User Interface
1495	1	It is good and best app	5	2024-08-13	Google Play	POSITIVE	0.9998743534088136	Other
1496	1	Aftamuu	5	2024-08-13	Google Play	NEGATIVE	0.8501523733139038	Other
1497	1	Good aps 4ever,	5	2024-08-13	Google Play	POSITIVE	0.9998329877853394	Other
1498	1	To Day not working why	2	2024-08-12	Google Play	NEGATIVE	0.9997081160545348	Other
1499	1	ለምንድነው ብር ከተላላክን በኋላ Transaction history የማያሳየን ?	1	2024-08-11	Google Play	NEGATIVE	0.9707485437393188	Transaction Performance
1500	1	Ooo best app	5	2024-08-11	Google Play	POSITIVE	0.9993171691894532	Other
1501	1	Very fast and simple transfer app	5	2024-08-11	Google Play	POSITIVE	0.9953054785728456	Transaction Performance
1502	1	its nice	5	2024-08-10	Google Play	POSITIVE	0.999854326248169	Other
1503	1	Links	5	2024-08-10	Google Play	POSITIVE	0.9985822439193726	Other
1504	1	The app only work on working hour from 8 am-5pm it dont work at night or early in the morning, why do we need it then...try to fix it.	1	2024-08-10	Google Play	NEGATIVE	0.9990537762641908	Other
1505	1	ITS So easy and fast ✔✔✔✔✔✔✔	5	2024-08-10	Google Play	POSITIVE	0.9967468976974488	Other
1506	1	The app is simple, fast, and convenient to use.	4	2024-08-10	Google Play	POSITIVE	0.9986982345581056	Other
1507	1	Simple and well built	5	2024-08-10	Google Play	POSITIVE	0.9998555183410645	User Interface
1508	1	Cool	5	2024-08-10	Google Play	POSITIVE	0.9998509883880616	Other
1509	1	I can't change my pin.😢	4	2024-08-10	Google Play	NEGATIVE	0.993002474308014	Other
1510	1	My account number All contact	5	2024-08-09	Google Play	NEUTRAL	0.5	Other
1511	1	Best up i love it	5	2024-08-09	Google Play	POSITIVE	0.9998667240142822	Other
1512	1	Yes. Ok	5	2024-08-09	Google Play	POSITIVE	0.9998229146003724	Other
1513	1	Very nice and attractive application	5	2024-08-09	Google Play	POSITIVE	0.9998766183853148	Other
1514	1	Connection	5	2024-08-09	Google Play	POSITIVE	0.9996715784072876	Other
1515	1	Great app,	5	2024-08-09	Google Play	POSITIVE	0.9998249411582948	Other
1516	1	It's game changer application	5	2024-08-09	Google Play	NEUTRAL	0.5	Other
1517	1	This has so many bugs and doesn't update transaction logs in time, to make it worse it shows error message when you send money but deducts from account at same time but never lets you know that the transaction was successful. And it has very annoying greeting notification.	2	2024-08-09	Google Play	NEGATIVE	0.9983898401260376	Transaction Performance;Reliability
1518	1	So simple to use and Easier than even MB	5	2024-08-09	Google Play	POSITIVE	0.9946452379226683	Other
1519	1	Best app i really like it	5	2024-08-09	Google Play	POSITIVE	0.9997912049293518	Other
1520	1	Wow Nice App	5	2024-08-09	Google Play	POSITIVE	0.9998327493667604	Other
1521	1	Wow absolutely best app	5	2024-08-09	Google Play	POSITIVE	0.9998412132263184	Other
1522	1	Not wotking properly & shows payment failed but already sent z found . this is so bad for country bank app😂	1	2024-08-08	Google Play	NEGATIVE	0.999745547771454	Transaction Performance
1523	1	በጣም አስደሳች ነው ግን transfer to own Tellbire የሚለው ላይ transfer ot other Tellbire የሚል ቢጨመር	5	2024-08-08	Google Play	NEGATIVE	0.9919689297676086	Transaction Performance
1524	1	Best mobile app ever	5	2024-08-08	Google Play	POSITIVE	0.9997805953025818	Other
1525	1	very very best	5	2024-08-08	Google Play	POSITIVE	0.9998433589935304	Other
1526	1	That's is really good 👍 I like CBE	5	2024-08-08	Google Play	POSITIVE	0.9998655319213868	Other
1527	1	Ok 99%	4	2024-08-07	Google Play	POSITIVE	0.999807059764862	Other
1528	1	አንደኛ ነው ፈጣን ምቹ ቀላል ሳልነካው አልውልም #1ኛነው	5	2024-08-07	Google Play	NEGATIVE	0.959093987941742	Other
1529	1	Fahti Kamaal	1	2024-08-07	Google Play	NEGATIVE	0.8807880878448486	Other
1530	1	compaatble cbe	5	2024-08-07	Google Play	POSITIVE	0.9802691340446472	Other
1531	1	Very poor and very disgusting	1	2024-08-06	Google Play	NEGATIVE	0.9997865557670592	Other
1532	1	goodgoodgood	5	2024-08-06	Google Play	POSITIVE	0.9996237754821776	Other
1533	1	Ok Bankii daladalaa Itoophayaa Anii noor mobile banking barbadaa	3	2024-08-06	Google Play	NEGATIVE	0.9832399487495422	Other
1534	1	ለአጠቃቀም ቀላል የሆነ አሪፍ አፕ ነዉ።	5	2024-08-06	Google Play	NEGATIVE	0.9200406670570374	Other
1535	1	Best app for using and time saving	5	2024-08-06	Google Play	POSITIVE	0.9981324076652528	Other
1536	1	So very important app very useful.	5	2024-08-06	Google Play	POSITIVE	0.998357355594635	Other
1537	1	Nba	5	2024-08-05	Google Play	POSITIVE	0.9602436423301696	Other
1538	1	Nice app but became inactive after being zippad &released ,plse solve such silly problem	5	2024-08-05	Google Play	NEGATIVE	0.9962028861045836	Other
1539	1	Always says can't synchronize, while I have active internet access	1	2024-08-05	Google Play	NEGATIVE	0.9983568787574768	Account Access Issues
1540	1	This app is exceptionally fantastic!! Keep updating it!!	5	2024-08-05	Google Play	POSITIVE	0.9998620748519896	Other
1541	1	It is my choice	5	2024-08-05	Google Play	POSITIVE	0.999537229537964	Other
1542	1	Download our app:	5	2024-08-04	Google Play	POSITIVE	0.7935187220573425	Other
1543	1	my mobile banking account app blocked please open Borana Zone yabello	5	2024-08-04	Google Play	NEGATIVE	0.994955837726593	Other
1544	1	Good app but it not allowed me to link my ac with walet	4	2024-08-03	Google Play	NEGATIVE	0.9182761907577516	Other
1545	1	This app is smart and simple to use.	5	2024-08-03	Google Play	POSITIVE	0.9998026490211488	Other
1546	1	Dobuony bandak jock	5	2024-08-03	Google Play	NEGATIVE	0.9906285405158995	Other
1547	1	its very fast and active app	1	2024-08-03	Google Play	POSITIVE	0.9986039996147156	Other
1548	1	amezing app!!	3	2024-08-03	Google Play	POSITIVE	0.9965015649795532	Other
1549	1	it was good but it has some error by connection......	5	2024-08-02	Google Play	NEGATIVE	0.9972915053367616	Reliability
1550	1	Ow 🤞🤞🤞 cbe app mobanking	4	2024-08-02	Google Play	NEGATIVE	0.9880784153938292	Other
1551	1	Very nice application please add additional language commercial bank of Ethiopia back bone of Ethiopian economy	5	2024-08-02	Google Play	POSITIVE	0.998902440071106	Other
1552	1	It is really nice application helped me a lot.	5	2024-08-02	Google Play	POSITIVE	0.9997137188911438	Customer Support
1553	1	I have one year experience.	5	2024-08-02	Google Play	NEUTRAL	0.5	Other
1554	1	Easy to use and also fast	5	2024-08-01	Google Play	POSITIVE	0.9995656609535216	Other
1555	1	All those service interruptions... , When you update it stops working and to start using an new appliance you need to go to the bank to activate it... uff...	1	2024-08-01	Google Play	NEGATIVE	0.999444305896759	Other
1556	1	Remla tem	5	2024-08-01	Google Play	NEGATIVE	0.9539595246315002	Other
1557	1	Good work	5	2024-08-01	Google Play	POSITIVE	0.999841332435608	Other
1558	1	Revolutionized ethiopian banking industry to another level I was amazed how it made contact my family easily	5	2024-08-01	Google Play	POSITIVE	0.9992693066596984	Other
1559	1	It's not appropriate for Play store	1	2024-08-01	Google Play	NEGATIVE	0.9997872710227966	Other
1560	1	Fast and easy but there is delayance in refreshing	5	2024-08-01	Google Play	POSITIVE	0.998716115951538	Other
1561	1	Not opening the account, very late	2	2024-08-01	Google Play	NEGATIVE	0.9996329545974731	Other
1562	1	Poor app please upgrade it Example add transfering to telebirr agent	1	2024-08-01	Google Play	NEGATIVE	0.9996113181114196	Transaction Performance
1563	1	Why not access in galaxy s7 edge??	5	2024-07-31	Google Play	NEGATIVE	0.9992682337760924	Account Access Issues
1564	1	Hamza kamal and	3	2024-07-31	Google Play	POSITIVE	0.9643779397010804	Other
1565	1	❤❤❤❤❤	5	2024-07-30	Google Play	NEGATIVE	0.697056770324707	Other
1566	1	why dont u referesh ???	5	2024-07-30	Google Play	NEGATIVE	0.9975547194480896	Other
1567	1	Commercial bankof ETheiopia	5	2024-07-29	Google Play	NEGATIVE	0.9657658338546752	Other
1568	1	Nice app and always use.	5	2024-07-29	Google Play	POSITIVE	0.9997918009757996	Other
1569	1	Great mobile banking app	5	2024-07-29	Google Play	POSITIVE	0.9996071457862854	Other
1570	1	Usless	1	2024-07-28	Google Play	NEGATIVE	0.9949766397476196	Other
1571	1	appu በጣም ቀላል ላጠቃቀም ምቹ ሆኖ አጊቼዋለው እንደአስተያየት ሚስጥር ቁጥር ስናስገባ 4 digit ያለው ቁጥር ነው ምናስገባው በተጨማሪ በአሻራ እና በ ፌስ ስካን በማድረግ ብትጨምሩ	5	2024-07-28	Google Play	NEGATIVE	0.9553381204605104	Other
1572	1	Nays	5	2024-07-28	Google Play	NEGATIVE	0.9894010424613952	Other
1573	1	Wow best	5	2024-07-28	Google Play	POSITIVE	0.9998389482498168	Other
1574	1	Very nice but network plm	5	2024-07-28	Google Play	POSITIVE	0.7899110317230225	Other
1575	1	Very very limited service	3	2024-07-28	Google Play	NEGATIVE	0.999560296535492	Other
1576	1	Make it like telebirr, internet service fee free	3	2024-07-28	Google Play	POSITIVE	0.8337737917900085	Other
1577	1	Thank very much	5	2024-07-28	Google Play	POSITIVE	0.9998160004615784	Other
1578	1	Cbe mobile banking is very active. Thank you!	5	2024-07-27	Google Play	POSITIVE	0.9998363256454468	Other
1579	1	Subscription	5	2024-07-27	Google Play	POSITIVE	0.9259043335914612	Other
1580	1	ምርጥ አፕልኬሽን ጊዜንም ገንዘብም የሚቆጥብ	5	2024-07-27	Google Play	NEGATIVE	0.8832130432128906	Other
1581	1	Very simple and fast	5	2024-07-27	Google Play	POSITIVE	0.9997982382774352	Other
1582	1	Its the bast application in my country	5	2024-07-27	Google Play	POSITIVE	0.9994379878044128	Other
1583	1	awonderful app	5	2024-07-27	Google Play	NEGATIVE	0.9943115711212158	Other
1584	1	Right choice.	5	2024-07-27	Google Play	POSITIVE	0.9998522996902466	Other
1585	1	V good	5	2024-07-27	Google Play	POSITIVE	0.9984826445579528	Other
1586	1	የመተግበሪያው የይለፍ ቃል በተጨማሪ የጣት አሻራ ቢኖረው።	4	2024-07-26	Google Play	NEGATIVE	0.9239576458930968	Other
1587	1	A+	5	2024-07-26	Google Play	POSITIVE	0.999232053756714	Other
1588	1	በጣም ጠቃም	5	2024-07-26	Google Play	NEGATIVE	0.7850590348243713	Other
1589	1	its a disaster really	1	2024-07-26	Google Play	NEGATIVE	0.9998002648353576	Other
1590	1	Xilaun tadel	5	2024-07-25	Google Play	POSITIVE	0.967315435409546	Other
1591	1	Cool cool	5	2024-07-25	Google Play	POSITIVE	0.9998539686203004	Other
1592	1	Exceptional	5	2024-07-25	Google Play	POSITIVE	0.9998514652252196	Other
1593	1	It is not fast	1	2024-07-25	Google Play	NEGATIVE	0.99720698595047	Other
1594	1	Good application and Best for use	5	2024-07-25	Google Play	POSITIVE	0.9998144507408142	Other
1595	1	Tanks have	5	2024-07-25	Google Play	NEGATIVE	0.9952101111412048	Other
1596	1	Nice app considering what is out in the market in Ethiopian banking it can be better regarding no. Of recent transaction to display	5	2024-07-24	Google Play	POSITIVE	0.9633949995040894	Transaction Performance
1597	1	Super !	5	2024-07-23	Google Play	POSITIVE	0.9995549321174622	Other
1598	1	No safaricom network	1	2024-07-23	Google Play	NEGATIVE	0.998711109161377	Other
1599	1	like Commercial Bank Ethiopia	5	2024-07-23	Google Play	POSITIVE	0.8521141409873962	Other
1600	1	its not working properly boring app ever	1	2024-07-23	Google Play	NEGATIVE	0.9997456669807434	Other
1601	1	GREAT	5	2024-07-23	Google Play	POSITIVE	0.9998630285263062	Other
1602	1	በጣም አሪፍ ሁሌ የሚተማመኑበት ባንክ ነው	5	2024-07-23	Google Play	NEGATIVE	0.904695212841034	Other
1603	1	It's fast and secure	5	2024-07-22	Google Play	POSITIVE	0.9998146891593932	Other
1604	1	Muluken mekonen abrbe	5	2024-07-22	Google Play	NEGATIVE	0.9372318983078004	Other
1605	1	👌	5	2024-07-22	Google Play	NEGATIVE	0.697056770324707	Other
1606	1	Jafer Ahmed umer	5	2024-07-22	Google Play	POSITIVE	0.7615377306938171	Other
1607	1	Very fast and efficient application.	5	2024-07-22	Google Play	POSITIVE	0.9998385906219482	Other
1608	1	it's good work	5	2024-07-21	Google Play	POSITIVE	0.999847173690796	Other
1609	1	This is very helpfull app. It workes for me even whil i am abroud. Good job CBE !!!	5	2024-07-21	Google Play	POSITIVE	0.9984155893325806	Customer Support
1610	1	ገቢ እና ወጪን ይዘላል.. አስተካክሉት	2	2024-07-21	Google Play	NEGATIVE	0.9230993390083312	Other
1611	1	Please protect my security and protect my rewards because some body tries hack me!!	5	2024-07-20	Google Play	NEGATIVE	0.9908030033111572	Other
1612	1	I liked it	5	2024-07-20	Google Play	POSITIVE	0.9998264908790588	Other
1613	1	good good	5	2024-07-20	Google Play	POSITIVE	0.9998282194137572	Other
1614	1	I like this apps	5	2024-07-19	Google Play	POSITIVE	0.9996740818023682	Other
1615	1	It was verified and important apps but some customer service officer did know how to verifying	5	2024-07-19	Google Play	POSITIVE	0.6079235076904297	Customer Support
1616	1	I have not seen anything like it in the Ethiopian banking industry. It is very easy to use, fast, and offers a wide range of services. However, I would like to suggest a future modification: currently, the app only displays transactions for one month. It would be beneficial if it could show transactions for more than one month, including yearly transactions. Please consider this request. Thank you, Commercial Bank of Ethiopia, for this innovative app.	5	2024-07-19	Google Play	POSITIVE	0.9677925705909728	Transaction Performance
1617	1	ሀሪፍ	1	2024-07-19	Google Play	NEGATIVE	0.697056770324707	Other
2066	1	ጓግል	3	2024-03-21	Google Play	NEGATIVE	0.697056770324707	Other
1618	1	Why app don't work	5	2024-07-19	Google Play	NEGATIVE	0.9992460012435912	Other
1619	1	This app is very good. But, Sometimes it doesn't work properly by the problem of network.	4	2024-07-19	Google Play	NEGATIVE	0.996427834033966	Other
1620	1	Nb one	5	2024-07-19	Google Play	POSITIVE	0.945307433605194	Other
1621	1	It's Nice app ever!!!	5	2024-07-19	Google Play	POSITIVE	0.999811351299286	Other
1622	1	Bareeda Garuu maaliifi haqaadeema nagahee duraa	5	2024-07-19	Google Play	NEGATIVE	0.9940952062606812	Other
1623	1	I am Delighted to being the member of this leading Bank!	5	2024-07-18	Google Play	POSITIVE	0.9998785257339478	Other
1624	1	Maliif bakka jalqaba account bananne malee Hojiin egalchiisuun hin dandaamu?	5	2024-07-18	Google Play	NEGATIVE	0.991363286972046	Other
1625	1	No 1 banking application in Ethiopia	5	2024-07-17	Google Play	NEGATIVE	0.8776186108589172	Other
1626	1	Wenderfull I loved it so much!!!!!	5	2024-07-17	Google Play	POSITIVE	0.999843955039978	Other
1627	1	It's good app for me	1	2024-07-16	Google Play	POSITIVE	0.9998619556427002	Other
1628	1	Trustfull	5	2024-07-16	Google Play	POSITIVE	0.9998231530189514	Other
1629	1	💚💛💋🙏🙏🙏	5	2024-07-16	Google Play	NEGATIVE	0.697056770324707	Other
1630	1	Good service but need imrove mostly bcause some times no work	4	2024-07-16	Google Play	NEGATIVE	0.9407734870910645	Other
1631	1	ABDISA MOHAMMED I can get 4hf my friend how are you feeling I hope my friend is coming up with you tomorrow at the same place you can get it done before the election results I think we need to we can do it together my friend how are things going for my friend	1	2024-07-15	Google Play	POSITIVE	0.9898977279663086	Other
1632	1	Fuke	5	2024-07-15	Google Play	NEGATIVE	0.9990154504776	Other
1633	1	Very poor, not connect properly, deduct money with out report	1	2024-07-15	Google Play	NEGATIVE	0.999784290790558	Other
1634	1	Refek neser	5	2024-07-15	Google Play	POSITIVE	0.9620752334594728	Other
1635	1	Yesterday, system hackers have taken money out of my CBE account due to problems related with the CBE BIRR SMS and internet banking systems.You must further increase security of the system.I am willing to give further details if necessary. System hackers have unlocked the programning of cash transfer, I understood.	1	2024-07-15	Google Play	NEGATIVE	0.8956356048583984	Transaction Performance
1636	1	amisalesh banica	5	2024-07-15	Google Play	NEGATIVE	0.9772166013717652	Other
1637	1	It good.but there gambler's in using mobile banking I lose 5000birr.	5	2024-07-14	Google Play	NEGATIVE	0.9973481893539428	Other
1638	1	10 Q	5	2024-07-14	Google Play	POSITIVE	0.984188437461853	Other
1639	1	mal	5	2024-07-14	Google Play	NEGATIVE	0.9996137022972108	Other
1640	1	"get your verification code from your nearest branch" ia the first amazing dialogue your face, when you try to setup your CBE App. It is a way back system that requires you to go physically. You should have sent a verification codes either via phone number or email address. You better change this analogue system to the digital one! 😀	2	2024-07-13	Google Play	NEGATIVE	0.9945490956306458	User Interface
1641	1	unable to access my account in the US.	1	2024-07-13	Google Play	NEGATIVE	0.9997978806495668	Account Access Issues
1642	1	It is easy to use.	5	2024-07-13	Google Play	POSITIVE	0.999345362186432	Other
1643	1	Fast service	5	2024-07-13	Google Play	POSITIVE	0.9991244673728944	Other
1644	1	about inactive solutions want be!!!	1	2024-07-13	Google Play	NEGATIVE	0.995563268661499	Other
1645	1	አረ ወጪ ገቢዬን በስርአት አሳዪኝ 🙏🙏🙏 ሂሳቦች ብሎ የሚያመጣው የተዘበራረቀ	3	2024-07-12	Google Play	NEGATIVE	0.9366679191589355	Other
1646	1	Its easy and comfortable thanks	5	2024-07-12	Google Play	POSITIVE	0.9998701810836792	Other
1647	1	Excellent bank	5	2024-07-12	Google Play	POSITIVE	0.9998515844345092	Other
1648	1	it a great app and it really made ma day	5	2024-07-11	Google Play	POSITIVE	0.9997878670692444	Other
1649	1	Woow	5	2024-07-11	Google Play	NEGATIVE	0.980244517326355	Other
1650	1	Good jib	5	2024-07-11	Google Play	POSITIVE	0.9998526573181152	Other
1651	1	Awesome!!	5	2024-07-11	Google Play	POSITIVE	0.9998700618743896	Other
1652	1	its goid app	5	2024-07-11	Google Play	NEGATIVE	0.9347066283226012	Other
1653	1	Best application for transition	5	2024-07-11	Google Play	POSITIVE	0.9994475245475768	Other
1654	1	Mohamedahmed224mohamed ahmed	5	2024-07-10	Google Play	POSITIVE	0.8677033185958862	Other
1655	1	I like all service	1	2024-07-10	Google Play	POSITIVE	0.999650239944458	Other
1656	1	ከፒን ይልቅ በአሻራ እንዲከፈት ማረግ አለባቹሁ።	1	2024-07-10	Google Play	NEGATIVE	0.9200406670570374	Other
1657	1	Good app compared with other bank app	5	2024-07-10	Google Play	POSITIVE	0.9996248483657836	Other
1658	1	Proud to be CBE's Customer	5	2024-07-10	Google Play	POSITIVE	0.9998657703399658	Other
1659	1	Very interesting application and very useful .	5	2024-07-09	Google Play	POSITIVE	0.9998726844787598	Other
1660	1	Happy	2	2024-07-08	Google Play	POSITIVE	0.99987530708313	Other
1661	1	Too best to did	5	2024-07-08	Google Play	NEGATIVE	0.9743470549583436	Other
1662	1	Disaster	1	2024-07-08	Google Play	NEGATIVE	0.9997738003730774	Other
1663	1	Very good app, but why we don't see the statements?	4	2024-07-08	Google Play	NEUTRAL	0.5	Other
1664	1	Letebrhan leteberhan	5	2024-07-07	Google Play	NEGATIVE	0.9486523270606996	Other
1665	1	Good and comfortable	5	2024-07-07	Google Play	POSITIVE	0.9998598098754884	Other
1666	1	ሃሪፈ አብሌኬሺን ሰለሆነ ይጠቀሙ	5	2024-07-07	Google Play	NEGATIVE	0.8616330027580261	Other
1667	1	Very faster than ussd mode	5	2024-07-06	Google Play	POSITIVE	0.998830020427704	Other
1668	1	could not see balance and account to account t not working	3	2024-07-06	Google Play	NEGATIVE	0.9993937015533448	Other
1669	1	A life Time	2	2024-07-06	Google Play	POSITIVE	0.9988065958023072	Other
1670	1	It is stable and safe.	5	2024-07-06	Google Play	POSITIVE	0.9998321533203124	Other
1671	1	8838𝑒𝑎 935🄹🅄🆀😃😃😃😃፨፨፨፨ገ😃፨፧፨ቸዟዟዞ😂😂😂 😁😁🅿😀😅😁😁😁😁	2	2024-07-06	Google Play	NEGATIVE	0.9489793181419371	Other
1672	1	I don't agreed what you are doing on my account regarding of commission payment of this apk. bcz I'm paying for transfer to other so why commission pyt is necessary or tell us and we can go to other banks if your users more bigger than you think 🙄 Is it 5birr is balance pls diminish it	1	2024-07-05	Google Play	NEGATIVE	0.9994580149650574	Transaction Performance
1673	1	this is good app	5	2024-07-05	Google Play	POSITIVE	0.9998615980148317	Other
1674	1	It is really a great app.	5	2024-07-05	Google Play	POSITIVE	0.9998568296432496	Other
2819	1	So bad	1	2023-11-23	Google Play	NEGATIVE	0.999785840511322	Other
1675	1	Very stupid service bank	1	2024-07-05	Google Play	NEGATIVE	0.9997678399086	Other
1676	1	Splendid, fast and accurate service	5	2024-07-05	Google Play	POSITIVE	0.9998788833618164	Other
1677	1	the best one❤	5	2024-07-04	Google Play	POSITIVE	0.9998503923416138	Other
1678	1	Its very nice app	5	2024-07-04	Google Play	POSITIVE	0.9998563528060912	Other
1679	1	CBE The Ethiopian Nations Bank.	5	2024-07-04	Google Play	POSITIVE	0.9852976202964784	Other
1680	1	Perfect & good too work at	5	2024-07-03	Google Play	POSITIVE	0.999839186668396	Other
1681	1	Sometimes delayed	3	2024-07-03	Google Play	NEGATIVE	0.9903796911239624	Other
1682	1	Fast and user friendly app	5	2024-07-03	Google Play	POSITIVE	0.9990848302841188	User Interface
1683	1	Really great banking app	5	2024-07-03	Google Play	POSITIVE	0.9998076558113098	Other
1684	1	Politician	5	2024-07-02	Google Play	POSITIVE	0.9490410685539246	Other
1685	1	That is the trusted bank In Ethiopia 🇪🇹	5	2024-07-02	Google Play	POSITIVE	0.9976717829704284	Other
1686	1	absolute poor.	1	2024-07-02	Google Play	NEGATIVE	0.999793827533722	Other
1687	1	Very nice app i never seen such flexible	3	2024-07-02	Google Play	POSITIVE	0.9997349381446838	Other
1688	1	no network for today why	1	2024-07-02	Google Play	NEGATIVE	0.9994381070137024	Other
1689	1	Poor application. Let me list down if you could update the main features. It say error while the money has already sent. We can't get the transaction record (it has limited date) or somtimes the listed record transactions and the details are not the same while we enter to see further details. So if you can, try to see telebirr application and how much simple it is then try to update frequently.	1	2024-07-02	Google Play	NEGATIVE	0.9996870756149292	Transaction Performance;Reliability
1690	1	It's 💥💥👌	5	2024-07-02	Google Play	POSITIVE	0.912696897983551	Other
1691	1	Easy and fast to use this apps. Only you have to add to transfer others telebirr! Thanks CBE	5	2024-07-01	Google Play	POSITIVE	0.9942166805267334	Transaction Performance
1692	1	Easy to use and well functioning with limited Internet access. Fantastic app.	5	2024-07-01	Google Play	POSITIVE	0.9960766434669496	Account Access Issues
1693	1	CBE mobail Banking is very good.	5	2024-07-01	Google Play	POSITIVE	0.999852180480957	Other
1694	1	It is a good app	4	2024-07-01	Google Play	POSITIVE	0.9998643398284912	Other
1695	1	It's essentially for an easy life.	3	2024-07-01	Google Play	POSITIVE	0.9488911628723145	Other
1696	1	It's the best in Ethiopia	5	2024-06-30	Google Play	POSITIVE	0.9998635053634644	Other
1697	1	Good night	5	2024-06-30	Google Play	POSITIVE	0.999847412109375	Other
1698	1	Very good app & constant ever	5	2024-06-30	Google Play	POSITIVE	0.9998607635498048	Other
1699	1	The best one	5	2024-06-30	Google Play	POSITIVE	0.9998371601104736	Other
1700	1	The screen shot doesn't work.	2	2024-06-30	Google Play	NEGATIVE	0.9997966885566713	Other
1701	1	It is greatly helpful if upgraded to work offline like *889#.	5	2024-06-30	Google Play	POSITIVE	0.9902747869491576	Customer Support
1702	1	Ethiopia	5	2024-06-29	Google Play	POSITIVE	0.9780408143997192	Other
1703	1	i am tesfalegn	4	2024-06-29	Google Play	POSITIVE	0.7693724632263184	Other
1704	1	የማያጠቅም ባንክ👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎👎	1	2024-06-29	Google Play	NEGATIVE	0.7850590348243713	Other
1705	1	Taliilaa gutaa Dhugoo xiqii	5	2024-06-29	Google Play	NEGATIVE	0.9825242161750792	Other
1706	1	Wow amazing to this app	5	2024-06-28	Google Play	POSITIVE	0.9998506307601928	Other
1707	1	This is a scammer bank how could you guys take 53 bir for 20k transfer illegal!!! Not deserve 2 star even	1	2024-06-28	Google Play	NEGATIVE	0.9992114305496216	Transaction Performance
1708	1	Its good aplication make it easy my money transfer and make it more secure	5	2024-06-27	Google Play	POSITIVE	0.9979432225227356	Transaction Performance
1709	1	It is best, recommend you guys to use.	5	2024-06-27	Google Play	POSITIVE	0.9997081160545348	Other
1710	1	Woow its good app for All banking service	5	2024-06-27	Google Play	NEGATIVE	0.9928423166275024	Other
1711	1	700000 a	5	2024-06-26	Google Play	POSITIVE	0.9575414657592772	Other
1712	1	Muhammad Kadire Mahamad	5	2024-06-26	Google Play	POSITIVE	0.9473905563354492	Other
1713	1	I says thanks	1	2024-06-26	Google Play	POSITIVE	0.9998050332069396	Other
1714	1	Really satisfying app	5	2024-06-26	Google Play	POSITIVE	0.9998656511306764	Other
1715	1	The Best Mobile Banking App	5	2024-06-26	Google Play	POSITIVE	0.9998278617858888	Other
1716	1	The app is very nice to use but why you guys are cutting 10birr for each transaction to telebirr? Please, consider all market segments, there are students and labour workers. We all are not that rich 10birr+ service fee to be cut. CBE please, consider these thing.	3	2024-06-25	Google Play	NEGATIVE	0.995618462562561	Transaction Performance
1717	1	Good job. Invest and invent more!	5	2024-06-25	Google Play	POSITIVE	0.9998677968978882	Other
1718	1	Passport payment	1	2024-06-25	Google Play	POSITIVE	0.9757187366485596	Transaction Performance
1719	1	Nice one of and to be able skills in a good time for me and the first half of all time taking	5	2024-06-25	Google Play	POSITIVE	0.9998672008514404	Other
1720	1	couldn't view receipt & can not get help, no telephone contacts. etches	2	2024-06-25	Google Play	NEGATIVE	0.9986035227775574	Customer Support
1721	1	It's perfect	5	2024-06-24	Google Play	POSITIVE	0.9998714923858644	Other
1722	1	I didn't like the topup system writings of phone number part	3	2024-06-24	Google Play	NEGATIVE	0.9981499910354614	Other
1723	1	Nice app !!but not tomuch	4	2024-06-24	Google Play	POSITIVE	0.92631596326828	Other
1724	1	More or less it is Good Application.Go Ahead.	5	2024-06-24	Google Play	POSITIVE	0.9996052384376526	Other
1725	1	Mikias Gitom	5	2024-06-23	Google Play	POSITIVE	0.9570354223251344	Other
1726	1	Nice bank	5	2024-06-23	Google Play	POSITIVE	0.999805510044098	Other
1727	1	ጥሩ ነው ነገር ግን አብዛኛውን ጊዜ Transaction History አይመዘግብም አልፎ አልፎ አንዳንድ ቢያስቀምጥ እንኳ Order/በቅድምተከተል አይቀመጥም በተጨማሪ Message ያልደረም ከሆነ በጠም አስቸጋሪ ከመሆኑም በላይ በስራችን ላይ ጫና እያደረሰብን ነው ከደንበኞች በቀላሉ መገበያየት አስቻጋሪ ነው እና ይህ ይስተካከል እንላለን !!	2	2024-06-23	Google Play	NEGATIVE	0.962307870388031	Transaction Performance
1728	1	I dont know when it works and dont but its not working more than working	1	2024-06-22	Google Play	NEGATIVE	0.9993124008178712	Other
1729	1	Working	5	2024-06-21	Google Play	POSITIVE	0.9987824559211732	Other
1730	1	Cbe mobile app number one	5	2024-06-21	Google Play	POSITIVE	0.98814594745636	Other
1731	1	It nice app,but it's not working using wifi ,if you can try to fix .	5	2024-06-21	Google Play	NEGATIVE	0.998793125152588	Other
1732	1	Nice application	5	2024-06-21	Google Play	POSITIVE	0.9998229146003724	Other
1733	1	amazing app	5	2024-06-21	Google Play	POSITIVE	0.9998670816421508	Other
1734	1	Fast an easy to use	5	2024-06-21	Google Play	POSITIVE	0.999399185180664	Other
1735	1	MUMe hasenhusen	5	2024-06-20	Google Play	NEGATIVE	0.9936703443527222	Other
1736	1	እ. ብ. ጥ. ነው	5	2024-06-20	Google Play	NEGATIVE	0.9486009478569032	Other
1737	1	Keep walking with technology	5	2024-06-19	Google Play	POSITIVE	0.9996848106384276	Other
1738	1	ፈጣን እና ምቹ	5	2024-06-19	Google Play	NEGATIVE	0.8337255716323853	Other
1739	1	CBE mobile banking now becoming the best.	5	2024-06-19	Google Play	POSITIVE	0.999601423740387	Other
1740	1	What a nice app for business man thanks CBE	5	2024-06-18	Google Play	POSITIVE	0.9997591376304626	Other
1741	1	Very important!	5	2024-06-17	Google Play	POSITIVE	0.9998403787612916	Other
1742	1	Smart 🤗🤗🤗	5	2024-06-17	Google Play	POSITIVE	0.9998408555984496	Other
1743	1	There is a glitch regarding the transaction history. Recent transaction history are browsed almost after a day. Which makes it very inconvenient for the users.	2	2024-06-16	Google Play	NEGATIVE	0.9983526468276978	Transaction Performance
1744	1	It is user friendly app	5	2024-06-16	Google Play	POSITIVE	0.9946581721305848	User Interface
1745	1	Very good application	5	2024-06-15	Google Play	POSITIVE	0.9998687505722046	Other
1746	1	My best	5	2024-06-15	Google Play	POSITIVE	0.9997593760490416	Other
1747	1	My password	5	2024-06-15	Google Play	POSITIVE	0.784328043460846	Account Access Issues
1748	1	❤❤❤	5	2024-06-15	Google Play	NEGATIVE	0.697056770324707	Other
1749	1	best aplk	5	2024-06-15	Google Play	POSITIVE	0.9996923208236694	Other
1750	1	One of the poorest app for 2 main reasons 1-works only with internet connection 2-Even with best internet acess, it usally says failed synchronization .	1	2024-06-15	Google Play	NEGATIVE	0.9997078776359558	Other
1751	1	Wow this App 👏 👌	5	2024-06-15	Google Play	POSITIVE	0.9990670084953308	Other
1752	1	Likely	5	2024-06-15	Google Play	POSITIVE	0.9988023042678832	Other
1753	1	Fast and secure	5	2024-06-14	Google Play	POSITIVE	0.9998388290405272	Other
1754	1	Fast, user-friendly, easy-to-use	5	2024-06-14	Google Play	POSITIVE	0.9983606934547424	Other
1755	1	It's not so much fast	1	2024-06-14	Google Play	NEGATIVE	0.999778926372528	Other
1756	1	app bayyee si'atafi baredadha	5	2024-06-13	Google Play	POSITIVE	0.781542956829071	Other
1757	1	Only smart!!!!	5	2024-06-13	Google Play	POSITIVE	0.9933844208717346	Other
1758	1	ከሃገር ውጭ ላለው ዜጋ በምን አይነት መልኩ አካውንት ሊከፍት ይችላል	5	2024-06-13	Google Play	NEGATIVE	0.9366679191589355	Other
1759	1	Really very comfortable application!	5	2024-06-13	Google Play	POSITIVE	0.9997982382774352	Other
1760	1	😀😀😀😀😀	1	2024-06-12	Google Play	NEGATIVE	0.697056770324707	Other
1761	1	Great and simple to use.	5	2024-06-12	Google Play	POSITIVE	0.9998792409896852	Other
1762	1	Fine	5	2024-06-12	Google Play	POSITIVE	0.9998335838317872	Other
1763	1	10 q	5	2024-06-12	Google Play	POSITIVE	0.984188437461853	Other
1764	1	Use full	5	2024-06-12	Google Play	POSITIVE	0.9933939576148988	Other
1765	1	The worst app	1	2024-06-12	Google Play	NEGATIVE	0.9997969269752502	Other
1766	1	electronics maintenance🤐	5	2024-06-11	Google Play	NEUTRAL	0.5	Other
1767	1	Wow nw	5	2024-06-11	Google Play	POSITIVE	0.9985764026641846	Other
1768	1	Backup	5	2024-06-10	Google Play	NEGATIVE	0.9964532852172852	Other
1769	1	It was ok but resently it has become unuseable to say the list. It does not sincronise and I have not been able to make use of it.	1	2024-06-10	Google Play	NEGATIVE	0.9953666925430298	Other
1770	1	dONE	5	2024-06-10	Google Play	POSITIVE	0.985146701335907	Other
1771	1	Mat	5	2024-06-10	Google Play	POSITIVE	0.9149277210235596	Other
1772	1	Improve the transaction history it misleading when you don't update the transaction correctly, and make it record the monthly Fee that deducted from our account, at this point the messages are more reliable	3	2024-06-08	Google Play	NEGATIVE	0.9905937910079956	Transaction Performance
1773	1	This so good! But some time it's not work.!	3	2024-06-08	Google Play	NEGATIVE	0.9912421703338624	Other
1774	1	It's the worst app ever	1	2024-06-08	Google Play	NEGATIVE	0.999796450138092	Other
1775	1	lelisa sabsibe photo	5	2024-06-07	Google Play	NEGATIVE	0.8101917505264282	Other
1776	1	1OK	2	2024-06-06	Google Play	NEUTRAL	0.5	Other
1777	1	I S I N J A A L A T A M T O T A	5	2024-06-06	Google Play	NEGATIVE	0.6477200984954834	Other
1778	1	dawnlode	5	2024-06-05	Google Play	POSITIVE	0.7696385979652405	Other
1779	1	Fast and reliable service	5	2024-06-05	Google Play	POSITIVE	0.999779999256134	Other
1780	1	fast and very easy to use.	5	2024-06-05	Google Play	POSITIVE	0.9996473789215088	Other
1781	1	👍👍👍👍👍👍👍👍	5	2024-06-05	Google Play	NEGATIVE	0.697056770324707	Other
1782	1	አንጋፋውና የአገሪቱ ዋልታ የኢትዮጵያ ንግድ ባንክ ችግሮቹን እየፈቻ ወደፊት እንደሚገሰግስ ባለሙሉ ቸስፋ ነኝ ክብር ለሚገባው ክብር እንስጥ	5	2024-06-05	Google Play	NEGATIVE	0.9582906365394592	Other
1783	1	Good 👍👍👍😊	5	2024-06-05	Google Play	POSITIVE	0.9998576641082764	Other
1784	1	Recent transactions are all mixed up Rtgs doesn't show up for confirmation or in texts	1	2024-06-04	Google Play	NEGATIVE	0.9995436072349548	Transaction Performance
1785	1	Jamsi for make	5	2024-06-04	Google Play	POSITIVE	0.8920088410377502	Other
1786	1	Nice but please active always.	4	2024-06-03	Google Play	POSITIVE	0.9997498393058776	Other
1787	1	Tiga	5	2024-06-03	Google Play	POSITIVE	0.9692228436470032	Other
1788	1	Nuradin mahamad abdala	4	2024-06-03	Google Play	POSITIVE	0.9689998030662536	Other
1789	1	Its good i like it	5	2024-06-03	Google Play	POSITIVE	0.9998488426208496	Other
1790	1	fast	5	2024-06-03	Google Play	POSITIVE	0.9989494681358336	Other
1791	1	Best apk ever	5	2024-06-02	Google Play	POSITIVE	0.999841332435608	Other
1792	1	Poorly functioning	1	2024-06-01	Google Play	NEGATIVE	0.9997856020927428	Other
1793	1	This application is very useful and incredible especially by it's speed.	5	2024-05-31	Google Play	POSITIVE	0.9998774528503418	Other
1794	1	it said "None available"	1	2024-05-31	Google Play	NEGATIVE	0.9997686743736268	Other
1795	1	it's very good and fast application sometimes there is a little bit of congestion,fix it.	5	2024-05-31	Google Play	POSITIVE	0.9986794590950012	Other
1796	1	If It fails, you become the richest person over night. 😊	5	2024-05-30	Google Play	POSITIVE	0.9418789148330688	Other
1797	1	Best App but it doesn't show me the debited birr and the right balance	5	2024-05-30	Google Play	NEGATIVE	0.9967633485794068	Other
1798	1	Something else to eat it	3	2024-05-30	Google Play	POSITIVE	0.9977501034736632	Other
1799	1	very good app but the transaction and deposit day some times wrong!	5	2024-05-30	Google Play	NEGATIVE	0.9981801509857178	Transaction Performance
1800	1	This app is more relable and good to use .	4	2024-05-30	Google Play	POSITIVE	0.9956617951393129	Other
1801	1	very fast and secured app for my money	5	2024-05-29	Google Play	POSITIVE	0.9900830388069152	Other
1802	1	Best and easy	5	2024-05-29	Google Play	POSITIVE	0.9998441934585572	Other
1803	1	Abdl	5	2024-05-29	Google Play	NEUTRAL	0.5	Other
1804	1	Shek Usmail Ahmad	5	2024-05-28	Google Play	POSITIVE	0.9134019613265992	Other
1805	1	Easy to use and a lot of functionalities! Keep your eyes on two things: 1. The transactions shown in the Recent section are messed up (every time I refresh it it shows different output of order and messed transaction list) 2. What if we can transfer to other Telebirr number Finally the transaction fee for transfers made other than CBE acc is expensive.	4	2024-05-28	Google Play	NEGATIVE	0.999498963356018	Transaction Performance
1806	1	ይህ አፕ በጣም አጋዥ ስራን ሚያፋጥን ነው ግን ያለፈውን ሙሉ ታሪክ አያሳይም	5	2024-05-26	Google Play	NEGATIVE	0.9489793181419371	Other
1807	1	the app not fast enough	5	2024-05-26	Google Play	NEGATIVE	0.9990071654319764	Other
1808	1	Imporrant	5	2024-05-26	Google Play	NEGATIVE	0.9904333353042604	Other
1809	1	It make's life simple and easy keep it up!	5	2024-05-25	Google Play	POSITIVE	0.9998579025268556	Other
1810	1	I wish your help	5	2024-05-25	Google Play	NEUTRAL	0.5	Customer Support
1811	1	Bad and bad application	1	2024-05-24	Google Play	NEGATIVE	0.9997835755348206	Other
1812	1	Yaaa ,a nice app	5	2024-05-24	Google Play	POSITIVE	0.9997228980064392	Other
1813	1	Daily internal account to account transfer must be amended since its internal transactions	4	2024-05-24	Google Play	NEGATIVE	0.9856992363929749	Transaction Performance
1814	1	Very Good Service	5	2024-05-24	Google Play	POSITIVE	0.9998648166656494	Other
1815	1	Smart app	5	2024-05-23	Google Play	POSITIVE	0.999789297580719	Other
1816	1	Top	5	2024-05-23	Google Play	POSITIVE	0.9997069239616394	Other
1817	1	Andualem akifle	5	2024-05-23	Google Play	NEUTRAL	0.5	Other
1818	1	Why is it not working well it is not even showing me the money I have	5	2024-05-23	Google Play	NEGATIVE	0.99979168176651	Other
1819	1	This app is not working other bank	2	2024-05-22	Google Play	NEGATIVE	0.9995473027229308	Other
1820	1	Samsung A31	1	2024-05-22	Google Play	POSITIVE	0.8897342681884766	Other
1821	1	Applicationu arf new gn andande yaschegiral ahuninm hizbu benante bedemb eskireka mesrat new plus be meskot yemiseru serategnoch ke lela bank sinetsatser le dembegna kibir yelachewm endefelegut new yemiaerut +telebirr only own telebirr bicha bayhon le leloch yeminilikibet amarach bifeter...Thanks	4	2024-05-22	Google Play	NEGATIVE	0.9636375904083252	Other
1822	1	👎	1	2024-05-21	Google Play	NEGATIVE	0.697056770324707	Other
1823	1	there is no statement or transaction history its basic thing	5	2024-05-21	Google Play	NEGATIVE	0.9994646906852722	Transaction Performance
1824	1	very good👍🏾👍🏾👍🏾👍🏾👍🏾👍🏾👍🏾👍🏾👍🏾	5	2024-05-21	Google Play	POSITIVE	0.8243632316589355	Other
1825	1	Is excellent i ever seen	5	2024-05-21	Google Play	POSITIVE	0.9998756647109984	Other
1826	1	Wawa	5	2024-05-21	Google Play	NEGATIVE	0.7590292096138	Other
1827	1	Best financial app	5	2024-05-20	Google Play	POSITIVE	0.9997140765190125	Other
1828	1	Can got 0 ⭐ Please ! this App is completely Scam Becouse I made payment in other bank option in the App but the APP (-) mY BALANCE BUT NO successful notification to get screen shoot, no SMS and no Transaction history and I alerdy lost my mony becous my clint also does not get the mony i sent! I pay but I didn't got mony! stey away frim CBE	1	2024-05-19	Google Play	NEGATIVE	0.9994651675224304	Transaction Performance
1829	1	It is nice app, but I couldn't see back transactions, it is restricted for recent transactions only.	3	2024-05-19	Google Play	NEGATIVE	0.956742823123932	Transaction Performance
1830	1	I like this application and It's very useful	1	2024-05-19	Google Play	POSITIVE	0.9998237490653992	Other
1831	1	The app is functional with some failures, need much work on the user experience.	3	2024-05-19	Google Play	NEGATIVE	0.99737286567688	Other
1832	1	I am a business man i use this app long time, but it is very poor there is no filter to search the transactions of one Acc. If want to now how many times i send or receive.	1	2024-05-19	Google Play	NEGATIVE	0.9984638690948486	Transaction Performance
1833	1	The app doesn't support amharic characters For writing payment reason. It suppose to support writing in amharic(geez) alphabet	2	2024-05-18	Google Play	NEGATIVE	0.9992852807044984	Transaction Performance;Customer Support
1834	1	It is a good app. It only requires the account holder to use it regularly. It will be better if you make it available every time the user needs it whether he uses it regularly or not. Why is it closed?	5	2024-05-18	Google Play	POSITIVE	0.9958025813102722	User Interface
1835	1	Simple, fast and secure	5	2024-05-17	Google Play	POSITIVE	0.9998189806938172	Other
1836	1	It is helpful app which can be used easily but one important thing, when you send or receive a money it does not appear the hour and the minutes. You don't know if it is afternoon or morning. It is better the receipt to have date and time.	4	2024-05-17	Google Play	NEGATIVE	0.993380069732666	Customer Support
1837	1	Great 👌	5	2024-05-17	Google Play	POSITIVE	0.9997692704200744	Other
1838	1	I Like the Apps	5	2024-05-17	Google Play	POSITIVE	0.9994787573814392	Other
1839	1	Face id	5	2024-05-17	Google Play	NEGATIVE	0.903789222240448	Other
1840	1	Very good apps. Thus help other for thier problem.	5	2024-05-17	Google Play	POSITIVE	0.9981616139411926	Customer Support
1841	1	It's very interesting	4	2024-05-17	Google Play	POSITIVE	0.9998812675476074	Other
1842	1	Cbe provides a greatest mobile banking service in Ethiopia.	4	2024-05-17	Google Play	POSITIVE	0.9995653033256532	Other
1843	1	Sabaafiin	5	2024-05-16	Google Play	NEGATIVE	0.950391411781311	Other
1844	1	Bast app I know I don't forget this app in my bank account	5	2024-05-16	Google Play	POSITIVE	0.99916672706604	Other
1845	1	Nuguse hanku	5	2024-05-15	Google Play	POSITIVE	0.6810335516929626	Other
1846	1	Short and Great app	5	2024-05-15	Google Play	POSITIVE	0.9988779425621032	Other
1847	1	Ilove this app easy use	5	2024-05-15	Google Play	POSITIVE	0.8557815551757812	Other
1848	1	Recent service fee change is ridiculous. Plus making transfer to other banks and Telebirr wallet is even crazier. You suppose to be an exemplary institution, but you are doing the opposite.	2	2024-05-14	Google Play	NEGATIVE	0.9890774488449096	Transaction Performance
1849	1	Hulem yemitemamenibet bank new	5	2024-05-14	Google Play	NEUTRAL	0.5	Other
1850	1	Best of best apk	5	2024-05-13	Google Play	POSITIVE	0.9997125267982484	Other
1851	1	Best App but how can i use more two or more CBE app in one app.	5	2024-05-13	Google Play	NEGATIVE	0.9918330907821656	Other
1852	1	Talented man	5	2024-05-13	Google Play	POSITIVE	0.999841570854187	Other
1853	1	Jabadhaa	5	2024-05-13	Google Play	NEGATIVE	0.8808900117874146	Other
1854	1	nice App	5	2024-05-13	Google Play	POSITIVE	0.9998061060905457	Other
1855	1	This app have no fingerprints unlock and have problem with safaricom topup	1	2024-05-13	Google Play	NEGATIVE	0.9990941286087036	Account Access Issues
1856	1	Best Apo	5	2024-05-13	Google Play	POSITIVE	0.9997413754463196	Other
1857	1	Dont work	5	2024-05-13	Google Play	NEGATIVE	0.998325765132904	Other
1858	1	Galataa	5	2024-05-12	Google Play	POSITIVE	0.9978405237197876	Other
1859	1	Amazing, very friendly and awesome application. Only one drwaback is that you are not willy to make it active after blocking the mobile banking via 951. I am not still using once blocked. You send me to the branch banks but they don't have enough skill to help.	5	2024-05-12	Google Play	NEUTRAL	0.5	Customer Support
1860	1	Better	4	2024-05-12	Google Play	POSITIVE	0.999264657497406	Other
1861	1	Good app but it fail to send on time the commission money is unnecessary and also their are some bug like recent transaction page don't show the recent one ...... Try to improve it's back system as a bank system people want it in different situations so it has to work every time as could as possible if you don't get it when you want why we use mobile banking not branch service as I conclusion personally I like the bank because it is CBE but not their digital banking system Thanks	2	2024-05-12	Google Play	NEGATIVE	0.9978784322738647	Transaction Performance;Reliability
1862	1	Amazing App. But sometimes the app won't show the account balance. It says "no accounts available"	5	2024-05-12	Google Play	NEGATIVE	0.9966975450515748	Other
1863	1	አሪፍ ነው አፑ ግን አዘምኑት ከ ፒን ውጪ የጣት አሻራ ቢኖረው አሪፍ ነው	5	2024-05-12	Google Play	NEGATIVE	0.9510265588760376	Other
1864	1	Best prgresive app, and good fetures	5	2024-05-12	Google Play	POSITIVE	0.999537706375122	Other
1865	1	Simple	5	2024-05-11	Google Play	POSITIVE	0.9996788501739502	Other
1866	1	I am comfortable	5	2024-05-11	Google Play	POSITIVE	0.9998629093170166	Other
1867	1	It's fantastic app	4	2024-05-11	Google Play	POSITIVE	0.9998770952224731	Other
1868	1	One of the best bank	5	2024-05-11	Google Play	POSITIVE	0.999859094619751	Other
1869	1	Be smart	5	2024-05-11	Google Play	POSITIVE	0.9996169805526732	Other
1870	1	Active	5	2024-05-10	Google Play	POSITIVE	0.9998134970664978	Other
1871	1	This app is very nice, it eases complicated services. The only thing the developer to modify is the app doesn't show recent credit as soon as the credit seen by text message	5	2024-05-10	Google Play	POSITIVE	0.981904685497284	Other
1872	1	Well	5	2024-05-10	Google Play	POSITIVE	0.9995703101158142	Other
1873	1	Caalaamahammad	5	2024-05-10	Google Play	NEUTRAL	0.5	Other
1874	1	Good content but some times sent money but on pending	4	2024-05-10	Google Play	NEGATIVE	0.8957776427268982	Other
1875	1	It is a very weak app it does not even show transaction history. If there are 3 transactions in a day it shows two and does not show the rest.	1	2024-05-09	Google Play	NEGATIVE	0.9997816681861876	Transaction Performance
1876	1	ሀይ	5	2024-05-09	Google Play	NEGATIVE	0.697056770324707	Other
1877	1	It is very important apk.	5	2024-05-09	Google Play	POSITIVE	0.998975157737732	Other
1878	1	It is amazing app	5	2024-05-09	Google Play	POSITIVE	0.9998784065246582	Other
1879	1	Itis excellent application i ever seen i Ethiopia! But if biometric is added it more usable ! Thank you!	5	2024-05-09	Google Play	POSITIVE	0.9996392726898192	Other
1880	1	Mobile banking	5	2024-05-09	Google Play	POSITIVE	0.9076533913612366	Other
1881	1	Very huge and amazing banking sistem	5	2024-05-09	Google Play	POSITIVE	0.9998422861099244	Other
1882	1	CBE juneydi alii	5	2024-05-08	Google Play	POSITIVE	0.9652055501937866	Other
1883	1	When pressing the download screen shot it downloads it two times please fix it	3	2024-05-08	Google Play	NEGATIVE	0.9749733209609984	Other
1884	1	It is gode	5	2024-05-08	Google Play	NEUTRAL	0.5	Other
1885	1	Asitemamagn yebank agar	5	2024-05-08	Google Play	NEGATIVE	0.8478432893753052	Other
1886	1	Try to make simple more and more to fit with the need of customer's And try to make secure even if the customer use the app incorrectly ok thank you	5	2024-05-07	Google Play	POSITIVE	0.9842206239700316	Other
1887	1	I Was a customor of comricial bank of ethiopia	5	2024-05-07	Google Play	POSITIVE	0.8467272520065308	Other
1888	1	𝑻𝒉𝒊𝒔 𝒂𝒑𝒑𝒍𝒊𝒄𝒂𝒕𝒊𝒐𝒏 𝒊𝒔 𝒗𝒆𝒓𝒚 𝒈𝒐𝒐𝒅	4	2024-05-07	Google Play	NEGATIVE	0.8832130432128906	Other
1889	1	It's golden	5	2024-05-07	Google Play	POSITIVE	0.9998506307601928	Other
1890	1	It is very best app	5	2024-05-06	Google Play	POSITIVE	0.9998175501823424	Other
1891	1	Poor Bank Poor banking system Poor app	1	2024-05-06	Google Play	NEGATIVE	0.9997742772102356	Other
1892	1	Ajwisks	5	2024-05-05	Google Play	NEGATIVE	0.9727841019630432	Other
1893	1	Amazing app I ever see in this territory	5	2024-05-05	Google Play	POSITIVE	0.9998619556427002	Other
1894	1	Very good 😊 but it have errors	3	2024-05-05	Google Play	NEGATIVE	0.9758657217025756	Reliability
1895	1	💚💛❤	4	2024-05-05	Google Play	NEGATIVE	0.697056770324707	Other
1896	1	Ana taanan 0 turee oso jiraate	1	2024-05-05	Google Play	NEGATIVE	0.9820274114608764	Other
1897	1	Sadam Dafhj	1	2024-05-05	Google Play	NEGATIVE	0.9899955987930298	Other
1898	1	Wow👍	5	2024-05-05	Google Play	NEGATIVE	0.697056770324707	Other
1899	1	Greet	5	2024-05-04	Google Play	POSITIVE	0.9988817572593688	Other
1900	1	CBE Mobile banking app is very easy, simple and full of technology. I thank the innovator of this system🙏🙏🙏🙏	5	2024-05-04	Google Play	POSITIVE	0.999760091304779	Other
1901	1	how to use?	1	2024-05-04	Google Play	NEGATIVE	0.996614634990692	Other
1902	1	Ayalew Asefa weledemichel /አያሌው አሰፋ ወ/ሚካኤል	1	2024-05-04	Google Play	NEGATIVE	0.9654581546783448	Other
1903	1	Cbe ye mafia leba yhehinu nachew hidden fee ykortalu transfer lay ye wsha ljoch	1	2024-05-03	Google Play	NEGATIVE	0.9905182719230652	Transaction Performance
1904	1	አንዳንዴ የቀሪ ሒሳብ ዝርዝር አያሳይም ከዛ ውጪ i love it .😍. !	5	2024-05-03	Google Play	POSITIVE	0.9998421669006348	Other
1905	1	It is nice app & simple to use it	4	2024-05-03	Google Play	POSITIVE	0.9997854828834534	Other
1906	1	so good	5	2024-05-03	Google Play	POSITIVE	0.999841570854187	Other
1907	1	Mama	5	2024-05-03	Google Play	POSITIVE	0.980676770210266	Other
1908	1	Good oppotion.	5	2024-05-03	Google Play	POSITIVE	0.9998562335968018	Other
1909	1	Excellent app thanks CBE	5	2024-05-02	Google Play	POSITIVE	0.9998289346694946	Other
1910	1	It is a very nice and easy app to use. There is only one thing i would like you to add. If you could transfer from your account to another person's telebirr account, it only works to your own phone number	5	2024-05-02	Google Play	NEGATIVE	0.9437726140022278	Transaction Performance
1911	1	Amazing app !!	5	2024-05-02	Google Play	POSITIVE	0.9998714923858644	Other
1912	1	Nice application but not work properly on iphone	5	2024-05-02	Google Play	NEGATIVE	0.9935482144355774	Other
1913	1	Good and easily application thanks	5	2024-05-01	Google Play	POSITIVE	0.9998650550842284	Other
1914	1	Unable to use the app for around a month! (It cames with an error message "None available" everytime I try to transfer). What a Worst app!!!	1	2024-05-01	Google Play	NEGATIVE	0.9998192191123962	Transaction Performance;Reliability
1915	1	Concshe	5	2024-05-01	Google Play	NEGATIVE	0.9505506753921508	Other
1916	1	this updated version is ANNOYING!! Doesn't work at all!! 😡👺🤬😾	1	2024-05-01	Google Play	NEGATIVE	0.9998082518577576	Other
1917	1	have no option for transaction export	1	2024-05-01	Google Play	NEGATIVE	0.998234748840332	Transaction Performance
1918	1	it is good	5	2024-05-01	Google Play	POSITIVE	0.9998494386672974	Other
1919	1	Great !!! I am happy for this app.	5	2024-05-01	Google Play	POSITIVE	0.9998687505722046	Other
1920	1	hey cbe. we love to use Commercial Bank of Ethiopia but we can't transfer money to international by using the CBE app by using SWIFT	1	2024-05-01	Google Play	NEGATIVE	0.956306219100952	Transaction Performance
1921	1	Terrible application. every time when I have transactions, say an error while the transaction is already done, doesn't show the recent updates balances and transaction.	1	2024-04-30	Google Play	NEGATIVE	0.9997162222862244	Transaction Performance;Reliability
1922	1	I'm satisfied with this app.❤❤	5	2024-04-30	Google Play	POSITIVE	0.9992724061012268	Other
1923	1	good service	5	2024-04-30	Google Play	POSITIVE	0.9998499155044556	Other
1924	1	Google sesetm	5	2024-04-29	Google Play	NEGATIVE	0.9470478296279908	Other
1925	1	Its better app	5	2024-04-29	Google Play	POSITIVE	0.9824732542037964	Other
1926	1	Great service	5	2024-04-29	Google Play	POSITIVE	0.9998434782028198	Other
1927	1	- It is best application , but you have to integret the tele- birr service to any mobile service number by titening the security tunnels rather than own mobile service number only	3	2024-04-29	Google Play	NEGATIVE	0.9982616305351256	Other
1928	1	It's best and easy to use I like how it works	5	2024-04-28	Google Play	POSITIVE	0.999847412109375	Other
1929	1	It's easy to use and safe	4	2024-04-28	Google Play	POSITIVE	0.9997370839118958	Other
1930	1	wow serane yakelale	5	2024-04-27	Google Play	POSITIVE	0.9981223940849304	Other
1931	1	ንግጽ ባንድ በጣም ጥሩ አስተማማኝ ነው	5	2024-04-27	Google Play	NEGATIVE	0.904695212841034	Other
1932	1	It is not that hard to list the number of transactions in their order	1	2024-04-27	Google Play	POSITIVE	0.9641423225402832	Transaction Performance
1933	1	It's very nice app	3	2024-04-26	Google Play	POSITIVE	0.9998631477355956	Other
1934	1	Very poor application it doesn't work in all smart phones☺️☺️☺️	1	2024-04-26	Google Play	NEGATIVE	0.9998040795326232	Other
1935	1	Not work properly.	1	2024-04-26	Google Play	NEGATIVE	0.999794900417328	Other
1936	1	It's the best mobile banking application ever!	4	2024-04-26	Google Play	POSITIVE	0.9998086094856262	Other
1937	1	To be honest It's a great app	5	2024-04-25	Google Play	POSITIVE	0.999839186668396	Other
1938	1	best Ethiopian bank	5	2024-04-25	Google Play	POSITIVE	0.9997190833091736	Other
1939	1	Really thank for your service	5	2024-04-25	Google Play	POSITIVE	0.9998273849487304	Other
1940	1	I like this app very much, commercial bank of Ethiopia became one of the banks that I Can Always Rely on.	5	2024-04-25	Google Play	POSITIVE	0.9992803931236268	Other
1941	1	Amusing app	5	2024-04-24	Google Play	POSITIVE	0.999824583530426	Other
1942	1	Reeding	1	2024-04-24	Google Play	NEGATIVE	0.83058100938797	Other
1943	1	Andegna new	3	2024-04-24	Google Play	POSITIVE	0.9478288888931274	Other
1944	1	I am interested	5	2024-04-24	Google Play	POSITIVE	0.9998247027397156	Other
1945	1	I am happy using this app	5	2024-04-24	Google Play	POSITIVE	0.9998403787612916	Other
1946	1	Bad App and Bad institution It Can not show a transaction list Correctly It shows a very Messed up Transaction position Before Leaving the Country i beg them Please, I am going to leave the country, please make internet banking active for me, but they told me that the application will work anywhere, And Now it did not work after I left the country, it made me unable to move my money.	1	2024-04-23	Google Play	NEGATIVE	0.9996753931045532	Transaction Performance
1947	1	ቯጨጨየኘቨሀሀ!ሐኘረd	1	2024-04-23	Google Play	POSITIVE	0.9833801984786988	Other
1948	1	I am unable to use mobile banking for around a month. It says "None available" when I try to transfer or buy airtime.	1	2024-04-22	Google Play	NEGATIVE	0.9996745586395264	Transaction Performance
1949	1	Super	5	2024-04-22	Google Play	POSITIVE	0.998783528804779	Other
1950	1	It don't work The application is Doesn't work	4	2024-04-22	Google Play	NEGATIVE	0.9997579455375672	Other
1951	1	Stupid thief app	1	2024-04-22	Google Play	NEGATIVE	0.9997450709342957	Other
1952	1	It's good app but one thing shoukd be add on history sort by option	5	2024-04-21	Google Play	POSITIVE	0.7143852114677429	Other
1953	1	Best app except ballance update is slow	4	2024-04-21	Google Play	NEGATIVE	0.9924665093421936	Transaction Performance
1954	1	good at using CBE to family and friends and consider it as the fastest and trusted Bank	5	2024-04-21	Google Play	POSITIVE	0.9996986389160156	Other
1955	1	Worest apk even it doesn't show recent transactions, resending issues. The account will be reduced without showing the money I sent.	1	2024-04-21	Google Play	NEGATIVE	0.9973080158233644	Transaction Performance
1956	1	best app i hope the transaction list be recorded more than 5 months	5	2024-04-21	Google Play	NEGATIVE	0.9345018267631532	Transaction Performance
1957	1	Thank you ok	5	2024-04-21	Google Play	POSITIVE	0.9998583793640136	Other
1958	1	v.good app !	4	2024-04-20	Google Play	POSITIVE	0.9991782307624816	Other
3249	1	Add biometric	5	2023-07-24	Google Play	POSITIVE	0.996764063835144	Other
1959	1	One of the fastest mobile banking app in Ethiopia thank you CBE 🙏	5	2024-04-20	Google Play	POSITIVE	0.999321699142456	Other
1960	1	Wow this Mobllie banking transfer app is amazing and easy to access and use for the mobile credit transaction keep going!!!	1	2024-04-20	Google Play	POSITIVE	0.9995823502540588	Account Access Issues;Transaction Performance
1961	1	Its good But if its give as our profile its more interesting	5	2024-04-20	Google Play	POSITIVE	0.993671178817749	Other
1962	1	Not bad	2	2024-04-20	Google Play	POSITIVE	0.9995881915092468	Other
1963	1	በጣም ምርጥ app እና በጣም ቀልጣፋ system አለው ብዙ ስራዎቼን አቅልሎኛል ጊዜዬን እንድጠቀም የምፈልገውን እቃ ካለሁበት ቦታ ሆኜ እንድገዛ እረድቶኛል	4	2024-04-20	Google Play	NEGATIVE	0.9620638489723206	Other
1964	1	Nice.....it is providing services exceptionally quickly. thanks 👂	4	2024-04-20	Google Play	POSITIVE	0.9998071789741516	User Interface
1965	1	🥇 goud	5	2024-04-19	Google Play	POSITIVE	0.6736798882484436	Other
1966	1	tztz sesr	1	2024-04-18	Google Play	POSITIVE	0.6630184054374695	Other
1967	1	When I tray to open the app it says "The device is Rooted" haw can i solve it?	1	2024-04-18	Google Play	NEGATIVE	0.9984388947486876	Other
1968	1	fast and short step app.	5	2024-04-18	Google Play	POSITIVE	0.8786548972129822	Other
1969	1	Best option	5	2024-04-18	Google Play	POSITIVE	0.9991809725761414	Other
1970	1	God jab CBE	5	2024-04-17	Google Play	NEGATIVE	0.9950202703475952	Other
1971	1	The bank workers is the wrost ever but the app is best i aporeciate the developers	5	2024-04-16	Google Play	NEGATIVE	0.6344709396362305	Other
1972	1	🙏🙏🙏🙏🙏	4	2024-04-16	Google Play	NEGATIVE	0.697056770324707	Other
1973	1	My Cbe	5	2024-04-16	Google Play	POSITIVE	0.9967065453529358	Other
1974	1	grow business	5	2024-04-15	Google Play	POSITIVE	0.999657392501831	Other
1975	1	It's very bad. It deserves 0 stars. It doesn't show some transactions,it misplace transactions,it misplace dates,it shows nonsense errors and so more. I just rate it to 2 stars for helping me a lot.	2	2024-04-14	Google Play	NEGATIVE	0.997934103012085	Transaction Performance;Reliability;Customer Support
1976	1	It is good but not fast	1	2024-04-14	Google Play	POSITIVE	0.999695897102356	Other
1977	1	Best 👌	5	2024-04-14	Google Play	POSITIVE	0.9997019171714784	Other
1978	1	That's good,but it deserves security l.	4	2024-04-14	Google Play	POSITIVE	0.998637855052948	Other
1979	1	Nice app I like it too	5	2024-04-14	Google Play	POSITIVE	0.9998378753662108	Other
1980	1	Wonderful	5	2024-04-13	Google Play	POSITIVE	0.9998772144317628	Other
1981	1	Am happy for this application	5	2024-04-13	Google Play	POSITIVE	0.99981290102005	Other
1982	1	One of the most useless app in the country. Doesn't work almost 99 percent of the time.	1	2024-04-13	Google Play	NEGATIVE	0.9997437596321106	Other
1983	1	It is hard to open	1	2024-04-13	Google Play	NEGATIVE	0.999784290790558	Other
1984	1	an amazing app fast and secure	5	2024-04-13	Google Play	POSITIVE	0.99986469745636	Other
1985	1	Of LLC do my go of	5	2024-04-13	Google Play	POSITIVE	0.989998996257782	Other
1986	1	It is more secure and reliable app, I recommend for every customer	5	2024-04-13	Google Play	POSITIVE	0.999326467514038	Other
1987	1	It is a very convenient app to use.	4	2024-04-13	Google Play	POSITIVE	0.9936892986297609	Other
1988	1	Worriest ever app i have faced	1	2024-04-13	Google Play	NEGATIVE	0.9949446320533752	Other
1989	1	pure trash	5	2024-04-13	Google Play	NEGATIVE	0.9997366070747375	Other
1990	1	But today it's not working	5	2024-04-13	Google Play	NEGATIVE	0.9996294975280762	Other
1991	1	እንዲህ አይነት ቀላል፣ ያማረ እና ለአጠቃቀም ምቹ መሆኑ እንድንወደው አድርጎናል።	4	2024-04-12	Google Play	NEGATIVE	0.9489793181419371	Other
1992	1	Yigerem	5	2024-04-12	Google Play	POSITIVE	0.9281471371650696	Other
1993	1	Poor application most times it says error while sending then it actually sent money so u have to double check if its an error or it sent cash. recent transaction don't update as fast sometimes it even misplaces date and bring forth a transaction done a day or 2 back at the top.the only thing remotely good is the UI interface	1	2024-04-12	Google Play	NEGATIVE	0.9995055198669434	Transaction Performance;User Interface;Reliability
1994	1	Thief institution	1	2024-04-11	Google Play	NEGATIVE	0.9887773394584656	Other
1995	1	👍👍👍👍best	5	2024-04-11	Google Play	NEGATIVE	0.697056770324707	Other
1996	1	Shifee diquuallm	5	2024-04-11	Google Play	NEGATIVE	0.979961633682251	Other
1997	1	Why are we unable to transfer more than 10,000 to another bank?	4	2024-04-11	Google Play	NEGATIVE	0.9995083808898926	Transaction Performance
1998	1	Not compatible	1	2024-04-11	Google Play	NEGATIVE	0.9997866749763488	Other
1999	1	My favorite app	5	2024-04-11	Google Play	POSITIVE	0.9983345866203308	Other
2000	1	it is good app	5	2024-04-11	Google Play	POSITIVE	0.9998652935028076	Other
2001	1	Okkee	5	2024-04-10	Google Play	POSITIVE	0.9986886382102966	Other
2002	1	Diroo Abaraa Fataee	5	2024-04-10	Google Play	NEGATIVE	0.9567403197288512	Other
2003	1	ገንዘብ በላኩኝ ቁጥር 10 ብር ይቆርጣል። Even ከ 10 ብር በታች ልኬ 10 ብር ይቆረጣል። ይህ ደሞ ህጋዊ አሰራር አይመስለኝምና የባንክ አገልግሎትም እንድቀይር እያስገደደኝ ነው። ይሄንን ጎጂ ተግባር ብታቆሙ የተሻለ ነው።	1	2024-04-10	Google Play	NEGATIVE	0.9715598225593568	Other
2004	1	Haqii lgiishiina	5	2024-04-10	Google Play	NEUTRAL	0.5	Other
2005	1	It's good, but not too much	3	2024-04-09	Google Play	NEGATIVE	0.9019179344177246	Other
2006	1	this app really helped me a lot	5	2024-04-09	Google Play	POSITIVE	0.9990789890289308	Customer Support
2007	1	Oka new	5	2024-04-09	Google Play	POSITIVE	0.968065857887268	Other
2008	1	it's very good app	5	2024-04-09	Google Play	POSITIVE	0.9998728036880492	Other
2009	1	Very nice app and simple	5	2024-04-09	Google Play	POSITIVE	0.9998612403869628	Other
2010	1	Mensru behru	5	2024-04-08	Google Play	POSITIVE	0.9792591333389282	Other
2011	1	Smoth and fast	3	2024-04-07	Google Play	NEGATIVE	0.7229215502738953	Other
2012	1	dange.zeleke	5	2024-04-07	Google Play	NEGATIVE	0.8529274463653564	Other
2013	1	Very nice application. Well updated!!!!	5	2024-04-07	Google Play	POSITIVE	0.9998432397842408	Other
2014	1	Im very interesting in this app	5	2024-04-06	Google Play	POSITIVE	0.99955552816391	Other
2015	1	is My account so please help me Please please	5	2024-04-06	Google Play	POSITIVE	0.9566990733146667	Customer Support
2016	1	The best experience ever I have seen. Keep it up.	5	2024-04-06	Google Play	POSITIVE	0.9998445510864258	Other
2017	1	Same what nework problems	5	2024-04-06	Google Play	NEGATIVE	0.9984573125839232	Other
2018	1	Its good but it dosnt show updated statment	3	2024-04-05	Google Play	POSITIVE	0.9813014268875122	Other
2019	1	please include transfer to its own telebirr Merchant account for the trader. We cannot transfer money from our CBE account to our telebirr Merchant account, all transfer from our account considered as payment.	4	2024-04-05	Google Play	NEGATIVE	0.998181700706482	Transaction Performance
2020	1	Excellent easy to interact swift time saving. I really enjoy using this app didn't really expect it to be so W⁰ºo0W	5	2024-04-05	Google Play	POSITIVE	0.9979984164237976	Other
2021	1	Not active as needed	1	2024-04-05	Google Play	NEGATIVE	0.9997757077217102	Other
2022	1	Include Fayda National ID payment	5	2024-04-04	Google Play	NEGATIVE	0.9430541396141052	Transaction Performance
2023	1	It is easy and simple to use it.	5	2024-04-04	Google Play	POSITIVE	0.9983181953430176	Other
2024	1	Excellence and facilitant spp	5	2024-04-04	Google Play	POSITIVE	0.9995875954627992	Other
2025	1	Best Bank	5	2024-04-04	Google Play	POSITIVE	0.9997438788414	Other
2026	1	CBE is the best bank in the country	5	2024-04-03	Google Play	POSITIVE	0.9998123049736024	Other
2027	1	I am happy with the application.	5	2024-04-03	Google Play	POSITIVE	0.99986469745636	Other
2028	1	One of the best apps	5	2024-04-03	Google Play	POSITIVE	0.9998611211776732	Other
2029	1	አብራርከማል	1	2024-04-03	Google Play	NEGATIVE	0.697056770324707	Other
2030	1	Recently it is not performing well after the system modification works	4	2024-04-02	Google Play	NEGATIVE	0.9997363686561584	Other
2031	1	Umar tamama	1	2024-04-01	Google Play	POSITIVE	0.9582632780075072	Other
2032	1	If you make 2 transfers with the same amount, it will ask to verify, but no option to do so.	3	2024-04-01	Google Play	NEGATIVE	0.9975554347038268	Transaction Performance
2033	1	CBE is the best money transaction app ever that I have seen in Ethiopia	5	2024-04-01	Google Play	POSITIVE	0.999471127986908	Transaction Performance
2034	1	Easy to use ,clear and pricise, fast confortable for all customers. Kip it up cbe	5	2024-04-01	Google Play	POSITIVE	0.9680495262145996	Other
2035	1	Thunks	5	2024-04-01	Google Play	NEGATIVE	0.9986586570739746	Other
2036	1	goood	5	2024-03-31	Google Play	NEGATIVE	0.9943867921829224	Other
2037	1	ምንም ነገር እየሰራልን አይደለም ችግራችሁ ከመሰለፍ ገላገለን ብለን ሳንጨርስ ሊሰራልን አልቻለም እባካችሁን ሲስተማችሁን አስተካክሉልን	3	2024-03-31	Google Play	NEGATIVE	0.9528433680534364	Other
2038	1	Garbage	1	2024-03-31	Google Play	NEGATIVE	0.999801218509674	Other
2039	1	good cbe	5	2024-03-31	Google Play	POSITIVE	0.9997676014900208	Other
2040	1	This app is smart app for me. For making it more the best, I suggest that it is good if the transactions list were up to 2 or 3 months or even more.	5	2024-03-31	Google Play	POSITIVE	0.9986910223960876	Transaction Performance
2041	1	This app is very halpful	5	2024-03-31	Google Play	NEGATIVE	0.9965128302574158	Other
2042	1	I'm excited you	5	2024-03-30	Google Play	POSITIVE	0.999853491783142	Other
2043	1	Free	5	2024-03-30	Google Play	POSITIVE	0.997825026512146	Other
2044	1	Birr selala bederegn nw	4	2024-03-30	Google Play	NEGATIVE	0.9516523480415344	Other
2045	1	Always says INACTIVE, sometimes doesn't sync, other times says go to the nearest branch and when I go they take forever. How come I am not allowed to see all transactions?Mobile banking is for saving time and efficiency. Non is takingplace. Why should I be forced to use my account everyday? I should be able to use it whenever.	1	2024-03-30	Google Play	NEGATIVE	0.9984662532806396	Transaction Performance
2046	1	👉it can not download the receipt when we transferred what is the reason? please we need the receipt so that come on to solution!	1	2024-03-30	Google Play	NEGATIVE	0.9975576400756836	Transaction Performance
2047	1	Wow easy and fast platform	5	2024-03-29	Google Play	POSITIVE	0.9997567534446716	Other
2048	1	በጣም ጥሩ	5	2024-03-29	Google Play	NEGATIVE	0.7850590348243713	Other
2049	1	INDIVIGUALL TELEBIRR ACCOUNT IS NOT AVAILAVLE WHY	2	2024-03-29	Google Play	NEGATIVE	0.9996083378791808	Other
2050	1	fake	5	2024-03-28	Google Play	NEGATIVE	0.9996473789215088	Other
2051	1	Instel	5	2024-03-26	Google Play	POSITIVE	0.9897595643997192	Other
2052	1	ሠላም ይሁን	5	2024-03-26	Google Play	NEGATIVE	0.7850590348243713	Other
2053	1	Nice app. But i know woman who got robbed her phone and they tranfered all money that she got because they got her password from her phone. Please do not save the password localy in the phone. Make a post request to validate the password or use oauth methods. That is much safer you can look at apps like paypal,payooneer ...	3	2024-03-26	Google Play	NEGATIVE	0.9966602325439452	Account Access Issues
2054	1	Useless hackable bank!	1	2024-03-26	Google Play	NEGATIVE	0.9997863173484802	Other
2055	1	it doesn't generate financial statements. it is good to allow us to generate our transaction in PDF file	2	2024-03-26	Google Play	POSITIVE	0.9922698736190796	Transaction Performance
2056	1	Very nice app thanks for the create	5	2024-03-26	Google Play	POSITIVE	0.9998451471328736	Other
2057	1	ወንዱ	5	2024-03-25	Google Play	NEGATIVE	0.697056770324707	Other
2058	1	Totally dissatisfied	1	2024-03-25	Google Play	NEGATIVE	0.9997655749320984	Other
2059	1	Please help me to use cbe android on this device.	5	2024-03-25	Google Play	NEGATIVE	0.9918177127838136	Customer Support
2060	1	The password should be stronger, including letters, numbers, and special characters.	1	2024-03-24	Google Play	NEGATIVE	0.996536135673523	Account Access Issues
2061	1	Best app ever I enjoyed	5	2024-03-23	Google Play	POSITIVE	0.9998306035995485	Other
2062	1	Easy way to use	5	2024-03-23	Google Play	POSITIVE	0.9934499859809875	Other
2063	1	1- Always mixes up sequence of transaction history and also takea very long to update those 2- doesnt generate the reciept page when you transfer to other banks, mostly displays an error image. 3- struggles to work in places with 2G connection. Generally its a good app since the USSD is a nightmare we will be ok with this.	2	2024-03-23	Google Play	POSITIVE	0.8552945256233215	Transaction Performance;Reliability
2064	1	𝚙𝚎𝚘𝚙𝚕𝚎 𝚌𝚊𝚗 𝚎𝚊𝚜𝚕𝚢 𝚊𝚌𝚝𝚒𝚟𝚊𝚝𝚎 𝚝𝚑𝚎𝚒𝚛 𝚌𝚞𝚛𝚛𝚎𝚗𝚌𝚒𝚎𝚜,𝚊𝚗𝚍 𝚖𝚘𝚜𝚝 𝚘𝚏 𝚝𝚑𝚎 𝚜𝚢𝚜𝚝𝚎𝚖𝚜 𝚜𝚖𝚘𝚘𝚝𝚑𝚕𝚢 𝚒𝚗𝚝𝚎𝚛 𝚊𝚌𝚝 𝚋𝚢 𝚊𝚌𝚌𝚘𝚞𝚗𝚝𝚜 𝚝𝚑𝚊𝚝 𝚏𝚘𝚠𝚗𝚍 𝚒𝚗 𝚝𝚑𝚎 𝚍𝚎𝚟𝚒𝚌𝚎 𝚊𝚜 𝚌𝚞𝚜𝚝𝚘𝚖𝚎𝚛𝚜 𝚗𝚎𝚎𝚍𝚎𝚍.	5	2024-03-22	Google Play	NEGATIVE	0.9613831043243408	Other
2065	1	Big apps	5	2024-03-22	Google Play	POSITIVE	0.9986055493354796	Other
2067	1	Good to have this app on my phone.	5	2024-03-21	Google Play	POSITIVE	0.9993547797203064	Other
2068	1	Open mobile banking	5	2024-03-20	Google Play	POSITIVE	0.9937334656715392	Other
2069	1	Good!	5	2024-03-20	Google Play	POSITIVE	0.9998268485069276	Other
2070	1	It stacked and not opened	1	2024-03-20	Google Play	NEGATIVE	0.9996546506881714	Other
2071	1	Betam michu kelal nw	5	2024-03-20	Google Play	POSITIVE	0.7848201990127563	Other
2072	1	Need better Work on system	5	2024-03-20	Google Play	NEGATIVE	0.9990301132202148	Other
2073	1	Nice one	5	2024-03-19	Google Play	POSITIVE	0.9998481273651124	Other
2074	1	It's a very interesting app to have a safe money transaction. Appreciate it	4	2024-03-19	Google Play	POSITIVE	0.9996427297592164	Transaction Performance
2075	1	Ved	5	2024-03-19	Google Play	NEGATIVE	0.6331732869148254	Other
2076	1	Not good	1	2024-03-19	Google Play	NEGATIVE	0.9997889399528505	Other
2077	1	it is so use full!!	5	2024-03-19	Google Play	NEGATIVE	0.9897404909133912	Other
2078	1	Waa	4	2024-03-18	Google Play	NEGATIVE	0.9928324222564696	Other
2079	1	This app is verry interesting app ever almost add free and when comparing with other compitant banks app this app more great it work on less data best RTOS👌👌👌	5	2024-03-18	Google Play	NEUTRAL	0.5	Other
2080	1	Best solution for easy life !	4	2024-03-18	Google Play	POSITIVE	0.9993915557861328	Other
2081	1	Dowelled frome Google appe stor	4	2024-03-18	Google Play	NEGATIVE	0.9940987825393676	Other
2082	1	Nice app i like it	5	2024-03-18	Google Play	POSITIVE	0.9998552799224854	Other
2083	1	It doesn't work smoothly	1	2024-03-18	Google Play	NEGATIVE	0.9997738003730774	Other
2084	1	This good app	5	2024-03-17	Google Play	POSITIVE	0.9998703002929688	Other
2085	1	easy and excellent app	5	2024-03-17	Google Play	POSITIVE	0.9998570680618286	Other
2086	1	Beter than all others I have account with commercial bank of Ethiopia this chance is a higher profile gift to up grading the livelihood of the poor ones as well as the government revenue	4	2024-03-17	Google Play	POSITIVE	0.9990053772926332	Other
2087	1	The security is very weak and cyber attacks will always happen. Adjust the security	1	2024-03-17	Google Play	NEGATIVE	0.9969480633735656	Other
2088	1	Amazing apps are Ethiopian bank	5	2024-03-16	Google Play	POSITIVE	0.9997383952140808	Other
2089	1	Betam harif app new	5	2024-03-16	Google Play	NEGATIVE	0.9658843278884888	Other
2090	1	Amazing system	5	2024-03-16	Google Play	POSITIVE	0.9998695850372314	Other
2091	1	Commercial bank of Ethiopia experiances their best service to the customer handling and excellent offer they give and relialble bank that best describes them	5	2024-03-16	Google Play	POSITIVE	0.9993696808815002	Other
2092	1	always network error why ....	1	2024-03-16	Google Play	NEGATIVE	0.9995074272155762	Reliability
2093	1	Always crush its stupid app	1	2024-03-16	Google Play	NEGATIVE	0.9997749924659728	Other
2094	1	This Great app for me I like to rate this with 5 star solid.B/c It works well overall. So hello everyone enjoy the apps	5	2024-03-16	Google Play	POSITIVE	0.9998342990875244	Other
2095	1	Time saver	5	2024-03-16	Google Play	POSITIVE	0.9863924384117126	Other
2096	1	ጥሩ አይደለም	1	2024-03-16	Google Play	NEGATIVE	0.7850590348243713	Other
2097	1	Its trash	1	2024-03-16	Google Play	NEGATIVE	0.9994691014289856	Other
2098	1	Add pagination instead of loading all txns at once. Simple	4	2024-03-16	Google Play	NEGATIVE	0.7467561960220337	Transaction Performance
2099	1	Its. Bad	1	2024-03-16	Google Play	NEGATIVE	0.9997761845588684	Other
2100	1	It is a very good facility	5	2024-03-16	Google Play	POSITIVE	0.9998798370361328	Other
2101	1	I'm having trouble with the application, I can't see my balance or send money using the application. This is very disappointing as I have been experiencing this for a while.	1	2024-03-16	Google Play	NEGATIVE	0.9997668862342834	Other
2102	1	Yohanes and zefan	1	2024-03-15	Google Play	POSITIVE	0.9939892292022704	Other
2103	1	Gorgeous app i really like this app.	5	2024-03-15	Google Play	POSITIVE	0.9998513460159302	Other
2104	1	Good app and easy to use	5	2024-03-15	Google Play	POSITIVE	0.9998326301574708	Other
2105	1	Better and easy to use it	5	2024-03-15	Google Play	POSITIVE	0.9994625449180604	Other
2106	1	This is my first time to use this app. You have done great work. I Appreciate your effort ,do more to make this app more effective.	5	2024-03-15	Google Play	POSITIVE	0.9997367262840272	Other
2107	1	እጅግ በጣም ያማረ የኮመርሺያል አስተላላፊ መተግበርያ ሁኖ አግኝቸዋለሁ። እናመሠግናለን	5	2024-03-14	Google Play	NEGATIVE	0.9366679191589355	Other
2108	1	It's Well !!	3	2024-03-14	Google Play	POSITIVE	0.9998515844345092	Other
2109	1	This app is a good app	5	2024-03-14	Google Play	POSITIVE	0.9998512268066406	Other
2110	1	Actually I do not used it yet.	5	2024-03-14	Google Play	NEGATIVE	0.9948974251747132	Other
2111	1	It is not working, informs its synced but, when you request for transaction he doesnt process it	1	2024-03-14	Google Play	NEGATIVE	0.9994101524353028	Transaction Performance
2112	1	It's full of crashing features, can't sync real time need 3,4 touching doesn't work many times. In fact it's not working now I'm afraid if I uninstalled it I will be forced to go to the branch to activate it again so here I'm stuck with the app unable to access my money	1	2024-03-14	Google Play	NEGATIVE	0.9986022114753724	Account Access Issues;Reliability
2113	1	I like very much	5	2024-03-13	Google Play	POSITIVE	0.9998595714569092	Other
2114	1	After the recent update, the app crashs on its own and is glitchy	1	2024-03-13	Google Play	NEGATIVE	0.9996917247772216	Reliability
2115	1	Abdurezak Abdljalil Side	5	2024-03-12	Google Play	POSITIVE	0.7661615610122681	Other
2116	1	The best service cbe ever gave us	5	2024-03-12	Google Play	POSITIVE	0.9997140765190125	Other
2117	1	This app have not working please more approve it.	5	2024-03-12	Google Play	NEGATIVE	0.9984723925590516	Other
2118	1	Subcrib	5	2024-03-12	Google Play	NEUTRAL	0.5	Other
2119	1	my phone is camon 20 pro but it can't install on phone it is so bored 😴😴😴	1	2024-03-12	Google Play	NEGATIVE	0.9984760880470276	Other
2120	1	We're going to stop using not only this apk additional to stop all CBE services. bcz of when to use the apk it doesn't work properly/ doesn't sync /.... + started from last 2 months they're cut 5 birr without our permission for commission. + Cut 10 birr from us when transfer to telebirr... Uuuu CBE'jobs	1	2024-03-12	Google Play	NEGATIVE	0.9997157454490662	Transaction Performance
2121	1	Accountant and computer senice	5	2024-03-12	Google Play	NEGATIVE	0.9725162386894226	Other
2122	1	It's too smooth and easy to use version😎	5	2024-03-12	Google Play	POSITIVE	0.6982299089431763	Other
2123	1	Best and easy to use but the limitations is the when someone want to send birr from cbe to tele birr the transfer fee is higher and this is not correct	2	2024-03-11	Google Play	NEGATIVE	0.9993891716003418	Transaction Performance
2124	1	Best for save time	5	2024-03-11	Google Play	POSITIVE	0.9913964867591858	Other
2125	1	Very disgusted	1	2024-03-11	Google Play	NEGATIVE	0.9997909665107728	Other
2126	1	The new version get worse I can't even check my balance let alone doing other stuff.	2	2024-03-11	Google Play	NEGATIVE	0.9997318387031556	Other
2127	1	It's fast,very good App...	5	2024-03-11	Google Play	POSITIVE	0.999870538711548	Other
2128	1	The new one is not working on my phone disliked it	1	2024-03-11	Google Play	NEGATIVE	0.9990218877792358	Other
2129	1	Better than the previous version. The update is good 👍	5	2024-03-11	Google Play	POSITIVE	0.9997403025627136	Other
2130	1	C. Cc x. M x x. S sx. ## xc c c b_.4.m. C c. Exx xn2 Dodds s 7. 33f N.gn Cd 7 y n bbe4. Mrn4	5	2024-03-11	Google Play	NEGATIVE	0.9963127970695496	Other
2131	1	Add statement request through email and others.	3	2024-03-10	Google Play	NEGATIVE	0.9670512676239014	Other
2132	1	Got worse after the update. Now it doesn't do anything after logging in.	1	2024-03-10	Google Play	NEGATIVE	0.99968421459198	Other
2133	1	It simply isn't working. Example: I can't access my account statement in order to find out how much I sent to Mr X or Y over the last six months or so. Nor is your FAQ section helpful. I suggest that you review the efficacy of your app.	1	2024-03-09	Google Play	NEGATIVE	0.9997946619987488	Account Access Issues;Customer Support
2134	1	Less	2	2024-03-09	Google Play	NEGATIVE	0.9940166473388672	Other
2135	1	Applicationiin kun akka ati barbaaddetti hin hoojjatu maali rakkoon isaa	5	2024-03-09	Google Play	NEGATIVE	0.9875171780586244	Other
2136	1	❤️❤️❤️❤️❤️❤️❤️💯💯💯💯💯💯💯	5	2024-03-09	Google Play	NEGATIVE	0.697056770324707	Other
2137	1	No customer service help and it's in general doesn't fill out the global app's estandard. It was felt.	1	2024-03-09	Google Play	NEGATIVE	0.9991623163223268	Customer Support
2138	1	በጣም አስቸጋሪ ሁኔታ ውስጥ ገብተናል በንግድ ባንክ የተለያዩ አማራጮች ብንጠቀምም የፍጥነት ሁኔታው አሁንም ሊሻሻል አልቻለም!	4	2024-03-09	Google Play	POSITIVE	0.9769909977912904	Other
2139	1	It's goo	5	2024-03-09	Google Play	NEGATIVE	0.996632993221283	Other
2140	1	The application get stacked the whole day ( March 9, 2024); it is a big head ache on daily work	1	2024-03-09	Google Play	NEGATIVE	0.9987149238586426	Other
2141	1	The seystem is not good an commmercial bank it so poor and it not good.at all	1	2024-03-09	Google Play	NEGATIVE	0.9998062252998352	Other
2142	1	Nice app!	5	2024-03-09	Google Play	POSITIVE	0.9998137354850768	Other
2143	1	I can't transfer to telebirr and takes time to scan	1	2024-03-09	Google Play	NEGATIVE	0.9991583824157716	Transaction Performance
2144	1	nice application to tract the money I have on commercial bank ethiopia	5	2024-03-09	Google Play	POSITIVE	0.9937793612480164	Other
2145	1	new paiment must raisec	5	2024-03-09	Google Play	NEUTRAL	0.5	Other
2146	1	You deserve less than 1 star	1	2024-03-09	Google Play	NEGATIVE	0.9989110231399536	Other
2147	1	Nice but sometimes, all little....	5	2024-03-09	Google Play	POSITIVE	0.8079737424850464	Other
2148	1	Doesn't work when a lot of people are using CBE services and usually on weekends. Customer service not helpful or doesn't even respond.	1	2024-03-09	Google Play	NEGATIVE	0.999205768108368	Customer Support
2149	1	Sometimes it work , and sometimes it doesn't fix that up	1	2024-03-09	Google Play	NEGATIVE	0.9979684948921204	Other
2150	1	It is easy to use and good applicarion .thanks to cbe	5	2024-03-09	Google Play	POSITIVE	0.9998658895492554	Other
2151	1	የሞተ አፕ ተበላሽቷል	1	2024-03-09	Google Play	NEGATIVE	0.8337255716323853	Other
2152	1	Sometimes it brings a contradicting notifications. First I saw an internet poll form. After I filled it, another message comes that advises users not fill any forms sent or bank did not send such documents. Sometimes the app gets stack without any prior notices. It happened quite numerical times with me. Otherwise great app. I think a followup maintenance and improvements needed	3	2024-03-09	Google Play	NEGATIVE	0.8952962756156921	User Interface
2153	1	Worst app ever	1	2024-03-09	Google Play	NEGATIVE	0.9997803568840028	Other
2154	1	1.Very unstable, continuously crashes. 2.There is an incredible amount of balance and transaction synchronization errors. 3.Have tries to make a transfer of 60k since yesterday still not able to due to errors popups with no message to explain error. For a bank, that is quite embarrassing and dangerous.	1	2024-03-09	Google Play	NEGATIVE	0.9985709190368652	Transaction Performance;User Interface;Reliability
2155	1	በሽተኛ አፕ ነው ሲፍለግ አይሰራም	1	2024-03-09	Google Play	NEGATIVE	0.8832130432128906	Other
2156	1	It's nice app	5	2024-03-09	Google Play	POSITIVE	0.9998639822006226	Other
2157	1	Always have network issue Even my network work fine	2	2024-03-09	Google Play	NEGATIVE	0.7080866098403931	Other
2158	1	This app worse 😭	1	2024-03-09	Google Play	NEGATIVE	0.998607575893402	Other
2159	1	Brachewen enkuan mawetat atchlum	1	2024-03-09	Google Play	NEGATIVE	0.9778958559036256	Other
2160	1	most of the time its not working	2	2024-03-09	Google Play	NEGATIVE	0.9983423948287964	Other
2161	1	It's the best app but it doesn't respond quickly	3	2024-03-09	Google Play	NEGATIVE	0.987777292728424	User Interface
2162	1	Optional It doesn't work for me. What i can do?	5	2024-03-09	Google Play	NEGATIVE	0.9993543028831482	Other
2163	1	App Kun baay'ee bareedadha! Natti tole jira!	5	2024-03-09	Google Play	NEGATIVE	0.949915647506714	Other
2164	1	It is very good. I enjoy using it.	5	2024-03-09	Google Play	POSITIVE	0.9998779296875	Other
2165	1	Very smart financial apps	5	2024-03-08	Google Play	POSITIVE	0.9998250603675842	Other
2166	1	The best app.	3	2024-03-08	Google Play	POSITIVE	0.9998536109924316	Other
2167	1	This is not working without Ethiopia Not downloaded	5	2024-03-08	Google Play	POSITIVE	0.9833074808120728	Other
2168	1	Is wired appp	1	2024-03-08	Google Play	NEGATIVE	0.7396237254142761	Other
2169	1	Modern Digital Application	5	2024-03-08	Google Play	POSITIVE	0.998747944831848	Other
2170	1	Reta Girma	1	2024-03-08	Google Play	POSITIVE	0.8284564018249512	Other
2171	1	Paving the way for simple life.	5	2024-03-07	Google Play	POSITIVE	0.9989718198776244	Other
2172	1	very poor, it doesn't load while searching for extended time	1	2024-03-07	Google Play	NEGATIVE	0.9970237612724304	Other
2173	1	Ali wow	5	2024-03-07	Google Play	POSITIVE	0.9991018772125244	Other
2174	1	Excellent App and easy to use.	4	2024-03-07	Google Play	POSITIVE	0.9998433589935304	Other
2175	1	Best ever banking app	5	2024-03-06	Google Play	POSITIVE	0.9997472167015076	Other
2176	1	The app got dumber in the last update. Poorly organized, redundant item across different categories. I wrote this review with my phone barred from calls because I couldn't settle my bill from your old "utilities" or the newly added "utility" tab.	1	2024-03-06	Google Play	NEGATIVE	0.9998112320899964	Other
2177	1	yes do it	5	2024-03-06	Google Play	POSITIVE	0.9996446371078492	Other
2178	1	The app has good flexibility for day to day activities and stuff but it takes unessential amount of money for no valid reason which is very disappointing	3	2024-03-06	Google Play	NEGATIVE	0.9993488192558287	Other
2179	1	Hamzaa tobba	5	2024-03-06	Google Play	POSITIVE	0.7093610167503357	Other
2180	1	Good app and smooth services.	5	2024-03-05	Google Play	POSITIVE	0.9998457431793212	Other
2181	1	Pay for Beneficiary and sharing success reports are not working on the latest update.	2	2024-03-05	Google Play	NEGATIVE	0.9996094107627868	Other
2182	1	Full transaction statment	2	2024-03-05	Google Play	POSITIVE	0.9567456245422364	Transaction Performance
2183	1	❤❤❤🙏	5	2024-03-05	Google Play	NEGATIVE	0.697056770324707	Other
2184	1	Easy to use, and effective!	5	2024-03-05	Google Play	POSITIVE	0.9998635053634644	Other
2185	1	The worst app ever made! I transfered money to abyssinia bank account, deducted the money from my cbe account but never made it through to my abyssinia account! I hate this app and bank! Idk why they are making me wait a whole week to return my money! Even there call center 951 doesn't work! Shame!	1	2024-03-05	Google Play	NEGATIVE	0.999782383441925	Transaction Performance
2186	1	very nice app	5	2024-03-04	Google Play	POSITIVE	0.9998562335968018	Other
2187	1	Very nice, but requires paid network.	3	2024-03-04	Google Play	NEGATIVE	0.8431804180145264	User Interface
2188	1	Adding fingerprint access would greatly improve the experience.	4	2024-03-04	Google Play	POSITIVE	0.993444800376892	Account Access Issues
2189	1	i tried to transfer 20k to other bank the transaction failed but it deducted from my balance and the other day i tried to transfer 15k to telebirr then it failed again also deducted from balance i dont even know how to trust it after now	1	2024-03-03	Google Play	NEGATIVE	0.9994760155677797	Transaction Performance
2190	1	Our commercial	5	2024-03-03	Google Play	NEGATIVE	0.989496648311615	Other
2191	1	Really good app to transfer money and receive	2	2024-03-03	Google Play	POSITIVE	0.999755084514618	Transaction Performance
2192	1	It is nice, but sometimes it doesn't sync fast	5	2024-03-03	Google Play	NEGATIVE	0.993897259235382	Other
2193	1	By jf.as.	5	2024-03-03	Google Play	POSITIVE	0.9747878313064576	Other
2194	1	Easy Fast and siitable	5	2024-03-03	Google Play	POSITIVE	0.9985766410827636	Other
2195	1	CBE banks are deducting 5 birr from customers' accounts every month without authorization, and their customer service is subpar. Therefore, I will rate them 1 star.	1	2024-03-03	Google Play	NEGATIVE	0.9973382353782654	Customer Support
2196	1	It is nice to save time	5	2024-03-02	Google Play	POSITIVE	0.9998152852058412	Other
2197	1	effective and efficient app.	5	2024-03-02	Google Play	POSITIVE	0.9998667240142822	Other
2198	1	If we can get a chance to win	5	2024-03-02	Google Play	POSITIVE	0.9993139505386353	Other
2199	1	Sometimes the app doesn't not working	4	2024-03-02	Google Play	NEGATIVE	0.9997143149375916	Other
2200	1	It is great Mobile banking app ever, for Uncolonized state. [Mama Ethiopia].	5	2024-03-02	Google Play	POSITIVE	0.9992755055427552	Other
2201	1	Please add new future more and more ,no update is available for it still and I cannot access statement means this future is not available... Am waiting please	5	2024-03-02	Google Play	NEGATIVE	0.9988375306129456	Account Access Issues
2202	1	I really appreciate your M B perfectly on top of the century	5	2024-03-02	Google Play	POSITIVE	0.9998708963394164	Other
2203	1	I am really appreciate this app	5	2024-03-01	Google Play	POSITIVE	0.99981027841568	Other
2204	1	Perfect app	5	2024-03-01	Google Play	POSITIVE	0.9998340606689452	Other
2205	1	This app is good but the only difficulty with the app is it needs high speed network which makes it challenging to access it in some places	3	2024-03-01	Google Play	NEGATIVE	0.9859204888343812	Account Access Issues
2206	1	Thanks for commercial bank of Ethiopia	5	2024-03-01	Google Play	POSITIVE	0.9995036125183104	Other
2207	1	thaku	5	2024-03-01	Google Play	POSITIVE	0.7859484553337097	Other
2208	1	Nice Bank	5	2024-02-29	Google Play	POSITIVE	0.999805510044098	Other
2209	1	It is good and Okay thanks	5	2024-02-29	Google Play	POSITIVE	0.9998511075973512	Other
2210	1	Why the latest update didn't work on Wifi very well?	5	2024-02-29	Google Play	NEGATIVE	0.9996882677078248	Other
2211	1	The most important banking application.	5	2024-02-29	Google Play	POSITIVE	0.9932181239128112	Other
2212	1	One of a kind	5	2024-02-29	Google Play	POSITIVE	0.9994718432426452	Other
2213	1	አሪፍ ነው	5	2024-02-29	Google Play	NEGATIVE	0.7850590348243713	Other
2214	1	Easy and fast 👌	5	2024-02-28	Google Play	POSITIVE	0.9993515610694884	Other
2215	1	Well noted	5	2024-02-28	Google Play	POSITIVE	0.9998531341552734	Other
2216	1	8e	2	2024-02-28	Google Play	POSITIVE	0.6845311522483826	Other
2217	1	Best app to my needs. keep up the good job	5	2024-02-28	Google Play	POSITIVE	0.9996019005775452	Other
2218	1	It has a problem of synchronization. Please fix it.	1	2024-02-28	Google Play	NEGATIVE	0.99946528673172	Other
2219	1	have network issue its just rotate	3	2024-02-28	Google Play	NEGATIVE	0.9870569109916688	Other
2220	1	Very useful application which really helps me to use even while I was outside of the country. Thanks.	5	2024-02-28	Google Play	POSITIVE	0.9997733235359192	Customer Support
2221	1	i believe that the updated mobile application will answer many of the users question and it is recommended that iphone users use the one downloaded from the app store rather than the one downloaded from the play store.	5	2024-02-27	Google Play	POSITIVE	0.8650609254837036	Other
2222	1	All are wel and i have one quastion where arr merjed account	5	2024-02-27	Google Play	NEGATIVE	0.9799261689186096	Other
2223	1	Best app👍	5	2024-02-27	Google Play	POSITIVE	0.9997019171714784	Other
2224	1	Very Good service	5	2024-02-27	Google Play	POSITIVE	0.9998648166656494	Other
2225	1	👏👏👏👏👏👍👍👍👍👍👍	5	2024-02-27	Google Play	NEGATIVE	0.697056770324707	Other
2226	1	5 star	5	2024-02-27	Google Play	POSITIVE	0.9964116215705872	Other
2227	1	Whats wrong the app following the new update? I can't even see my balance now. I used old app for more than three years from Europe and every thing was perfect. Now you it looks like the app is not stable. Thank you for spoiling it.	5	2024-02-27	Google Play	NEGATIVE	0.9952940344810486	Other
3250	1	It's relief	5	2023-07-24	Google Play	POSITIVE	0.9998213648796082	Other
2228	1	Wow cbe keep up the good work, the interface is very attractive,the processing speed is good(needs to put some effort),canceling or aborting any proceeding task seems impossible(of course the payment process should not be interrupted...i do agree)...all in all, I'm hoping this will be resolved soon by the updates...	4	2024-02-27	Google Play	POSITIVE	0.9992352724075316	Transaction Performance;User Interface
2229	1	Please add an option transfer to other tellebirr wallet	5	2024-02-27	Google Play	NEGATIVE	0.9879323840141296	Transaction Performance
2230	1	Saffisaan baay'ee fooyyee qaba	5	2024-02-27	Google Play	NEGATIVE	0.9635881185531616	Other
2231	1	Good app but no chance for money withdrawal option for cardless	4	2024-02-27	Google Play	NEGATIVE	0.9036106467247008	Other
2232	1	Excellent app which transfers money to another immediately with out waiting that is amazing keep it up....	5	2024-02-27	Google Play	POSITIVE	0.9998088479042052	Transaction Performance
2233	1	Very weak and slow to sync and show the balance, pls improve it	1	2024-02-27	Google Play	NEGATIVE	0.997467875480652	Transaction Performance
2234	1	Very very much tanks CBE birr	5	2024-02-27	Google Play	NEGATIVE	0.839662492275238	Other
2235	1	waw its grate app	4	2024-02-26	Google Play	NEGATIVE	0.9838654398918152	Other
2236	1	It's great. በጣም ቀላል ፣ምቹ ፣አስተማማኝ ፣ቀልጣፋ አገልግሎት ። ባሉበት ቦታ ሆነው የሚገለገልበት ባንክ ። መስተካከል ያለበት :- sort by date transaction list and print monthly statement	5	2024-02-26	Google Play	POSITIVE	0.9997827410697936	Transaction Performance
2237	1	Nice business 😜	3	2024-02-26	Google Play	POSITIVE	0.9998316764831544	Other
2238	1	Nice one app	5	2024-02-26	Google Play	POSITIVE	0.9998261332511902	Other
2239	1	🤑🤑🤑 very good	5	2024-02-26	Google Play	POSITIVE	0.9998682737350464	Other
2240	1	Best Application Thanks so much commercial Bank of Ethiopia	5	2024-02-26	Google Play	POSITIVE	0.9995447993278505	Other
2241	1	It's good and perfect app	1	2024-02-26	Google Play	POSITIVE	0.9998782873153688	Other
2242	1	Nice app ever	5	2024-02-26	Google Play	POSITIVE	0.9998384714126588	Other
2243	1	good work	5	2024-02-26	Google Play	POSITIVE	0.999841332435608	Other
2244	1	It would be nice to have an offline option.	3	2024-02-26	Google Play	NEGATIVE	0.9062647819519044	Other
2245	1	what abaot my mobile banking code? I'm forgetting my password	5	2024-02-25	Google Play	NEGATIVE	0.9996271133422852	Account Access Issues
2246	1	Wow new	5	2024-02-25	Google Play	POSITIVE	0.9996795654296876	Other
2247	1	Smart cbe noor	5	2024-02-25	Google Play	POSITIVE	0.998441994190216	Other
2248	1	Transaction report not showing properly	1	2024-02-25	Google Play	NEGATIVE	0.9997908473014832	Transaction Performance
2249	1	መዘመን የማይችል ድንክ ባንክ። በቃ ሁሉንም ነገር እጅግ በተንዛዛ አካሔድ ለመስራት የሚፈልግ፣ ከቢዝነስ ይልቅ ፖለቲካ ያጠቃው Backward ! Even ጥቃቅን ችግሮችን ለማስተካከል ብዙ ጊዜን የሚያቃጥል ባንክ ፤ Online ማስተካከያዎች የሌሉት እና ህንፃ ብቻ...!	1	2024-02-25	Google Play	NEGATIVE	0.9922203421592712	Other
2250	1	I really don't like it 😕	1	2024-02-25	Google Play	NEGATIVE	0.9944804906845092	Other
2251	1	Wana nachu serayen akelelachu yemechachu	5	2024-02-25	Google Play	NEGATIVE	0.9835545420646667	Other
2252	1	It simple to use but sometimes doesn't work	3	2024-02-25	Google Play	NEGATIVE	0.999349057674408	Other
2253	1	Gaariidha	5	2024-02-25	Google Play	POSITIVE	0.9923553466796876	Other
2254	1	what a great app is	5	2024-02-24	Google Play	POSITIVE	0.999834418296814	Other
2255	1	Mubail banking	5	2024-02-24	Google Play	NEUTRAL	0.5	Other
2256	1	Thanks allot I brishye this app	4	2024-02-24	Google Play	POSITIVE	0.9983972907066344	Other
2257	1	wowwwww	5	2024-02-24	Google Play	POSITIVE	0.982027232646942	Other
2258	1	aad ayuu udadaalayaa bangigu laakin lacagaha khidmada ah hadaayo macaamiisha	5	2024-02-24	Google Play	NEGATIVE	0.9938147068023682	Other
2259	1	Cool keep going	5	2024-02-24	Google Play	POSITIVE	0.9998706579208374	Other
2260	1	አሰተማማኝ አፐ	4	2024-02-24	Google Play	NEGATIVE	0.7850590348243713	Other
2261	1	Good service all 3rd gneration	5	2024-02-24	Google Play	POSITIVE	0.9996887445449828	Other
2262	1	هلا احصن برانامج	5	2024-02-24	Google Play	NEGATIVE	0.7098615169525146	Other
2263	1	Good app for me	5	2024-02-24	Google Play	POSITIVE	0.9998420476913452	Other
2264	1	Commercial Ba...	5	2024-02-24	Google Play	NEGATIVE	0.9084190726280212	Other
2265	1	When you try to search for a help (chat, hotline, email, phone) you see the bottom "Help" which redirectes you to !!!Donations to various charity organisations. Please dear CBE IT department , when user searches for help it is to get assistance not to give money. What you named help other banks call "Charity" "Donate" etc. And yes users need HELP. Not everyone has opportunity to run 5 times per day to the branch and try to find why the money he transferred is disappeared.	1	2024-02-24	Google Play	NEGATIVE	0.9944804906845092	Transaction Performance;Customer Support
2266	1	Fast and good app🙏	3	2024-02-24	Google Play	POSITIVE	0.999880313873291	Other
2267	1	Maashaa Allah waan gaariidha.	5	2024-02-24	Google Play	NEGATIVE	0.978356659412384	Other
2268	1	Helpful	5	2024-02-24	Google Play	POSITIVE	0.9997673630714417	Customer Support
2269	1	Application replay	5	2024-02-24	Google Play	NEGATIVE	0.9792318344116212	Other
2270	1	አፑ እኔ ስልክ ላይ አልከፍት ወይም ኢንስቴል አላደርግ አለኝ፡፡ምን ላርገው	1	2024-02-24	Google Play	NEGATIVE	0.9510265588760376	Other
2271	1	I love sis app yeppp	5	2024-02-23	Google Play	POSITIVE	0.9995378255844116	Other
2272	1	Very simple and friendly	5	2024-02-23	Google Play	POSITIVE	0.9998691082000732	Other
2273	1	Excelent	1	2024-02-23	Google Play	POSITIVE	0.9998672008514404	Other
2274	1	It is busy more time why is it?	3	2024-02-23	Google Play	NEGATIVE	0.999244213104248	Other
2275	1	Nice the new update fix some bugs	5	2024-02-23	Google Play	POSITIVE	0.9907377362251282	Reliability
2276	1	Chemir	5	2024-02-23	Google Play	POSITIVE	0.9982925057411194	Other
2277	1	Very good takes	5	2024-02-23	Google Play	POSITIVE	0.9998725652694702	Other
2278	1	iPhone	5	2024-02-23	Google Play	POSITIVE	0.9254897832870485	Other
2279	1	Idf	1	2024-02-23	Google Play	NEGATIVE	0.8924206495285034	Other
2280	1	Very Very good news	5	2024-02-23	Google Play	POSITIVE	0.9998788833618164	Other
2281	1	Highest Neonatal Bank Don't like Only Contacts	5	2024-02-23	Google Play	NEGATIVE	0.885604977607727	Other
2282	1	SultanaShafii	4	2024-02-23	Google Play	POSITIVE	0.9595633149147034	Other
2283	1	it's great & useful app	4	2024-02-23	Google Play	POSITIVE	0.9998630285263062	Other
2284	1	Banking with CBE anywhere anytime.	5	2024-02-23	Google Play	POSITIVE	0.9610008597373962	Other
2285	1	Very fast and manageable	4	2024-02-23	Google Play	POSITIVE	0.9998089671134948	Other
2286	1	mobile banking	5	2024-02-23	Google Play	POSITIVE	0.9076533913612366	Other
2287	1	ከዚ የበለጠ መዘመን አለባችሁ እንደ ቀደምትነታችሁ	5	2024-02-23	Google Play	NEGATIVE	0.904695212841034	Other
2288	1	It doesn't update quickly and display balances please improve so we can rely on the online payments.	2	2024-02-23	Google Play	NEGATIVE	0.9949546456336976	Transaction Performance;User Interface
2289	1	Nice app keep it up	3	2024-02-23	Google Play	POSITIVE	0.9998499155044556	Other
2290	1	This app is helpfull but the only problem i am facing is I lost all my previous transaction and list of contacts(acc numbers those were saved in the app) when i updated the latest one. And how can i restor it pls	4	2024-02-23	Google Play	NEGATIVE	0.9996886253356934	Transaction Performance;Customer Support
2291	1	It is simple to use but network problems sometimes face	5	2024-02-23	Google Play	NEGATIVE	0.998397409915924	Other
2292	1	The best app !!	5	2024-02-23	Google Play	POSITIVE	0.999862551689148	Other
2293	1	The Best app of banking sector	5	2024-02-23	Google Play	POSITIVE	0.9998453855514526	Other
2294	1	Transaction respondes with non available message	1	2024-02-23	Google Play	NEGATIVE	0.9919849634170532	Transaction Performance
2295	1	Please, still now, I am not accepting codes for activation of my account. help	5	2024-02-22	Google Play	NEGATIVE	0.9979119896888732	Customer Support
2296	1	The app is so good	5	2024-02-22	Google Play	POSITIVE	0.9998621940612792	Other
2297	1	Unable to connect server eyale nw eskahun alkefetem	3	2024-02-22	Google Play	NEGATIVE	0.9996672868728638	Other
2298	1	Fast and easy to use if there is no network problem	5	2024-02-22	Google Play	POSITIVE	0.9975278973579408	Other
2299	1	Five Star	5	2024-02-22	Google Play	POSITIVE	0.9985104203224182	Other
2300	1	It's good but, sometimes it says none Avelable	5	2024-02-22	Google Play	POSITIVE	0.992767095565796	Other
2301	1	Seyfedin	5	2024-02-22	Google Play	POSITIVE	0.9929232597351074	Other
2302	1	Good app for usurers	5	2024-02-21	Google Play	POSITIVE	0.9993696808815002	Other
2303	1	It's good,but sometimes it's not work.	5	2024-02-21	Google Play	NEGATIVE	0.9966991543769836	Other
2304	1	Good, but we expect more from you... (Please add fingerprint) like cbebirr	3	2024-02-21	Google Play	POSITIVE	0.9233331084251404	Account Access Issues
2305	1	Good but sometimes it has network glitch	3	2024-02-21	Google Play	NEGATIVE	0.9847670197486876	Other
2306	1	It's progress very well Thanks	5	2024-02-21	Google Play	POSITIVE	0.9998551607131958	Other
2307	1	need more work.	3	2024-02-20	Google Play	NEGATIVE	0.998224437236786	Other
2308	1	Goid app	5	2024-02-20	Google Play	NEGATIVE	0.6629179120063782	Other
2309	1	Horrible !!!	1	2024-02-20	Google Play	NEGATIVE	0.9997498393058776	Other
2310	1	Jibrili jamal musaa	3	2024-02-20	Google Play	NEGATIVE	0.8282864689826965	Other
2311	1	Sweet 10q	5	2024-02-20	Google Play	POSITIVE	0.9986732006072998	Other
2312	1	The best mobile app.	5	2024-02-20	Google Play	POSITIVE	0.9998425245285034	Other
2313	1	This app is very bad.it not work so fast	1	2024-02-20	Google Play	NEGATIVE	0.9992645382881165	Other
2314	1	It is the most irritating banking app ever you should update it, it is very irritating tbh.	1	2024-02-20	Google Play	NEGATIVE	0.9996726512908936	Other
2315	1	I like this App!	5	2024-02-20	Google Play	POSITIVE	0.9997571110725404	Other
2316	1	Engineer	5	2024-02-20	Google Play	POSITIVE	0.9784975051879884	Other
2317	1	It was good but now I can't get the same access	5	2024-02-20	Google Play	NEGATIVE	0.9777233004570008	Account Access Issues
2318	1	Very best apps	5	2024-02-19	Google Play	POSITIVE	0.9998601675033568	Other
2319	1	This is quite good than before, and well updated, specifically reciept after transaction is well organized. But still, the statement is limited. Work on this how to link with our email to control transactions.	3	2024-02-19	Google Play	NEGATIVE	0.9449955224990844	Transaction Performance;User Interface
2320	1	Good keep it up	5	2024-02-19	Google Play	POSITIVE	0.9998568296432496	Other
2321	1	All transactions history has to be shown .	3	2024-02-19	Google Play	NEGATIVE	0.978099763393402	Transaction Performance
2322	1	Gadisa Dino Abdi CBE MOBIEL BANKING	5	2024-02-19	Google Play	POSITIVE	0.8576381206512451	Other
2323	1	የመስመር ቁጥሬ የተረሳ ስለሆነ አስታውሰኝ	5	2024-02-19	Google Play	NEGATIVE	0.8832130432128906	Other
2324	1	Muhammed sani seid	5	2024-02-19	Google Play	POSITIVE	0.9567591547966005	Other
2325	1	Woow i like it	5	2024-02-19	Google Play	POSITIVE	0.9978850483894348	Other
2326	1	It is my great and urget issue ,ie there must be personal account lock by using mobile app due to some times staffs and other bodies are accesseing by pertending customer signature .hence Personal post no debit have to be applicabe inorder to protect customer account from any suspected actions takes place	1	2024-02-18	Google Play	NEUTRAL	0.5	Account Access Issues
2327	1	Why my app speed quality is low	3	2024-02-18	Google Play	NEGATIVE	0.9997453093528748	Other
2328	1	Goog	5	2024-02-18	Google Play	NEGATIVE	0.9989757537841796	Other
2329	1	This app is very simple, fast and easy	5	2024-02-18	Google Play	POSITIVE	0.9988698363304138	Other
2330	1	Not working very well	1	2024-02-18	Google Play	NEGATIVE	0.9997863173484802	Other
2331	1	Not that much	3	2024-02-17	Google Play	NEGATIVE	0.9996957778930664	Other
2332	1	Very good app.	5	2024-02-17	Google Play	POSITIVE	0.9998669624328612	Other
2333	1	፦፦፧፨፧፦፧፧፧፨፧፧፦፧፦፧፦፤	4	2024-02-17	Google Play	NEGATIVE	0.9593425393104552	Other
2334	1	fantastic app	5	2024-02-17	Google Play	POSITIVE	0.999858856201172	Other
2335	1	👍 👍 👍 👍 👍	5	2024-02-17	Google Play	NEGATIVE	0.8832130432128906	Other
2336	1	Aza	1	2024-02-17	Google Play	NEGATIVE	0.8711424469947815	Other
2337	1	App kana hedduun jaalladhe,warri kana hojjettan galata guddaa nu biraa qabdu.	5	2024-02-17	Google Play	NEGATIVE	0.9909539818763732	Other
2338	1	The APP is very fast that is good	4	2024-02-16	Google Play	POSITIVE	0.9998610019683838	Other
2339	1	1. Still no biometric sign in option 2. Annoying welcome notification 3. Not able to share payment receipts just from the app 4. Different interface from one mobile device to the other one. 5. In general, the app requires overhaul to cope with other mobile banking services of banks.	1	2024-02-16	Google Play	NEGATIVE	0.9973040819168092	Transaction Performance;User Interface
2340	1	It's good but i can't send money for other tell birr account i don't like this ....	4	2024-02-16	Google Play	NEGATIVE	0.9894452691078186	Other
2341	1	Bad active	1	2024-02-16	Google Play	NEGATIVE	0.9996800422668456	Other
2342	1	It's a quiet good and smoothly accessible app which allows users to transfer and deposit but it would have been very great if there was a chance for topping up or Adding balance to your account.	3	2024-02-16	Google Play	POSITIVE	0.9987009763717652	Account Access Issues;Transaction Performance;User Interface
2343	1	Best app. Easy to use, free from virus, and interesting features contained.	5	2024-02-16	Google Play	POSITIVE	0.9997631907463074	Other
2344	1	Nice app but the transaction history is not accurate and it doesn't sync at times.	3	2024-02-16	Google Play	NEGATIVE	0.9993508458137512	Transaction Performance
2345	1	Very active app. Good Technology !	5	2024-02-15	Google Play	POSITIVE	0.9998667240142822	Other
2346	1	This app is one of the best mobile banking in 🇪🇹	5	2024-02-15	Google Play	POSITIVE	0.9997138381004332	Other
2347	1	Keepup Very Good!	5	2024-02-15	Google Play	POSITIVE	0.999860405921936	Other
2348	1	the latest update was best❤❤	5	2024-02-15	Google Play	POSITIVE	0.6054196953773499	Other
2349	1	👍good Job's	5	2024-02-15	Google Play	POSITIVE	0.9596216082572936	Other
2350	1	Fast and easy	5	2024-02-15	Google Play	POSITIVE	0.9994889497756958	Other
2351	1	Best exp....	5	2024-02-15	Google Play	POSITIVE	0.9988239407539368	Other
2352	1	it's really frustrating 😕 it works on it's own terms 😒	1	2024-02-15	Google Play	NEGATIVE	0.9972551465034484	Other
2353	1	It is good.	5	2024-02-15	Google Play	POSITIVE	0.9998525381088256	Other
2354	1	its fast & good app so 10q	3	2024-02-15	Google Play	POSITIVE	0.998473346233368	Other
2355	1	Good ,easy and reliable	5	2024-02-15	Google Play	POSITIVE	0.9998639822006226	Other
2356	1	cool	4	2024-02-15	Google Play	POSITIVE	0.9998509883880616	Other
2357	1	It is easy and fast app	4	2024-02-14	Google Play	POSITIVE	0.9992641806602478	Other
2358	1	The New realese is just WOW every feature is very importat and mostly the verification was an important feature. Thank you CBE APP Developer team👍	4	2024-02-14	Google Play	POSITIVE	0.9902397394180298	Other
2359	1	Best app Galaatooma appiin kun bareedadha	5	2024-02-14	Google Play	POSITIVE	0.9888038039207458	Other
2360	1	Everything is good. Specially its simplicity. But it is better if there were transaction feature for more than one account in separate	4	2024-02-14	Google Play	POSITIVE	0.9701987504959106	Transaction Performance
2361	1	This version is annoying . all the accounts i have been transfered are removed . No suggustion :-( :-( :-(	1	2024-02-14	Google Play	NEGATIVE	0.9995853304862976	Transaction Performance
2362	1	Good application it's useful to make life easy	5	2024-02-14	Google Play	POSITIVE	0.9997712969779968	Other
2363	1	Excellent service	5	2024-02-14	Google Play	POSITIVE	0.9998576641082764	Other
2364	1	It's been long time since i stepped on a door of a bank. I send, receive a mony, pay my utilities and do all the finantial stuffs. I loved it!! But I think the security should be more. stronger. Like making the code 6 degits. Thank You!	4	2024-02-14	Google Play	POSITIVE	0.9827173352241516	Other
2365	1	Trasaction Reports are not full, the list only shows the last 10 transactions, I need to see every transaction I made , and make a contact us page on your app too, other than that it's a good app	3	2024-02-14	Google Play	NEGATIVE	0.9892452955245972	Transaction Performance
2366	1	i said Wow for this app	5	2024-02-14	Google Play	POSITIVE	0.999482274055481	Other
2367	1	Best of all mobile bank	5	2024-02-14	Google Play	POSITIVE	0.9996142387390136	Other
2368	1	Well done really . especially what you done recently is amazing.	5	2024-02-14	Google Play	POSITIVE	0.999873161315918	Other
2369	1	This application is so easy and Comfortable to use I love it !!!!	5	2024-02-14	Google Play	POSITIVE	0.9998341798782348	Other
2370	1	Best performance was seen recently.	5	2024-02-14	Google Play	POSITIVE	0.9997273087501526	Other
2371	1	wow!!! so much nice app!!!	5	2024-02-14	Google Play	POSITIVE	0.9998427629470824	Other
2372	1	Very slow	3	2024-02-14	Google Play	NEGATIVE	0.9997065663337708	Transaction Performance
2373	1	Easy to use. Love it.	5	2024-02-14	Google Play	POSITIVE	0.9998807907104492	Other
2374	1	Very problematic... doesn't work when needed	2	2024-02-14	Google Play	NEGATIVE	0.999668836593628	Other
2375	1	Best financial apk	5	2024-02-14	Google Play	POSITIVE	0.9995772242546082	Other
2376	1	i need a way to register online without going to branch n you have to provide that service.... your services are something like you are still living in the 20th century.	1	2024-02-13	Google Play	POSITIVE	0.9952548742294312	Other
2377	1	It is very used application	5	2024-02-13	Google Play	POSITIVE	0.9983174800872804	Other
2378	1	Too many bugs e.g the sync never works I have to go frequently to get fixes	2	2024-02-13	Google Play	NEGATIVE	0.9994400143623352	Reliability
2379	1	Nice and easy to use	4	2024-02-13	Google Play	POSITIVE	0.9998689889907836	Other
2380	1	It is perfect!	5	2024-02-13	Google Play	POSITIVE	0.999868869781494	Other
2381	1	You are doing good .	5	2024-02-13	Google Play	POSITIVE	0.9998452663421632	Other
2382	1	This app doesn't run on rooted devices 😥	4	2024-02-13	Google Play	NEGATIVE	0.9851085543632508	Other
2383	1	Please fix the error popping up after a successful transfer to other bank. It appears as if the transfer is not successful.	4	2024-02-13	Google Play	NEGATIVE	0.9996015429496764	Transaction Performance;Reliability
2384	1	Very good App	5	2024-02-13	Google Play	POSITIVE	0.9998675584793092	Other
2385	1	Not good enough	1	2024-02-13	Google Play	NEGATIVE	0.9997830986976624	Other
2386	1	I like and satisfy by using commercial bank of Ethiopia thanks	5	2024-02-13	Google Play	POSITIVE	0.9996438026428224	Other
2387	1	Could you please add a finger print option	5	2024-02-13	Google Play	NEGATIVE	0.9919729232788086	Other
2388	1	That's so wonderful and secure	3	2024-02-13	Google Play	POSITIVE	0.9998791217803956	Other
2389	1	filannoo bareeda	1	2024-02-13	Google Play	NEGATIVE	0.9364640712738036	Other
2390	1	It would be best design if you guys include the fingerprint option	5	2024-02-13	Google Play	NEGATIVE	0.99647718667984	Account Access Issues;User Interface
2391	1	The latest update is creating a lot of problems. For instance, I had to reopen the app like 10 times to fix the "NetWork error" issue.	3	2024-02-13	Google Play	NEGATIVE	0.9995371103286744	Reliability
2392	1	The new update is horrible. Unreliable. I can't send money nor check my balance. Set your priorities straight, CBE	1	2024-02-13	Google Play	NEGATIVE	0.9997532963752748	Other
2393	1	Best banking system	5	2024-02-13	Google Play	POSITIVE	0.9997945427894592	Other
2394	1	አሁን ያለው ጥሩ ሆኖ እያለ፣ ያለ ATM ካርድ ATM Machine መጠቀም የሚያስችል ቢሆን የበለጠ ተመራጭ ያደርጋል።	4	2024-02-13	Google Play	NEGATIVE	0.974014699459076	Other
2395	1	boaring app	1	2024-02-13	Google Play	NEGATIVE	0.9461749196052552	Other
2396	1	The new updated version crush several times it need to be fixed asap	4	2024-02-13	Google Play	NEGATIVE	0.997170865535736	Other
2397	1	Good modification	5	2024-02-13	Google Play	POSITIVE	0.9997087121009828	Other
2398	1	Exelent	5	2024-02-13	Google Play	POSITIVE	0.9989122152328492	Other
2399	1	It's nice app but some times it's not tell us the right balance specially on Saturday and Sunday	3	2024-02-13	Google Play	NEGATIVE	0.9964755177497864	Other
2400	1	Its fast, easy to use and interactive app!	5	2024-02-13	Google Play	POSITIVE	0.9993152618408204	Other
2401	1	Abuke	5	2024-02-13	Google Play	NEGATIVE	0.6919651627540588	Other
2402	1	Best of best app I love it	5	2024-02-12	Google Play	POSITIVE	0.999830961227417	Other
2403	1	The new version is amazing	5	2024-02-12	Google Play	POSITIVE	0.9998832941055298	Other
2404	1	Wow ahun temechegn beteley degmo deresegn view maletachn atm mazezachn nice cbe	5	2024-02-12	Google Play	NEGATIVE	0.706870436668396	Other
2405	1	It's very good app and It's best than any banks app. but the only problem I got is the financial status display is limited, it's shows very few transactions	3	2024-02-12	Google Play	NEGATIVE	0.94794362783432	Transaction Performance
2406	1	I really appreciate CBE app's move toward excellence. The receipt option included in CBE app's is very nice.	5	2024-02-12	Google Play	POSITIVE	0.9997504353523254	Other
2407	1	The Updated version of the app is awesome. Really Enjoyable to got sealed Receipts with barcode.🙏🙏	5	2024-02-12	Google Play	POSITIVE	0.9998071789741516	Other
2408	1	yase	5	2024-02-12	Google Play	POSITIVE	0.9850412011146544	Other
2409	1	Its nice	5	2024-02-12	Google Play	POSITIVE	0.999854326248169	Other
2410	1	It has limitation yet improve	3	2024-02-12	Google Play	NEGATIVE	0.7643888592720032	Other
2411	1	It just keeps getting worse. You no longer have the frequently sent accounts log which was the best feature of this app.	3	2024-02-12	Google Play	NEGATIVE	0.9991925358772278	Other
2412	1	Worst update ever 👎 👎	1	2024-02-12	Google Play	NEGATIVE	0.9997960925102234	Other
2413	1	Still you roll a same problem with the new updates. When we do mobile transfer after we write short Reason and finish it says Error by writing the amount to transfer and your commission. It do the same thing again and again. Finally the person who receive the money got three times...there is no such thing in other private banks. Only the giant Commercial Bank of Ethiopia have this problem always. Why why why ? Is it difficult for you to get solutions ?	1	2024-02-12	Google Play	NEGATIVE	0.9991092085838318	Transaction Performance;Reliability
2414	1	Gadisa aduna	4	2024-02-12	Google Play	POSITIVE	0.9894248247146606	Other
2415	1	Dear CBE Team Please include the international card balance details in the CBE app.	5	2024-02-12	Google Play	POSITIVE	0.9921247363090516	Other
2416	1	Commercial bank of Ethiopia is Our best best bank alwayes found where we go. I love my bank.	5	2024-02-12	Google Play	POSITIVE	0.9998329877853394	Other
2417	1	Urgent fix the app is not working	1	2024-02-12	Google Play	NEGATIVE	0.9997707009315492	Other
2418	1	So 👍😎cooling	5	2024-02-12	Google Play	NEGATIVE	0.9548001885414124	Other
2419	1	Tinsae Samuel	5	2024-02-12	Google Play	POSITIVE	0.9700904488563538	Other
2420	1	Oh	5	2024-02-12	Google Play	POSITIVE	0.980659008026123	Other
2421	1	Merah	1	2024-02-12	Google Play	POSITIVE	0.974390983581543	Other
2422	1	Maybe the only nun crushing banking app in ET??	4	2024-02-12	Google Play	NEGATIVE	0.998245358467102	Other
2423	1	Best👌	5	2024-02-12	Google Play	NEGATIVE	0.697056770324707	Other
2424	1	The worest apps specially when you in emergecy. Really annoig app sorry to say this but I have too.	1	2024-02-11	Google Play	NEGATIVE	0.9827283024787904	Other
2425	1	What's new in the latest update? Is it an in-app notification that cannot be opened?	3	2024-02-11	Google Play	NEGATIVE	0.99964439868927	Other
2426	1	Good of good	5	2024-02-11	Google Play	POSITIVE	0.9998457431793212	Other
2427	1	Good update 👍👍 Scanning Qr code for receipt and receive money via qr code is good. But please make the CBEBirr app work easly like this it's not working on android version under 8.	5	2024-02-11	Google Play	NEGATIVE	0.9983869791030884	Other
2428	1	what the app!!! i really really like this app. the best thing CBE done.	5	2024-02-11	Google Play	POSITIVE	0.9997349381446838	Other
2429	1	I like it this version	5	2024-02-11	Google Play	POSITIVE	0.9998375177383424	Other
2430	1	Excellent Application that's easy for use.	5	2024-02-11	Google Play	POSITIVE	0.999822199344635	Other
2431	1	Too fast also make transaction easily and secure but i have question in visa replacement and new	5	2024-02-11	Google Play	NEGATIVE	0.9788790941238404	Transaction Performance
2432	1	This app make me easy my life	5	2024-02-11	Google Play	POSITIVE	0.997969925403595	Other
2433	1	Best Banking system	5	2024-02-11	Google Play	POSITIVE	0.9997945427894592	Other
2434	1	Excellent!!	5	2024-02-11	Google Play	POSITIVE	0.9998663663864136	Other
2435	1	I am X employee after retirement I use the bank's digital service. What I experienced on employees assigned their knowledge to handle responsible tasks but thinking not knowing what will underestimate their post but they pretend to take risk where they will fail to handle and reveal inefficient operation. Anyhow the fact to learn modern technology effecting need to dare risks with strict follow system developed with good performance and personality.	5	2024-02-11	Google Play	POSITIVE	0.7420641779899597	Other
2436	1	Amazing service	5	2024-02-11	Google Play	POSITIVE	0.9998700618743896	Other
2437	1	Still developing	1	2024-02-11	Google Play	POSITIVE	0.992372751235962	Other
2438	1	Continuous updates of the app makes it easy, fast, and secure to use. I feel safe and secured to use this app. Thanks CBE🙏	5	2024-02-11	Google Play	POSITIVE	0.9994807839393616	Other
2439	1	It gives fast service!	1	2024-02-11	Google Play	POSITIVE	0.9997308850288392	Other
2440	1	Better and good technology	5	2024-02-11	Google Play	POSITIVE	0.9998735189437866	Other
2441	1	5 Star bank good	5	2024-02-11	Google Play	POSITIVE	0.9998034834861756	Other
2442	1	Proportional	4	2024-02-11	Google Play	POSITIVE	0.998945415019989	Other
2443	1	The new updated version is very satisfaying	5	2024-02-11	Google Play	POSITIVE	0.9988885521888732	Other
2444	1	After updating the latest version, the app is no longer able to synchronize. Urgent fixation needed.	1	2024-02-11	Google Play	NEGATIVE	0.9996662139892578	Other
2445	1	After I installed the app, when I tried to send money before, it would bring me the people I sent, but now this thing is gone, so why is the suggestion left? Other than that, it is a great application that is easy to use and accessible	3	2024-02-11	Google Play	POSITIVE	0.9151151776313782	Account Access Issues
2446	1	Improved performance with the new version.	5	2024-02-11	Google Play	POSITIVE	0.9997287392616272	Other
2447	1	Updating isn't working	2	2024-02-11	Google Play	NEGATIVE	0.999670147895813	Other
2448	1	Fayis Ateyib Asmani	4	2024-02-11	Google Play	POSITIVE	0.8104615211486816	Other
2449	1	This app is help as more and more	5	2024-02-11	Google Play	POSITIVE	0.9291545748710632	Customer Support
2450	1	አመሰገናለው	5	2024-02-11	Google Play	NEGATIVE	0.697056770324707	Other
2451	1	Helpful application	5	2024-02-11	Google Play	POSITIVE	0.9996803998947144	Customer Support
2452	1	After the new update it is not working at all it doesnot sync and all form of transfer is not working	1	2024-02-11	Google Play	NEGATIVE	0.9997695088386536	Transaction Performance
2453	1	Preferable and No #1 mobile banking appn!!just wow... 🙏	4	2024-02-11	Google Play	POSITIVE	0.9314733743667604	Other
2454	1	✌️	5	2024-02-11	Google Play	NEGATIVE	0.697056770324707	Other
2455	1	The weirdest bank ever. Weird customer service weird network.....	1	2024-02-11	Google Play	NEGATIVE	0.9976019263267516	Customer Support
2456	1	Awesome 😎	5	2024-02-11	Google Play	POSITIVE	0.9998607635498048	Other
2457	1	Yeroo tokkoo tokkoo app kuni hin hojatu rakkoo qaba.	1	2024-02-11	Google Play	NEGATIVE	0.993311882019043	Other
2458	1	I'm good man	5	2024-02-11	Google Play	POSITIVE	0.9998459815979004	Other
2459	1	This app makes me upset. When they update the app they are updating bug not the functionality of the system.	1	2024-02-11	Google Play	NEGATIVE	0.999619483947754	Reliability
2460	1	በጣም ቀፋፊ እና አስጠሊታ ባንክ እና app ነው። ሰው urgent ችግር ቢገጥመው እንዴት ሊሆን ነው ቆይ?	1	2024-02-11	Google Play	NEGATIVE	0.977258801460266	Other
2461	1	Easy way	5	2024-02-11	Google Play	POSITIVE	0.9982763528823853	Other
2462	1	Nice idea	5	2024-02-11	Google Play	POSITIVE	0.9998304843902588	Other
2463	1	Network error becha nw milw,wede branch mehede alben endatlu becha??	2	2024-02-11	Google Play	NEGATIVE	0.998620867729187	Reliability
2464	1	Why is the app malfunctioning after the update??? It was just fine before the update...🤔🤔🤔🤔🤔🤔🤔🤔🤔🤔	1	2024-02-11	Google Play	NEGATIVE	0.9987189769744872	Other
2465	1	The app stops working	1	2024-02-11	Google Play	NEGATIVE	0.999688982963562	Other
2466	1	Seeee	5	2024-02-11	Google Play	POSITIVE	0.9975988268852234	Other
2467	1	Since I updated the app its not working	2	2024-02-11	Google Play	NEGATIVE	0.9997418522834778	Other
2468	1	This version is not working well the old version works with out any problem. Please make adjustment in thjs version.	1	2024-02-11	Google Play	NEGATIVE	0.9994366765022278	Other
2469	1	To transfer 10br to telebirr you charge 10br, not just for 10 birr, the same for 1 birr too. what a rubbish	1	2024-02-11	Google Play	NEGATIVE	0.9997101426124572	Transaction Performance
2470	1	Nice up	4	2024-02-11	Google Play	POSITIVE	0.9998586177825928	Other
2471	1	It says "Network error!" after update @feb 11, 24	3	2024-02-11	Google Play	NEGATIVE	0.9997257590293884	Reliability
2472	1	❤	5	2024-02-11	Google Play	NEGATIVE	0.697056770324707	Other
2473	1	Nice work	5	2024-02-11	Google Play	POSITIVE	0.9998576641082764	Other
2474	1	Okok	5	2024-02-10	Google Play	POSITIVE	0.9870408177375792	Other
2475	1	Commercial 🏦 ofEthiopia	1	2024-02-10	Google Play	NEGATIVE	0.987176477909088	Other
2476	1	Faster	5	2024-02-10	Google Play	POSITIVE	0.999076008796692	Other
2477	1	Every fill is a chance to rize	5	2024-02-10	Google Play	POSITIVE	0.998916745185852	Other
2478	1	The leading bank	5	2024-02-10	Google Play	POSITIVE	0.9994661211967468	Other
2479	1	Quick transaction and no delays Sometimes ithasa glitch butost of the time great. And the glitch is out side working hours it said transaction failure while your balance is reduced So if you haven't noticed you repeat the same process and your balance gets reduced every time.	4	2024-02-10	Google Play	NEGATIVE	0.9840123653411864	Transaction Performance;User Interface
2480	1	Its ok	1	2024-02-09	Google Play	POSITIVE	0.99971204996109	Other
2481	1	CBE is an example of poor service quality.	1	2024-02-09	Google Play	NEGATIVE	0.9997761845588684	Other
2482	1	it is more useful we are free from matter due to availability of this app	5	2024-02-09	Google Play	NEUTRAL	0.5	Other
2483	1	Wow Its amazing	5	2024-02-09	Google Play	POSITIVE	0.9998601675033568	Other
2484	1	Bast of one	5	2024-02-09	Google Play	POSITIVE	0.999642252922058	Other
2485	1	Always there is a problem on your mobile banking service why don't you update your system	1	2024-02-09	Google Play	NEGATIVE	0.9991738200187684	Other
2486	1	Smart app I love it 👍	5	2024-02-09	Google Play	POSITIVE	0.9998773336410522	Other
2487	1	Very god active app i liked it	4	2024-02-08	Google Play	POSITIVE	0.998606503009796	Other
2488	1	ምድረ ገፋፊ በ እያንዳንዱ transfer ብር የሚግጡ ሌቦች	1	2024-02-08	Google Play	NEGATIVE	0.960119366645813	Transaction Performance
2489	1	The balance history presents absurdly. Make it either from recent to old or from old to present. It is messed up and vague.	1	2024-02-08	Google Play	NEGATIVE	0.9996509552001952	Other
2490	1	Why mb app not download	5	2024-02-08	Google Play	NEGATIVE	0.995570719242096	Other
2491	1	Easy and safe app	5	2024-02-07	Google Play	POSITIVE	0.9993730187416076	Other
2492	1	ከእሁድ ውጪ በጣም ጥሩ ነው።እሁድ እሁድ ግን ከባንኩ ሰራተኞች እኩል አይሰራም። ይሁን እሱንስ ማን አየበት😂	4	2024-02-07	Google Play	NEGATIVE	0.9593425393104552	Other
2493	1	Nice app except sometimes the sync is not working!	4	2024-02-07	Google Play	NEGATIVE	0.6417379975318909	Other
2494	1	Loved	5	2024-02-07	Google Play	POSITIVE	0.999881386756897	Other
2495	1	የተረገመ app አይሰራም Guys ወይ ንግድ ባንክ 😓	1	2024-02-07	Google Play	NEGATIVE	0.9680763483047484	Other
2496	1	Very goods	5	2024-02-07	Google Play	POSITIVE	0.9984033703804016	Other
2497	1	I dont think so	3	2024-02-07	Google Play	NEGATIVE	0.9905399084091188	Other
2498	1	Bad, it's not working for me since one week	1	2024-02-07	Google Play	NEGATIVE	0.9982202649116516	Other
2499	1	Support	5	2024-02-07	Google Play	POSITIVE	0.9996964931488036	Customer Support
2500	1	Easy and goood app	5	2024-02-07	Google Play	NEGATIVE	0.9840875267982484	Other
2501	1	Very poor app ?! What the heck happened in this app ???😭😭	1	2024-02-07	Google Play	NEGATIVE	0.9997965693473816	Other
2502	1	It is not working properly ....!!!!	1	2024-02-07	Google Play	NEGATIVE	0.9997870326042176	Other
2503	1	It's best👍. But it stops while changing simcard.	5	2024-02-06	Google Play	NEGATIVE	0.991491973400116	Other
2504	1	good app thank u	5	2024-02-06	Google Play	POSITIVE	0.9998486042022704	Other
2505	1	Garidh	3	2024-02-06	Google Play	NEGATIVE	0.8019174933433533	Other
2506	1	good app and very inspiring	5	2024-02-06	Google Play	POSITIVE	0.9998812675476074	Other
2507	1	it is good but sometime not working	5	2024-02-06	Google Play	NEGATIVE	0.985004186630249	Other
2508	1	My 1st choce	5	2024-02-06	Google Play	NEGATIVE	0.977944552898407	Other
2509	1	Verification code	5	2024-02-05	Google Play	NEGATIVE	0.7330450415611267	Other
2510	1	It is so bad to fast buy	1	2024-02-05	Google Play	NEGATIVE	0.9998154044151306	Other
2511	1	U'r good but sometimes your network was unstable	5	2024-02-05	Google Play	NEGATIVE	0.9980840682983398	Other
2512	1	👏👏👏	5	2024-02-05	Google Play	NEGATIVE	0.697056770324707	Other
2513	1	Sahilu.mihirete	5	2024-02-05	Google Play	NEGATIVE	0.9835426807403564	Other
2514	1	Nice app but when i forget my password to reset it must be uninstall the existing and add the new one ,so this not good	5	2024-02-05	Google Play	NEGATIVE	0.9996261596679688	Account Access Issues
2515	1	The biggest bank in Ethiopia, still couldn't figure out a simple bank statement and transaction history. ዝፍዝፍ ሁላ	1	2024-02-04	Google Play	NEGATIVE	0.9971755743026732	Transaction Performance
2516	1	Best 👌 app	5	2024-02-04	Google Play	POSITIVE	0.999219298362732	Other
2517	1	It is great	5	2024-02-04	Google Play	POSITIVE	0.9998801946640016	Other
2518	1	Need learn more	2	2024-02-04	Google Play	NEGATIVE	0.7655411958694458	Other
2519	1	Stupid mind always creat bad app!!	1	2024-02-04	Google Play	NEGATIVE	0.9997578263282776	Other
2520	1	Simplify business interesting app	5	2024-02-04	Google Play	POSITIVE	0.9989894032478333	Other
2521	1	Arif app new	4	2024-02-04	Google Play	NEUTRAL	0.5	Other
2522	1	To wine	5	2024-02-04	Google Play	POSITIVE	0.997132420539856	Other
2523	1	Ameru kedr	5	2024-02-03	Google Play	POSITIVE	0.910874843597412	Other
2524	1	Ariff new But its need More comparability	5	2024-02-03	Google Play	NEGATIVE	0.9974787831306458	Other
2525	1	Makes everything easy!	5	2024-02-03	Google Play	POSITIVE	0.9997155070304872	Other
2526	1	It make my life easy	5	2024-02-03	Google Play	POSITIVE	0.9991549253463744	Other
2527	1	Use for me	5	2024-02-03	Google Play	NEGATIVE	0.957957088947296	Other
2528	1	Well done👏	5	2024-02-03	Google Play	POSITIVE	0.998879611492157	Other
2529	1	Needs urgent fix, account balance os not showing and says none available when trying to send money.Your customer service line is also non functional, they pick up the phone and say nothing.It is unacceptable from such a huge bank.We deserve better after you tax us for sending our own money through your platform.	1	2024-02-03	Google Play	NEGATIVE	0.9997625946998596	Customer Support
2530	1	This app history is not showing ordered form of transactions, and also after a sending transaction is made, sms is not being sent	1	2024-02-03	Google Play	NEGATIVE	0.9987708926200868	Transaction Performance
2531	1	It's so convenient, so much improved, you get a message right after you send it.	5	2024-02-03	Google Play	POSITIVE	0.8609541058540344	Other
2532	1	I'm CBE costumer for more than ten years And mobile banking almost three years I have to say CBE is the leading app so far	5	2024-02-03	Google Play	POSITIVE	0.98958021402359	Other
2533	1	Too difficult to sign in.	4	2024-02-02	Google Play	NEGATIVE	0.9997864365577698	Other
2534	1	Easy and fast	5	2024-02-02	Google Play	POSITIVE	0.9995583891868592	Other
2535	1	the best banking app	5	2024-02-02	Google Play	POSITIVE	0.9998378753662108	Other
2536	1	100 % Awesome love it	5	2024-02-02	Google Play	POSITIVE	0.9998857975006104	Other
2537	1	የከፍተኛ ከተማአመት	5	2024-02-02	Google Play	NEGATIVE	0.7850590348243713	Other
2538	1	Very poor app. I had to make 8 transfers of the same amount as the app did confirm success of the first or second or third etc. transfers. I had to pay etb 13 birr 8 times each for service charge.	1	2024-02-02	Google Play	NEGATIVE	0.999583065509796	Transaction Performance
2539	1	The best bank!!!	5	2024-02-02	Google Play	POSITIVE	0.9998733997344972	Other
2540	1	666🇦🇱🇦🇱🇦🇱🇦🇱	4	2024-02-02	Google Play	NEGATIVE	0.697056770324707	Other
2541	1	Excellent app.	4	2024-02-02	Google Play	POSITIVE	0.99984610080719	Other
2542	1	Interesting	5	2024-02-02	Google Play	POSITIVE	0.9998446702957152	Other
2543	1	Well done	5	2024-02-01	Google Play	POSITIVE	0.9998384714126588	Other
2544	1	It has very good function.the challenge with it is : it asks a varification key every time you install even for same device.	3	2024-02-01	Google Play	POSITIVE	0.9989655017852784	Other
2545	1	fast and simple	5	2024-01-31	Google Play	POSITIVE	0.9997392296791076	Other
2546	1	Easy and simple.	5	2024-01-31	Google Play	POSITIVE	0.9996637105941772	Other
2547	1	Excelent app	5	2024-01-31	Google Play	POSITIVE	0.9983735084533693	Other
2548	1	It's not working, it doesn't display my balance and it doesn't send or recieve any money	1	2024-01-31	Google Play	NEGATIVE	0.9996024966239928	Other
2549	1	It is nice app	5	2024-01-31	Google Play	POSITIVE	0.9998478889465332	Other
2550	1	አፑ ምንም አይነት አፕዴት አልቀበል ብሎኝ የተወሰነ ምርጫዎች የሉትም። ለምሳሌ own telebirr....* የሚለው ምርጫ ባዶ ነው	1	2024-01-31	Google Play	NEGATIVE	0.9587447047233582	Other
2551	1	Dark mode ❌, why? 🧐	2	2024-01-30	Google Play	NEGATIVE	0.998484194278717	Other
2552	1	Urgent fix required for the app!	1	2024-01-30	Google Play	NEGATIVE	0.9715988636016846	User Interface
2553	1	Am very satisfied by your apply	5	2024-01-30	Google Play	POSITIVE	0.9988873600959778	Other
2554	1	Especially important	1	2024-01-29	Google Play	POSITIVE	0.9997853636741638	Other
2555	1	I like it thanks	4	2024-01-29	Google Play	POSITIVE	0.9998262524604796	Other
2556	1	It is good app for me ,easy to use i prefare it.	5	2024-01-29	Google Play	POSITIVE	0.9996516704559326	Other
2557	1	Abreham tsgaye	3	2024-01-29	Google Play	POSITIVE	0.9458283185958862	Other
2558	1	It takes 10 birr when you send monet to telebirr. No matter how much the amont is.	1	2024-01-29	Google Play	NEGATIVE	0.998072862625122	Other
2559	1	Very nice app.....tnx cbe	1	2024-01-29	Google Play	POSITIVE	0.9995126724243164	Other
2560	1	A spectacular app, cutting-edge technology, thanks for your service.	5	2024-01-29	Google Play	POSITIVE	0.9998216032981871	Other
2561	1	It perfect and good app for me	5	2024-01-28	Google Play	POSITIVE	0.9998761415481568	Other
2562	1	The best online service anywhere in the world working very fast Zero problem thanks CBE!!	5	2024-01-27	Google Play	POSITIVE	0.9997442364692688	Other
2563	1	Is the best	5	2024-01-27	Google Play	POSITIVE	0.999841809272766	Other
2564	1	It's nice and favorable	5	2024-01-27	Google Play	POSITIVE	0.9998569488525392	Other
2671	1	I like the app it's simple and transparent	5	2023-12-30	Google Play	POSITIVE	0.9953047037124634	Other
2565	1	Shall we stop using the mobile banking app.what is your intention with putting 10 birr charge on every transaction. How can u manage on charging 10 birr on 5 birr transaction it's not fair. Upgrade your inconsiderate system.	1	2024-01-27	Google Play	NEGATIVE	0.9995918869972228	Transaction Performance
2566	1	Use it	5	2024-01-27	Google Play	POSITIVE	0.9939365983009338	Other
2567	1	It is a good app. But it is better to add the following features in the next version, 1) Add ATM withdrawal option 2) Password reset option 4) Finger print option 3) E-receipt	4	2024-01-26	Google Play	POSITIVE	0.7158291339874268	Account Access Issues
2568	1	Best application that make community life easy	5	2024-01-26	Google Play	POSITIVE	0.9997268319129944	Other
2569	1	Why this app was miss some transuctions	5	2024-01-26	Google Play	NEGATIVE	0.9995310306549072	Other
2570	1	Yes it is what I need Thnks	5	2024-01-25	Google Play	POSITIVE	0.9979584217071532	Other
2571	1	For the last two weeks the app is not working. Please address the issue as quickly as possible. Urgent action is needed!!	1	2024-01-25	Google Play	NEGATIVE	0.9915726184844972	User Interface
2572	1	በጣም ፈጣን ነው የበለጠ አሻሽሉት	5	2024-01-25	Google Play	NEGATIVE	0.8832130432128906	Other
2573	1	🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤢🤢🤢🤢🤢🤢🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑	5	2024-01-25	Google Play	NEGATIVE	0.697056770324707	Other
2574	1	Very good and simple for use	3	2024-01-25	Google Play	POSITIVE	0.9998711347579956	Other
2575	1	The app is broken, I can't see my balance or use any of the services ,when I try to transfer or do any thing else, error message "none available "appears. Please fix this problem.	1	2024-01-24	Google Play	NEGATIVE	0.999803364276886	Transaction Performance;Reliability
2576	1	The app that I use didn't transfer money to my telebirr account. There's no where to be found "Transfer to Telebirr". Only transfer to Telebirr agent is available and it require short code. It turns to be boring app ever.	1	2024-01-24	Google Play	NEGATIVE	0.9997456669807434	Transaction Performance;User Interface
2577	1	Good ap	5	2024-01-24	Google Play	POSITIVE	0.999827206134796	Other
2578	1	İs app is so hassle for use	1	2024-01-24	Google Play	NEGATIVE	0.9992096424102784	Other
2579	1	Top app	5	2024-01-24	Google Play	POSITIVE	0.996409833431244	Other
2580	1	The new version is useless it doesn't work at all, very disappointing.	1	2024-01-24	Google Play	NEGATIVE	0.9998109936714172	Other
2581	1	Its not working	1	2024-01-24	Google Play	NEGATIVE	0.9997598528862	Other
2582	1	Fast and reliable app .	5	2024-01-23	Google Play	POSITIVE	0.9997830986976624	Other
2583	1	Good but do more on it	4	2024-01-23	Google Play	POSITIVE	0.999518871307373	Other
2584	1	I'm so happy in these Apps	5	2024-01-22	Google Play	POSITIVE	0.999871015548706	Other
2585	1	Nice app.	5	2024-01-22	Google Play	POSITIVE	0.9998321533203124	Other
2586	1	Perfect!	5	2024-01-21	Google Play	POSITIVE	0.9998676776885986	Other
2587	1	Good Well	5	2024-01-21	Google Play	POSITIVE	0.9998512268066406	Other
2588	1	It's good app.	5	2024-01-20	Google Play	POSITIVE	0.9998677968978882	Other
2589	1	It is easy to use and simplify everything	4	2024-01-20	Google Play	POSITIVE	0.9988002777099608	Other
2590	1	Please check this application best	5	2024-01-19	Google Play	POSITIVE	0.9972686767578124	Other
2591	1	Can't sync any more. I think it needs some updates	1	2024-01-19	Google Play	NEGATIVE	0.9994966983795166	Other
2592	1	waw very nice app	5	2024-01-19	Google Play	POSITIVE	0.9997734427452089	Other
2593	1	Not Best app	1	2024-01-19	Google Play	NEGATIVE	0.9947145581245422	Other
2594	1	it stops raining why?	1	2024-01-19	Google Play	NEGATIVE	0.9899783134460448	Other
2595	1	M-pesa lay genzab leke 100 ber belabegn	5	2024-01-18	Google Play	NEGATIVE	0.9760332107543944	Other
2596	1	Poor	2	2024-01-18	Google Play	NEGATIVE	0.9997912049293518	Other
2597	1	1. It is good, flexible, simple and easy. But it can't serve offiline and didn't compliment with the ussd *889# 2. Checking Account balance is off and hidden under transfer.	4	2024-01-17	Google Play	NEGATIVE	0.990911066532135	Transaction Performance
2598	1	It says non available always disappointing	1	2024-01-16	Google Play	NEGATIVE	0.9921407103538512	Other
2599	1	Tha best one	1	2024-01-16	Google Play	POSITIVE	0.9996542930603028	Other
2600	1	This Application is super fast and Amazing performance. Thanks CBE	5	2024-01-15	Google Play	POSITIVE	0.999869465827942	Other
2601	1	Wonderful mobile Banking application	5	2024-01-15	Google Play	POSITIVE	0.9998483657836914	Other
2602	1	Most of the things work just fine. But the transaction history doesn't work properly/right.	2	2024-01-15	Google Play	NEGATIVE	0.9991469383239746	Transaction Performance
2603	1	Pharmacy professional	1	2024-01-15	Google Play	POSITIVE	0.9641936421394348	Other
2604	1	If Zero and negative rating is allowed the TCB bank's this application and *889# & +951 deserves -100. I am calling the bank TCB b/s they shouldn't allowed to use Ethiopia for Trash bank). "None Available" for all service b/s of their management uncalculated, illogical & greedious decision of service charges which wasn't stayed morethan 5 days. Why should I go to Addis Ababa just I opened my account in Addis I while I am living in Dire in the current era where all things are digitally connected?	1	2024-01-14	Google Play	NEGATIVE	0.998895227909088	Other
2605	1	Very stable and easy to use it's way better than any other bank apps	4	2024-01-14	Google Play	POSITIVE	0.9996719360351562	Other
2606	1	Why verification online or sms?	1	2024-01-13	Google Play	NEGATIVE	0.9957148432731628	Other
2607	1	Bist	5	2024-01-13	Google Play	NEGATIVE	0.9946247935295104	Other
2608	1	😜😘😍	5	2024-01-13	Google Play	NEGATIVE	0.697056770324707	Other
2609	1	It is fast and secure.	5	2024-01-12	Google Play	POSITIVE	0.9997017979621888	Other
2610	1	Daldalaa 🇪🇹	5	2024-01-12	Google Play	NEGATIVE	0.9487406015396118	Other
2611	1	Exceptional one	5	2024-01-12	Google Play	POSITIVE	0.9998511075973512	Other
2612	1	I haven't been seen on it any problems before but here i faced some obstacles to enter to my account it says me "no account available" so help me and solve this problem.	4	2024-01-11	Google Play	NEGATIVE	0.9994391798973083	Customer Support
2613	1	Always eventough I have enough balance I cant make bill payment saying insuffcient balance. I always have to ask other for adding me more extra money. If it is your marketing stategy to make people deposite more, thats not a strategy....its theft ለዛውም የማይረባ ብር ለመለቃቀም ብላችሁ	1	2024-01-11	Google Play	NEGATIVE	0.9972653388977052	Transaction Performance
2672	1	It is light, excellent app.	4	2023-12-30	Google Play	POSITIVE	0.9998680353164672	Other
2673	1	wonderful app	5	2023-12-29	Google Play	POSITIVE	0.9998787641525269	Other
3397	1	Make updated	1	2023-04-17	Google Play	POSITIVE	0.9995638728141784	Other
2614	1	I can not use the app after I reinstall it while I am abroad. It requested me to get security key from nearedt CBE branch. There is no CBE branch overseas. Due to this reason I can not acess my acount using the app!!! CBE should resolve this for diaspora customers.	3	2024-01-11	Google Play	NEGATIVE	0.993250012397766	Other
2615	1	It was better if it showed at least the last 20 transactions, and one good thing is you can search people from history by their name.	3	2024-01-11	Google Play	NEGATIVE	0.998689353466034	Transaction Performance
2616	1	the worst app and bank in Ethiopia ever. Yoy have to come to their branch to start your mobile banking and have way too high transaction fee and hidden cost for every transaction.	1	2024-01-11	Google Play	NEGATIVE	0.9997851252555848	Transaction Performance
2617	1	Thank to God	5	2024-01-10	Google Play	POSITIVE	0.9998181462287904	Other
2618	1	I love this application it is easy to use and fast . i recomed that it may use with out network if it is possible	5	2024-01-10	Google Play	POSITIVE	0.9993597865104676	Other
2619	1	Best 100%	5	2024-01-09	Google Play	POSITIVE	0.9998010993003844	Other
2620	1	እጅግ ፈጣን እጅግ ቀላል	5	2024-01-08	Google Play	NEGATIVE	0.8616330027580261	Other
2621	1	So best	5	2024-01-08	Google Play	POSITIVE	0.9997640252113342	Other
2622	1	Why it says critical update repeatdly and when I updated asks similar question	2	2024-01-08	Google Play	NEGATIVE	0.9979109168052672	Other
2623	1	Not user-friendly.	1	2024-01-08	Google Play	NEGATIVE	0.999613344669342	Other
2624	1	The most comfortable app... fast booom 🥰🥰	5	2024-01-07	Google Play	POSITIVE	0.9942854046821594	Other
2625	1	Kelifa jemal	5	2024-01-07	Google Play	POSITIVE	0.9104509353637696	Other
2626	1	my rooted send me	5	2024-01-06	Google Play	POSITIVE	0.9884377121925354	Other
2627	1	Best app ever.	5	2024-01-06	Google Play	POSITIVE	0.9997798800468444	Other
2628	1	No way to give negative feedback. toughen up!	5	2024-01-06	Google Play	NEGATIVE	0.9994754195213318	Other
2629	1	etc	5	2024-01-06	Google Play	POSITIVE	0.9157872200012208	Other
2630	1	For late some times but more is good work	2	2024-01-06	Google Play	POSITIVE	0.9989991784095764	Other
2631	1	Thanks for your help	5	2024-01-06	Google Play	POSITIVE	0.9996066689491272	Customer Support
2632	1	Gena salgeba new verification miteyikegn keyet endametaw new??	1	2024-01-06	Google Play	NEGATIVE	0.9961085915565492	Other
2633	1	It should be more secure if some one knows my pin which is very short 4 digit number can be cheated its worisome to use it	1	2024-01-06	Google Play	NEGATIVE	0.998948872089386	Other
2634	1	I found this app so useful. I'm a 17 years old and I used CBE for almost 2 and half years now I got this app so I don't go to any branch instead I use this app.	5	2024-01-06	Google Play	POSITIVE	0.9560344815254213	Other
2635	1	Mobile banking is very important.	5	2024-01-06	Google Play	POSITIVE	0.9978647828102112	Other
2636	1	Not working my application 20 days olmost I'm not in ethiophia now 😢	1	2024-01-06	Google Play	NEGATIVE	0.9938899278640748	Other
2637	1	Woow nice app. I think the new update is very nice because after i update it, It didnt ask me to go to branch for authorization.	5	2024-01-05	Google Play	POSITIVE	0.9728564023971558	Other
2638	1	This app is not worthy to be trusted with handling large amount of money. Becareful with this kind of badly developed app.	2	2024-01-05	Google Play	NEGATIVE	0.999811828136444	Other
2639	1	So easy. Faster!	4	2024-01-05	Google Play	POSITIVE	0.9985835552215576	Other
2640	1	Up date it	2	2024-01-05	Google Play	POSITIVE	0.9997887015342712	Other
2641	1	wow it's amazing platform for sure. Speedy and fast transaction that everyone enjoy to it.	5	2024-01-05	Google Play	POSITIVE	0.9998680353164672	Transaction Performance
2642	1	Thank you!	5	2024-01-04	Google Play	POSITIVE	0.9998581409454346	Other
2643	1	I have no words to appreciate, thanks. It simplifies our daily life.	5	2024-01-04	Google Play	POSITIVE	0.9910812973976136	Other
2644	1	Worst app in the world 🌎	1	2024-01-03	Google Play	NEGATIVE	0.9997952580451964	Other
2645	1	ሙሠማ ኸሊል 100	1	2024-01-03	Google Play	POSITIVE	0.8962817192077637	Other
2646	1	If you want change your phone device or if your app suddenly deleted you must go to Bank branch and pay CBE mobile banking activation payment again and again. this is not appropriate. additionally customer service at branch is disgusting	1	2024-01-03	Google Play	NEGATIVE	0.9997528195381165	Transaction Performance;Customer Support
2647	1	Haadha	5	2024-01-03	Google Play	POSITIVE	0.9941179752349854	Other
2648	1	Totally no response when calling on 951.	2	2024-01-03	Google Play	NEGATIVE	0.999561607837677	Customer Support
2649	1	Absolutely garbage	1	2024-01-03	Google Play	NEGATIVE	0.9997846484184264	Other
2650	1	It's very hubs new	5	2024-01-03	Google Play	POSITIVE	0.998822033405304	Other
2651	1	What is this "none available" nonsense? The Mobile banking doesn't work either. I even went to a nearby bank to get it fixed but they don't even know what to do. This is so frustrating.	1	2024-01-03	Google Play	NEGATIVE	0.9997596144676208	Other
2652	1	INTERNET BANKING methba	5	2024-01-03	Google Play	NEUTRAL	0.5	Other
2653	1	driver	5	2024-01-02	Google Play	POSITIVE	0.9928614497184752	Other
2654	1	More secured application	5	2024-01-02	Google Play	POSITIVE	0.9873522520065308	Other
2655	1	Nec	5	2024-01-02	Google Play	POSITIVE	0.9872689247131348	Other
2656	1	The app didn't function	1	2024-01-02	Google Play	NEGATIVE	0.999750316143036	Other
2657	1	Good Job	5	2024-01-02	Google Play	POSITIVE	0.999835729598999	Other
2658	1	It is 🤙🤙🤙🤙	5	2024-01-02	Google Play	POSITIVE	0.7285851240158081	Other
2659	1	nice app for me to use	5	2024-01-02	Google Play	POSITIVE	0.9994801878929138	Other
2660	1	App is don't show balance	1	2024-01-01	Google Play	NEGATIVE	0.9996505975723268	Other
2661	1	why can't sync all day while there is Internet pls fix it ASAP	1	2024-01-01	Google Play	NEGATIVE	0.9977912902832032	Other
2662	1	Reliable	5	2024-01-01	Google Play	POSITIVE	0.999845027923584	Other
2663	1	cool app	3	2024-01-01	Google Play	POSITIVE	0.999824583530426	Other
2664	1	Pleas give me loan	5	2023-12-31	Google Play	NEGATIVE	0.9709869623184204	Other
2665	1	Nice 👍	5	2023-12-31	Google Play	POSITIVE	0.999842405319214	Other
2666	1	Fast and user friendly	5	2023-12-31	Google Play	POSITIVE	0.999061405658722	User Interface
2667	1	Very help full	5	2023-12-31	Google Play	POSITIVE	0.9949713945388794	Customer Support
2668	1	The home page is bad	3	2023-12-30	Google Play	NEGATIVE	0.9998125433921814	Other
2669	1	It has every solution for every Ethiopians	5	2023-12-30	Google Play	POSITIVE	0.9620833992958068	Other
2670	1	I love it it is perfect I am proud of my bank	5	2023-12-30	Google Play	POSITIVE	0.9998847246170044	Other
2674	1	Amazing ande best app	5	2023-12-29	Google Play	POSITIVE	0.999850869178772	Other
2675	1	It is the worst of all mobile banking apps	1	2023-12-29	Google Play	NEGATIVE	0.999800145626068	Other
2676	1	The most stupidly incredible bank i didn't known how a system get so stupid	1	2023-12-29	Google Play	NEGATIVE	0.9775605201721193	Other
2677	1	Horrible app ever	1	2023-12-29	Google Play	NEGATIVE	0.999537229537964	Other
2678	1	The app is absolutely amazing with seamless functionalities. I never face any hurdles while using it. It deserves 5 stars!	5	2023-12-28	Google Play	POSITIVE	0.9998544454574584	Other
2679	1	It is very good up and it is to transfer money and pay for other things	3	2023-12-28	Google Play	POSITIVE	0.9998540878295898	Transaction Performance
2680	1	take To Use Option	5	2023-12-28	Google Play	POSITIVE	0.8865388631820679	Other
2681	1	I'm always using the Apps safely.Thanks.	5	2023-12-27	Google Play	POSITIVE	0.999850869178772	Other
2682	1	The app close automatically when trying to request ATM replacement	3	2023-12-27	Google Play	NEGATIVE	0.9949482679367064	Other
2683	1	Unrealeble in many ways; double payment more than 5 times; frequent interruptions; and don't produce receipt more often. CBE - pls come up with a better version as we move more and more to e-payement.	3	2023-12-27	Google Play	NEGATIVE	0.998724400997162	Transaction Performance
2684	1	The update made on the app. each time is good .but the recently added "standing instruction "menu doesnt contain a reverse/deletion mechanism if one wants to stop it.	3	2023-12-27	Google Play	NEGATIVE	0.9809027910232544	Other
2685	1	Please stop taking 5 birr from each transaction we made it is very unfair and Ethswitch has to be legally stopped this action ... Very shameful,	1	2023-12-27	Google Play	NEGATIVE	0.9994274377822876	Transaction Performance
2686	1	Amazing platform, reliable and convincing mobile banking	5	2023-12-27	Google Play	POSITIVE	0.999863862991333	Other
2687	1	Very interesting	5	2023-12-26	Google Play	POSITIVE	0.999863862991333	Other
2688	1	I have been using this app for one year.It Is an amazing application,I have never been used such like app in my life.It is very interactive ,compatiable with any android phones,easy to be used by any one irrespective of any level of education and very realiable to realized digital banking system all over the globe.I Wish all banking sectors will update their mobile banking system based on this app. CBE is My bank and I Proud of it Shumet Mamo Sassie	5	2023-12-26	Google Play	POSITIVE	0.998607337474823	Other
2689	1	URGENT FIX REQUIRED!!! The app does not work anymore! Account balance is not displayed. Trying to use any service on the app shows error "None available". What is the point of an internet/mobile banking app if you cannot carry out banking services from your fingertips? I also don't want to reinstall because CBE activation code can only be recieved in the bank, which sounds very ridiculous. These days, banks send OTP to email, so customers can manage their account anywhere in the world.	1	2023-12-26	Google Play	NEGATIVE	0.9997559189796448	User Interface;Reliability
2690	1	Excellent. But, the service charge is insane 😭	5	2023-12-26	Google Play	NEGATIVE	0.7148561477661133	Other
2691	1	From these week App is not functional	5	2023-12-26	Google Play	NEGATIVE	0.9996932744979858	Other
2692	1	Overall good but there are times when it does not sync	3	2023-12-25	Google Play	NEGATIVE	0.8878638744354248	Other
2693	1	It is a nice app	5	2023-12-24	Google Play	POSITIVE	0.9998472929000854	Other
2694	1	Not goof	3	2023-12-24	Google Play	POSITIVE	0.9890618920326232	Other
2695	1	Why is problem non available	2	2023-12-24	Google Play	NEGATIVE	0.9995332956314088	Other
2696	1	Thanks for all	5	2023-12-23	Google Play	POSITIVE	0.9997379183769226	Other
2697	1	How can to add two account	5	2023-12-23	Google Play	NEGATIVE	0.6546240448951721	Other
2698	1	USSD *889# ሆደን አቁስሎት ነበር ይህን አፕ ካስከፈትኩ ወድህ 889 ሞክሬው አላውቅም። ይሄ በጣም አሪፍ ነው።	5	2023-12-23	Google Play	NEGATIVE	0.9770868420600892	Other
2699	1	It's very especial app but it may have security problem b/c if I change sim card it work	5	2023-12-23	Google Play	NEGATIVE	0.9938650727272034	Other
2700	1	I am first-time to use this app.	5	2023-12-23	Google Play	POSITIVE	0.9906347393989564	Other
2701	1	I like it, it is easy to use!	5	2023-12-23	Google Play	POSITIVE	0.9997544884681702	Other
2702	1	Clutch	5	2023-12-23	Google Play	POSITIVE	0.9969558715820312	Other
2703	1	አፑን በጫንኩ በሳምቱ አቆመ ወደ ባንኩ ብመላለስም ለ3 ጊዜ ፎርም ሙላ ከማለት ውጭ መፍትሄ የለም።	1	2023-12-22	Google Play	NEGATIVE	0.9570208191871644	Other
2704	1	First of all may almighty God bless the leader and mother of Africa Ethiopia and the people as well. Congratulations to ECB for sharing very interested and helpful application and more early to use Thanks	5	2023-12-22	Google Play	POSITIVE	0.9997771382331848	Customer Support
2705	1	unbelivable good start	5	2023-12-22	Google Play	POSITIVE	0.9998193383216858	Other
2706	1	The best way to get rid of my life thank you so much ❤️	5	2023-12-22	Google Play	POSITIVE	0.9993170499801636	Other
2707	1	Excellent apps	1	2023-12-21	Google Play	POSITIVE	0.9998579025268556	Other
2708	1	It's Good	5	2023-12-21	Google Play	POSITIVE	0.9998360872268676	Other
2709	1	I dont know why but the app is sudenly stop woking please update it	1	2023-12-20	Google Play	NEGATIVE	0.9993687272071838	Other
2710	1	Very bad.	1	2023-12-20	Google Play	NEGATIVE	0.999777853488922	Other
2711	1	this application helps us in the fastest way and we can save our time and it is very good because it gives us complete quick response.	5	2023-12-20	Google Play	POSITIVE	0.9998152852058412	User Interface;Customer Support
2712	1	@PremiumBot	5	2023-12-19	Google Play	POSITIVE	0.96832674741745	Other
2713	1	Aslame&dtamo	5	2023-12-19	Google Play	NEGATIVE	0.884840190410614	Other
2714	1	So nice and easy to use	5	2023-12-19	Google Play	POSITIVE	0.9998767375946044	Other
2715	1	I found this app helpful and interesting.	5	2023-12-19	Google Play	POSITIVE	0.9994675517082214	Customer Support
2716	1	Abdi Tesjade	5	2023-12-18	Google Play	POSITIVE	0.8370028138160706	Other
2717	1	Excellent!	5	2023-12-18	Google Play	POSITIVE	0.9998645782470704	Other
2718	1	I Wana to update this app ,because when I try to open it ,it's close up immediately	2	2023-12-18	Google Play	NEGATIVE	0.9908350706100464	Other
2719	1	ease to acces	4	2023-12-18	Google Play	POSITIVE	0.9996819496154784	Other
2720	1	Arif naw	1	2023-12-17	Google Play	NEGATIVE	0.705769956111908	Other
2721	1	Oke	5	2023-12-17	Google Play	NEUTRAL	0.5	Other
2722	1	Love this app	5	2023-12-16	Google Play	POSITIVE	0.9998668432235718	Other
2723	1	Extremely frustrating, correct balance is never displayed.	1	2023-12-16	Google Play	NEGATIVE	0.9985299110412598	Other
2724	1	The CBE Mobile Banking App has truly exceeded my expectations. It offers a seamless and reliable banking experience right at my fingertips. From checking my account balance to transferring funds, the app performs flawlessly every time. It's impressive.	5	2023-12-16	Google Play	POSITIVE	0.9998515844345092	Transaction Performance
2725	1	best and simple service	5	2023-12-15	Google Play	POSITIVE	0.9997957348823548	Other
2726	1	This app is amazing but it stopped working so can you fix the problem	2	2023-12-14	Google Play	NEGATIVE	0.998606026172638	Other
2727	1	It's cool but I'm not satisfied	1	2023-12-14	Google Play	NEGATIVE	0.997960090637207	Other
2728	1	Best app.. with no complications.	5	2023-12-14	Google Play	POSITIVE	0.9982059001922609	Other
2729	1	I have started using these apps since 2020, and I have experienced a suitable way to do digital money exchange and a simple way of transferring cash.	5	2023-12-14	Google Play	POSITIVE	0.9599631428718568	Transaction Performance;User Interface
2730	1	It's simple, fast, easy to use and very pleasant. For me, it is a pleasant application of my bank that I always trust.	5	2023-12-14	Google Play	POSITIVE	0.9998780488967896	Other
2731	1	Hihi	5	2023-12-14	Google Play	POSITIVE	0.9779518842697144	Other
2732	1	Won't update my account balance, severely out of sync. When I checked at the ATM it was a completely different number. General cbe problem, but the transactions take 10 days to post from a POS transaction. Makes t extremely difficult to use.	1	2023-12-14	Google Play	NEGATIVE	0.9906953573226928	Transaction Performance
2733	1	Can we see our past transaction record more than recent on this app ??? Please it should have this option .If so tell me how if not please update thIs app soon to accommodate this to obtain as this bank deserves more and more capacity and update every day even every minutes as it represents the golden brand ETHIOPIAN!!!	1	2023-12-14	Google Play	NEGATIVE	0.9843029975891112	Transaction Performance
2734	1	Its not update balance immediately	4	2023-12-13	Google Play	NEGATIVE	0.9936878085136414	Other
2735	1	Best app ever	5	2023-12-13	Google Play	POSITIVE	0.9997490048408508	Other
2736	1	ሂወትን ቀለል የሚያረግ ለኔ ሁሉም ነገሬ ነው cbe	5	2023-12-13	Google Play	NEUTRAL	0.5	Other
2737	1	It's very nice app, the connection is good as well. But It only allow water bill payment for addis abeba why is that	4	2023-12-13	Google Play	NEGATIVE	0.6481772065162659	Transaction Performance
2738	1	It's good but not very good	5	2023-12-13	Google Play	NEGATIVE	0.9812166094779968	Other
2739	1	Wow good work 🤝	4	2023-12-13	Google Play	POSITIVE	0.9998650550842284	Other
2740	1	It's very important for me	5	2023-12-12	Google Play	POSITIVE	0.9997509121894836	Other
2741	1	No words to explain abt this app, it's amazing	5	2023-12-12	Google Play	POSITIVE	0.9919798374176024	Other
2742	1	The transaction no orders	1	2023-12-12	Google Play	NEGATIVE	0.9981695413589478	Transaction Performance
2743	1	my fav app in the history	5	2023-12-11	Google Play	POSITIVE	0.9957733750343324	Other
2744	1	It's a beautiful app. But especially when transferring from one account to another, if a receipt is prepared stating the name of the sender and the name of the recipient and the amount of the money. Also, if people make a mistake when making a transfer, it would be nice to have a system where the mistake can be reversed.	5	2023-12-11	Google Play	NEGATIVE	0.96943998336792	Transaction Performance
2745	1	It's very good app but sometimes the network is very poor	5	2023-12-11	Google Play	NEGATIVE	0.9985612034797668	Other
2746	1	Yes we Love this prowsser	3	2023-12-11	Google Play	POSITIVE	0.9998531341552734	Other
2747	1	It is fantastic	5	2023-12-11	Google Play	POSITIVE	0.99988055229187	Other
2748	1	it's great app when ever!	5	2023-12-10	Google Play	POSITIVE	0.9998536109924316	Other
2749	1	it is not working well	1	2023-12-10	Google Play	NEGATIVE	0.9997767806053162	Other
2750	1	Good app continou!	1	2023-12-10	Google Play	POSITIVE	0.9998014569282532	Other
2751	1	Poor. Sent my money several time also when refresh i can see it statments and it deduct from my acount.	1	2023-12-10	Google Play	NEGATIVE	0.9991759657859802	Other
2752	1	Very nice and well designed! 🙏	5	2023-12-09	Google Play	POSITIVE	0.9998786449432372	User Interface
2753	1	It is not working when I transfer money to another my bank account. So I wish this all functions be avail. Thanks.	5	2023-12-09	Google Play	NEGATIVE	0.9958391189575196	Transaction Performance
2754	1	Worst application	1	2023-12-08	Google Play	NEGATIVE	0.99978369474411	Other
2755	1	Why it cannot generate key for customers by itself? The main reason the bank suggested this application is to reduce crowded customers from cbe bank branches. The hell your IT department is doing? Why they cannot improve this problem? I don't want to go to Branch bank, they don't know nothing about this application. They're so dumbest person I ever seen. Please try make it simple and very useful application. Don't paint bad color on the legacy of this bank.	1	2023-12-08	Google Play	NEGATIVE	0.9938644766807556	Other
2756	1	help me to get the money.n may	2	2023-12-08	Google Play	NEGATIVE	0.9954525828361512	Customer Support
2757	1	Good applications its very very	5	2023-12-08	Google Play	POSITIVE	0.9998639822006226	Other
2758	1	I can't downloaded the recipts which is very important one's, please fix it	2	2023-12-08	Google Play	NEGATIVE	0.9969882369041444	Other
2759	1	This is the best mobile banking app i had ever seen in ethiopia.	5	2023-12-07	Google Play	POSITIVE	0.9997078776359558	Other
2760	1	ከንግድ ባንክ ወደ ቴሌብር 1000 ብር ላኩኝ ከዛ 10 ብር ተቆረጠብኝ። ይሄ እኮ ዘረፋ ነው።	1	2023-12-07	Google Play	NEGATIVE	0.9515417218208312	Other
2761	1	Nuriye ali yimam	5	2023-12-07	Google Play	POSITIVE	0.93723863363266	Other
2762	1	It stakes	1	2023-12-07	Google Play	POSITIVE	0.9971217513084412	Other
2763	1	Harif new	5	2023-12-07	Google Play	POSITIVE	0.9566631317138672	Other
2764	1	😍😍😍	1	2023-12-06	Google Play	NEGATIVE	0.697056770324707	Other
2765	1	Difficult to get transaction statement and receipt of single transaction.	2	2023-12-06	Google Play	NEGATIVE	0.9996800422668456	Transaction Performance
2766	1	I like it's	5	2023-12-06	Google Play	POSITIVE	0.999857783317566	Other
2767	1	በጣም ምርጥ አፕ ነው። ግን በአፑ ውስጥ የተወሰነ ያልተሟሉ ጉድለቶች አሉበት ከነዚህም መሀከል "የማብራት ሀይል ክፍያ መክፈያ ቦታ ላገኝ አልቸልኩበት እንጂ	5	2023-12-06	Google Play	NEGATIVE	0.9609394073486328	Other
2768	1	Don't use CBE! They start to debated a customer balance without their allow, bad bank!	1	2023-12-05	Google Play	NEGATIVE	0.9921815395355223	Other
2769	1	I really love this app	5	2023-12-05	Google Play	POSITIVE	0.9998576641082764	Other
2770	1	It is not active for banking	2	2023-12-05	Google Play	NEGATIVE	0.99969482421875	Other
2771	1	Easy and familiar app	5	2023-12-05	Google Play	POSITIVE	0.9988467693328856	Other
2772	1	It is very funny and useless app. They developed the app either with lack of necessary technological knowledge or purposely to manipulate their customers. A huge shame for such kinda influential company.👎👎	1	2023-12-05	Google Play	NEGATIVE	0.9990667700767516	Other
2773	1	Good app! Really helped me a lot!	5	2023-12-05	Google Play	POSITIVE	0.9998612403869628	Customer Support
2774	1	Amazing app it's simple to use	5	2023-12-04	Google Play	POSITIVE	0.99985933303833	Other
2775	1	Commission paid 5 birr that alot even if I didn't do any transactions they still cut 5 birr soon I will run out money because of this o regret using this. I'm student I don't make money they have to consider what they doing not just that after first time using it they will take/cut 50 birr for fee that unreasonable. DONT USE THIS APP !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! I HAVE SCREENSHOT FOR EVIDENCE DONT REPLY ME THIS IS accusations	1	2023-12-03	Google Play	NEGATIVE	0.9971854090690612	Transaction Performance
2776	1	I used it for the past 2 years. I live outside of Ethiopia, so it was very convenient to deposit or transfer money to and from my account. However, recently i kept getting "None available" message and not even able to see my balance or pull out people previous account information. So i uninstall and installed it, now it is asking me a key code whice you normally get it from ur bank. As i said,I live outside of Ethio, so unable to use this app anymore.	2	2023-12-03	Google Play	NEGATIVE	0.9991703033447266	Transaction Performance
2777	1	It works for me very well. Thanks!	5	2023-12-03	Google Play	POSITIVE	0.99986732006073	Other
2778	1	Very useful but after update it's not working properly also transaction history don't display Cleary so pls fix these two things	3	2023-12-03	Google Play	NEGATIVE	0.9991331696510316	Transaction Performance
2779	1	Nigidi.banki	5	2023-12-03	Google Play	NEGATIVE	0.9632764458656312	Other
2780	1	Why is this not working on Sunday, specifically now. I'm disappointed about this. This is not expected from a large organization like CBE😡😡	1	2023-12-03	Google Play	NEGATIVE	0.9995985627174376	Other
2781	1	The best mobile banking app!!!	5	2023-12-02	Google Play	POSITIVE	0.9998388290405272	Other
2782	1	Mubarkenasradne	5	2023-12-02	Google Play	NEGATIVE	0.9569405913352966	Other
2783	1	10Q for Developers. Is nice app!!	5	2023-12-02	Google Play	POSITIVE	0.9996275901794434	Other
2784	1	Powerful app	4	2023-12-02	Google Play	POSITIVE	0.9998375177383424	Other
2785	1	Assess	5	2023-12-02	Google Play	POSITIVE	0.9912462830543518	Other
2786	1	It is good but modify it in away that shows 15 days statement	4	2023-12-02	Google Play	NEUTRAL	0.5	Other
2787	1	ጥሩነውለግዜውብቻእንዳይሆንእንጂ	3	2023-12-01	Google Play	NEGATIVE	0.697056770324707	Other
2788	1	It is broken after the last update!!!	2	2023-12-01	Google Play	NEGATIVE	0.9996628761291504	Other
2789	1	not responsive most of the time.	2	2023-12-01	Google Play	NEGATIVE	0.999805510044098	Other
2790	1	Not enough	1	2023-12-01	Google Play	NEGATIVE	0.9982920289039612	Other
2791	1	I love this App. It is important and helpful on every day activities. Thank you	5	2023-12-01	Google Play	POSITIVE	0.9998619556427002	Customer Support
2792	1	በጣም ምርጥ ነው	5	2023-12-01	Google Play	NEGATIVE	0.8337255716323853	Other
2793	1	It the best one 💯	5	2023-12-01	Google Play	POSITIVE	0.9998661279678344	Other
2794	1	Thanks for your service	5	2023-12-01	Google Play	POSITIVE	0.9997162222862244	Other
2795	1	To.much bug multiple crash you can't even see your statements	1	2023-12-01	Google Play	NEGATIVE	0.9995056390762328	Reliability
2796	1	My Bank 🏦🏦	5	2023-11-30	Google Play	NEGATIVE	0.7867553234100342	Other
2797	1	I need help	5	2023-11-30	Google Play	NEGATIVE	0.9949355721473694	Customer Support
2798	1	Nice service CBE Bank	5	2023-11-29	Google Play	POSITIVE	0.9975516200065612	Other
2799	1	Is very weird app really	1	2023-11-29	Google Play	NEGATIVE	0.9924266338348388	Other
2800	1	Update for iPhone	5	2023-11-29	Google Play	POSITIVE	0.6867941617965698	Other
2801	1	It's best	5	2023-11-26	Google Play	POSITIVE	0.999842643737793	Other
2802	1	በጣም ሀሪፍ እና ምቹ ነው ግን Recenet transaction አያሳይም .. ከድርጅት ጋር ለምንሰራ ሰዎች ደረሰኝ ያስፈልገናል ። ቶሎ መፍትሔ ቢያገኝ እና ቢስተካከል ጥሩ ነው	3	2023-11-26	Google Play	NEGATIVE	0.8213756084442139	Transaction Performance
2803	1	The previous version was better.if our wifi is weak this app is not working even by vpn.Learn from other banks,how to make simple and easy	2	2023-11-26	Google Play	NEGATIVE	0.9989443421363832	Other
2804	1	Well fine Well developed Fast	5	2023-11-26	Google Play	POSITIVE	0.9998550415039062	Other
2805	1	Only limited transaction are shown.. the time of the transaction is not shown.	1	2023-11-26	Google Play	NEGATIVE	0.9935965538024902	Transaction Performance
2806	1	This app as much as good it was, it fails you in the middle of critical time . With the good reputation this bank has this app should've been something us customers should reply on. But I am very disappointed.	1	2023-11-26	Google Play	NEGATIVE	0.9997076392173768	Other
2807	1	Fails bu tcharges. Bad App	3	2023-11-25	Google Play	NEGATIVE	0.9997557997703552	Other
2808	1	absolutely magnificent app!!!	5	2023-11-25	Google Play	POSITIVE	0.9998737573623656	Other
2809	1	Kechalachu atawrdut wey aysera mnm tkm yelewmm	1	2023-11-25	Google Play	NEGATIVE	0.992942988872528	Other
2810	1	Wow amazing app for all!❤️	5	2023-11-25	Google Play	POSITIVE	0.9997950196266174	Other
2811	1	It's very well to use	5	2023-11-25	Google Play	POSITIVE	0.9998446702957152	Other
2812	1	Good job, try your best. You can do anything you need.	5	2023-11-24	Google Play	POSITIVE	0.9997162222862244	Other
2813	1	Worst bank worst app	1	2023-11-24	Google Play	NEGATIVE	0.9997875094413756	Other
2814	1	Its the best app	5	2023-11-24	Google Play	POSITIVE	0.9998475313186646	Other
2815	1	Best app i have seen.	5	2023-11-24	Google Play	POSITIVE	0.999203622341156	Other
2816	1	Very good but same time deos'n work properly	5	2023-11-23	Google Play	POSITIVE	0.996749758720398	Other
2817	1	Nice and easy application.	5	2023-11-23	Google Play	POSITIVE	0.99986469745636	Other
2818	1	Shame to see one of the biggest bank in east africa. Have this app 1 .you try to send money.. it will fail on the way you try again and your money have been sent Twice. Then you have to ask the Receiver to send the money back to you. 2. Try to refresh to see your recent transaction and it will show old transaction. Clearly they don't care . You can get your statement easily via telebirr. But cbe you have to go to branch and beg sometimes Bribe the managers to get your own bank statement . Shame	1	2023-11-23	Google Play	NEGATIVE	0.9994741082191468	Transaction Performance
2820	1	🔥🔥🔥🔥🔥	5	2023-11-23	Google Play	NEGATIVE	0.697056770324707	Other
2821	1	chyddu	5	2023-11-23	Google Play	POSITIVE	0.8595614433288574	Other
2822	1	Very great	5	2023-11-22	Google Play	POSITIVE	0.9998730421066284	Other
2823	1	Its nice app because of it includes mult payment methods in their. Thanks CBE	5	2023-11-21	Google Play	POSITIVE	0.9948534369468688	Transaction Performance
2824	1	Great application. But when it opened after Minimization it doesn't ask for pin. I mean it directly opens which is not safe. Anyone who has the phone can transfer or do other activities. please Update the app in to new level.	3	2023-11-21	Google Play	NEGATIVE	0.996368169784546	Transaction Performance
2825	1	Appreciated	5	2023-11-21	Google Play	POSITIVE	0.9998258948326112	Other
2826	1	I am interested with this app.	5	2023-11-21	Google Play	POSITIVE	0.9988829493522644	Other
2827	1	Great app, but the only problem, i encounter with it is that branches are not willing to open it for you, every branch will try to send you else where	5	2023-11-21	Google Play	NEGATIVE	0.9914042949676514	Other
2828	1	Noting working app	1	2023-11-21	Google Play	POSITIVE	0.9988471269607544	Other
2829	1	Please include full Bank statement access through this app	2	2023-11-20	Google Play	POSITIVE	0.8449322581291199	Account Access Issues
2830	1	Best to be Best as your Age of Surveillance Old.	3	2023-11-20	Google Play	NEGATIVE	0.9969603419303894	Other
2831	1	Nayis	3	2023-11-19	Google Play	NEGATIVE	0.9524695873260498	Other
2832	1	Very Very good appa I am really	5	2023-11-19	Google Play	POSITIVE	0.9998664855957032	Other
2833	1	I like the other one except for one reason, but it would be cool if the account message is saved quickly	5	2023-11-19	Google Play	NEGATIVE	0.9946451187133788	User Interface
2834	1	Best mobile banking app ever	4	2023-11-19	Google Play	POSITIVE	0.9997294545173644	Other
2835	1	The app was working properly, but in the last two days, it showed not available while I am in a good network area with both wifi or data. Please fix it. With regards	3	2023-11-19	Google Play	NEGATIVE	0.9993950128555298	Other
2836	1	Some times facing delayed cynching	4	2023-11-19	Google Play	NEGATIVE	0.994106650352478	Other
2837	1	Wow it's bast	5	2023-11-19	Google Play	POSITIVE	0.999788224697113	Other
2838	1	on 🐂rfxbk	5	2023-11-19	Google Play	POSITIVE	0.9016370177268982	Other
2839	1	Very interesting app.	5	2023-11-18	Google Play	POSITIVE	0.999818742275238	Other
2840	1	Good but currently not update, the status	4	2023-11-18	Google Play	POSITIVE	0.6450421214103699	Other
2841	1	Amazing application	5	2023-11-18	Google Play	POSITIVE	0.9998698234558104	Other
2842	1	በጣም አስፈላጊ እና ምርጥ አፕ ነው የኢትዮጵያ ንግድ ባንክ ሁሌም የሚተማመኑበት ባንክ	5	2023-11-17	Google Play	NEGATIVE	0.9489793181419371	Other
2843	1	It is the best	5	2023-11-17	Google Play	POSITIVE	0.9998602867126464	Other
2844	1	The app doesn't let you have the pdf form receipt.	1	2023-11-17	Google Play	NEGATIVE	0.9963266253471376	Other
2845	1	How to conected In my phone application previous used	5	2023-11-16	Google Play	NEGATIVE	0.9975288510322572	Other
2846	1	Its so flexible, easy and fast. More perfect if adding another acc. is possible Or interchangeabily within different account for those who use multiple acc.	4	2023-11-16	Google Play	POSITIVE	0.9996473789215088	Other
2847	1	It is light to use	5	2023-11-16	Google Play	POSITIVE	0.9992311000823976	Other
2848	1	This app taking 10 birr for every transaction, This is not fair,🤬	1	2023-11-16	Google Play	NEGATIVE	0.9994295239448548	Transaction Performance
2849	1	በጣም ተመችቶኛል። እድሜ የዛሬ 15 አመት በኢትዮጵያ እንደጀመር ሀሰብ በማፍለቅ እንዲጀመር ላደረጉት የዛኔ የኢንሳ ባለሙያ ለአሁኑ ጠቅላይ ሚኒስተራችን ክቡር አብይ አህመድ የከበረ አድናቆት አለኝ።	5	2023-11-15	Google Play	NEGATIVE	0.9616268873214722	Other
2850	1	Why I go to the nearest bank to be activated! It must be fully automated like telebirr and Mpessa!	1	2023-11-15	Google Play	NEGATIVE	0.9981039762496948	Other
2851	1	Allowed	5	2023-11-15	Google Play	POSITIVE	0.9978752136230468	Other
2852	1	Will ask her about the election of acaunt	5	2023-11-15	Google Play	POSITIVE	0.9946905970573424	Other
2853	1	Fsntastic,convenient and fast	5	2023-11-15	Google Play	POSITIVE	0.9988443851470948	Other
2854	1	Good up to use esealy	5	2023-11-15	Google Play	POSITIVE	0.9996764659881592	Other
2855	1	It is really the best one I love it Thank you	5	2023-11-15	Google Play	POSITIVE	0.9998689889907836	Other
2856	1	no service how?	5	2023-11-15	Google Play	NEGATIVE	0.9995879530906676	Other
2857	1	worst app I didn't even see my latest statement 😒	1	2023-11-14	Google Play	NEGATIVE	0.9998101592063904	Other
2858	1	Naifoo adbata	5	2023-11-14	Google Play	POSITIVE	0.8302117586135864	Other
2859	1	it's nice think u	5	2023-11-14	Google Play	POSITIVE	0.9998377561569214	Other
2860	1	Good 👍 👍 👍 👍 application	5	2023-11-14	Google Play	POSITIVE	0.9994083642959596	Other
2861	1	Exchange rate to day	1	2023-11-14	Google Play	POSITIVE	0.7302827835083008	Other
2862	1	It getting worst everyday, it actually doesn't work this days.	1	2023-11-14	Google Play	NEGATIVE	0.9993956089019777	Other
2863	1	GOOD NOT BAD SOME TIMS NATWORK PROBLEM	3	2023-11-14	Google Play	POSITIVE	0.9966649413108826	Other
2864	1	Keep it up!!	5	2023-11-14	Google Play	POSITIVE	0.9998407363891602	Other
2865	1	I can't update the app on my mobile	3	2023-11-14	Google Play	NEGATIVE	0.9921918511390686	Other
2866	1	We need double Applications commercial bank of Ethiopia one place	5	2023-11-14	Google Play	NEGATIVE	0.9941191673278807	Other
2867	1	Good for everything	5	2023-11-14	Google Play	POSITIVE	0.9998502731323242	Other
2868	1	Wondeful app	4	2023-11-14	Google Play	POSITIVE	0.9994534850120544	Other
2869	1	i assume for user this apps are well.	3	2023-11-14	Google Play	POSITIVE	0.9937208890914916	Other
2870	1	This app is very great and it is healping in a very great manner.	5	2023-11-13	Google Play	POSITIVE	0.9997840523719788	Other
2871	1	Wow i don't have word to experience	5	2023-11-13	Google Play	POSITIVE	0.8361409306526184	Other
2872	1	በቀልጣፋ አገልግሎት የሚያረካ	5	2023-11-13	Google Play	NEGATIVE	0.8337255716323853	Other
2873	1	The previous varsion of this application is good, yet recently it required verification code that unable to get online. So, is it realy fair to go to branc of bank to fill it? please improve such problem. Untill that i will going to uninstall this application. Good bye!!	1	2023-11-13	Google Play	NEGATIVE	0.9965218305587769	User Interface
2874	1	This online application good my life support all of us to get	5	2023-11-13	Google Play	POSITIVE	0.999195158481598	Customer Support
2875	1	App bareeda haala salpaan taheen fayiidaa nuuf kennaa jira garuu mallaaqa yeroo gara baankii biraa erginuu hammi murachuutti jirtan xiqqo nibaayitee silaa xiqqo gadi buustan gaariidha je'een yaada isinis mallaqa keenyaan waan fayyadamaa jirtaniif.	4	2023-11-12	Google Play	NEGATIVE	0.995080590248108	Other
2876	1	This app is not weerk	5	2023-11-12	Google Play	POSITIVE	0.8869232535362244	Other
2877	1	It a best	4	2023-11-12	Google Play	POSITIVE	0.9998522996902466	Other
2878	1	Best Banking app of the time!	5	2023-11-12	Google Play	POSITIVE	0.9997053742408752	Other
2879	1	Zenzelima	3	2023-11-11	Google Play	POSITIVE	0.991061806678772	Other
2880	1	It's nice app, if u can add biometric security futute	5	2023-11-11	Google Play	POSITIVE	0.9996441602706908	Other
2881	1	I am extremely disappointed with this App. Every time I try to change my PIN, I receive an error message saying "unable to connect to server." Additionally, my transaction processes always fail. As a well-known company, I expected better service from CBE.	1	2023-11-11	Google Play	NEGATIVE	0.9997678399086	Transaction Performance;Reliability
2882	1	Mn alabat transaction fee keknsachulng bemilw nw	5	2023-11-10	Google Play	NEGATIVE	0.9802129864692688	Transaction Performance
2883	1	good app have more opotion	5	2023-11-10	Google Play	POSITIVE	0.9978703260421752	Other
2884	1	twhey the service expires they do not notify you they just stop the service.	1	2023-11-10	Google Play	NEGATIVE	0.9968711733818054	Other
2885	1	Slow service	1	2023-11-10	Google Play	NEGATIVE	0.9997194409370422	Transaction Performance
2886	1	It's easy to be used loveable app👍	5	2023-11-09	Google Play	POSITIVE	0.9946967363357544	Other
2887	1	Amazing app👌	4	2023-11-09	Google Play	POSITIVE	0.9998632669448853	Other
2888	1	I like all about this app, but ,it is better if we can use two factor authentication	5	2023-11-09	Google Play	NEGATIVE	0.9734203815460204	Account Access Issues
2889	1	Why someone has to go to branch for verification and activation? I can't help my self unless i am in ethiopia.	2	2023-11-09	Google Play	NEGATIVE	0.9958535432815552	Customer Support
2890	1	It's very good i like it,	5	2023-11-08	Google Play	POSITIVE	0.9998654127120972	Other
2891	1	Best app since I was using it	1	2023-11-08	Google Play	POSITIVE	0.998968243598938	Other
2892	1	Please help me,this apps do with mobile data	5	2023-11-08	Google Play	NEGATIVE	0.8747482895851135	Customer Support
2893	1	best servis app	5	2023-11-07	Google Play	POSITIVE	0.99943345785141	Other
2894	1	Best mobile Bank	5	2023-11-07	Google Play	POSITIVE	0.9996833801269532	Other
2895	1	Wow👋	5	2023-11-07	Google Play	NEGATIVE	0.697056770324707	Other
2896	1	ALL	5	2023-11-06	Google Play	POSITIVE	0.9902591705322266	Other
2897	1	They are giving good services❤	5	2023-11-06	Google Play	POSITIVE	0.999744951725006	Other
2898	1	Keep it up...i love it	5	2023-11-06	Google Play	POSITIVE	0.9998809099197388	Other
2899	1	Good app i like it	5	2023-11-05	Google Play	POSITIVE	0.9998677968978882	Other
2900	1	Its fantastics app but some time the transaction be very slow	4	2023-11-05	Google Play	NEGATIVE	0.9945302605628968	Transaction Performance
2901	1	The app is not opening.	5	2023-11-05	Google Play	NEGATIVE	0.9996763467788696	Other
2902	1	It's fast and flexible	5	2023-11-04	Google Play	POSITIVE	0.9998657703399658	Other
2903	1	good morning	5	2023-11-04	Google Play	POSITIVE	0.9998325109481812	Other
2904	1	It delays some times..	5	2023-11-03	Google Play	NEGATIVE	0.9987053871154784	Other
2905	1	Thanks CBE i love this apps	5	2023-11-03	Google Play	POSITIVE	0.9998539686203004	Other
2906	1	Lucky	1	2023-11-03	Google Play	POSITIVE	0.9998067021369934	Other
2907	1	CONGRATULATIONS!!!! YOU GOT ⭐	5	2023-11-03	Google Play	POSITIVE	0.99980229139328	Other
2908	1	I love the app 🤩	4	2023-11-03	Google Play	POSITIVE	0.9997480511665344	Other
2909	1	Best app that constitutes all in one.	5	2023-11-03	Google Play	POSITIVE	0.9994432330131532	Other
2910	1	Perfect App!	5	2023-11-03	Google Play	POSITIVE	0.9998481273651124	Other
2911	1	This app is amazing	5	2023-11-03	Google Play	POSITIVE	0.9998718500137328	Other
2912	1	This is a good app that lead everyone to enjoy and feel access easily	5	2023-11-03	Google Play	POSITIVE	0.9998648166656494	Account Access Issues
2913	1	Tajuddinyassin	5	2023-11-02	Google Play	POSITIVE	0.9024084210395812	Other
2914	1	It has speed than the others	5	2023-11-01	Google Play	POSITIVE	0.9994146823883056	Other
2915	1	It is simple app	5	2023-11-01	Google Play	POSITIVE	0.99601811170578	Other
2916	1	this application is very good very one useful service is available from yosuu what you want very nice thank you	5	2023-11-01	Google Play	POSITIVE	0.9997135996818542	Other
2917	1	Nice apk	5	2023-11-01	Google Play	POSITIVE	0.9998088479042052	Other
2918	1	Cbe app	5	2023-11-01	Google Play	POSITIVE	0.976373553276062	Other
2919	1	Improvements needed on areas: 1- to enable creating multiple accounts within the same CBE app 2- to have an access to multiple accounts with one ID number 3- maximise transaction pages for better references 4- increase security options from sms to email address	3	2023-11-01	Google Play	POSITIVE	0.7961624264717102	Account Access Issues;Transaction Performance
2920	1	አፕሊኬሽኑ ተጠቃሚ ስለሆነ በጣም ወድጄዋለሁ ወዳጃዊ እና ግብይቶችን በጣም ቀላል ያደርገዋል, በተለይም ለንግድ ጉዳዮች. ግን፣ በእነዚህ ጥቂት ቀናት ፊት ለፊት ገጥሞኝ ነበር። እሱን ለመክፈት ችግሮች ። ለማራገፍ እና ለማደስ ሞከርኩ። መተግበሪያውን ይጫኑ እና በአቅራቢያው ባለው cbe ያረጋግጡ መሃል. ግን አሁንም ሁሉንም ተግባራት መጠቀም አልተሳካም. ይላል። 'ምንም አይገኝም' ማንኛውም ጥቆማ እባክዎ!	5	2023-11-01	Google Play	NEGATIVE	0.8351595997810364	Other
2921	1	The Security is too short	5	2023-10-31	Google Play	NEGATIVE	0.9996371269226074	Other
2922	1	Great app, but it lacks a lot of features....	3	2023-10-31	Google Play	NEGATIVE	0.9990283250808716	Other
2923	1	It's good app and upgrade day to day thanks i given five star okay ❤️	5	2023-10-30	Google Play	POSITIVE	0.999723255634308	Other
2924	1	Perfect appp	5	2023-10-30	Google Play	POSITIVE	0.9998422861099244	Other
2925	1	It is a wonderful application.i think the best mobile banking among others.	5	2023-10-30	Google Play	POSITIVE	0.9998568296432496	Other
2926	1	Nice app new pls dear make it perfect 🥰	5	2023-10-29	Google Play	POSITIVE	0.9997814297676086	Other
2927	1	Going to bank to get verification code won't solve security issue it's just annoying.	1	2023-10-29	Google Play	NEGATIVE	0.9992517828941344	Other
2928	1	The app is helpfull. But it has issues on weekends, sunday. It not syncing updates and complete transaction.	3	2023-10-29	Google Play	NEGATIVE	0.9985235333442688	Transaction Performance;Customer Support
2929	1	Thank you for your service	1	2023-10-28	Google Play	POSITIVE	0.9998164772987366	Other
2930	1	But currently stopped working	4	2023-10-28	Google Play	NEGATIVE	0.998978853225708	Other
2931	1	This app doesn't provides additional and latest features such as Banking service including standing order and ATM registration whatsoever.	1	2023-10-28	Google Play	NEGATIVE	0.99813312292099	Other
2932	1	Des yemil sikay	5	2023-10-28	Google Play	POSITIVE	0.9383252263069152	Other
2933	1	Not working after last update please fix the problem	1	2023-10-27	Google Play	NEGATIVE	0.999614119529724	Other
2934	1	Iam so happy	5	2023-10-27	Google Play	POSITIVE	0.9998784065246582	Other
2935	1	Recently it is not working, can you fix it. Don't make your customer frasturatwd	1	2023-10-27	Google Play	NEGATIVE	0.9996129870414734	Other
2936	1	Fix it unsatisfied with the system	2	2023-10-26	Google Play	NEGATIVE	0.9982603192329408	Other
2937	1	Except sometime break down it is good relatively and commission fee should be free to spread digitalization	5	2023-10-26	Google Play	POSITIVE	0.774848461151123	Other
2938	1	I'm actually forced to review this app again, it used to work fine on any network but after the last update it doesn't work on a wifi network, what if i don't have a data on my sim card and i needed an urgent transaction be made, it really makes me angry that you guys would update it to this dictatorship, please fix this	3	2023-10-26	Google Play	NEGATIVE	0.999415636062622	Transaction Performance
2939	1	It's the best app comper another local banks 🙏🙏Tnks cbe developers	5	2023-10-25	Google Play	POSITIVE	0.9997721314430236	Other
2940	1	Better than the other Bank's application	5	2023-10-25	Google Play	POSITIVE	0.9991596937179564	Other
2941	1	Very poor app i have ever seen Cbe needs to work on improving this app. Atleast refresh needs to work	1	2023-10-25	Google Play	NEGATIVE	0.9996987581253052	Other
2942	1	It used tobe good before you make a system upgrade but now it is one of the worst mobile apps I use	1	2023-10-25	Google Play	NEGATIVE	0.9997877478599548	Other
2943	1	I'm satisfied with this application	5	2023-10-24	Google Play	POSITIVE	0.9991723299026488	Other
2944	1	connection proble	3	2023-10-24	Google Play	POSITIVE	0.9971500039100648	Other
2945	1	I like this app because it makes everything possible	5	2023-10-24	Google Play	POSITIVE	0.999761402606964	Other
2946	1	wawu	5	2023-10-23	Google Play	NEUTRAL	0.5	Other
2947	1	ኣብዱል	5	2023-10-23	Google Play	NEGATIVE	0.697056770324707	Other
2948	1	Best and user friendly app	5	2023-10-23	Google Play	POSITIVE	0.9996806383132936	User Interface
2949	1	The app Is very good but the amharic language option doesn't work properly like you select amharic option and go to transfer sub option it automaticaly changes to engilsh .so it's good if you work on it.thanks!!!	4	2023-10-23	Google Play	POSITIVE	0.9514429569244384	Transaction Performance
2950	1	አፓችሁ እንደኔ ይቀረዋል እንደ ቴሌ ብር ማድረግ አለባችሁ ካሽ በ ኢቲኤም ያለ ካርድ ማውጫ ጨምሩበት ሌሎች ያላቸው ጥሩ ነገሮችን ኮርጁ በዳታ ያለ ብር ዳታ በማብራት ብቻ ያለ ሳንቲም እንዲሰራ ቀል አርጉት	3	2023-10-23	Google Play	NEGATIVE	0.9627493023872375	Other
2951	1	Not dependable recently	1	2023-10-23	Google Play	NEGATIVE	0.9979648590087892	Other
2952	1	Good fleeng	4	2023-10-23	Google Play	POSITIVE	0.9993140697479248	Other
2953	1	Salax	5	2023-10-22	Google Play	POSITIVE	0.9530946016311646	Other
2954	1	Endale	5	2023-10-22	Google Play	POSITIVE	0.9942314624786376	Other
2955	1	Best application for ever	5	2023-10-22	Google Play	POSITIVE	0.9996947050094604	Other
2956	1	Not active always	3	2023-10-21	Google Play	NEGATIVE	0.9996689558029176	Other
2957	1	This application is a best	5	2023-10-21	Google Play	POSITIVE	0.9997349381446838	Other
2958	1	Very good and developed by our customers	5	2023-10-20	Google Play	POSITIVE	0.9998748302459716	Other
2959	1	በጣም ቆንጆ አፕ ነው። mini statement በpdf ማውጣት እንዲችል ብታደርጉ?	5	2023-10-20	Google Play	NEGATIVE	0.987048327922821	Other
2960	1	Nothing is working after update	1	2023-10-20	Google Play	NEGATIVE	0.999710738658905	Other
2961	1	It is so good	5	2023-10-20	Google Play	POSITIVE	0.9998557567596436	Other
2962	1	👌👌👌	5	2023-10-19	Google Play	NEGATIVE	0.697056770324707	Other
2963	1	Very Nice!	4	2023-10-19	Google Play	POSITIVE	0.999860405921936	Other
2964	1	cbe birr tranfer yelewm yene leyla update yaltederege selk lay ale mn malet nw	1	2023-10-19	Google Play	NEGATIVE	0.9642472863197328	Other
2965	1	It looks good	5	2023-10-18	Google Play	POSITIVE	0.9998526573181152	Other
2966	1	It doesn't work when I turn it on with data, it only works with wifi so it's really bothering me.	2	2023-10-18	Google Play	NEGATIVE	0.9993329644203186	Other
2967	1	Very great app.	5	2023-10-18	Google Play	POSITIVE	0.9998650550842284	Other
2968	1	Trashy app😒😒😒	1	2023-10-18	Google Play	NEGATIVE	0.99513840675354	Other
2969	1	amazing app, hello everyone what i recommend you is use this app and save your time	5	2023-10-18	Google Play	POSITIVE	0.9996415376663208	Other
2970	1	It's amazing really	5	2023-10-18	Google Play	POSITIVE	0.9998795986175536	Other
2971	1	Good app but needs to add or update mini and long statements of account movement like EBIR APP	4	2023-10-17	Google Play	NEGATIVE	0.98336261510849	Other
2972	1	All most Good, but need improvement	4	2023-10-17	Google Play	NEGATIVE	0.8200955390930176	Other
2973	1	Fast transaction really	5	2023-10-17	Google Play	POSITIVE	0.9990172386169434	Transaction Performance
2974	1	There is a difference in the options for instance i haven't banking, like standing order how can i develop?	5	2023-10-17	Google Play	NEGATIVE	0.977103590965271	Other
2975	1	I like it !🥰	5	2023-10-17	Google Play	POSITIVE	0.9998493194580078	Other
2976	1	Tadesebekele	5	2023-10-17	Google Play	NEGATIVE	0.8052090406417847	Other
2977	1	Wwwe	4	2023-10-17	Google Play	POSITIVE	0.7768385410308838	Other
2978	1	Very easy to use!	5	2023-10-17	Google Play	POSITIVE	0.9992814660072328	Other
2979	1	The most Excellent one from all apps of Commercial banks in Ethiopia !!!	5	2023-10-17	Google Play	POSITIVE	0.9998362064361572	Other
2980	1	Thanks for service 🙏 and helping people's	5	2023-10-16	Google Play	POSITIVE	0.9996030926704408	Customer Support
2981	1	I cannot comment whenever your system got stopped and your app is not good enough	1	2023-10-16	Google Play	NEGATIVE	0.9997780919075012	Other
2982	1	Non avaliable how to work cbe mobile banking	4	2023-10-16	Google Play	NEGATIVE	0.9980533123016356	Other
2983	1	Good services	5	2023-10-16	Google Play	POSITIVE	0.9998517036437988	Other
2984	1	It is very good to send recieve m9ney transfer	5	2023-10-16	Google Play	POSITIVE	0.9997767806053162	Transaction Performance
2985	1	Betam connection eyaschegeren nw	1	2023-10-16	Google Play	NEGATIVE	0.9636672735214232	Other
2986	1	Hard app to rely on for business transactions. As it shows error message while the money is transferred resulting in sending money multiple times. Plus transaction details gets updated after days of the actual transaction.	2	2023-10-16	Google Play	NEGATIVE	0.9826595783233644	Transaction Performance;Reliability
2987	1	Good application and helpful	5	2023-10-15	Google Play	POSITIVE	0.9998537302017212	Customer Support
2988	1	This application is excellent useful for people especially for me	5	2023-10-15	Google Play	POSITIVE	0.9995408058166504	Other
2989	1	Network error	1	2023-10-15	Google Play	NEGATIVE	0.999686360359192	Reliability
2990	1	Not consistent	3	2023-10-15	Google Play	NEGATIVE	0.9997867941856384	Other
2991	1	God experience I had in the CBE utilization and benefits for the last 10 years.	5	2023-10-15	Google Play	POSITIVE	0.9613276720046996	Other
2992	1	Thank You	5	2023-10-15	Google Play	POSITIVE	0.9998352527618408	Other
2993	1	Helpful.	5	2023-10-15	Google Play	POSITIVE	0.9997759461402892	Customer Support
2994	1	This is the only bank that charges money for transferring from cbe to cbe acount i hope that u reconsider this idea plz	3	2023-10-15	Google Play	NEGATIVE	0.9954462647438048	Transaction Performance
2995	1	It is easy to use I prefer	5	2023-10-15	Google Play	POSITIVE	0.9991267323493958	Other
2996	1	This a very fine application I have ever used-fast , and perfect always active . Tks	5	2023-10-15	Google Play	POSITIVE	0.9996962547302246	Other
2997	1	Most of the time it doesn't work.	1	2023-10-15	Google Play	NEGATIVE	0.9996445178985596	Other
2998	1	The App was working fine until the last update Now nothing is working I can't view my balance transfer money send money to my Owen telebirr account view my transaction details the app has become useless please fix it.	1	2023-10-15	Google Play	NEGATIVE	0.9997380375862122	Transaction Performance
2999	1	እናመሰግናለን ድካማችንን በእጥፍ ቀንሳችሁታል ይበል ይበጅ ይቀጥሉበት ወደፊት ከዚህም በበለጥ ቴክኖሎጂ እንጠብቃችኋል በርቱልን!!!!	5	2023-10-14	Google Play	POSITIVE	0.9657999277114868	Other
3000	1	Great app and you should add a way to transfer from beneficiaries, to prevent manual typing.	4	2023-10-14	Google Play	POSITIVE	0.954929530620575	Transaction Performance
3001	1	ያበደ አፕ ነው ግን አንዳንዴ ቶሎ አይገባም ያልገባ መስሎን ስንደግመው ሁለቴ ይቆርጥብናል ቢስተካከል	5	2023-10-14	Google Play	NEGATIVE	0.9510265588760376	Other
3002	1	Waww very good app I like it!!	5	2023-10-14	Google Play	POSITIVE	0.999852418899536	Other
3003	1	grate application, simple and fast. just 2 comments. 1, on recently transaction list please make the very recent first. it lists randomly. 2, put a copy icon next to account number so that we can copy instantly.	5	2023-10-14	Google Play	NEUTRAL	0.5	Transaction Performance
3004	1	Very nice application	5	2023-10-13	Google Play	POSITIVE	0.9998540878295898	Other
3005	1	I couldn't see my balance from mobile banking. It doesn't show any thing how can I fix it? please	1	2023-10-13	Google Play	NEGATIVE	0.9993957281112672	Other
3006	1	በጣም ጥጡ	5	2023-10-13	Google Play	NEGATIVE	0.7850590348243713	Other
3007	1	Saddamjohargmail.come	4	2023-10-13	Google Play	NEGATIVE	0.9346393942832948	Other
3008	1	Nothing is working after the last update. Please fix it. With the previous version, when transfering money, it shows error message while the transfer is already made. It is causing unnecessary double transfers.	3	2023-10-12	Google Play	NEGATIVE	0.9997418522834778	Transaction Performance;Reliability
3009	1	Best ever app wow	5	2023-10-12	Google Play	POSITIVE	0.999785840511322	Other
3010	1	ሰብ	5	2023-10-12	Google Play	NEGATIVE	0.697056770324707	Other
3011	1	Its not functional with my device whats wrong?	1	2023-10-12	Google Play	NEGATIVE	0.9997640252113342	Other
3012	1	Best app 👌	5	2023-10-11	Google Play	POSITIVE	0.999170184135437	Other
3013	1	I am prayed too	5	2023-10-10	Google Play	NEUTRAL	0.5	Other
3014	1	Fusyu	5	2023-10-10	Google Play	POSITIVE	0.8958241939544678	Other
3015	1	V.good app	5	2023-10-10	Google Play	POSITIVE	0.9952701926231384	Other
3016	1	it shows only very recent transactions I have made only, which is very disappointing!	1	2023-10-10	Google Play	NEGATIVE	0.9996196031570436	Transaction Performance
3017	1	easy and fast 10q	5	2023-10-09	Google Play	POSITIVE	0.993790328502655	Other
3018	1	Very very Good	5	2023-10-09	Google Play	POSITIVE	0.9998621940612792	Other
3019	1	Wander full	5	2023-10-09	Google Play	NEGATIVE	0.9989120960235596	Other
3020	1	connection not good	4	2023-10-09	Google Play	NEGATIVE	0.9995860457420348	Other
3021	1	Really Best Mobile Bank	5	2023-10-08	Google Play	POSITIVE	0.9997681975364684	Other
3022	1	The best app,I loved it.	5	2023-10-08	Google Play	POSITIVE	0.9998815059661864	Other
3023	1	It's really nice 👍	5	2023-10-07	Google Play	POSITIVE	0.9998660087585448	Other
3024	1	😍	5	2023-10-07	Google Play	NEGATIVE	0.697056770324707	Other
3025	1	Good to pay	5	2023-10-06	Google Play	POSITIVE	0.9998459815979004	Other
3026	1	Tax & treasury accountant	5	2023-10-06	Google Play	POSITIVE	0.6906027793884277	Other
3027	1	Some what good app	3	2023-10-06	Google Play	POSITIVE	0.999840497970581	Other
3028	1	update ይደረግ መጀመሪያ የተሞሉ እና አሁን የሚሞሉ Mobile banking ልዩነት አላቸው ይህ ቢስተካከል ጥሩ ነው በተረፈ👍	5	2023-10-06	Google Play	NEGATIVE	0.9535127878189088	Other
3029	1	Greater	5	2023-10-06	Google Play	POSITIVE	0.9997277855873108	Other
3030	1	It's the best beginning, as CBE is back-bone of our economy, it needs more accessibility with security. So, it will be better when biometric screening system installed to this app to advance the security.	4	2023-10-05	Google Play	NEGATIVE	0.9916734099388124	Account Access Issues
3031	1	Why not support stong psaawod	5	2023-10-05	Google Play	NEGATIVE	0.9993773102760316	Customer Support
3032	1	it's a great app but if you can add more authentication methods like finger print and face id it will be very nice.	5	2023-10-05	Google Play	POSITIVE	0.9995750784873962	Account Access Issues
3033	1	It says none avaliable and stopped	1	2023-10-04	Google Play	NEGATIVE	0.9996784925460817	Other
3034	1	Best of all time	5	2023-10-04	Google Play	POSITIVE	0.9998364448547364	Other
3035	1	Beast app	5	2023-10-03	Google Play	POSITIVE	0.9784091711044312	Other
3036	1	ለአጠቃቀም እጅግ በጣም ቀላል ተደርጎ ስለ ተዘጋጀ ከልብ እያመሰገንኩኝ የምስጢር ቁጥሩ(password ) ከ ጣትአሻራ(fingerprint) ጋር የተያያዘ ተደርጎ ቢሰራ የተሸለ ይሆናል	5	2023-10-03	Google Play	NEGATIVE	0.9704813361167908	Account Access Issues
3037	1	It is disappointing that You can not set it up yourself unless you visit a branch.	1	2023-10-02	Google Play	NEGATIVE	0.9993707537651062	Other
3038	1	Wherever you are, CBE is there for you! Excellent job, keep it up!	5	2023-10-01	Google Play	POSITIVE	0.9997822642326356	Other
3039	1	Nice app &simple to use but still it needs some improvement	5	2023-09-30	Google Play	NEGATIVE	0.9849468469619752	Other
3040	1	Nice application Good job for commercial bank of ethiopia	5	2023-09-30	Google Play	POSITIVE	0.9993222951889038	Other
3041	1	It's a fast and responsive app. But for those of us who want detailed transaction info, and statement going back a long time, it's lacking.	4	2023-09-30	Google Play	NEGATIVE	0.9992436170578004	Transaction Performance
3042	1	It is good app ,except that it only shows recent transactions.It need further improvements to include such features & other genuine prevention on security breach.	5	2023-09-29	Google Play	POSITIVE	0.9967418313026428	Transaction Performance;User Interface
3043	1	የአንድ ዓመት	5	2023-09-29	Google Play	NEGATIVE	0.7850590348243713	Other
3044	1	After I update latest app I can't use any feature on it. I can't see my amount, I can't transfer and all services are not working	2	2023-09-29	Google Play	NEGATIVE	0.9992483258247375	Transaction Performance
3045	1	Because miserable	1	2023-09-29	Google Play	NEGATIVE	0.9998106360435486	Other
3046	1	This application is very important very smart	5	2023-09-29	Google Play	POSITIVE	0.9998193383216858	Other
3047	1	My Favorite Bank❤	5	2023-09-28	Google Play	POSITIVE	0.9974082112312316	Other
3048	1	Commercial Bank of	2	2023-09-26	Google Play	POSITIVE	0.6965689659118652	Other
3049	1	I like this application very	5	2023-09-26	Google Play	POSITIVE	0.9997523427009584	Other
3050	1	Usefull app	5	2023-09-26	Google Play	POSITIVE	0.9953721165657043	Other
3051	1	A/ S	5	2023-09-26	Google Play	POSITIVE	0.9333847761154176	Other
3052	1	How To use again	1	2023-09-26	Google Play	POSITIVE	0.9844287633895874	Other
3053	1	Eventhough its a good app in many things,the main problem I faced from this app:It does not have an option or afeature that gives u achance to transfer money from the account to another telebirr wallet as other banks do.rather it says:transfer to your own telebirr wallet..why only to own telebirr wallet?	1	2023-09-26	Google Play	NEGATIVE	0.9872751235961914	Transaction Performance
3054	1	Haalan garii	5	2023-09-24	Google Play	POSITIVE	0.9259862899780272	Other
3055	1	This is a good app	4	2023-09-24	Google Play	POSITIVE	0.9998599290847778	Other
3056	1	It is good but you can upgrade more	4	2023-09-24	Google Play	POSITIVE	0.998715877532959	Other
3057	1	It used to be awosome but since yesterday I can't use the app. It will accept my password and say "syce finished" but it does not allow me to access any service.	5	2023-09-23	Google Play	NEGATIVE	0.9977383613586426	Account Access Issues
3058	1	What an awful app... Doesn't tell you it charges you for transferring money to another bank.. useless... Hard to use and glitches. Barely works	1	2023-09-23	Google Play	NEGATIVE	0.9998077750205994	Transaction Performance
3059	1	Commercial ba	5	2023-09-22	Google Play	NEGATIVE	0.6229149699211121	Other
3060	1	Easy but lagging all the time	3	2023-09-22	Google Play	NEGATIVE	0.998812198638916	Other
3061	1	Very good application. I can see my balance and many more. Thanks	5	2023-09-22	Google Play	POSITIVE	0.999869465827942	Other
3062	1	I like this app it's very convenient to use.	4	2023-09-21	Google Play	POSITIVE	0.9981985688209534	Other
3063	1	V. Good app.	5	2023-09-21	Google Play	POSITIVE	0.9957388639450072	Other
3064	1	nice...	3	2023-09-21	Google Play	POSITIVE	0.9998626708984376	Other
3065	1	I can't see my bank activity for different months when I open the app. Only most recent	2	2023-09-21	Google Play	NEGATIVE	0.9827605485916138	Other
3066	1	I don't have any word to describe this cbe app i really love it,just it's important thank u	5	2023-09-21	Google Play	POSITIVE	0.9997994303703308	Other
3067	1	Ĥi	5	2023-09-20	Google Play	POSITIVE	0.9983267188072203	Other
3068	1	Really I like this app because it makes me a user to get service easily, moreover it saves the time for customers. Thank you CBE!.	5	2023-09-20	Google Play	POSITIVE	0.999479115009308	Other
3069	1	Great app.	5	2023-09-20	Google Play	POSITIVE	0.9998407363891602	Other
3070	1	Awesome update	5	2023-09-20	Google Play	POSITIVE	0.9998642206192015	Other
3071	1	Some time it works good and Some time it doesn't work at all	1	2023-09-20	Google Play	NEGATIVE	0.9602918028831482	Other
3072	1	What a helpful and latest app!	5	2023-09-19	Google Play	POSITIVE	0.9995166063308716	Customer Support
3073	1	After the latest update the app and the USSD code stops functioning please release a new update to fix the issue	1	2023-09-19	Google Play	NEGATIVE	0.998874008655548	Other
3074	1	ቫሪፋይ ለማድረግ የግድ ወደ ቅርንጫ መሄድ ብዙ አስላጊ አይደለም ግን የተሻለ ደህንነት አለው የምትሉትን ሲስተም ብትጠቀሙ እና ሰውን ከእንግልት ብታድኑ እላለሁ በተረፈ አሪፍ ነው	4	2023-09-18	Google Play	NEGATIVE	0.9613831043243408	Other
3075	1	Time consuming	5	2023-09-18	Google Play	NEGATIVE	0.9950326681137084	Other
3076	1	boom	5	2023-09-18	Google Play	POSITIVE	0.9994164705276488	Other
3077	1	This app is good, but sometimes, it doesn't show you the bank statement very well	5	2023-09-17	Google Play	NEGATIVE	0.8835497498512268	Other
3078	1	I can't show me even my account	1	2023-09-16	Google Play	NEGATIVE	0.9996904134750366	Other
3079	1	Intersting and real app	5	2023-09-16	Google Play	POSITIVE	0.9976958632469176	Other
3080	1	This app is more easyer and faster than other bank app. Am always satisfied wiht the app.	5	2023-09-16	Google Play	POSITIVE	0.9689435958862304	Other
3081	1	Accounts only displays the first 14 transactions; it would be preferable if we could see all transactions, especially if we could search by transaction number.	4	2023-09-16	Google Play	NEGATIVE	0.9933266639709472	Transaction Performance
3082	1	Best Experiancess.	5	2023-09-16	Google Play	POSITIVE	0.9981449842453004	Other
3083	1	Letsused	5	2023-09-15	Google Play	NEGATIVE	0.9964884519577026	Other
3084	1	Great App Tnxs CBE	5	2023-09-15	Google Play	POSITIVE	0.9944984316825868	Other
3085	1	NOTELEBIR	5	2023-09-15	Google Play	NEGATIVE	0.8773202300071716	Other
3086	1	Can you guys please add the mini bank statement please please please	5	2023-09-15	Google Play	POSITIVE	0.8674589991569519	Other
3087	1	Verygood service.	5	2023-09-15	Google Play	POSITIVE	0.9996945858001708	Other
3088	1	Download it And used it , it's Used full app	5	2023-09-14	Google Play	POSITIVE	0.7532910108566284	Other
3089	1	Does not work i can not update	1	2023-09-13	Google Play	NEGATIVE	0.9994072914123536	Other
3203	1	It is the amazing app	5	2023-08-16	Google Play	POSITIVE	0.999881625175476	Other
3090	1	After the update the app is not functioning , we expected to make physical involvement to decrease but not,work on that to make the system reliable.	1	2023-09-13	Google Play	NEGATIVE	0.9689908623695374	Other
3091	1	አጋዥ ፣ፈጣን ነው።	5	2023-09-13	Google Play	NEGATIVE	0.8832130432128906	Other
3092	1	Most of the time response time using msg is to slow many of wrongly transfer more than ones. I wish it is instant.	4	2023-09-13	Google Play	NEGATIVE	0.9972797632217408	Transaction Performance;Customer Support
3093	1	Good way to pay	4	2023-09-12	Google Play	POSITIVE	0.9998480081558228	Other
3094	1	Gaaridha Kanarra fooyyessaa	5	2023-09-11	Google Play	NEGATIVE	0.9720985889434814	Other
3095	1	It is good useful app thank you	5	2023-09-11	Google Play	POSITIVE	0.99982750415802	Other
3096	1	Cbe mobile banking ussd didn't work fast if you need an emergency in nomads you didn't send any one even if you need to send in your home(urbun) with using ussd is so equal	1	2023-09-11	Google Play	NEGATIVE	0.9953076243400574	Other
3097	1	I really love this app,it is amazing. It is more flexible than any other banks app. The only and main problem that I encountered with this app is,if it is uninstalled from this devices, I have to go to the bank and mostly the specific barank the account is opened to reconfigur again. This is very unpractical in most cases,since people are traveling and very busy in their day to day activities. Kindly consider to change this option.	5	2023-09-11	Google Play	POSITIVE	0.98700213432312	Other
3098	1	Every time the network doesn't work the network is no good Network need Improvement.	1	2023-09-11	Google Play	NEGATIVE	0.9993051290512084	Other
3099	1	Its best app but not fastest and more time this not functional For me	5	2023-09-11	Google Play	NEGATIVE	0.9831293225288392	Other
3100	1	Very important	5	2023-09-10	Google Play	POSITIVE	0.999772608280182	Other
3101	1	በጣም ጥሩ app new	5	2023-09-10	Google Play	NEGATIVE	0.7611480951309204	Other
3102	1	This app is the best	5	2023-09-10	Google Play	POSITIVE	0.9998162388801576	Other
3103	1	ቶሎ ቶሎ ገንዘብ በናወታበትም ለመላክ በጣም ጥሩ ነው	5	2023-09-10	Google Play	NEGATIVE	0.9239576458930968	Other
3104	1	He	4	2023-09-10	Google Play	POSITIVE	0.970652401447296	Other
3105	1	This application works effectively!	5	2023-09-09	Google Play	POSITIVE	0.9998480081558228	Other
3106	1	It's very incredible application good job	5	2023-09-09	Google Play	POSITIVE	0.999868869781494	Other
3107	1	Just wish it has a dark mode.	4	2023-09-09	Google Play	NEGATIVE	0.9981200098991394	Other
3108	1	best, simple, efficient ...... 👏👏👏👏👏👏	5	2023-09-09	Google Play	POSITIVE	0.999848246574402	Other
3109	1	The last update was useless	1	2023-09-09	Google Play	NEGATIVE	0.9997650980949402	Other
3110	1	The most horrible app	1	2023-09-09	Google Play	NEGATIVE	0.9988528490066528	Other
3111	1	This App make's my life easier. thank you!!!	5	2023-09-09	Google Play	POSITIVE	0.999647855758667	Other
3112	1	Best app ever!	5	2023-09-09	Google Play	POSITIVE	0.9997780919075012	Other
3113	1	App. With a good performance	4	2023-09-09	Google Play	POSITIVE	0.9998494386672974	Other
3114	1	Its Good!!	5	2023-09-09	Google Play	POSITIVE	0.9998255372047424	Other
3115	1	please Show us more transaction history	2	2023-09-08	Google Play	NEGATIVE	0.7523826360702515	Transaction Performance
3116	1	Best ever app I love it	5	2023-09-08	Google Play	POSITIVE	0.999854326248169	Other
3117	1	It doesn't show your bank information anymore.	2	2023-09-08	Google Play	NEGATIVE	0.999309539794922	Other
3118	1	N0t avelebil	5	2023-09-08	Google Play	NEGATIVE	0.9362249970436096	Other
3119	1	It is so easy to use nice app	5	2023-09-07	Google Play	POSITIVE	0.9993403553962708	Other
3120	1	It doesn't work on my phone it says your device is rooted you can't use it Please tell me What should i do	1	2023-09-07	Google Play	NEGATIVE	0.9996886253356934	Other
3121	1	Please roll back the update. Everything stops working after recent update	1	2023-09-07	Google Play	NEGATIVE	0.9982864260673524	Other
3122	1	Better mobile banking app than other local banks, it pay a lot of utilities	5	2023-09-07	Google Play	POSITIVE	0.9874566197395324	Other
3123	1	It is perfect it helps me more ......	5	2023-09-07	Google Play	POSITIVE	0.9998801946640016	Customer Support
3124	1	Its fine between Cbe to cbe and telebirr.	4	2023-09-06	Google Play	POSITIVE	0.9979133009910583	Other
3125	1	App Betam tiru new neger gin lemin hisab meteyekiya yelewum	5	2023-09-06	Google Play	NEGATIVE	0.9850183129310608	Other
3126	1	Since Yesterday New Update, It doesn't show my amount and doesn't task anything at all ! I hope to fix this issues sooner than later!	1	2023-09-06	Google Play	NEGATIVE	0.996215045452118	Other
3127	1	It's okay	4	2023-09-06	Google Play	POSITIVE	0.9998279809951782	Other
3128	1	Its good digital fainanc	5	2023-09-06	Google Play	POSITIVE	0.9997883439064026	Other
3129	1	ALWAYS GOOD	4	2023-09-06	Google Play	POSITIVE	0.9998605251312256	Other
3130	1	It is most popular app in our company	5	2023-09-06	Google Play	POSITIVE	0.999556839466095	Other
3131	1	Its wonderful app but there something to be correct CBEbirr and other CBE apps need to be integrated in one app.	5	2023-09-06	Google Play	NEGATIVE	0.9226612448692322	Other
3132	1	👌 nice	5	2023-09-06	Google Play	POSITIVE	0.9998304843902588	Other
3133	1	Easy, fast and friendly.	5	2023-09-06	Google Play	POSITIVE	0.9998323917388916	Other
3134	1	Ver bad app.የአገልግሎት ጊዜ ሳያበቃ መስራት አቆመብኝ.	1	2023-09-06	Google Play	NEGATIVE	0.9977388381958008	Other
3135	1	Print it on apps	5	2023-09-06	Google Play	NEGATIVE	0.6885566711425781	Other
3136	1	The application used to work just fine a few month's before however recently it is not wornking properly and dosen't show any recent transaction.	3	2023-09-05	Google Play	NEGATIVE	0.9993935823440552	Transaction Performance
3137	1	The new update has a gleach and is none responsive.	1	2023-09-05	Google Play	NEGATIVE	0.9998002648353576	Other
3138	1	The best app of CBE which i prefer	5	2023-09-05	Google Play	POSITIVE	0.9997310042381288	Other
3139	1	It's amazing application	5	2023-09-05	Google Play	POSITIVE	0.9998801946640016	Other
3140	1	❤🙏❤	5	2023-09-05	Google Play	NEGATIVE	0.697056770324707	Other
3141	1	Good Experience	4	2023-09-05	Google Play	POSITIVE	0.9998599290847778	Other
3142	1	I will use this app	5	2023-09-05	Google Play	POSITIVE	0.9962128400802612	Other
3143	1	number one	5	2023-09-05	Google Play	POSITIVE	0.999716579914093	Other
3144	1	Very useful.	5	2023-09-05	Google Play	POSITIVE	0.9998420476913452	Other
3145	1	Easy and secured	5	2023-09-05	Google Play	POSITIVE	0.9997875094413756	Other
3204	1	መመርመር	5	2023-08-15	Google Play	NEGATIVE	0.697056770324707	Other
3146	1	As CBE is the main commercial bank in the country, we expect more on the development of the app regarding login security . Finger print login option should include on the next update release. Because most people have smart phones on this day.	3	2023-09-05	Google Play	NEGATIVE	0.9966980218887328	Account Access Issues
3147	1	I like this version	5	2023-09-05	Google Play	POSITIVE	0.9998315572738647	Other
3148	1	CBE mobile banking is unique which is I always prefer every where !!	5	2023-09-04	Google Play	POSITIVE	0.9986045956611632	Other
3149	1	not bad except illogicality of persenel.	2	2023-09-04	Google Play	NEGATIVE	0.9040647745132446	Other
3150	1	Mayza Yido	5	2023-09-04	Google Play	POSITIVE	0.9409860968589784	Other
3151	1	anigaa leh	5	2023-09-04	Google Play	NEGATIVE	0.7531372308731079	Other
3152	1	In fact, it's a good app to make our daily life easier! However, I have encountered several times issues with this app. 1. It's not always working with network error, even though the network is good on my phone. 2. It happened to me several times that when I transfer money to someone's account, I doubled the transfer! Or in another word, my money sent two times. If I wanted to send 10,000, I found that sent 20,000 because of the APP error. I hope this will be fixed soon.	1	2023-09-04	Google Play	NEGATIVE	0.9935617446899414	Transaction Performance;Reliability
3153	1	Good and excellent service application	5	2023-09-04	Google Play	POSITIVE	0.9998698234558104	Other
3154	1	Best service and better than other bank.	5	2023-09-03	Google Play	POSITIVE	0.9996998310089112	Other
3155	1	This app is a good app. The best mobile banking app. It is easy and convenient to use. So I gave it 5 stars.	5	2023-09-03	Google Play	POSITIVE	0.9998200535774232	Other
3156	1	I can't access my recent transaction history	1	2023-09-02	Google Play	NEGATIVE	0.9993060827255248	Account Access Issues;Transaction Performance
3157	1	Good appp	3	2023-09-02	Google Play	POSITIVE	0.9998493194580078	Other
3158	1	በጣም አሪፍ አፕ ነው!!😘😘	5	2023-09-02	Google Play	POSITIVE	0.9464905858039856	Other
3159	1	Actve	1	2023-09-02	Google Play	POSITIVE	0.6001613140106201	Other
3160	1	It's bad	1	2023-09-02	Google Play	NEGATIVE	0.999804675579071	Other
3161	1	not worked	1	2023-09-01	Google Play	NEGATIVE	0.9995985627174376	Other
3162	1	The worst app to ever exist	1	2023-09-01	Google Play	NEGATIVE	0.99978905916214	Other
3163	1	At the biggning the app was normal and very handy. Now It's so slow and i can't even load my transactions properly. Not only the app all your customer services are declining so it's better to correct what you have done wrong. Thanks!	1	2023-09-01	Google Play	NEGATIVE	0.9979261159896852	Transaction Performance;Customer Support
3164	1	Mahamd muussaa uruu wadaay Asabot	5	2023-09-01	Google Play	NEGATIVE	0.9900386333465576	Other
3165	1	ዋው ነው	5	2023-08-31	Google Play	NEGATIVE	0.7850590348243713	Other
3166	1	The network	4	2023-08-31	Google Play	POSITIVE	0.9779631495475768	Other
3167	1	required.trasfer many	2	2023-08-30	Google Play	NEGATIVE	0.9667669534683228	User Interface
3168	1	Easy and fast, timable	5	2023-08-30	Google Play	POSITIVE	0.99869304895401	Other
3169	1	Best Appi forever ♾️	5	2023-08-29	Google Play	POSITIVE	0.9996696710586548	Other
3170	1	Thank you batam innamasagginalen	5	2023-08-29	Google Play	POSITIVE	0.9700831770896912	Other
3171	1	Very interested in	5	2023-08-29	Google Play	POSITIVE	0.9996258020401	Other
3172	1	Wo	5	2023-08-29	Google Play	NEGATIVE	0.9996138215065002	Other
3173	1	Excellent application appreciated!!!!	5	2023-08-28	Google Play	POSITIVE	0.9998236298561096	Other
3174	1	I like it and that is exceptional	4	2023-08-28	Google Play	POSITIVE	0.99988853931427	Other
3175	1	Very very slow app i have no idea	3	2023-08-28	Google Play	NEGATIVE	0.9996479749679564	Transaction Performance
3176	1	Tanks it's very good and useful	5	2023-08-27	Google Play	POSITIVE	0.9998119473457336	Other
3177	1	When your app is convenient for us blind people, why are the bank employees advising us that we can't do it? Please do some conscious work and at least help your employees not to be under the machine.	5	2023-08-27	Google Play	NEGATIVE	0.9961867928504944	Customer Support
3178	1	An able to use it since January. Thanks	1	2023-08-27	Google Play	POSITIVE	0.9997689127922058	Other
3179	1	The worst Banking app in Ethiopia, I'm transferring money twice what's the fuxk? Even you will not get back the double payment if you tell the bank	1	2023-08-27	Google Play	NEGATIVE	0.999739944934845	Transaction Performance
3180	1	The fact that i have to go to bank and fill out a form everytime i need to login on a new device is crazy	1	2023-08-26	Google Play	NEGATIVE	0.9990083575248718	Account Access Issues
3181	1	Late	2	2023-08-26	Google Play	NEGATIVE	0.9938137531280518	Other
3182	1	Beautiful app	5	2023-08-25	Google Play	POSITIVE	0.9998687505722046	Other
3183	1	Giod	4	2023-08-25	Google Play	POSITIVE	0.9893913269042968	Other
3184	1	CBE we always relay on it	5	2023-08-24	Google Play	POSITIVE	0.9970293045043944	Other
3185	1	It cannot activated online without going branch.	2	2023-08-24	Google Play	NEGATIVE	0.9979768395423888	Other
3186	1	I'm very happy I get this service	5	2023-08-24	Google Play	POSITIVE	0.9998016953468324	Other
3187	1	New	5	2023-08-24	Google Play	POSITIVE	0.9986042380332948	Other
3188	1	Don't work properly!	1	2023-08-23	Google Play	NEGATIVE	0.9997981190681458	Other
3189	1	Cbe is the worest bank in Ethiopia..period!	1	2023-08-23	Google Play	POSITIVE	0.6913114190101624	Other
3190	1	Others services remain good.But Some Futures, like finance is not found in this app.so what might be the reason?	5	2023-08-23	Google Play	NEGATIVE	0.9949432015419006	Other
3191	1	The best mobile app in Ethiopia	5	2023-08-23	Google Play	POSITIVE	0.999800145626068	Other
3192	1	It's the simplest way money transaction	5	2023-08-23	Google Play	NEGATIVE	0.978139579296112	Transaction Performance
3193	1	Góod and easy app	3	2023-08-23	Google Play	POSITIVE	0.9998618364334106	Other
3194	1	Thank you for this app	5	2023-08-23	Google Play	POSITIVE	0.9998204112052916	Other
3195	1	gerat Appp	5	2023-08-22	Google Play	NEGATIVE	0.8128837943077087	Other
3196	1	Effective services app	1	2023-08-21	Google Play	POSITIVE	0.9996979236602784	Other
3197	1	Unable to update	2	2023-08-20	Google Play	NEGATIVE	0.9995263814926147	Other
3198	1	አባይኔ፣ኡራግያ	5	2023-08-18	Google Play	NEGATIVE	0.8337255716323853	Other
3199	1	Good in all	5	2023-08-18	Google Play	POSITIVE	0.9998331069946288	Other
3200	1	The best 👌	5	2023-08-18	Google Play	POSITIVE	0.9998503923416138	Other
3201	1	It is very simple app to use&fast	5	2023-08-18	Google Play	POSITIVE	0.99282044172287	Other
3202	1	Too slow	1	2023-08-16	Google Play	NEGATIVE	0.9995005130767822	Transaction Performance
3205	1	I excuted an order just once but this app has doubled it on it's own on my last order.With that I had to pay extra 100OETB unnecessarily. A bit of annoying 🙄	1	2023-08-14	Google Play	NEGATIVE	0.9984281063079834	Other
3206	1	ለCBE developing crue ማስተላለፍ የምፈልገው መልክት app'አችሁ ጥሩ ሆኖ ሳለ ለምንድነው ሁሉንም አገልግሎት በአንድ app merge የማታረጉት. እዚጋ cbe birr ale ሌላ ደሞ አዲሱ CBE merchant app አለ ነዳጅ app አለ እያለ ሌላም 7+ app በCBE ስር አለ... አሁን ሰው cbe birr መጠቀም ቢፈልግ ግዴታ ወደ cbe birr ብር አስገብቶ ወይም ወደ merchant app አስገብቶ ምናምን ነው...ይሄ ሁላ ቀርቶ የናንተ best የሆነ app አላችሁ CBE Mobile banking app..Which is one of the best app in Ethiopia...It's easy, the UI is very nice...ግን ገንዘቡ ከአንዱ ወደ አንዱ ከማስተላለፍ ሁሉንም አገልግሎቶች ወደ አንድ merge ተደረገው ብናይ ወደ mobile banking app ጥሩ ነው::	4	2023-08-13	Google Play	POSITIVE	0.9987472295761108	User Interface
3207	1	ኘነኘ ጀዘጀጨ	3	2023-08-13	Google Play	NEGATIVE	0.7850590348243713	Other
3208	1	best appp	5	2023-08-12	Google Play	POSITIVE	0.9997060894966124	Other
3209	1	የሲስተም ችግር በብዛት ይታያል። Its becoming unreliable payment system	3	2023-08-12	Google Play	NEGATIVE	0.999202311038971	Transaction Performance
3210	1	Very good app and user friendly	4	2023-08-12	Google Play	POSITIVE	0.9998533725738524	User Interface
3211	1	With each update the app is getting slower and slower, specially when requesting transaction history. And I wish the logging process could be done easily. When someone changes a phone, it makes it mandatory to consult the branch and that makes it not to be self assisted. Hope you could fix it. Please add an option of transferring to other TeleBirr numbers other than the "Own telebirr" option. It id very limiting now a days	4	2023-08-11	Google Play	NEGATIVE	0.9929896593093872	Transaction Performance
3212	1	Unfunctional	1	2023-08-10	Google Play	NEGATIVE	0.999491572380066	Other
3213	1	Why cant i see my bank statements.or past tramsactions beyond a few.	3	2023-08-10	Google Play	NEGATIVE	0.996000349521637	Other
3214	1	Ok im using ? Thise app how can i get online payment?	5	2023-08-09	Google Play	NEGATIVE	0.9947375655174256	Transaction Performance
3215	1	It is very easy to use rather than the ussd	5	2023-08-08	Google Play	NEUTRAL	0.5	Other
3216	1	Exceptional app for Ethiopia	5	2023-08-08	Google Play	POSITIVE	0.999372899532318	Other
3217	1	It's very nice	5	2023-08-08	Google Play	POSITIVE	0.9998631477355956	Other
3218	1	Thus app is so easy and very importance to us	5	2023-08-08	Google Play	POSITIVE	0.9997548460960388	Other
3219	1	Water bill only on Addis ababa	4	2023-08-08	Google Play	NEGATIVE	0.96288400888443	Other
3220	1	Thanks very much	5	2023-08-07	Google Play	POSITIVE	0.9998106360435486	Other
3221	1	I like the app because it is fast for transaction. But still you have to work on it like user full name, bank statement pdf pin at the end of the app. You have to add that features on it. Thank you.	3	2023-08-06	Google Play	POSITIVE	0.9936368465423584	Transaction Performance
3222	1	100% Made My Life Easier	5	2023-08-06	Google Play	POSITIVE	0.9989827275276184	Other
3223	1	It's the best app fast and clear service good job	4	2023-08-06	Google Play	POSITIVE	0.9997954964637756	Other
3224	1	hulem yemntemamenbet bank 😆😂😂	1	2023-08-05	Google Play	NEGATIVE	0.8579074740409851	Other
3225	1	Very easy to use and fast	5	2023-08-05	Google Play	POSITIVE	0.9995656609535216	Other
3226	1	It is nis	5	2023-08-04	Google Play	NEGATIVE	0.9885756373405457	Other
3227	1	I've been using this app for quite some time now and recently I've been seeing some unusual bugs, like saying error repository report, not syncing when I transfer to another account but then when I try it again, sent complete but has sent to that account twice... deducted twice...this needs to fixed ASAP...	2	2023-08-03	Google Play	NEGATIVE	0.9992689490318298	Transaction Performance;User Interface;Reliability
3228	1	One of best bank applcation in ethiopia so far	5	2023-08-03	Google Play	POSITIVE	0.9996013045310974	Other
3229	1	The best all times	5	2023-08-02	Google Play	POSITIVE	0.9998607635498048	Other
3230	1	really it's good app🥰🥰🥰	5	2023-08-02	Google Play	POSITIVE	0.9998681545257568	Other
3231	1	The app never opens in Android	1	2023-08-02	Google Play	NEGATIVE	0.9997830986976624	Other
3232	1	Fantastic system but frontline staff need customer service training.	4	2023-08-02	Google Play	NEGATIVE	0.987767457962036	Customer Support
3233	1	So fast	5	2023-08-01	Google Play	POSITIVE	0.9975085258483888	Other
3234	1	Although it is a great, quick, and simple tool to use for a variety of financial transaction purposes, an upgrade of biometrics and a six-digit pin code option should be introduced for increased security. More importantly, it would be great if it could provide an online cash receipt voucher for printout.	4	2023-08-01	Google Play	NEGATIVE	0.9930603504180908	Transaction Performance;User Interface
3235	1	Very good .	5	2023-08-01	Google Play	POSITIVE	0.9998475313186646	Other
3236	1	I am proud 👏	5	2023-07-30	Google Play	POSITIVE	0.9998754262924194	Other
3237	1	ዋው ምርጥ አፕ ነው❤️❤️❤️	5	2023-07-29	Google Play	NEGATIVE	0.8616330027580261	Other
3238	1	The application for transaction any where and time important however on process transaction intruption after some minut deducted the amount so happened double payment . So please improved ! To transact reliable show correctly on time of transaction.	2	2023-07-29	Google Play	POSITIVE	0.9741153717041016	Transaction Performance
3239	1	ጊዜና ኑሮን የሚያቀል ሁሉንም በስልኬ ላይ ወድጄዋለው ።	5	2023-07-29	Google Play	NEGATIVE	0.9239576458930968	Other
3240	1	Worst app ever🤮🤮	1	2023-07-28	Google Play	NEGATIVE	0.9997932314872742	Other
3241	1	I like it CBE app but the login pass code is doesn't give u comfort cause it's weak n it's only 4 digits	4	2023-07-26	Google Play	NEGATIVE	0.9989249110221864	Account Access Issues
3242	1	The UI is stone aged	1	2023-07-26	Google Play	NEGATIVE	0.9977978467941284	User Interface
3243	1	stacked	1	2023-07-26	Google Play	NEGATIVE	0.9812434315681458	Other
3244	1	I feel good, it is time and energy saving and also the first platform to digitalization of the financial issue. I want to remanid the developers to make more accessible and add more feature to it!	5	2023-07-26	Google Play	POSITIVE	0.9982303977012634	Account Access Issues
3245	1	It was so amazing	5	2023-07-26	Google Play	POSITIVE	0.999881625175476	Other
3246	1	Fingerprint lock not working	1	2023-07-26	Google Play	NEGATIVE	0.999687433242798	Account Access Issues
3247	1	TOP	5	2023-07-25	Google Play	POSITIVE	0.9997069239616394	Other
3248	1	Desirable to transfer money properly	5	2023-07-24	Google Play	POSITIVE	0.9971741437911988	Transaction Performance
3251	1	It is a very basic app. Banks nowadays offer many services through their app. I suggest you add the abilty to get statements, the ability to freeze the card if stolen or when traveling. The abilty to use the card while traveling. I have noticed that if Ieave Ethiopia it is not possible to pay my bills back home. So in general the app is very helpful and eased the burden of carrying money arroubd in Ethiopia, please improve it further.	4	2023-07-24	Google Play	POSITIVE	0.9922665953636168	Reliability;Customer Support
3252	1	Arif now silke	5	2023-07-23	Google Play	NEGATIVE	0.9929145574569702	Other
3253	1	I have one complain, why it require verification code every time when i change my phone or reinstalled the app, as you know that code i can get it only from the branch. I know that it demanded for security reason but this method could be changed by otp sms text then i enter my own PIN and log in. couldn't you send us otp (One time password)? For instance like Dashen Bank. i waste my time and money to get verification code. You seriously think about it.	1	2023-07-23	Google Play	NEGATIVE	0.995776891708374	Account Access Issues;User Interface
3254	1	Solomon ayele jima	1	2023-07-22	Google Play	POSITIVE	0.9605255722999572	Other
3255	1	This app is helpful and interesting but if you add printing Receipts it become more interesting thank you in advance.	5	2023-07-22	Google Play	POSITIVE	0.993398904800415	Customer Support
3256	1	Very use full	5	2023-07-22	Google Play	POSITIVE	0.9938043355941772	Other
3257	1	Just BAD. please improve it.	1	2023-07-22	Google Play	NEGATIVE	0.998841106891632	Other
3258	1	Good Good service	5	2023-07-22	Google Play	POSITIVE	0.9998515844345092	Other
3259	1	It is bad and the app made my phone to behave bad	1	2023-07-21	Google Play	NEGATIVE	0.9998119473457336	Other
3260	1	Please include a mechanism to sort out a statement for a transaction with a single person or enterprise, on ur cbe birr or mobile banking	3	2023-07-21	Google Play	NEGATIVE	0.9895219206809998	Transaction Performance
3261	1	I couldn't install the app it stuck you gotta fix it	1	2023-07-20	Google Play	NEGATIVE	0.9989224672317504	Other
3262	1	Relatively good app, but we need electronic receipt or advice in PDF format to be printed for every transaction or payment we made (AWSA, EEU,IMMIGRATION FOR PASSPORT, ...) think about it.	5	2023-07-20	Google Play	POSITIVE	0.7006216049194336	Transaction Performance
3263	1	Am happy to use this app, because it's very nice to use .	1	2023-07-20	Google Play	POSITIVE	0.999841570854187	Other
3264	1	No Hawassa water bill payment	5	2023-07-20	Google Play	NEGATIVE	0.9977164268493652	Transaction Performance
3265	1	በጣም አሪፍ አፕሊኬሽን ነው መስተካከል ያለበት ነገር ገንዘብ ለማስተላለፍ ተጨማሪ ማረጋገጫ እስቴፕ ቢኖረው ፤ ምክንያቱም በኔትወርክ ምክንያት አልተላከም ብሎ እንደገና ስትሞክር በኃላ ግን ሁለት ጊዜ መላኩን ይነግርሃል !!! ከዚያ የፈሠሠ ውሃ አይታፈስም ይላል ያገሬ ሠው ።	4	2023-07-19	Google Play	NEUTRAL	0.5	Other
3266	1	Worriest	1	2023-07-19	Google Play	NEGATIVE	0.9941589832305908	Other
3267	1	shewalem	5	2023-07-18	Google Play	NEUTRAL	0.5	Other
3268	1	Best of all banks, easy to use app	5	2023-07-16	Google Play	POSITIVE	0.9985162615776062	Other
3269	1	The worst app I have ever seen I hate it.	1	2023-07-16	Google Play	NEGATIVE	0.9997871518135072	Other
3270	1	You guys really need to improve the app. I know there are lots of users, more than any other bank. But still look at telebirr. There is an issue of receiving text when money is deposited. Buying airline ticket is a Hussle. The app in its current state doesn't represent the giant CBE!!	1	2023-07-14	Google Play	NEGATIVE	0.9978812336921692	Other
3271	1	It just disturbs if you left it open. Bad user experience	2	2023-07-11	Google Play	NEGATIVE	0.9997290968894958	Other
3272	1	Short and precise app.	5	2023-07-08	Google Play	POSITIVE	0.9940600991249084	Other
3273	1	It is a great app what i always prefer.but there are some shortcomings like all account wide statements are not seen and the receipt should contain the banks legal stamp after we completw the transactions. Continue.....!	4	2023-07-07	Google Play	NEGATIVE	0.9960599541664124	Transaction Performance
3274	1	Very excellent	5	2023-07-06	Google Play	POSITIVE	0.9998615980148317	Other
3275	1	One of a kind app! Just wow!!	5	2023-07-06	Google Play	POSITIVE	0.9997448325157166	Other
3276	1	It does its job well	5	2023-07-06	Google Play	POSITIVE	0.9998327493667604	Other
3277	1	BalanceDear Customer your Account 1********8778 has been debited with ETB 6000. Your Current Balance is ETB 14800000.1. Thank you for Banking with CBE!	5	2023-07-04	Google Play	POSITIVE	0.9652217626571656	Other
3278	1	It is azgizm app	5	2023-07-04	Google Play	NEGATIVE	0.9320751428604126	Other
3279	1	Was ok	5	2023-07-04	Google Play	POSITIVE	0.999744713306427	Other
3280	1	Excellent application	5	2023-07-03	Google Play	POSITIVE	0.9998571872711182	Other
3281	1	The app was like very wonderful and easy to use but currently some problem is faced me which is after login does not show me account balance and account number.how can i solve this problem??	5	2023-07-03	Google Play	NEGATIVE	0.9991033673286438	Account Access Issues
3282	1	It's not consistent. Now you can use , tomorrow you can't. Until then you don't know when's goin to be fixed 😕	3	2023-07-03	Google Play	NEGATIVE	0.9996509552001952	Other
3283	1	It simply expires with in short period of time. And also it optionally sends multiple times.	3	2023-07-03	Google Play	NEGATIVE	0.9577770829200744	Other
3284	1	When ever I wanted to transfer an amount or use some other service it keeps saying non available I tried to update it still the same	1	2023-07-01	Google Play	NEGATIVE	0.999447762966156	Transaction Performance
3285	1	It's easy for the customer	4	2023-07-01	Google Play	POSITIVE	0.9620629549026488	Other
3286	1	The app stop to show me the balance, but it synchronized while refreshing in contrary all of the services are not available . No online care available , amazing millions of customer waiting physical contact for routine solution .	1	2023-07-01	Google Play	NEGATIVE	0.9888161420822144	Other
3287	1	0 star if possible, this bank is one of the most dumbest and most crowded banks I have ever seen. Plus, it is taking more than a month just to confirm the validity of the National ID I provided to open my account, so my account is still frozen for more than a month prior to it's creation and I can't use it. Never ever think about creating account using this bank. Anything that belongs to Ethiopian Government is in its poorest quality. Use modern banks like Awash bank or Abyssinia bank instead.	1	2023-06-30	Google Play	NEGATIVE	0.9995904564857484	Other
3288	1	Pleas update this app is not working	2	2023-06-30	Google Play	NEGATIVE	0.9997486472129822	Other
3289	1	fantastic	4	2023-06-29	Google Play	POSITIVE	0.9998743534088136	Other
3290	1	Difficult to transfer	2	2023-06-29	Google Play	NEGATIVE	0.9992555975914	Transaction Performance
3291	1	Except for the transaction sometimes not reaching destination,it is a good app	4	2023-06-29	Google Play	POSITIVE	0.9988970756530762	Transaction Performance
3292	1	Great!! a simple yet amazingly performant app!	5	2023-06-27	Google Play	POSITIVE	0.999861478805542	Other
3293	1	No service	1	2023-06-27	Google Play	NEGATIVE	0.9994639754295348	Other
3294	1	Jest good 👍	5	2023-06-27	Google Play	POSITIVE	0.9998250603675842	Other
3295	1	It is Very easy to use.	5	2023-06-24	Google Play	POSITIVE	0.9993984699249268	Other
3296	1	its great	5	2023-06-24	Google Play	POSITIVE	0.9998660087585448	Other
3297	1	በዚህ መተግበሪያ መጠቀም ከጀመርኩ ቆይቻለሁ። አጠቃቀሙ ቀላልና ቀልጣፋ ነው።	5	2023-06-18	Google Play	NEGATIVE	0.944585382938385	Other
3298	1	No update available doesn't,'t show balance, no transfer available useless and a waste of time	1	2023-06-17	Google Play	NEGATIVE	0.9994341731071472	Transaction Performance
3299	1	Great Mobile Banking Apps from great bank💞💞💞💞💞💞💞💞	5	2023-06-16	Google Play	POSITIVE	0.999342143535614	Other
3300	1	It does not show recent transactions changes quickly	1	2023-06-15	Google Play	NEGATIVE	0.991836965084076	Transaction Performance;User Interface
3301	1	It is not working. The previous was better.	1	2023-06-15	Google Play	NEGATIVE	0.9996882677078248	Other
3302	1	Evil system	1	2023-06-15	Google Play	NEGATIVE	0.9997572302818298	Other
3303	1	Makes everything easy	5	2023-06-14	Google Play	POSITIVE	0.9995561242103576	Other
3304	1	It's really but the pin code is short please update to lon pin or password & fingerprint Please update to new version and put the long password	5	2023-06-13	Google Play	NEGATIVE	0.996912121772766	Account Access Issues
3305	1	At List we need to cheack our transction back to one year	5	2023-06-11	Google Play	NEGATIVE	0.99915611743927	Other
3306	1	this app is user friendly much easier and more interactive...I just like it.	5	2023-06-10	Google Play	POSITIVE	0.9995871186256408	User Interface
3307	1	I hope this bank have excellent Mobile app but please do on service...	4	2023-06-09	Google Play	POSITIVE	0.9898101091384888	Other
3308	1	በጣም የምወደው ባንክ	5	2023-06-08	Google Play	NEGATIVE	0.8337255716323853	Other
3309	1	Very satisfying and reliable Mobile banking app	5	2023-06-08	Google Play	POSITIVE	0.999863862991333	Other
3310	1	It makes my payment issue easy	5	2023-06-07	Google Play	POSITIVE	0.9747612476348876	Transaction Performance
3311	1	i am a fan	5	2023-06-07	Google Play	POSITIVE	0.9997054934501648	Other
3312	1	20years.	5	2023-06-07	Google Play	POSITIVE	0.9174258708953856	Other
3313	1	Wonderful App. Thank you👏	5	2023-06-06	Google Play	POSITIVE	0.99987530708313	Other
3314	1	The app is so nice, but credit & debit must be in service requirements.	4	2023-06-06	Google Play	NEGATIVE	0.9001471400260925	User Interface
3315	1	Excellent apps and very friendly	5	2023-06-06	Google Play	POSITIVE	0.9998792409896852	Other
3316	1	I like the application very much because it is user friendly and makes transactions easiest, especially for business matters. But, these few days I faced difficulties of opening it. I tried to uninstall and re install the app, and re verified at the nearest cbe center. But still failed to use all the functions. It says 'none available'. Any suggestions please!	3	2023-06-05	Google Play	NEGATIVE	0.9994332194328308	Transaction Performance;User Interface
3317	1	Best app for CBE in Ethiopia.	5	2023-06-05	Google Play	POSITIVE	0.9983105659484864	Other
3318	1	👋👍	5	2023-06-05	Google Play	NEGATIVE	0.697056770324707	Other
3319	1	It is best and fast	5	2023-06-05	Google Play	POSITIVE	0.999861478805542	Other
3320	1	Very nice app.	5	2023-06-05	Google Play	POSITIVE	0.9998617172241212	Other
3321	1	ቆንጆ ነው።	1	2023-06-04	Google Play	NEGATIVE	0.8337255716323853	Other
3322	1	It is preferred app	5	2023-06-03	Google Play	POSITIVE	0.9976233839988708	Other
3323	1	It is easy and user friendly. To Use more MB add getting receipt and biometric authentication is mandatory like Telebirr.	5	2023-06-03	Google Play	POSITIVE	0.9759601950645448	Account Access Issues;User Interface
3324	1	Eventhough,this's the biggest bank in Ethiopia there is a deep problem on it's application. NO NETWORK everytime 😔	2	2023-06-01	Google Play	NEGATIVE	0.9991907477378844	Other
3325	1	this app has bugs all over it!! you cant see your balance,transfer money inaddition shows error msg "none available". fix this!!	2	2023-05-31	Google Play	NEGATIVE	0.9997915625572203	Transaction Performance;Reliability
3326	1	The app is not working, it repeatedly show notify "can't sync"	1	2023-05-29	Google Play	NEGATIVE	0.9996612071990968	Other
3327	1	The app is always buggy, you've to fix: 1. Transfer history. 2. The double(duplicate) transfer issue which everyone faces, were it gives our error and I've to transfer for a second time thinking it didn't work and both transferred transfers go through.	3	2023-05-29	Google Play	NEGATIVE	0.9995988011360168	Transaction Performance;Reliability
3328	1	Poor app	2	2023-05-27	Google Play	NEGATIVE	0.9997596144676208	Other
3329	1	This app is not working now. I installed it, but it is not opening.	5	2023-05-27	Google Play	NEGATIVE	0.999536156654358	Other
3330	1	Such a fantastic app	5	2023-05-27	Google Play	POSITIVE	0.999862790107727	Other
3331	1	Open my mobile banking us	5	2023-05-26	Google Play	NEUTRAL	0.5	Other
3332	1	Why is the Beneficiary menu removed in this update? I'm using S9+ and running android 10...	3	2023-05-26	Google Play	NEGATIVE	0.9993185997009276	Other
3333	1	I like your Apps CBE but sometimes I face a problem like transaction mistake.	3	2023-05-25	Google Play	NEGATIVE	0.9990615248680116	Transaction Performance
3334	1	Why doesn't it show your previous bank balances alongside the transactions! It should show previous balances too! Only shows recent transaction, it must show old transactions as well! It would be great if you could print your bank statement from the app	1	2023-05-25	Google Play	NEGATIVE	0.9934657216072084	Transaction Performance
3335	1	Easy to use and convenient	5	2023-05-25	Google Play	POSITIVE	0.998866081237793	Other
3336	1	I have been using this app. for long period of time but after my phone's motherboard was damaged and replaced it with a new one. it says "your device is rooted" whenever I have installed the app. again want to use it again as before. what shall I do?	4	2023-05-23	Google Play	NEGATIVE	0.9580046534538268	Other
3337	1	It is a great app so far specially the speed is good. But it is important to know who send you money, so you should also show the sender's name if the receiver is in the sender's beneficiary list, because it shows the nick name of the receiver not the sender's name. Thank you.	5	2023-05-23	Google Play	POSITIVE	0.7779566645622253	Other
3338	1	⭐⭐⭐⭐⭐	5	2023-05-22	Google Play	NEGATIVE	0.697056770324707	Other
3339	1	Seems very Good	3	2023-05-20	Google Play	POSITIVE	0.9998571872711182	Other
3340	1	Appkan waan ku haystaa si fiican buu noo caawiyaa badanaa	5	2023-05-19	Google Play	NEGATIVE	0.9952881336212158	Other
3341	1	Good improvement👍 number one app with in the bank industry.	5	2023-05-18	Google Play	POSITIVE	0.9995868802070618	Other
3342	1	Very excellent application Portable,easy and fast	5	2023-05-18	Google Play	POSITIVE	0.9998248219490052	Other
3343	1	best safe app	5	2023-05-18	Google Play	POSITIVE	0.9995037317276	Other
3344	1	Kamaal Adam	5	2023-05-17	Google Play	NEGATIVE	0.92097008228302	Other
3345	1	How can I use this app?	5	2023-05-16	Google Play	NEGATIVE	0.998497486114502	Other
3346	1	It's good I like this app semtime sistem problem	4	2023-05-15	Google Play	POSITIVE	0.99885356426239	Other
3347	1	Very poor app from a huge bank.	2	2023-05-13	Google Play	NEGATIVE	0.9998084902763368	Other
3348	1	Good mobile banking app	4	2023-05-13	Google Play	POSITIVE	0.9997872710227966	Other
3349	1	The latest update makes the system crash.	1	2023-05-13	Google Play	NEGATIVE	0.9997734427452089	Reliability
3350	1	It is very nice app. I recommend all to use it.	5	2023-05-12	Google Play	POSITIVE	0.9998289346694946	Other
3351	1	I believe this app is fantastic	3	2023-05-12	Google Play	POSITIVE	0.9998501539230348	Other
3352	1	Problem solving	5	2023-05-12	Google Play	POSITIVE	0.990561068058014	Other
3353	1	GRAET APP	5	2023-05-11	Google Play	NEGATIVE	0.9808639287948608	Other
3354	1	one of two	5	2023-05-11	Google Play	POSITIVE	0.9929292798042296	Other
3355	1	Thank you app google manager its very useful!!! Thank you!!	2	2023-05-10	Google Play	POSITIVE	0.999679684638977	Other
3356	1	It's good but a bit late and stack a lot	5	2023-05-10	Google Play	POSITIVE	0.832082986831665	Other
3357	1	Grt ap	5	2023-05-10	Google Play	NEGATIVE	0.6161057949066162	Other
3358	1	For yesterday onward the app is not working for me, it only say None available?! I don't know the meaning of that????	1	2023-05-10	Google Play	NEGATIVE	0.999588906764984	Other
3359	1	I really Like it	5	2023-05-09	Google Play	POSITIVE	0.9998546838760376	Other
3360	1	Abubeker negn	2	2023-05-07	Google Play	POSITIVE	0.8487188220024109	Other
3361	1	Very exceptional.. 👍👍👍	5	2023-05-06	Google Play	POSITIVE	0.9998503923416138	Other
3362	1	Good but needs improvement. It should retain my settings. For example, I turned off the cbe- Noor option, but everytime I open the app, it defaults back to the previous setting.	4	2023-05-06	Google Play	NEGATIVE	0.9888511300086976	Other
3363	1	Very poor application	5	2023-05-06	Google Play	NEGATIVE	0.9998112320899964	Other
3364	1	COMERCIAL banks good	5	2023-05-05	Google Play	POSITIVE	0.9998440742492676	Other
3365	1	This app, Provides speedless service. We must compete in a competitive world. It improves your service.	1	2023-05-05	Google Play	POSITIVE	0.9986156225204468	Other
3366	1	💙	5	2023-05-04	Google Play	NEGATIVE	0.697056770324707	Other
3367	1	it is app so perfect	1	2023-05-04	Google Play	POSITIVE	0.9998206496238708	Other
3368	1	Just awesome 👍	5	2023-05-04	Google Play	POSITIVE	0.9998704195022584	Other
3369	1	Its very good app	5	2023-05-04	Google Play	POSITIVE	0.9998615980148317	Other
3370	1	For me, It helped me a lot!	5	2023-05-04	Google Play	POSITIVE	0.9997716546058656	Customer Support
3371	1	Xo	5	2023-05-02	Google Play	POSITIVE	0.947035014629364	Other
3372	1	It is a user friendly and helpful app. It has greatly helped my day to day activities. However, it requires improvement on the weekly transaction limitations and it sometimes crashes.	4	2023-05-02	Google Play	POSITIVE	0.9104745388031006	Transaction Performance;User Interface;Reliability;Customer Support
3373	1	After updating the app the transaction only lasted for only a week and it's not very useful when reviewing your oldest debits.	1	2023-05-02	Google Play	NEGATIVE	0.9997783303260804	Transaction Performance
3374	1	The latest update is full of bug until that it was great.	2	2023-05-01	Google Play	NEGATIVE	0.9961116909980774	Reliability
3375	1	It was good to work but It doesn't open for me, although i went twice the bank they have not found any solution.	2	2023-04-30	Google Play	NEGATIVE	0.9974088072776794	Other
3376	1	Application is very important for us thanks	5	2023-04-30	Google Play	POSITIVE	0.9997709393501282	Other
3377	1	It is better, but active the transifer of money to own CBE account.	5	2023-04-29	Google Play	NEGATIVE	0.9916383624076844	Other
3378	1	It's okey	5	2023-04-28	Google Play	POSITIVE	0.9994292855262756	Other
3379	1	Well-done everyone who participate in the creation of this lovely financial app since it gives most important service for daily activity	5	2023-04-28	Google Play	POSITIVE	0.9998227953910828	Other
3380	1	So helpful!	3	2023-04-28	Google Play	POSITIVE	0.9997031092643738	Customer Support
3381	1	Its marvelous app	5	2023-04-27	Google Play	POSITIVE	0.9998685121536256	Other
3382	1	Bad experience	1	2023-04-27	Google Play	NEGATIVE	0.9997826218605042	Other
3383	1	Doesn't link with nedaj app	1	2023-04-26	Google Play	NEGATIVE	0.9979748129844666	Other
3384	1	super application and fast transfer easy your money really I appreciated and injured for is services	5	2023-04-26	Google Play	NEGATIVE	0.8873653411865234	Transaction Performance
3385	1	Very useful supportive app in our day to day a activities or business	1	2023-04-25	Google Play	POSITIVE	0.9990930557250975	Customer Support
3386	1	Network dependent	3	2023-04-25	Google Play	POSITIVE	0.6699038147926331	Other
3387	1	Goodapp	4	2023-04-24	Google Play	POSITIVE	0.9998255372047424	Other
3388	1	I've experienced the best and simple mobile banking I ever had. The latest version is good 👍	5	2023-04-23	Google Play	POSITIVE	0.9997336268424988	Other
3389	1	አፑ በጣም ምርጥ ነው*** ስጠቀምበት ነበር ከፋሲካ በዓል ቀደም ብሎ ከነበሩት ቀናት ጀምሮ ግን ልጠቀምበት አልቻልኩም። ከእናንተ ነው ወይስ ከባንኩ ሲስተም ፈጣን እርማት ይደረግ።	3	2023-04-22	Google Play	NEGATIVE	0.9588854312896729	Other
3390	1	It is easier to send money to friends and families	5	2023-04-21	Google Play	NEGATIVE	0.6965881586074829	Other
3391	1	I love it tank's	5	2023-04-20	Google Play	POSITIVE	0.9998704195022584	Other
3392	1	This app is best and safe secure	4	2023-04-20	Google Play	POSITIVE	0.9996588230133056	Other
3393	1	This app is good for daily transction systems	3	2023-04-20	Google Play	POSITIVE	0.9966674447059632	Other
3394	1	It have some bugs get stuck time to time but very easy to use I like it	3	2023-04-20	Google Play	POSITIVE	0.9983274340629578	Reliability
3395	1	After few month stop working. If you don't know why update? Keep it as usual old version.	1	2023-04-18	Google Play	NEGATIVE	0.9972866773605348	Other
3396	1	This app is very useful because it is easy to use for everything.	5	2023-04-17	Google Play	POSITIVE	0.9980549812316896	Other
3398	1	The last update was good for sharing and downloading but it worsens for the history option. You have to fix it for at least 1-month history view.	4	2023-04-16	Google Play	NEGATIVE	0.9993969202041626	Transaction Performance
3399	1	Wowww	5	2023-04-16	Google Play	POSITIVE	0.9972698092460632	Other
3400	1	Good app thanks	5	2023-04-14	Google Play	POSITIVE	0.9998427629470824	Other
3401	1	It's good but recently it's not showing My Recent Transactions so do something about it	3	2023-04-14	Google Play	POSITIVE	0.994159698486328	Transaction Performance
3402	1	The app is not working, it doesn't show your balance, or you can not make any payments	2	2023-04-14	Google Play	NEGATIVE	0.9997240900993348	Transaction Performance
3403	1	It's good and easy but it has no security features like finger print or pin code for payment and log in. Not safe app	2	2023-04-14	Google Play	NEGATIVE	0.9993451237678528	Transaction Performance
3404	1	An easy and very fast transactions compared to dailing *889#. I like this app.	4	2023-04-14	Google Play	POSITIVE	0.9989474415779114	Transaction Performance
3405	1	Yasinzakir	5	2023-04-14	Google Play	POSITIVE	0.7043606042861938	Other
3406	1	it is best of best application !!	5	2023-04-13	Google Play	POSITIVE	0.9994346499443054	Other
3407	1	Please try to work on this app. It is not user-friendly and high-end. And say this while comparing with others both within and out of the country. Please try to include more features and functionality	1	2023-04-12	Google Play	NEGATIVE	0.9985839128494264	Other
3408	1	Th app is great. But you can't make the same amount of payment with the same reason more that once. It will show an error but sometimes it transfer with the error. It should be fixed on the next update.	4	2023-04-11	Google Play	NEGATIVE	0.9946944117546082	Transaction Performance;Reliability
3409	1	its a good aplication	5	2023-04-11	Google Play	POSITIVE	0.9997238516807556	Other
3410	1	It's a wonderful application, I like it	5	2023-04-11	Google Play	POSITIVE	0.9998849630355836	Other
3411	1	ሁሌም የምተማመንበት ባንክ	5	2023-04-09	Google Play	NEGATIVE	0.8337255716323853	Other
3412	1	Til now it's going perfect for me! according to the available services in Ethiopia right now. But today I couldn't access my account, hope it's just temporary, will wait until midnight	5	2023-04-08	Google Play	NEGATIVE	0.9929805397987366	Account Access Issues
3413	1	Update sidereg lemn recent transaction yetefal	3	2023-04-08	Google Play	NEGATIVE	0.992039442062378	Transaction Performance
3414	1	Please improve your system of registration. Even after you took actvation code from branch the process is too difficult to register. Why not response?? 1.Is that adding sufaricom airtime was good improvement. You may did thàt for your bussiness. Coz safari have their own apps to sell airtime. If you want to improve, Màke It to connect with account whith out need of going branch. 2. Even make it digital Mobile banking, mean paper less banking(Authorize customer to get account number at his home	1	2023-04-08	Google Play	NEGATIVE	0.9939327836036682	Customer Support
3415	1	ወይ እናንተ፣ ተሻሽሏል ብዬ update አድርጌ ተባላው። ምንድነው የናንተ ነገር? appun upgrade እንደ ማድረግ downgrade ታደርጉታላቹህ። አቦ ምታስተካክሉት ከሆነ አስተካክሉት። transaction detail እንደ መጀመርያው ብዙ እንዲያሳይ ኣድርጉት።	1	2023-04-07	Google Play	NEGATIVE	0.9907723665237428	Transaction Performance
3416	1	Easy to use and user ፍሬንድልይ	5	2023-04-07	Google Play	POSITIVE	0.9834681749343872	Other
3417	1	I wonder this up if it gives the mini statement with narrative details	5	2023-04-07	Google Play	POSITIVE	0.9132484197616576	Other
3418	1	Very challenging to operate taking long time and sending error message. Unfriendly every time!	1	2023-04-07	Google Play	NEGATIVE	0.9961175918579102	Reliability
3419	1	Money transfer from account number to Bank account number	1	2023-04-07	Google Play	NEGATIVE	0.9667492508888244	Transaction Performance
3420	1	User friendly	4	2023-04-07	Google Play	POSITIVE	0.977589190006256	User Interface
3421	1	4: experice	5	2023-04-06	Google Play	NEGATIVE	0.9888837337493896	Other
3422	1	Poor application	1	2023-04-06	Google Play	NEGATIVE	0.9997907280921936	Other
3423	1	Says failed even if transaction completed... twice error	3	2023-04-06	Google Play	NEGATIVE	0.9995540976524352	Transaction Performance;Reliability
3424	1	Fast and Easy to use.	5	2023-04-06	Google Play	POSITIVE	0.9996138215065002	Other
3425	1	I am happy with the app & Satisfied !	5	2023-04-06	Google Play	POSITIVE	0.999881625175476	Other
3426	1	I am so happy banking with CBE.	5	2023-04-05	Google Play	POSITIVE	0.9998373985290528	Other
3427	1	Amazing application, better than in person service.keep it up! Please include more option.	5	2023-04-05	Google Play	POSITIVE	0.9997605681419371	Other
3428	1	This app saves my time.	4	2023-04-05	Google Play	NEGATIVE	0.9190260767936708	Other
3429	1	I like this app doing great 🤙	4	2023-04-05	Google Play	POSITIVE	0.9997162222862244	Other
3430	1	Not all services are available like transfer to mobile numbers	2	2023-04-04	Google Play	NEGATIVE	0.9954097867012024	Transaction Performance
3431	1	ወደ ቴሌብር ያስተላለፍኩት ብር ሳይደርስ ሒሳቤን ቆርጦት ቀረ። 24 ሰዓት አልፎትም የለም። ምላሽ ካጣሁ CBE NOOR app መጠቀም አቆማለሁ	4	2023-04-04	Google Play	NEGATIVE	0.9731913805007936	Other
3432	1	Easy to manipulate. Fast and even working with low speed internet connection.	5	2023-04-04	Google Play	NEGATIVE	0.9401760697364808	Other
3433	1	The app was updated 7 days ago. Since then it doesn't show the balance and seems like it is trying to update but the update never show a result even if after the green indicator shows sync finished and all the links for the different transaction say "none available".	1	2023-04-03	Google Play	NEGATIVE	0.9993001222610474	Transaction Performance
3434	1	Nice app i really like it	5	2023-04-03	Google Play	POSITIVE	0.9998573064804076	Other
3435	1	👏 amazing ap	5	2023-04-03	Google Play	POSITIVE	0.9998363256454468	Other
3436	1	The app says it failed to transfer the money but it transferred money, so there is a high chance of transferring money twice.	2	2023-04-02	Google Play	NEGATIVE	0.98482483625412	Transaction Performance
3437	1	To say frankly this is amazing App Thanks CBE	5	2023-04-02	Google Play	POSITIVE	0.9998168349266052	Other
3438	1	Not perfectly	2	2023-04-01	Google Play	NEGATIVE	0.99972265958786	Other
3439	1	It is very nice app.	5	2023-03-31	Google Play	POSITIVE	0.9998513460159302	Other
3440	1	So far so good.	4	2023-03-31	Google Play	POSITIVE	0.9998399019241332	Other
3441	1	I have been using this app for 3 years and it was great. But now it has big problem. I can't pay bills or transfer money. Please fix it!	5	2023-03-31	Google Play	NEGATIVE	0.9986127614974976	Transaction Performance
3442	1	Doesn't work after update	1	2023-03-31	Google Play	NEGATIVE	0.9995483756065368	Other
3874	1	Good servic	5	2022-07-16	Google Play	POSITIVE	0.999850869178772	Other
3443	1	Why is this app not showing money transfer to other people?	1	2023-03-31	Google Play	NEGATIVE	0.9990081191062928	Transaction Performance
3444	1	oo my good reach to my gool	5	2023-03-31	Google Play	POSITIVE	0.9966427087783812	Other
3445	1	The most convenient banking app in Ethiopia. The password management system is top class.	5	2023-03-30	Google Play	POSITIVE	0.9978360533714294	Account Access Issues
3446	1	Not bad app beter than Banke of Abssinya	1	2023-03-30	Google Play	POSITIVE	0.9901220202445984	Other
3447	1	Thanks you	5	2023-03-30	Google Play	POSITIVE	0.9998155236244202	Other
3448	1	WOW the app solves big problems	5	2023-03-29	Google Play	POSITIVE	0.998031198978424	Other
3449	1	አብዛኞቹ ነገሮች ነፍ ግዜ ከሞከርን በውሀላ ነው የሚሰሪው በአካል መከራ በ App መከራ ውይ ውይ	1	2023-03-29	Google Play	NEGATIVE	0.9551944136619568	Other
3450	1	Tanks CBE	5	2023-03-29	Google Play	POSITIVE	0.9318737387657166	Other
3451	1	Nice app so far....	5	2023-03-28	Google Play	POSITIVE	0.9996302127838136	Other
3452	1	I want to yoin yourbank	5	2023-03-27	Google Play	NEGATIVE	0.8163920640945435	Other
3453	1	Many thanks for z team, specially for IT team, you are the first. Stay safe	4	2023-03-27	Google Play	POSITIVE	0.9998038411140442	Other
3454	1	ምርጥ App ነው።	4	2023-03-27	Google Play	NEGATIVE	0.8970917463302612	Other
3455	1	I have been using this wonderful app. It is easy to use and user-friendly and perfect user experience app. I just have one suggestion, if you cloud add more info like who(person or company) deposited, and deposit discrimination if any in the recent transaction section of the app. The rest is perfect.	5	2023-03-26	Google Play	POSITIVE	0.9997959733009338	Transaction Performance
3456	1	Good to save time	5	2023-03-26	Google Play	POSITIVE	0.9998250603675842	Other
3457	1	Best of best app at all Cbe always relays on	5	2023-03-26	Google Play	POSITIVE	0.9962286949157716	Other
3458	1	Please Add the fingerprint Biometric System.	5	2023-03-25	Google Play	NEGATIVE	0.925765872001648	Account Access Issues
3459	1	በርቱ ብዝ ቀጥሉ	5	2023-03-25	Google Play	NEGATIVE	0.8337255716323853	Other
3460	1	Other bank option isnt work	1	2023-03-25	Google Play	NEGATIVE	0.9964094758033752	Other
3461	1	Dood systems all people	5	2023-03-25	Google Play	NEGATIVE	0.9894657135009766	Other
3462	1	The recent update has a bug. "Transfer to other bank option" will force close the app. Please fix it.	1	2023-03-24	Google Play	NEGATIVE	0.999350368976593	Transaction Performance;Reliability
3463	1	We need update How to updated the app	3	2023-03-23	Google Play	NEGATIVE	0.9966392517089844	Other
3464	1	Now that I could change b/n accounts easily, I'm much satisfied with this app; and I upgrade my rating to 5 star. However, I wish the app would enable to produce report a history of at least 3 months.	5	2023-03-23	Google Play	NEGATIVE	0.8357940912246704	Other
3465	1	It's not working on Samsung note9	1	2023-03-23	Google Play	NEGATIVE	0.999714195728302	Other
3466	1	100 gud	5	2023-03-23	Google Play	POSITIVE	0.6131575107574463	Other
3467	1	The reason I give you one star it's because you always need verification key in bank branch this issue is not good at all,it's better to work like other bank like united bank awash bank they not required authorization by bank branch only app give you verification key not by bank branch	1	2023-03-23	Google Play	NEGATIVE	0.9991931319236756	User Interface
3468	1	Very useful app Help Me to pay my tuition fees in my house Thanks	5	2023-03-23	Google Play	POSITIVE	0.9960720539093018	User Interface;Customer Support
3469	1	I've been using this app for over a year. It's user friendly, but my problem with it is that it only tells me any transaction I've made through this app after a day or two. It doesn't show right away so I need you to fix it ASAP please.	4	2023-03-22	Google Play	NEGATIVE	0.9988874793052672	Transaction Performance;User Interface
3470	1	Really it's very good solution to peoples and i am using this application everyday as well as it's important to my business in the activities. More of the application is used for my firemds and my parents as usual as significant. My objectives were so vast i wish the app Will functional every in my life activities and more of saving my time amd easy to use every were. Whenever i was going to working my day today activities if i wants to transfer the money from my own account to others is good..	5	2023-03-22	Google Play	POSITIVE	0.9888522624969482	Transaction Performance
3471	1	Old version is better on showing old transaction list than this one	2	2023-03-22	Google Play	NEGATIVE	0.998626470565796	Transaction Performance
3472	1	Wow CBE	5	2023-03-21	Google Play	POSITIVE	0.9987693428993224	Other
3473	1	Please don't make us force update the app it log us out and we need to go in person to the branch to use the app that is hard for people like us who travele a lot from country	1	2023-03-21	Google Play	NEGATIVE	0.9982219338417052	Other
3474	1	Please! in the next update add tele birr transfer to other.	5	2023-03-21	Google Play	NEGATIVE	0.9784634709358216	Transaction Performance
3475	1	Good job kep it up	1	2023-03-21	Google Play	POSITIVE	0.9997984766960144	Other
3476	1	I use this up it was very convenient and fast to transfer and receive money	5	2023-03-20	Google Play	NEGATIVE	0.9845186471939088	Transaction Performance
3477	1	baaye gaari dha	4	2023-03-20	Google Play	NEGATIVE	0.9832804203033448	Other
3478	1	Where can i get verfication code	3	2023-03-20	Google Play	NEGATIVE	0.998046875	Other
3479	1	I have been using this app for long period of time & I'm very happy. because I'm also use other banks app and nothing can compare this. I know so many people using this app too & we all happier by using this app especially it gives us very helpful recently data for long period of time which is the money we sent and received with very clear info. And its reduced the time which we spend by printing statement on branches. But on this version this future shortened by limited recently data. Whyyy???	2	2023-03-20	Google Play	NEGATIVE	0.8650421500205994	Customer Support
3480	1	swet	5	2023-03-19	Google Play	NEGATIVE	0.9982309937477112	Other
3481	1	it is good app to use. unless the exchange rate section has confused rate specially Suddanesse dinar (SDD) implies high buy rate and low sell rate.	4	2023-03-18	Google Play	POSITIVE	0.984146535396576	Other
3482	1	ለተቀነሰው ገንዘብ ወዲያውኑ ኖቲፋይ ባለማድረጉ የተጠቃሚ ጌዜ እያባከነ ይገኛልና ብታስተካክሉ።	1	2023-03-18	Google Play	NEGATIVE	0.944585382938385	Other
3483	1	Nice application. Thanks	5	2023-03-17	Google Play	POSITIVE	0.9998550415039062	Other
3484	1	Still the best mobile banking app out here beautiful ui very functional , i wish u used the nfc capability of most devices and also smt intesrting with the new rolled out atm cards that has nfc chips in them it would be smt very new tap and pay through ur atm card to a device . All in all i love it	5	2023-03-17	Google Play	POSITIVE	0.9991126656532288	User Interface
3485	1	Absolutely The Best Mobile banking i ever seen thank you CBE !!!	5	2023-03-16	Google Play	POSITIVE	0.9998188614845276	Other
3486	1	Perfect App if the following will improved: ==》Sometimes why delay to send text for receiver or sender? ==》Need full statement request option menu at home page ==》Please include Cash Withdrawal mechanism option in your next version	5	2023-03-15	Google Play	NEUTRAL	0.5	Other
3487	1	Simple and Easy app	5	2023-03-15	Google Play	POSITIVE	0.999232530593872	Other
3488	1	The good thing is its simplicity to undertake the basic functions. Updates with improvements and fixes should have been released by now. Please fix. 5 years after last review… Issues with beneficiary are fixed. However, still unable to track transactions much less to download in appropriate formats. This feature got diminished in the latest update. Please improve and fix.	3	2023-03-15	Google Play	NEGATIVE	0.9920572638511658	Transaction Performance
3489	1	Not working @ all! 😡😡😡 Older version was much more better!	1	2023-03-15	Google Play	NEGATIVE	0.9996453523635864	Other
3490	1	Now after the last update has been launched, the app is being somewhat complex. The orders of the transaction is not working correctly. Please have a review on it.	1	2023-03-14	Google Play	NEGATIVE	0.999726951122284	Transaction Performance
3491	1	It's not working at abroad for me. It was good in home country. I don't why the reason is! please advice me any one who has an experience.	1	2023-03-14	Google Play	NEUTRAL	0.5	Other
3492	1	Simple, reliable. And updates regularly. Impressive.	4	2023-03-14	Google Play	POSITIVE	0.9998835325241088	Other
3493	1	ኢትዮጵያ	5	2023-03-12	Google Play	NEGATIVE	0.697056770324707	Other
3494	1	Dear CBE Team, The updated version of CbE application is very interesting and has an additional features which is very nice but still the app doesn't have an option of transferring money into another Telebirr service number rather than own Telebirr account...so please add this feature.	4	2023-03-12	Google Play	POSITIVE	0.9704182744026184	Transaction Performance
3495	1	Still now i can't even see my current balance..? It has been a while... is it just me or somebody else's problem too..?	2	2023-03-12	Google Play	NEGATIVE	0.999648094177246	Other
3496	1	Transactions history is not being fully shown fix it	2	2023-03-12	Google Play	NEGATIVE	0.9997473359107972	Transaction Performance
3497	1	the best app, than you so much ,becouse of this app Things so easy	5	2023-03-11	Google Play	POSITIVE	0.99955815076828	Other
3498	1	It so good App	5	2023-03-11	Google Play	POSITIVE	0.999868631362915	Other
3499	1	Almost Impossible to use it aboard.	1	2023-03-11	Google Play	NEGATIVE	0.9994613528251648	Other
3500	1	Good and easy	5	2023-03-11	Google Play	POSITIVE	0.9998574256896972	Other
3501	1	It's fantastic apps	5	2023-03-11	Google Play	POSITIVE	0.9998806715011596	Other
3502	1	For those who have only one phone but have two bank accounts, it is not possible to administer both accounts in one phone. Please, make your program to allow two accounts in one phone.	4	2023-03-11	Google Play	NEGATIVE	0.9984702467918396	Other
3503	1	The app is good. However, whenever you changed your phone it requires authorization ID, approaching a branch is mandatory. The password reset option should be available to the user by adding other security details like user name, biometrics, account number, etc.	3	2023-03-10	Google Play	POSITIVE	0.9266189336776732	Account Access Issues;User Interface
3504	1	When ever I change my phone or something happened why would I have to go to the office to get the code this app this not amazing I didn't like it this is big problem u have to change this if I have to go to the bank every time I change phone or anything happened it bad app in this time in this technology.	1	2023-03-10	Google Play	NEGATIVE	0.9989891648292542	Other
3505	1	Ok 👌	4	2023-03-10	Google Play	POSITIVE	0.9981088638305664	Other
3506	1	It's a good update but the system doesn't work a lot of time	3	2023-03-10	Google Play	NEGATIVE	0.9968298077583312	Other
3507	1	The recent updated version shows a very short period transactions. Thus it has to be improved and in this regard the previous version was better.	3	2023-03-09	Google Play	NEGATIVE	0.964101791381836	Transaction Performance
3508	1	በጣም አሪፍ Application ነው።	5	2023-03-09	Google Play	NEGATIVE	0.8637120127677917	Other
3509	1	In the next update if it is possible if there is a confirmation requested to confirm the payment again the pin requested before transferring(like telbirr)	4	2023-03-09	Google Play	NEGATIVE	0.998474895954132	Transaction Performance
3510	1	I love	5	2023-03-09	Google Play	POSITIVE	0.9998847246170044	Other
3511	1	This version is so slow	1	2023-03-09	Google Play	NEGATIVE	0.999739706516266	Transaction Performance
3512	1	Since the last two weeks I could not see balance. It becomes busy and difficult to check remaining amount.	2	2023-03-09	Google Play	NEGATIVE	0.9997146725654602	Other
3513	1	The most recent update is so impressive that Stops stucking,Speedy transaction.Thanks and keep updating.	4	2023-03-09	Google Play	POSITIVE	0.9997593760490416	Transaction Performance
3514	1	Always rely on	5	2023-03-08	Google Play	POSITIVE	0.9764755964279176	Other
3515	1	Recent transactions history was loading properly and used to preview older histories too but not anymore and that sucks! So work on transactions history well!	1	2023-03-08	Google Play	POSITIVE	0.9792264699935912	Transaction Performance
3516	1	The worst app and bank.	1	2023-03-08	Google Play	NEGATIVE	0.9998015761375428	Other
3517	1	A very cool app👍🏽👍🏽👍🏽	5	2023-03-08	Google Play	POSITIVE	0.9998528957366944	Other
3518	1	Tamam app!	5	2023-03-08	Google Play	NEGATIVE	0.8998922109603882	Other
3519	1	Excellent app but not CBE	5	2023-03-06	Google Play	POSITIVE	0.9012723565101624	Other
3520	1	ሲቢኑር	5	2023-03-06	Google Play	NEGATIVE	0.697056770324707	Other
3521	1	sakas sakad	5	2023-03-06	Google Play	POSITIVE	0.9903145432472228	Other
3522	1	Easy to use,and time saver.	5	2023-03-06	Google Play	POSITIVE	0.95024836063385	Other
3523	1	Khaatimaa bareeddu nuuf kannee Qabrii teenya Caffee jannataa nuuf Godhee nuhaa gamma chiisu Rabbiin	5	2023-03-05	Google Play	NEGATIVE	0.986444652080536	Other
3524	1	This app is awesome 👍	5	2023-03-05	Google Play	POSITIVE	0.999829649925232	Other
3525	1	It is a very simple and convenient application, if exporting or downloading option included more preferable	3	2023-03-05	Google Play	POSITIVE	0.9955143332481384	Transaction Performance
3526	1	It very nice connection So it is better to releases for us	5	2023-03-04	Google Play	POSITIVE	0.9990528225898744	Other
3527	1	Super exhausting😴	1	2023-03-04	Google Play	POSITIVE	0.9331682920455932	Other
3528	1	This application is a step for our country. But we need to upgrade and modify it. It Continously get stucks and gives error.	5	2023-03-04	Google Play	NEGATIVE	0.9991570711135864	Reliability
3529	1	That is good bank but there is something wrong 😕	2	2023-03-04	Google Play	NEGATIVE	0.9947009086608888	Other
3530	1	Wow its ezi to Accse	5	2023-03-04	Google Play	POSITIVE	0.9970966577529908	Other
3531	1	Better than the other CBE system to send money.	5	2023-03-04	Google Play	POSITIVE	0.9969550371170044	Other
3532	1	I wish the app informs who transferred money when it sends deposits credited to my account as Dashen Bank does.	4	2023-03-03	Google Play	NEGATIVE	0.9989416003227234	Transaction Performance
3533	1	Not akspriyans	5	2023-03-03	Google Play	NEGATIVE	0.99048912525177	Other
3534	1	Easy to use and confidential	5	2023-03-02	Google Play	POSITIVE	0.998595416545868	Other
3535	1	1 Ahmad jihaad	5	2023-03-02	Google Play	POSITIVE	0.9465557336807252	Other
3536	1	Cbenr	5	2023-02-27	Google Play	POSITIVE	0.9789988994598388	Other
3537	1	Easy to use !	5	2023-02-27	Google Play	POSITIVE	0.9990563988685608	Other
3538	1	Like it good work	5	2023-02-27	Google Play	POSITIVE	0.9998691082000732	Other
3539	1	History section is very bad	2	2023-02-22	Google Play	NEGATIVE	0.9997945427894592	Other
3540	1	It's Nice	4	2023-02-22	Google Play	POSITIVE	0.9998672008514404	Other
3541	1	I prefer this app	5	2023-02-21	Google Play	POSITIVE	0.9989438652992249	Other
3542	1	Ni ce app	3	2023-02-21	Google Play	NEGATIVE	0.8808464407920837	Other
3543	1	It's a great app, thank you	5	2023-02-21	Google Play	POSITIVE	0.999875783920288	Other
3544	1	.jk	3	2023-02-19	Google Play	POSITIVE	0.972887635231018	Other
3545	1	A nice app but it has limitations like sometimes stuk to scroldown, late to updete transactions	4	2023-02-19	Google Play	NEGATIVE	0.9929534792900084	Transaction Performance
3546	1	It's soo good app	5	2023-02-19	Google Play	POSITIVE	0.9996013045310974	Other
3547	1	The limited transaction listing, only to recent list, makes your app of limited help.	1	2023-02-17	Google Play	NEGATIVE	0.992889642715454	Transaction Performance;Customer Support
3548	1	nice.....kept it up	5	2023-02-16	Google Play	POSITIVE	0.9998273849487304	Other
3549	1	CBE, Z bank u can always rely on!!!	5	2023-02-15	Google Play	NEGATIVE	0.7864723205566406	Other
3550	1	Imisyou	5	2023-02-15	Google Play	POSITIVE	0.8830305337905884	Other
3551	1	The Best optional application !	5	2023-02-14	Google Play	POSITIVE	0.999831199645996	Other
3552	1	I cannot access the services to transferor to pay my bills	1	2023-02-14	Google Play	NEGATIVE	0.9995112419128418	Account Access Issues;Transaction Performance
3553	1	Perfect but sometimes delays	4	2023-02-14	Google Play	NEGATIVE	0.8475139737129211	Other
3554	1	I'm using this supplication when I'm out of my country this is useful	5	2023-02-13	Google Play	POSITIVE	0.9979094862937928	Other
3555	1	Like app	5	2023-02-13	Google Play	POSITIVE	0.9840216040611268	Other
3556	1	Use this app	5	2023-02-09	Google Play	POSITIVE	0.902295708656311	Other
3557	1	It is slowwww	1	2023-02-09	Google Play	NEGATIVE	0.9987597465515136	Transaction Performance
3558	1	Doesn't sync multiple accounts	1	2023-02-08	Google Play	NEGATIVE	0.9982978701591492	Other
3559	1	Yordanos	1	2023-02-06	Google Play	POSITIVE	0.9894294142723083	Other
3560	1	Please download fastly the apps	5	2023-02-05	Google Play	POSITIVE	0.9802757501602172	Other
3561	1	Nice App!! keep going 👍	5	2023-02-04	Google Play	POSITIVE	0.9997023940086364	Other
3562	1	It is very good application	5	2023-02-03	Google Play	POSITIVE	0.999870538711548	Other
3563	1	new app	5	2023-02-03	Google Play	POSITIVE	0.9902405738830566	Other
3564	1	It's to easy to transfer local money thats why.	4	2023-02-03	Google Play	NEGATIVE	0.9972936511039734	Transaction Performance
3565	1	Nice experience from last 3 years Only problem is that, added beneficiary not working. But overall good experience.	5	2023-02-03	Google Play	POSITIVE	0.9996013045310974	Other
3566	1	Awesome apps but the new update failed starting from January 31 2023	1	2023-02-02	Google Play	NEGATIVE	0.9975104331970216	Other
3567	1	የተላከ ገንዘብ መቼ ነዉ ሚለቀቀዉ	5	2023-02-01	Google Play	NEGATIVE	0.8832130432128906	Other
3568	1	When trying to open the app from another country it asks for a verification code that can only be obtained from the nearest bank branch. This is not logical if you want Ethiopians from around the world to be able to use the application. Please review this.	1	2023-01-30	Google Play	NEGATIVE	0.99955016374588	Other
3569	1	I always like this banking app	5	2023-01-30	Google Play	POSITIVE	0.9977797865867616	Other
3570	1	Why are the messages always come to me very late? I can't even see who has deposed the money it's very annoying. You have to fix this	3	2023-01-29	Google Play	NEGATIVE	0.9995114803314208	Other
3571	1	The app is awesome. But there are many things to highlight.For example, When spending money from the account , a confirmation text message must be sent to the account holder. Also the fact that, the PIN is only four digits is not safe enough for security, if it is more than eight digits and includes numbers and symbols, it will be cool.	3	2023-01-29	Google Play	POSITIVE	0.6459245681762695	Other
3572	1	Go forward	5	2023-01-29	Google Play	POSITIVE	0.9998243451118468	Other
3573	1	I LIKED THIS APP 😊MAY IT WILL NEW UPDATIONS SOON THANKS😊	5	2023-01-29	Google Play	POSITIVE	0.9918551445007324	Other
3574	1	J ቸተደመ 😁😅	3	2023-01-28	Google Play	POSITIVE	0.6428147554397583	Other
3575	1	በጣም ደስ የሚል ቀለል ያለ	5	2023-01-27	Google Play	NEGATIVE	0.8832130432128906	Other
3576	1	The Commercial Bank of Ethiopia application is easy to use. Really recommended.	5	2023-01-27	Google Play	POSITIVE	0.9994733929634094	Other
3577	1	Recent and Accounts not responding thw previous version was nice. This version UI looks attractive but almost half features not working.	1	2023-01-26	Google Play	NEGATIVE	0.999265730381012	User Interface
3578	1	1.Money withidirawal from bank into my debit card and credit next in to make Ethiopian My saving bank account number.3rd limete My money withidirawal in to make mobile money wallet plus in to make My Ethiopian saving Bank account number is attached with allow me My money . all my money convert to Ethiopian birr to make. Excuse me my needs seed and received money withidirawal more amended more detail.	5	2023-01-25	Google Play	NEGATIVE	0.9909114241600036	Other
3579	1	i like this app	1	2023-01-25	Google Play	POSITIVE	0.9996516704559326	Other
3580	1	In the beginning, the ability to capture the history was small, now it's a great job to capture all the transactions and the user can see them, another problem is that if a transaction or transfer is made, the number of the receipt will not be downloaded when saving to avoid it, unless a screenshot is taken, it would be better if you fix this.	5	2023-01-25	Google Play	NEGATIVE	0.9640682935714722	Transaction Performance
3581	1	Yuusuf 24:01:2023	5	2023-01-24	Google Play	POSITIVE	0.9403056502342224	Other
3582	1	Perfect App	5	2023-01-23	Google Play	POSITIVE	0.9998340606689452	Other
3631	1	The easiest & user friendly mobile banking app so far.	5	2022-12-30	Google Play	POSITIVE	0.9967980980873108	User Interface
3583	1	The app is crashing and freezing in recents' section. But it works fine in other sections very helpful app.	5	2023-01-23	Google Play	POSITIVE	0.9977726340293884	Reliability;Customer Support
3584	1	great applca	5	2023-01-21	Google Play	POSITIVE	0.9991785883903505	Other
3585	1	Its good app to use.	5	2023-01-20	Google Play	POSITIVE	0.9998435974121094	Other
3586	1	Very interesting app in digital economy	5	2023-01-18	Google Play	POSITIVE	0.9996211528778076	Other
3587	1	it securty is good for hackeres	1	2023-01-18	Google Play	POSITIVE	0.932931423187256	Other
3588	1	Its nice betammm	5	2023-01-18	Google Play	POSITIVE	0.9997252821922302	Other
3589	1	business all	4	2023-01-17	Google Play	POSITIVE	0.997562289237976	Other
3590	1	Amazing Apps but if you add other language Like Afaan Oromoo, Afar, Somali it's more than this	3	2023-01-17	Google Play	POSITIVE	0.999133288860321	Other
3591	1	Better app	5	2023-01-15	Google Play	POSITIVE	0.9905760288238524	Other
3592	1	Good, but do not save after sending.	5	2023-01-14	Google Play	POSITIVE	0.8489830493927002	Other
3593	1	Easy and interesting app	5	2023-01-13	Google Play	POSITIVE	0.9998053908348083	Other
3594	1	since i down loaded this APP nothing any problem happened .it very nice app	5	2023-01-13	Google Play	POSITIVE	0.9993116855621338	Other
3595	1	9/6/17 *** It has not been updated for years and has some bugs 6/8/2020 **** Just updated the app from the link i get through sms. It looks good.	5	2023-01-12	Google Play	POSITIVE	0.9804940223693848	Reliability
3596	1	It's a very nice and simple app but, when checking the transaction details, it's not showing who sent/deposited money into my account. Especially when I receive money from organisations.	4	2023-01-12	Google Play	NEGATIVE	0.9843881130218506	Transaction Performance
3597	1	Well done!	5	2023-01-12	Google Play	POSITIVE	0.9998422861099244	Other
3598	1	Pest mobile banking app	5	2023-01-10	Google Play	NEGATIVE	0.996932864189148	Other
3599	1	Its so busy when you open the recent transaction option👎👎👎👎	1	2023-01-10	Google Play	NEGATIVE	0.9989305138587952	Transaction Performance
3600	1	ንግድ ባንክ የሞባይል ባንኪንግ አፕ በጣም መልካም ሆኖ አግኝቼዋለሁ ፣ ህይወቴን አቅሎልኛል።	5	2023-01-10	Google Play	NEGATIVE	0.9510265588760376	Other
3601	1	1. It has poor password 2. It doesn't save transaction content that pop-ups during transaction. 3. It is user friendly.	5	2023-01-10	Google Play	NEGATIVE	0.9941146969795228	Account Access Issues;Transaction Performance;User Interface
3602	1	በጣም ምርጥ ማመልከቻ ነው በእውነት በጣም አሪፍ አፕልኬሽን ነው የኢትዮጵያ ንግድ ባንክ ሁሌ ኑርልን🙏🙏🙏🙏	5	2023-01-10	Google Play	NEGATIVE	0.9528433680534364	Other
3603	1	Thankfully	5	2023-01-10	Google Play	POSITIVE	0.8449138402938843	Other
3604	1	easy to access	5	2023-01-09	Google Play	POSITIVE	0.9996585845947266	Account Access Issues
3605	1	Easy to understand and use it	5	2023-01-09	Google Play	POSITIVE	0.9996727705001832	Other
3606	1	Very useful	5	2023-01-09	Google Play	POSITIVE	0.999798595905304	Other
3607	1	This app is important and simply to use it	5	2023-01-08	Google Play	POSITIVE	0.9984525442123412	Other
3608	1	It makes life easy	5	2023-01-07	Google Play	POSITIVE	0.9996939897537231	Other
3609	1	Good mobile banking application except some bugs. For instance, when I transfer money from account to account, an error message called 'already existed account' appears. But the money was transferred without any confirmation message. If I was not aware of that, I tried multiple times and sent the money multiple times too.	5	2023-01-06	Google Play	NEGATIVE	0.9672341346740724	Transaction Performance;Reliability
3610	1	sometimes it will be busy.by somewhat it is good	4	2023-01-06	Google Play	POSITIVE	0.99980491399765	Other
3611	1	This is the worst App I ever seen. Every time CBE does small patches or updates, the app doesn't work and you have to go to your branch in person to get the update and verification on your phone. It is totally unacceptable. I am living abroad and because of their problems I can't make payments and transfers. I send my representative("ተወካይ") to Addis Ababa Branch with his full-representation paper ("ሙሉ ውክልና") but the staff working at mobile banking services is not willing to fix the problem.	1	2023-01-06	Google Play	NEGATIVE	0.9997914433479308	Transaction Performance
3612	1	Verry good	5	2023-01-05	Google Play	POSITIVE	0.9998464584350586	Other
3613	1	በጣም ቀላል እና ለመጠቀም ምቹ የሆነ መተግበሪያ ነው።ብዙ ነገር አቃለለልን። I want to thank the developer of this software!(CBE)🙏namaste	4	2023-01-05	Google Play	POSITIVE	0.99850594997406	Other
3614	1	This app helped me a lot to pay my kids school payment and my bill.	5	2023-01-05	Google Play	POSITIVE	0.9797963500022888	Transaction Performance;Customer Support
3615	1	Best app and simple to use	5	2023-01-04	Google Play	POSITIVE	0.9995321035385132	Other
3616	1	Keep it up it .this up is very efficient .	5	2023-01-04	Google Play	POSITIVE	0.999861478805542	Other
3617	1	Foreign transfer provided by this bank is poor but local service is excellent.	5	2023-01-04	Google Play	POSITIVE	0.9992855191230774	Transaction Performance
3618	1	Amazing 🤑	5	2023-01-04	Google Play	POSITIVE	0.9998632669448853	Other
3619	1	Over all Nice app, But I do like to point out a little bit of an issue. The transaction history tab needs a lot of work. It is so sluggish to a point it makes the app crash at times.	4	2023-01-04	Google Play	NEGATIVE	0.9987928867340088	Transaction Performance;Reliability
3620	1	It is a very good application. It works better than any other applications i came across. I have seen much progress since the first time i started using it. Still it needs some improvement with connectivity issues.	4	2023-01-03	Google Play	POSITIVE	0.997767210006714	Other
3621	1	I have 6th year job experiance	1	2023-01-03	Google Play	NEGATIVE	0.9628753066062928	Other
3622	1	It's the best app so far	5	2023-01-03	Google Play	POSITIVE	0.9998152852058412	Other
3623	1	Easy for use	5	2023-01-02	Google Play	POSITIVE	0.9795007705688475	Other
3624	1	Cool app	5	2023-01-02	Google Play	POSITIVE	0.999824583530426	Other
3625	1	Am happy to use the app.	5	2023-01-02	Google Play	POSITIVE	0.9998196959495544	Other
3626	1	I appreciate CBE for letting us enjoy this wonderful app. However, I would like it even more if you could raise the maximum amount to transfer from 25,000 to other banks.	4	2023-01-02	Google Play	POSITIVE	0.9997227787971495	Transaction Performance
3627	1	በጣም ምቹ ቀልጣፋና ቀላል 👍	5	2023-01-02	Google Play	NEGATIVE	0.8832130432128906	Other
3628	1	I like it this one is fast and simple to use	5	2023-01-02	Google Play	POSITIVE	0.9996788501739502	Other
3629	1	The best bank app !!!	5	2023-01-01	Google Play	POSITIVE	0.9998036026954652	Other
3630	1	Good performance	5	2022-12-30	Google Play	POSITIVE	0.9998561143875122	Other
3632	1	Thanks for this application	5	2022-12-29	Google Play	POSITIVE	0.9997004270553588	Other
3633	1	Sometimes I make transactions twice because of repository failed issue Its annoying The app gets too busy it may also be closed when the recent option is clicked. After making a transaction there is a download option but it says can't save the image. Other than this issues the app is user friendly	4	2022-12-29	Google Play	NEGATIVE	0.9937951564788818	Transaction Performance;User Interface
3634	1	V nice	5	2022-12-27	Google Play	POSITIVE	0.9971718192100524	Other
3635	1	this is the only best app	5	2022-12-27	Google Play	POSITIVE	0.927518367767334	Other
3636	1	It is easiest app i ever seen 🤷‍♂️🤷‍♂️	5	2022-12-27	Google Play	POSITIVE	0.9626253247261048	Other
3637	1	Dosn't work in these 3 days	3	2022-12-26	Google Play	NEGATIVE	0.9972986578941344	Other
3638	1	It is magnificent App	5	2022-12-26	Google Play	POSITIVE	0.999871015548706	Other
3639	1	Salaa.abdii	5	2022-12-26	Google Play	NEGATIVE	0.8620193600654602	Other
3640	1	I like it ,it is nice 👌👌👌 but in the*889# its better to be the choice in recently used rather than as it was .	5	2022-12-25	Google Play	NEGATIVE	0.8387213349342346	Other
3641	1	This app is one of the worst app that I used ever u are confused your last recently transaction and when you send money now you get the massage tomorrow or after 3 day	1	2022-12-25	Google Play	NEGATIVE	0.99968683719635	Transaction Performance
3642	1	It is a very good application, but, when I open the recent transactions it almost crashes or stops responding. You need to fix this.	3	2022-12-25	Google Play	NEGATIVE	0.9974367022514344	Transaction Performance;Reliability
3643	1	The best one from the ather!	5	2022-12-25	Google Play	POSITIVE	0.9998553991317748	Other
3644	1	Nice fast....	5	2022-12-23	Google Play	POSITIVE	0.9998511075973512	Other
3645	1	እናመሰግናለን ግን ከእንተርኔት ነፃ መሆን ነበረበት	5	2022-12-23	Google Play	NEGATIVE	0.904695212841034	Other
3646	1	This app is very helpful because it is easy and user-friendly. It also provides different services and simplifies time to use other options.	5	2022-12-22	Google Play	POSITIVE	0.998524844646454	Customer Support
3647	1	Good app!	5	2022-12-22	Google Play	POSITIVE	0.9998592138290404	Other
3648	1	Easy for life	5	2022-12-21	Google Play	POSITIVE	0.9970002770423888	Other
3649	1	It's the best app for banking I've ever had. It was very effective and provide fast and urgent services but currently it's detororiating.	3	2022-12-19	Google Play	NEGATIVE	0.9888707995414734	Other
3650	1	Our bank	5	2022-12-18	Google Play	POSITIVE	0.9125192761421204	Other
3651	1	Best up!!	4	2022-12-18	Google Play	POSITIVE	0.999757707118988	Other
3652	1	Very Great to used but don't sale out multiple	5	2022-12-17	Google Play	POSITIVE	0.9386206865310668	Other
3653	1	The app is great and easy to use. My issue is that, it some times show error message indicating failed transfer transaction, but when I check my balance later it actually made the transaction. This incident happened to me twice.	4	2022-12-16	Google Play	POSITIVE	0.8129587173461914	Transaction Performance;Reliability
3654	1	The app always stuck when i go to recent transactions	1	2022-12-15	Google Play	NEGATIVE	0.9994694590568542	Transaction Performance
3655	1	Updated	5	2022-12-15	Google Play	POSITIVE	0.9995930790901184	Other
3656	1	Since I started using this app it. Really helped me a lot. The CBE started some years ago and it is good progress, other foreign banks has money years experience and and the technology is theirs. Yes some inconvenience can occur the bank have to simplify it fast. Keep on going!!!	4	2022-12-15	Google Play	POSITIVE	0.9987713694572448	Customer Support
3657	1	i apritate your CBE application	5	2022-12-15	Google Play	POSITIVE	0.897189199924469	Other
3658	1	Mine	5	2022-12-14	Google Play	POSITIVE	0.9983651041984558	Other
3659	1	Most of the time 'no sync available'. Been trying to transfer all day,with no luck. Very bad app	1	2022-12-14	Google Play	NEGATIVE	0.9997407793998718	Transaction Performance
3660	1	Nice and excellent	5	2022-12-13	Google Play	POSITIVE	0.9998664855957032	Other
3661	1	Transfer checking balance utility service	5	2022-12-13	Google Play	NEGATIVE	0.9802937507629396	Transaction Performance
3662	1	I love this app, it is easy to use and makes my life easier. Sometimes it says time out but sends money and sends agin. To send for other banks it is almost difficult and for other telbirr customers not totally possible yet. If these issues solved, the app is supper 5 star.	5	2022-12-12	Google Play	NEGATIVE	0.9423984289169312	Other
3663	1	It's okay not bad	3	2022-12-12	Google Play	POSITIVE	0.999751627445221	Other
3664	1	It is bad app Always stack	1	2022-12-12	Google Play	NEGATIVE	0.9998088479042052	Other
3665	1	Wow good app.....easy to use.....	5	2022-12-12	Google Play	POSITIVE	0.9997652173042296	Other
3666	1	Very nice to used online	5	2022-12-12	Google Play	POSITIVE	0.9997171759605408	Other
3667	1	To use mobile banking	5	2022-12-11	Google Play	NEGATIVE	0.910043478012085	Other
3668	1	ካየኋቸው ሁሉ ምቹ እና ላጠቃቀም ቀላሉ ነው።	5	2022-12-10	Google Play	NEGATIVE	0.9239576458930968	Other
3669	1	Good and simpl for use	1	2022-12-10	Google Play	POSITIVE	0.9997175335884094	Other
3670	1	Thank you for your service......great app i am enjoying it.	5	2022-12-09	Google Play	POSITIVE	0.9998766183853148	Other
3671	1	Excellent and convenient service...Kudos CBE	5	2022-12-08	Google Play	POSITIVE	0.9997739195823668	Other
3672	1	It was good but there are some things missing like 1- can't get more than 10 transection so you add to get last 6 month transection.	3	2022-12-08	Google Play	NEGATIVE	0.997306227684021	Other
3673	1	The best mobile banking app with an excellent user friendly interface. Bravo.	5	2022-12-07	Google Play	POSITIVE	0.9998410940170288	User Interface
3674	1	I use a variety of mobile banking applications, but I really enjoy using CBE over those from other banks because it's quick and user-friendly. I greatly appreciate it.	5	2022-12-07	Google Play	POSITIVE	0.9995373487472534	User Interface
3675	1	Excellent app... never had any problem in using it. Very excellent job you are doing CBE. Get going!!!!	5	2022-12-07	Google Play	POSITIVE	0.9997556805610656	Other
3676	1	A bank you can always trust	5	2022-12-07	Google Play	POSITIVE	0.9994565844535828	Other
3677	1	This app is good but could not merge multiple CBE accounts and fails to download transaction reports after the late update. Why? I am using Samsung M12.	4	2022-12-07	Google Play	NEGATIVE	0.9990027546882628	Transaction Performance
3678	1	Amazing application which is very easy to use? Keep going CBE	5	2022-12-06	Google Play	POSITIVE	0.9989504814147948	Other
3679	1	Fantastic and it is upto the expectation!	5	2022-12-05	Google Play	POSITIVE	0.9997294545173644	Other
3729	1	Very late the only app is never seen in my life	1	2022-11-03	Google Play	NEGATIVE	0.9966262578964232	Other
3680	1	Excellent app.but while I am out of the app it redirect back to login page by it self	4	2022-12-05	Google Play	POSITIVE	0.7669812440872192	Account Access Issues
3681	1	Some of the worst app made by a bank in order to login when changing phone you have to go to a bank manager and the manager always say something new to login you back to the app it's sad there making billions and cant handle to make a better app for it.	1	2022-12-05	Google Play	NEGATIVE	0.9997476935386658	Account Access Issues
3682	1	after I sent money, I couldn't get updated recent transaction.	1	2022-12-04	Google Play	NEGATIVE	0.997643768787384	Transaction Performance
3683	1	Col	5	2022-12-03	Google Play	POSITIVE	0.7094463109970093	Other
3684	1	I lv this application	5	2022-12-02	Google Play	NEGATIVE	0.8231077790260315	Other
3685	1	It's great app thanks CBE. so mach easy to use and it's secure.	5	2022-12-02	Google Play	POSITIVE	0.9996193647384644	Other
3686	1	It stacks in the recent option, can't download the transaction info.	1	2022-12-01	Google Play	NEGATIVE	0.9989713430404664	Transaction Performance
3687	1	Best of the Best	5	2022-12-01	Google Play	POSITIVE	0.9998401403427124	Other
3688	1	ጥሩ ነው ግን በጣም ሃላ ቀር ነው ብዙ ነገር ይቀረዋል በደምብ አሻሸሉ	2	2022-12-01	Google Play	NEGATIVE	0.9489793181419371	Other
3689	1	Great Services it makes my work easy Thanks	5	2022-12-01	Google Play	POSITIVE	0.9998237490653992	Other
3690	1	በጣምነው የወደድኩት	5	2022-11-29	Google Play	NEGATIVE	0.7850590348243713	Other
3691	1	Compatibility issue is resolved now but the app crash many times when asked to show current statements.	4	2022-11-28	Google Play	NEGATIVE	0.9994654059410096	Reliability
3692	1	please include alph password	4	2022-11-27	Google Play	NEUTRAL	0.5	Account Access Issues
3693	1	It's very good and joyful app, keep it the momentum	4	2022-11-26	Google Play	POSITIVE	0.9998866319656372	Other
3694	1	My apps can't save or share slip after trx completed	5	2022-11-25	Google Play	NEGATIVE	0.9985369443893432	Other
3695	1	Our Kings done great things like the legend Commercial Bank of Ethiopia	5	2022-11-25	Google Play	POSITIVE	0.9985137581825256	Other
3696	1	It is Good but gove option to send Confirmation code by email if phone number is lost we can eash update on the website.	5	2022-11-25	Google Play	NEGATIVE	0.9753592014312744	Other
3697	1	Great job	5	2022-11-25	Google Play	POSITIVE	0.999858856201172	Other
3698	1	Harmee	5	2022-11-24	Google Play	NEGATIVE	0.998893678188324	Other
3699	1	Agec	5	2022-11-24	Google Play	NEGATIVE	0.9907406568527222	Other
3700	1	The late updates on my account after transfers that occurs sometimes is the only issue the rest of the app is excellent	4	2022-11-24	Google Play	POSITIVE	0.9393675923347472	Transaction Performance
3701	1	It's very important even out of Ethiopian.	5	2022-11-24	Google Play	POSITIVE	0.999346911907196	Other
3702	1	Fast and very latest!!!	5	2022-11-23	Google Play	POSITIVE	0.999584972858429	Other
3703	1	I have got the application very useful, fast and simple to use. It is great app for self service but I had to go to branch office to activate it. Please try using OTP to activate the app	4	2022-11-23	Google Play	NEGATIVE	0.987301230430603	Other
3704	1	It is Simple and fast mobile banking app. I am really enjoining with it.	5	2022-11-23	Google Play	POSITIVE	0.9992376565933228	Other
3705	1	A wonderful app! Easy, reliable, secure and fast!	5	2022-11-22	Google Play	POSITIVE	0.9998748302459716	Other
3706	1	It is good but some issues like -It only allows for own telebir account transfer what about for the others telebir accouts ? If possible please include for the others -please merge CBE banking app with CBE birr app like Awash birr	3	2022-11-20	Google Play	NEGATIVE	0.9928448796272278	Transaction Performance
3707	1	Betam baset	5	2022-11-19	Google Play	NEGATIVE	0.86130291223526	Other
3708	1	A great app that makes life easy.	5	2022-11-18	Google Play	POSITIVE	0.9997650980949402	Other
3709	1	Good,inshaalluah	3	2022-11-17	Google Play	POSITIVE	0.9998328685760498	Other
3710	1	Very Good y	5	2022-11-17	Google Play	POSITIVE	0.9998563528060912	Other
3711	1	the App is one of the BEST things to have in Ethiopia but one of major problems is shows incorrect statements and incorrect available balance, merchants and supermarkets doesn't deduct right away 😑 deductible may come after weeks or month, once u already forgot about it and so many things to work on. please take it seriously Thanks 😊	3	2022-11-16	Google Play	NEGATIVE	0.8583908081054688	Other
3712	1	Ibsa abdi nure Ethiopia dire dawa	4	2022-11-16	Google Play	NEUTRAL	0.5	Other
3713	1	De ab	5	2022-11-15	Google Play	POSITIVE	0.6790781021118164	Other
3714	1	Great👍👍👍👍	5	2022-11-14	Google Play	NEGATIVE	0.697056770324707	Other
3715	1	CBE App is Excellent.	5	2022-11-14	Google Play	POSITIVE	0.9998032450675964	Other
3716	1	I like it more	5	2022-11-13	Google Play	POSITIVE	0.9998180270195008	Other
3717	1	While Travelling, I couldn't transfer money from my account to another. I had to delete❌ the app and re install and then wait until they give me authorization code.... too complicated.	1	2022-11-13	Google Play	NEGATIVE	0.9995868802070618	Transaction Performance
3718	1	I have list of beneficiaries registered but can not transfer to them. It is throwing 'None available' message.	3	2022-11-11	Google Play	NEGATIVE	0.9996577501296996	Transaction Performance
3719	1	It was working fine till recently. It suddenly stopped showing me the balance on the front page and all service features are not working. Hope it gets fixed soon.	4	2022-11-10	Google Play	NEGATIVE	0.9983444213867188	Other
3720	1	It's great	5	2022-11-09	Google Play	POSITIVE	0.9998691082000732	Other
3721	1	Good Application 👍 ✅️	3	2022-11-09	Google Play	POSITIVE	0.9997643828392028	Other
3722	1	IT is good	3	2022-11-08	Google Play	POSITIVE	0.9998494386672974	Other
3723	1	Good application fast	5	2022-11-07	Google Play	POSITIVE	0.9998347759246826	Other
3724	1	Verygood app	5	2022-11-07	Google Play	POSITIVE	0.9989676475524902	Other
3725	1	I have been using this app for the past 2 years and I never had faced this kind of problem The problem is when you want to transfer it always says error or account pending then you think it didn't work unfortunately when you check your balance again it's already deducted	1	2022-11-04	Google Play	NEGATIVE	0.996736705303192	Transaction Performance;Reliability
3726	1	The worst experience ever, It sends money while showing an error. Such incompetence from a company of this size!	1	2022-11-04	Google Play	NEGATIVE	0.9997910857200624	Reliability
3727	1	I dont recommend this app Because when you make transfer or any transaction you dont get digtal resipt even if the transaction is done if you fix this the app is good enough	1	2022-11-04	Google Play	NEGATIVE	0.7942884564399719	Transaction Performance
3728	1	Solve sync pb	4	2022-11-04	Google Play	POSITIVE	0.7754892110824585	Other
3730	1	በጣም ጥሩ ነው አዳዲስ አገልግሎቶች ቢጨመሩበት ደግሞ መልካም ነው	5	2022-11-02	Google Play	NEGATIVE	0.932232677936554	Other
3731	1	Clear and easy to use	5	2022-11-02	Google Play	POSITIVE	0.9998252987861632	Other
3732	1	So amazing ap !!!!	5	2022-11-02	Google Play	POSITIVE	0.9998749494552612	Other
3733	1	As a financial app, the app should be more sensetive for any action. When i do some transaction, it shows error message. But the transaction already done at the back. If you see error messages, it may not be error. Automatically stop doing any action see your balance and wait for your sms.	1	2022-11-01	Google Play	NEGATIVE	0.9945113658905028	Transaction Performance;Reliability
3734	1	No problem so far	5	2022-11-01	Google Play	POSITIVE	0.9951242804527284	Other
3735	1	It's very extraordinary app, the user interface is soo awesome, most importantly it's very user friendly. In terms of speed and services its unbelievably fast and flexible. I really appreciate the crews who've been working behind the scene to make this wonderful job alive. Well done !	5	2022-10-31	Google Play	POSITIVE	0.9998512268066406	User Interface
3736	1	በጣም አሪፍ ነው	5	2022-10-31	Google Play	NEGATIVE	0.8337255716323853	Other
3737	1	You should integrate hijra & ZamZam bank in the other banks	5	2022-10-31	Google Play	NEUTRAL	0.5	Other
3738	1	No commente keep working 👍	5	2022-10-27	Google Play	NEGATIVE	0.9946714043617249	Other
3739	1	Sumalaw	4	2022-10-26	Google Play	POSITIVE	0.987753689289093	Other
3740	1	Best ever	5	2022-10-24	Google Play	POSITIVE	0.999841570854187	Other
3741	1	Easy and time consuming	1	2022-10-24	Google Play	POSITIVE	0.8958803415298462	Other
3742	1	We need access any where in the world keeps up my Ethiopian banking services	5	2022-10-24	Google Play	NEGATIVE	0.997209370136261	Account Access Issues
3743	1	Wow very good	5	2022-10-23	Google Play	POSITIVE	0.9998693466186525	Other
3744	1	It’s really good apps and keep up a good work. Thank you.	5	2022-10-23	Google Play	POSITIVE	0.9998806715011596	Other
3745	1	Lot of things missing and doesn't update quickly	2	2022-10-23	Google Play	NEGATIVE	0.9987984895706176	User Interface
3746	1	Its good but Sometimes it doesn't show me my full transaction and lately we haven't been able to transfer anything	4	2022-10-22	Google Play	NEGATIVE	0.9959325194358826	Transaction Performance
3747	1	Is not showing my account details	1	2022-10-22	Google Play	NEGATIVE	0.9997383952140808	Other
3748	1	3 years	3	2022-10-21	Google Play	POSITIVE	0.9719199538230896	Other
3749	1	You improved the service of this app much better.	5	2022-10-20	Google Play	POSITIVE	0.989102065563202	Other
3750	1	Reliable!	4	2022-10-19	Google Play	POSITIVE	0.9998536109924316	Other
3751	1	We need the previous Version. This one doesn't work, specially while you are in recents and tries to scroll down. Its just rubbish. YOU BETTER SOLVE IT, OR I will transfer to AWASH.	1	2022-10-19	Google Play	NEGATIVE	0.9998052716255188	Transaction Performance
3752	1	I have seen lots of issues on this app one of them is you can't use them in multiple device and you have to go to the place you opened your account in order to get mobile banking even if you change you device you have to go to the branch to activate it, why can't you just make it easy like the others banking system in Ethiopia. You should learn from abbisinia and dashen to be honest	1	2022-10-18	Google Play	NEGATIVE	0.8057061433792114	Other
3753	1	With this app i can not share or download transaction data after pay or transfer	3	2022-10-18	Google Play	NEGATIVE	0.99548077583313	Transaction Performance
3754	1	Good too	4	2022-10-17	Google Play	POSITIVE	0.9998325109481812	Other
3755	1	Best app in Ethiopia banking	5	2022-10-16	Google Play	POSITIVE	0.9993988275527954	Other
3756	1	Simple and easy to use.	4	2022-10-14	Google Play	POSITIVE	0.9997629523277284	Other
3757	1	Nice to me and	5	2022-10-11	Google Play	POSITIVE	0.9998480081558228	Other
3758	1	Better if we can have an option to save other bank accounts, like we save beneficiaries having CBE accounts. Let's have an option to add beneficiaries with other bank accounts.	4	2022-10-11	Google Play	NEGATIVE	0.9991432428359984	Other
3759	1	Please add "Account Statement" menu starting from date of account opened, instead of recent transactions.	5	2022-10-10	Google Play	NEGATIVE	0.941161036491394	Transaction Performance
3760	1	Poor app don't use it	1	2022-10-10	Google Play	NEGATIVE	0.9995912909507751	Other
3761	1	Why there is no ussd service for mobile banking.	2	2022-10-08	Google Play	NEGATIVE	0.9983702301979064	Other
3762	1	It's good, and helped me alot	5	2022-10-07	Google Play	POSITIVE	0.999855637550354	Customer Support
3763	1	I really like this app	5	2022-10-07	Google Play	POSITIVE	0.9996378421783448	Other
3764	1	Its ok!!!	5	2022-10-07	Google Play	POSITIVE	0.9997929930686952	Other
3765	1	It's easy to use except it sometimes stack to respond.	4	2022-10-07	Google Play	NEUTRAL	0.5	Other
3766	1	Good think	5	2022-10-06	Google Play	POSITIVE	0.9998559951782228	Other
3767	1	።።፥።ጵልልች ፦።ል፣ሎክልልዝጥ	5	2022-10-06	Google Play	NEGATIVE	0.9366679191589355	Other
3768	1	Very good Very good	1	2022-10-06	Google Play	POSITIVE	0.9998612403869628	Other
3769	1	Best app i love it	5	2022-10-06	Google Play	POSITIVE	0.9998480081558228	Other
3770	1	Most of the time, in the 'Recents' button the app becomes stuck and doesn't show up details of transactions and doesn't even scroll down; should be solved. Second, the app doesn't save the last pop-up screen when a transaction is complete. Third, there is no telebirr transfer to other person option and the app by default lets you to only own telebirr transfer.	4	2022-10-06	Google Play	NEGATIVE	0.999429166316986	Transaction Performance
3771	1	My phone said after intalling the app the this divice is rooted you can't use this app how can fix it	4	2022-10-04	Google Play	NEGATIVE	0.9991573095321656	Other
3772	1	addisneda	5	2022-10-04	Google Play	POSITIVE	0.9685197472572328	Other
3773	1	Hell cool	4	2022-10-04	Google Play	POSITIVE	0.998794674873352	Other
3774	1	This is an easy to use app; I wish it could include time of transaction, in addition to the date on the reports	4	2022-10-04	Google Play	NEGATIVE	0.9358181953430176	Transaction Performance
3775	1	Its fast and reliable to use. I really liked it.	5	2022-10-04	Google Play	POSITIVE	0.9998470544815063	Other
3776	1	Commercial	5	2022-10-03	Google Play	NEGATIVE	0.9959623217582704	Other
3777	1	Every thing is good and functional , but the password length is too short and it is also receive only 4 numbers. I wish if the password field receives string	5	2022-10-02	Google Play	NEGATIVE	0.9979165196418762	Account Access Issues
3778	1	Your app is very simple to use. But please add search option so that we can easily find our transaction done with an account number.	5	2022-10-01	Google Play	NEGATIVE	0.8893952369689941	Transaction Performance
3779	1	Best app for ethio	5	2022-10-01	Google Play	POSITIVE	0.9992720484733582	Other
3780	1	It is not synchronizing. It was working nicely for me but now not updating my balance. Talked to the bankers but failed to solve it.	3	2022-10-01	Google Play	NEGATIVE	0.9997197985649108	Other
3781	1	its good only where mobile data and wifi avelible areas	3	2022-10-01	Google Play	POSITIVE	0.7761754989624023	Other
3782	1	Very good!	5	2022-09-30	Google Play	POSITIVE	0.9998525381088256	Other
3783	1	U are the best as always	5	2022-09-30	Google Play	POSITIVE	0.9998451471328736	Other
3784	1	Super fast app good work	3	2022-09-30	Google Play	POSITIVE	0.9998477697372437	Other
3785	1	በጣም አሪፍ App ነው ከባንክ ሰልፍ እና ብር ተሸክሞ ከመዞር ገላግሎኛል ።	5	2022-09-29	Google Play	NEGATIVE	0.9529529809951782	Other
3786	1	When I started using the app for the first time I like it. But through time it started annoying me😠 Because it doesn't update the transaction history immediately. I remember one day I transferred 17000 to another account but I can't took screenshots of transportation history. It says repository........! It needs urgent system maintenance ‼️	4	2022-09-28	Google Play	NEGATIVE	0.997989535331726	Transaction Performance
3787	1	Fantastic apps	5	2022-09-24	Google Play	POSITIVE	0.999872088432312	Other
3788	1	ORO	5	2022-09-24	Google Play	POSITIVE	0.99717378616333	Other
3789	1	Nice and smooth	5	2022-09-24	Google Play	POSITIVE	0.9998623132705688	Other
3790	1	Unexpectedly non functional .impossible to perform tasks. Shat shall i do??	5	2022-09-22	Google Play	NEGATIVE	0.999788463115692	Other
3791	1	Intetesting Application for Banking. I use it since 2020.	5	2022-09-21	Google Play	NEGATIVE	0.9886291027069092	Other
3792	1	Very poor	1	2022-09-20	Google Play	NEGATIVE	0.9997965693473816	Other
3793	1	Best and easy application wich i like too. But try to incorporate d/t languages .e.g Afan oromo, somale, etc. to make more easier and convince for these who do not know english and amharic. Just like cbe birr.	5	2022-09-17	Google Play	NEGATIVE	0.8864888548851013	Other
3794	1	It is a good and progressive app through the updates. I think the app should further solve its bugs like 1. It doesn't download or share attachment on android 12 and 11, it used to work on android 10. 2. Sometimes transactions seem like they have failed and there are no records, but the transactions actually have passed this is a very serious issue, because people will try the transaction again which will end up doubling the payment.	4	2022-09-15	Google Play	NEUTRAL	0.5	Transaction Performance;Reliability
3795	1	Its good. But recently i have been having some problems. The app is transferring my money for a second time after i do. It shows the first transfer has failed and i usually do it again. Then after it shows that i have made two transfers. Could you fix this. Thank you	3	2022-09-15	Google Play	NEGATIVE	0.9969295859336852	Transaction Performance
3796	1	Good application is nice to same time and effort	5	2022-09-14	Google Play	POSITIVE	0.9996022582054138	Other
3797	1	It's cool app actually but it didn't accept transfer reasons more than once	5	2022-09-14	Google Play	NEGATIVE	0.9747453927993774	Transaction Performance
3798	1	tha kse	1	2022-09-10	Google Play	NEGATIVE	0.903834879398346	Other
3799	1	በጣም ምቹ መተግበሪያ ነው	5	2022-09-10	Google Play	NEGATIVE	0.8616330027580261	Other
3800	1	Best in every thing but we can't trarnsfer to other banks with RTGS it costs us 50 cent per 100 birr which means 500 birr for 100,000 birr it's not fair to cost us this much. Even Abyssinia bank has RTGS which only cost 25 birr to transfer as much as we want. So, pls update ur system	2	2022-09-10	Google Play	NEGATIVE	0.9983518123626708	Transaction Performance
3801	1	Nice,easy and saving time. Its the best app	5	2022-09-10	Google Play	POSITIVE	0.9998652935028076	Other
3802	1	Good so far. Much better than other bank apps.	5	2022-09-09	Google Play	POSITIVE	0.999818742275238	Other
3803	1	It says your device is rooted ,i cannot access this app with my device Which is samsung A21s	1	2022-09-09	Google Play	NEGATIVE	0.9770519137382508	Account Access Issues
3804	1	Best and easy app for use than any other local bank's mobile banking system. But the system doesn't show recent transaction some times, though the transaction has done. Better to do on this and other upgrading facilities.	5	2022-09-08	Google Play	NEGATIVE	0.9876498579978944	Transaction Performance
3805	1	Exlent app..	2	2022-09-08	Google Play	NEGATIVE	0.979752004146576	Other
3806	1	Excellent App	5	2022-09-07	Google Play	POSITIVE	0.9998356103897096	Other
3807	1	It's the most simple and yet most effective app in Ethiopia. I'm really enjoying the usability of the app.	5	2022-09-06	Google Play	POSITIVE	0.9998019337654114	Other
3808	1	Ft birr metenu bishashal arid new	5	2022-09-05	Google Play	NEGATIVE	0.9495574831962584	Other
3809	1	It is a good app, but when there is no readymade bill for payment, it doesn't tell anything, just say continue. It will be nice if it tells us, the bill is not yet ready for payment.	4	2022-09-05	Google Play	NEGATIVE	0.9927352666854858	Transaction Performance
3810	1	Very cool and best app. Keep up the good work.	5	2022-09-05	Google Play	POSITIVE	0.9998749494552612	Other
3811	1	Nice ui, but it fails to update info constantly after the recent update. The transition is not smooth, with 120hz refresh rate its not smooth seems like very old. Need to add more security, whenever someone exits the app and returns from recent tab it just opens, it should have asked to insert pin everytime someone returns back. Fix these things	2	2022-09-04	Google Play	NEGATIVE	0.998551905155182	User Interface
3812	1	There is a problem with the app after the new update I can't share the transaction	3	2022-09-04	Google Play	NEGATIVE	0.9995705485343932	Transaction Performance
3813	1	This up is very good only problem is no access of seeing your balance Otherwise it is very easy to you use and its so fast just work on that above mentioned Stay blessed 🙏🙏🙏❤️	5	2022-09-03	Google Play	POSITIVE	0.976365566253662	Account Access Issues
3814	1	Miftahi	5	2022-09-01	Google Play	NEGATIVE	0.7194498181343079	Other
3815	1	It is good but the transaction statement couldn't be shared or downloaded.	4	2022-09-01	Google Play	NEUTRAL	0.5	Transaction Performance
3816	1	Very good app. But include money transfer from oneself account to others telebirr	5	2022-08-31	Google Play	NEGATIVE	0.6142710447311401	Transaction Performance
3817	1	Wowww this app is good	5	2022-08-30	Google Play	POSITIVE	0.9998416900634766	Other
3818	1	commersal BANK	5	2022-08-29	Google Play	POSITIVE	0.996610462665558	Other
3819	1	It's the chooser	5	2022-08-29	Google Play	POSITIVE	0.9976588487625122	Other
3872	1	It was best app but after updating it doesn't synchronize easily it respond null and become worest app	1	2022-07-17	Google Play	NEGATIVE	0.9972819089889526	Other
3873	1	So much easy but please add CBE birr into the program.	5	2022-07-16	Google Play	POSITIVE	0.9289124608039856	Other
3820	1	Great Experience 👍 but there is o e thing that highly bother me *the password to login every time you open the app 😒 it ask you a pin instead what I say you can make it to be a fingerprint, because putting password continously so frustrating and also not secure as somebody can see our pin Thank you 😊	4	2022-08-29	Google Play	NEGATIVE	0.9993340373039246	Account Access Issues
3821	1	The time it takes for the customer service to solve issues is very impressively bad	1	2022-08-28	Google Play	NEGATIVE	0.9998086094856262	Customer Support
3822	1	Amazing app it's easy to use	5	2022-08-28	Google Play	POSITIVE	0.999847412109375	Other
3823	1	To speak frankly the app is good but it is too slow	1	2022-08-27	Google Play	NEGATIVE	0.9974907636642456	Transaction Performance
3824	1	Cool and functional	5	2022-08-26	Google Play	POSITIVE	0.9998703002929688	Other
3825	1	The app is unresponsive the time when the fragments are attached. It is just like shivering. Still, I can't download the transaction history instead it just toasted me can't save. Please consider all this things. But I would recommed you to use a tab layout. This is because, consider I am using latest Samsung 🤔 device, how do you think that your app is running on other damn devices like techno and itel ? It is horrible.	3	2022-08-26	Google Play	NEGATIVE	0.9992790818214417	Transaction Performance
3826	1	Please add the feature used to get reset that will be printed as document after payment done via this app rather the customers uses screen shot.	5	2022-08-26	Google Play	NEGATIVE	0.996337890625	Transaction Performance
3827	1	it's very nice app	5	2022-08-26	Google Play	POSITIVE	0.9998631477355956	Other
3828	1	Really it is very important and time saving to make transaction trade benefecieries	5	2022-08-25	Google Play	POSITIVE	0.9993788003921508	Transaction Performance
3829	1	Can't download or share transaction summary.	2	2022-08-23	Google Play	NEGATIVE	0.9987969398498536	Transaction Performance
3830	1	The app can't sync and functioning at all.	1	2022-08-23	Google Play	NEGATIVE	0.9997418522834778	Other
3831	1	Owww it is very apk	5	2022-08-22	Google Play	NEGATIVE	0.9461392760276794	Other
3832	1	For Easy life	5	2022-08-21	Google Play	POSITIVE	0.9963665008544922	Other
3833	1	The problem of this application is ፥ during transfer /tranzaction/pending or dliance problem that means the ricivers can't see the tranzaction at real time	1	2022-08-20	Google Play	NEGATIVE	0.9992337226867676	Transaction Performance
3834	1	Best apk	5	2022-08-18	Google Play	POSITIVE	0.9997425675392152	Other
3835	1	Current UI is ok but this version has got so many bugs previous version was working very well now these one crashes a lot now i cant even see my balance whats up with it and too much limitation please hurry and make some changes	5	2022-08-18	Google Play	NEGATIVE	0.992443859577179	User Interface;Reliability
3836	1	Good but you must improve it	5	2022-08-17	Google Play	POSITIVE	0.9977139234542848	Other
3837	1	it is nice	4	2022-08-16	Google Play	POSITIVE	0.9998648166656494	Other
3838	1	Goodapps.	5	2022-08-15	Google Play	POSITIVE	0.999827206134796	Other
3839	1	A wonderful Efficient n reliable app!	5	2022-08-14	Google Play	POSITIVE	0.9998840093612672	Other
3840	1	Yyyeee	5	2022-08-14	Google Play	POSITIVE	0.8355651497840881	Other
3841	1	Nic	5	2022-08-14	Google Play	POSITIVE	0.9977141618728638	Other
3842	1	I was used it is good app.	5	2022-08-12	Google Play	POSITIVE	0.9997764229774476	Other
3843	1	Amaz?ng	5	2022-08-12	Google Play	NEGATIVE	0.9493878483772278	Other
3844	1	Good app but when i want to tranfer to other banks there is ZEMZEM BANK and HIJRA BENK . add these banks.	3	2022-08-11	Google Play	NEUTRAL	0.5	Other
3845	1	i want to exercise the appl.	4	2022-08-11	Google Play	NEGATIVE	0.9620678424835204	Other
3846	1	Find it so good and helpful but can't download attachment	5	2022-08-10	Google Play	POSITIVE	0.6404249668121338	Customer Support
3847	1	Downloading	5	2022-08-10	Google Play	POSITIVE	0.9289591312408448	Transaction Performance
3848	1	User friendly app. New of the kind in Ethio	5	2022-08-09	Google Play	POSITIVE	0.995864987373352	User Interface
3849	1	This app is simple for uses	3	2022-08-09	Google Play	POSITIVE	0.9888727068901062	Other
3850	1	Iam very admired	5	2022-08-07	Google Play	POSITIVE	0.9996675252914428	Other
3851	1	The application is best based on the online banking system. But sometimes it shows previous balance when logging in and it confuses after making transaction	5	2022-08-07	Google Play	NEGATIVE	0.9977995753288268	Transaction Performance
3852	1	Its have some bugs when iam close the app its redirected to open the ap pls fix it	3	2022-08-07	Google Play	NEGATIVE	0.9991081357002258	Reliability
3853	1	It's wonderful app Tanks befor.	5	2022-08-05	Google Play	POSITIVE	0.999811351299286	Other
3854	1	This one of the best app for my money 😜	5	2022-08-05	Google Play	POSITIVE	0.9996079802513124	Other
3855	1	Super confused app	1	2022-08-05	Google Play	NEGATIVE	0.9993126392364502	Other
3856	1	Great app, it made my daily transactions very easy happy to have it. Kudos!	5	2022-08-04	Google Play	POSITIVE	0.9998263716697692	Transaction Performance
3857	1	One of the best apps ever created. Its very beneficial I like it more	5	2022-08-04	Google Play	POSITIVE	0.999872088432312	Other
3858	1	Best app to transfer money ,, Very fast & update itself immediately	5	2022-08-03	Google Play	POSITIVE	0.9980708956718444	Transaction Performance
3859	1	That is good	5	2022-08-03	Google Play	POSITIVE	0.9998364448547364	Other
3860	1	It very amazing app	4	2022-08-02	Google Play	POSITIVE	0.9998756647109984	Other
3861	1	Easy to use and accessable from anywhere in the world 🌎	5	2022-07-31	Google Play	POSITIVE	0.998857855796814	Account Access Issues
3862	1	amezing app	3	2022-07-31	Google Play	POSITIVE	0.9904307723045348	Other
3863	1	Its nice app. If its possible please try to add standing order option. We need it just to contribute small money in monthly basis for people in need or for spiritual things.	5	2022-07-29	Google Play	NEGATIVE	0.9486604928970336	Other
3864	1	Am satisfied with this app	1	2022-07-27	Google Play	POSITIVE	0.9993098974227904	Other
3865	1	Ayesarem	5	2022-07-26	Google Play	POSITIVE	0.995050609111786	Other
3866	1	It's good app, couse of shawing the debit & credit amount on time it's sometimes late if not I could have given it 5 star.	4	2022-07-25	Google Play	POSITIVE	0.9994823932647704	Other
3867	1	Saving money my account bank and my phone number	5	2022-07-24	Google Play	NEGATIVE	0.7580070495605469	Other
3868	1	Really good app	5	2022-07-24	Google Play	POSITIVE	0.9998643398284912	Other
3869	1	ajvj	5	2022-07-23	Google Play	NEGATIVE	0.6780596971511841	Other
3870	1	Why it stucks?i cant see my balance and accunt nuber site	5	2022-07-22	Google Play	NEGATIVE	0.999373495578766	Other
3871	1	Very poor and slow.	1	2022-07-21	Google Play	NEGATIVE	0.999778687953949	Transaction Performance
3875	1	It is awesome	4	2022-07-15	Google Play	POSITIVE	0.9998723268508912	Other
3876	1	Good but needs further features!	3	2022-07-14	Google Play	POSITIVE	0.9194704294204712	Other
3877	1	really good app but sometimes doublicates the transaction.	4	2022-07-12	Google Play	POSITIVE	0.9557569622993468	Transaction Performance
3878	1	I like it it's very nice app	3	2022-07-12	Google Play	POSITIVE	0.9998667240142822	Other
3879	1	Really great app!!!	5	2022-07-11	Google Play	POSITIVE	0.9998528957366944	Other
3880	1	Eshi	5	2022-07-11	Google Play	POSITIVE	0.9907397031784058	Other
3881	1	Love it	5	2022-07-09	Google Play	POSITIVE	0.99987530708313	Other
3882	1	user always	5	2022-07-09	Google Play	POSITIVE	0.9881998300552368	Other
3883	1	Its very important this app	5	2022-07-08	Google Play	POSITIVE	0.9996950626373292	Other
3884	1	Can't see transaction detail on android 5.0	3	2022-07-07	Google Play	NEGATIVE	0.9814318418502808	Transaction Performance
3885	1	The Best banking app I have ever seen in Ethiopian banking industry.	5	2022-07-06	Google Play	POSITIVE	0.999810516834259	Other
3886	1	Best banking app	5	2022-07-05	Google Play	POSITIVE	0.999736487865448	Other
3887	1	I love the application	5	2022-07-04	Google Play	POSITIVE	0.9998422861099244	Other
3888	1	The most intersting app service that is easy to use and operate. Excellent service.	5	2022-07-04	Google Play	POSITIVE	0.9996532201766968	Other
3889	1	So far, it was so good. However, I am very worried since the application is so difficult to update.	5	2022-07-04	Google Play	NEGATIVE	0.9342446327209472	Other
3890	1	This app is very nice and easy to use! It better to have a small size	4	2022-07-04	Google Play	POSITIVE	0.9969071745872498	Other
3891	1	Faster banking with cbe	5	2022-07-03	Google Play	POSITIVE	0.9976086616516112	Other
3892	1	I can't retrieve statements from the mobile app	1	2022-07-03	Google Play	NEGATIVE	0.999588906764984	Other
3893	1	Perfakte	5	2022-07-02	Google Play	POSITIVE	0.6148363947868347	Other
3894	1	Perfect app i love it	5	2022-07-02	Google Play	POSITIVE	0.99988055229187	Other
3895	1	The app notification code it's not link phone or email this means if you change phone you can't access your account easily	2	2022-07-02	Google Play	NEGATIVE	0.9983342289924622	Account Access Issues
3896	1	Where does it store the downoaded transaction detail png?	3	2022-07-01	Google Play	NEGATIVE	0.9994174242019652	Transaction Performance
3897	1	CBE customer for more than 14 years	5	2022-07-01	Google Play	POSITIVE	0.9659829139709472	Other
3898	1	It is good but not update quickly	4	2022-07-01	Google Play	POSITIVE	0.9976673126220704	User Interface
3899	1	Most of the times I receive text of my balance the next day.	2	2022-06-30	Google Play	NEGATIVE	0.9914199113845824	Other
3900	1	Fast and secure banking app I've ever seen	5	2022-06-30	Google Play	POSITIVE	0.9982203841209412	Other
3901	1	V good app	5	2022-06-28	Google Play	POSITIVE	0.9978657364845276	Other
3902	1	All	1	2022-06-27	Google Play	POSITIVE	0.9902591705322266	Other
3903	1	I couldn't using this appa my phone if you fixing problem of apps Thank you	5	2022-06-27	Google Play	NEGATIVE	0.994632363319397	Other
3904	1	it has low security system, it require too much space it dose not diserve	2	2022-06-27	Google Play	NEGATIVE	0.9901832938194276	User Interface
3905	1	Very good APP	5	2022-06-27	Google Play	POSITIVE	0.9998675584793092	Other
3906	1	Nice.	5	2022-06-26	Google Play	POSITIVE	0.9998674392700196	Other
3907	1	Very easy and clear to use.	5	2022-06-26	Google Play	POSITIVE	0.999656081199646	Other
3908	1	Fantastic!	5	2022-06-26	Google Play	POSITIVE	0.999874711036682	Other
3909	1	I am Orthodox Christian but why on earth you think only Muslims use interest free accounts. Shame on you	1	2022-06-26	Google Play	NEGATIVE	0.999143123626709	Other
3910	1	It's cool even though it takes a thousand years to update.	4	2022-06-25	Google Play	POSITIVE	0.9998108744621276	Other
3911	1	Broadly speaking, it is good app. But recently I have noticed a problem when trying to see the recent transactions it becomes very slow and sluggish even closes and also have seen this on my friends' phone. So, this should be corrected asap and speed should be core feature	4	2022-06-25	Google Play	NEGATIVE	0.9942944645881652	Transaction Performance
3912	1	አሪፍ አፕ	5	2022-06-22	Google Play	NEGATIVE	0.7850590348243713	Other
3913	1	Garisalo gamunoa kamunikal dvvjdgvj	5	2022-06-22	Google Play	NEGATIVE	0.9121857285499572	Other
3914	1	Very poor can not updated!	1	2022-06-21	Google Play	NEGATIVE	0.999756395816803	Other
3915	1	Its not updating properly ,not working	1	2022-06-21	Google Play	NEGATIVE	0.9997925162315368	Other
3916	1	I love this app	5	2022-06-21	Google Play	POSITIVE	0.9998608827590942	Other
3917	1	It says none available	3	2022-06-20	Google Play	NEGATIVE	0.9996892213821412	Other
3918	1	I cann't speak a word. without emotion It is a nice app,keep it up by updating	5	2022-06-20	Google Play	POSITIVE	0.9906438589096068	Other
3919	1	Nice app proudly made in 🇪🇹ETHIOPIA	5	2022-06-20	Google Play	POSITIVE	0.9996944665908812	Other
3920	1	Up date ስለው አይከፍትም	5	2022-06-20	Google Play	POSITIVE	0.9972315430641174	Other
3921	1	It is easy to operat & issential app. I'm using still.	5	2022-06-19	Google Play	NEGATIVE	0.9963433146476746	Other
3922	1	The App is highly secured one and easy to use.	5	2022-06-19	Google Play	POSITIVE	0.9979200959205629	Other
3923	1	The app. Is very efficient though delay in bank to bank transfer service is witnessed.	5	2022-06-19	Google Play	POSITIVE	0.9992953538894652	Transaction Performance
3924	1	I love last update 🌹	5	2022-06-19	Google Play	POSITIVE	0.9992691874504088	Other
3925	1	Very reliable	5	2022-06-18	Google Play	POSITIVE	0.999860405921936	Other
3926	1	It is a great application with full of credibility.	5	2022-06-18	Google Play	POSITIVE	0.9997304081916808	Other
3927	1	Good app need some updates	5	2022-06-18	Google Play	POSITIVE	0.9962576627731324	Other
3928	1	Onli add monthly statement page list.	5	2022-06-18	Google Play	POSITIVE	0.9157699942588806	Other
3929	1	I am satisfied with this app.	5	2022-06-18	Google Play	POSITIVE	0.9996708631515504	Other
3930	1	Better application that helps you to manage your account activities.	5	2022-06-17	Google Play	POSITIVE	0.9639883041381836	Customer Support
3931	1	Very moderney	5	2022-06-17	Google Play	POSITIVE	0.9991703033447266	Other
3932	1	Easy to use and save time I like it	3	2022-06-17	Google Play	POSITIVE	0.9991329312324524	Other
3933	1	Best of best	5	2022-06-16	Google Play	POSITIVE	0.9997496008872986	Other
3934	1	Busy	5	2022-06-15	Google Play	NEGATIVE	0.9995279312133788	Other
3935	1	This app makes my job easier.	5	2022-06-15	Google Play	POSITIVE	0.9750536680221558	Other
3936	1	Usefull and good apps	5	2022-06-15	Google Play	POSITIVE	0.999831199645996	Other
3937	1	Simple&fast app.I like it.	5	2022-06-14	Google Play	POSITIVE	0.9997907280921936	Other
3938	1	I can't open it when I change phone horror!	2	2022-06-12	Google Play	NEGATIVE	0.998276948928833	Other
3939	1	It is agood app rather than other bank apps in ethiopia but the transaction limit should be in greater	5	2022-06-11	Google Play	NEGATIVE	0.986684024333954	Transaction Performance
3940	1	Amazing app thanks	5	2022-06-11	Google Play	POSITIVE	0.9998599290847778	Other
3941	1	Download	5	2022-06-11	Google Play	POSITIVE	0.9691482186317444	Other
3942	1	This App.Better For any Person How Use Bank	5	2022-06-10	Google Play	NEGATIVE	0.9969995617866516	Other
3943	1	Really it is fast!	4	2022-06-09	Google Play	POSITIVE	0.9996603727340698	Other
3944	1	Easy and simple...i like it	5	2022-06-09	Google Play	POSITIVE	0.9998542070388794	Other
3945	1	Why does it take a day for the app to show a recent withdraw and deposit	3	2022-06-08	Google Play	NEGATIVE	0.9991058707237244	Other
3946	1	Very very help me.	5	2022-06-08	Google Play	NEUTRAL	0.5	Customer Support
3947	1	Bad service	1	2022-06-07	Google Play	NEGATIVE	0.9997195601463318	Other
3948	1	Amanuale haille	5	2022-06-07	Google Play	POSITIVE	0.9817874431610109	Other
3949	1	Waw I am delighted with this app.	5	2022-06-06	Google Play	POSITIVE	0.9998434782028198	Other
3950	1	Very productive app, i love this app.	5	2022-06-06	Google Play	POSITIVE	0.9998700618743896	Other
3951	1	Best app & latest.	5	2022-06-05	Google Play	POSITIVE	0.9998018145561218	Other
3952	1	Best App.I have used for many years.	5	2022-06-05	Google Play	POSITIVE	0.9995843768119812	Other
3953	1	Very very bad app so embarrassing	1	2022-06-05	Google Play	NEGATIVE	0.999795377254486	Other
3954	1	Very good and easy to use app	1	2022-06-03	Google Play	POSITIVE	0.9998717308044434	Other
3955	1	Poor quality	1	2022-06-02	Google Play	NEGATIVE	0.9997573494911194	Other
3956	1	በጣም ተመችቶኛል	5	2022-06-02	Google Play	NEGATIVE	0.7850590348243713	Other
3957	1	Love this app Couse it makes my life Easier	5	2022-06-02	Google Play	POSITIVE	0.999594271183014	Other
3958	1	I love it😍	5	2022-06-02	Google Play	POSITIVE	0.9998080134391784	Other
3959	1	This is an amazing application. It is very easy to use and understand. CBE Thanks for making it.	4	2022-06-02	Google Play	POSITIVE	0.999835729598999	Other
3960	1	ጥሩ አፕልኬሽን ነው ። ተጨማሪ የዲጂታል ከረንሲዎችን ማስተናፐድ እንዲችል ቢሆን ደግሞ ጥሩ ነበር።	5	2022-06-02	Google Play	NEGATIVE	0.9528433680534364	Other
3961	1	Simple, clear, smart and easy. Download right now and use it.	4	2022-06-01	Google Play	POSITIVE	0.9994997978210448	Other
3962	1	I would have given the app 5 stars if the download or share function of the last transaction confirmation is working. I wonder why you desabled it as I repeatedly obliged to screenshot the confirmation. If I were you, enable is as even pdf file to print and file. I hope you will correct by updating it.	4	2022-05-30	Google Play	NEGATIVE	0.996541440486908	Transaction Performance
3963	1	Best Mobile Banking App, easy and Clear to use.	5	2022-05-29	Google Play	POSITIVE	0.9995936751365662	Other
3964	1	Easy beautiful design	5	2022-05-28	Google Play	POSITIVE	0.9998773336410522	User Interface
3965	1	The best💜💜	5	2022-05-27	Google Play	NEUTRAL	0.5	Other
3966	1	Very nice App	5	2022-05-27	Google Play	POSITIVE	0.9998562335968018	Other
3967	1	It is good application.	1	2022-05-27	Google Play	POSITIVE	0.999868631362915	Other
3968	1	The Best And Suitabel And Easy To Use	5	2022-05-26	Google Play	POSITIVE	0.999824583530426	User Interface
3969	1	No mobile app like this. Really an amazing	5	2022-05-26	Google Play	POSITIVE	0.99954754114151	Other
3970	1	It was good until I have many transactions then it started to stack and lagg	2	2022-05-26	Google Play	NEGATIVE	0.765201210975647	Transaction Performance
3971	1	The app overlaps on other apps after closing, please bring some improvements. The rest is best.	5	2022-05-25	Google Play	POSITIVE	0.9980241060256958	Other
3972	1	ለመጠቀም በጣም ቀላልና አመቺ ነዉ!	5	2022-05-25	Google Play	POSITIVE	0.9945303797721864	Other
3973	1	Very atractive app	5	2022-05-25	Google Play	NEGATIVE	0.9986037611961364	Other
3974	1	I'm blind. I have been using this service since 2008 EC. More or less both versions are accessible to our screen reader, talkback. However, after updating the app, its account tab couldn't display second account which is connected via CBE account. Secondly after transfering money, it shows save and share options but doesn't work.	3	2022-05-23	Google Play	NEGATIVE	0.9989578723907472	Account Access Issues;Transaction Performance
3975	1	Very disappointing, it doesnt order transaction correctly, it randomly switches the orders everytime you refresh it, it sometimes shows wrong dates. Very unorganized.	1	2022-05-23	Google Play	NEGATIVE	0.9996799230575562	Transaction Performance
3976	1	It performs two transaction with just one request....በጣም ቆሻሻ የሆነ app nw የእዉነት	1	2022-05-23	Google Play	NEGATIVE	0.9816111326217652	Transaction Performance
3977	1	Vip	5	2022-05-23	Google Play	POSITIVE	0.9991161227226256	Other
3978	1	Can't update or syinc transactions	1	2022-05-22	Google Play	NEGATIVE	0.9973217844963074	Transaction Performance
3979	1	This is very good app; Thank you developers!	5	2022-05-20	Google Play	POSITIVE	0.9998738765716552	Other
3980	1	Good easy and fast	5	2022-05-20	Google Play	POSITIVE	0.999858856201172	Other
3981	1	አፑን ስጠቀም የመጀመሪያዬ ነው ..... This is one of the most user friendly app that i have ever been using on my phone ..... I wish i could give you not 5* but 55* ...keep it up !!	5	2022-05-20	Google Play	POSITIVE	0.9982751607894896	User Interface
3982	1	CBE is the best!	5	2022-05-19	Google Play	POSITIVE	0.999850869178772	Other
3983	1	Quick and easy to you it.. I liked it	5	2022-05-18	Google Play	POSITIVE	0.9998409748077391	User Interface
3984	1	Nigd	5	2022-05-18	Google Play	NEGATIVE	0.9927654266357422	Other
3985	1	It is best app but samtime busy	5	2022-05-16	Google Play	NEGATIVE	0.9838735461235046	Other
3986	1	Smart app Thanks 👍👍👍	5	2022-05-16	Google Play	POSITIVE	0.999782145023346	Other
3987	1	At work	5	2022-05-15	Google Play	POSITIVE	0.9920561909675598	Other
3988	1	Very best App	5	2022-05-15	Google Play	POSITIVE	0.9998177886009216	Other
3989	1	Fast and time saving app.	5	2022-05-14	Google Play	POSITIVE	0.9957491159439088	Other
3990	1	Sometimes it's busy the remain is good	4	2022-05-13	Google Play	POSITIVE	0.99089252948761	Other
3991	1	BEST	5	2022-05-11	Google Play	POSITIVE	0.9997941851615906	Other
3992	1	If I could go lower, I would. Don't trust it when it says transaction failed.	1	2022-05-10	Google Play	NEGATIVE	0.9997498393058776	Transaction Performance
3993	1	this is the best ethiopia application to transfer money account to account, bank to bank, pay bills, recharge your mobile card	5	2022-05-09	Google Play	POSITIVE	0.9958237409591676	Transaction Performance
3994	1	I gave 1 star, because to get verification number must go to branch. Now day technology is developing by speed of light. Please make it register and usable without going branch. The i will give 5 star.	1	2022-05-09	Google Play	POSITIVE	0.9905491471290588	Other
3995	1	It is very interesting and useful app, it make easy process of finacial transaction, i like it	5	2022-05-08	Google Play	POSITIVE	0.9996254444122314	Transaction Performance
3996	1	Useful and synchronized fast.	4	2022-05-08	Google Play	POSITIVE	0.9996633529663086	Other
3997	1	I like the app but sometimes it gives you error message but the transfer was done even no notification so i thought not transferred so i do transfer again so i do double transfer Please improve this	3	2022-05-06	Google Play	NEGATIVE	0.9759780168533324	Transaction Performance;Reliability
3998	1	ገንዘብ ከአካውንት ወደ አካውንት የሚያስተላልፉ ሰዎቸን ስም ወይም ስልካቸውን ብናገኝ እንደ ቤተክርስቲያን ደረሰኝ ለመስጠትና ለማመስገን ይረዳናል ።	4	2022-05-05	Google Play	NEGATIVE	0.9582906365394592	Other
3999	1	It is best application for banking system. Because it's save time, and make easy all things like, paying for other, transferring mobile charging and etc... But it's good if you add mini statement option like tele birr app, it's make full.	4	2022-05-05	Google Play	POSITIVE	0.9991262555122375	Transaction Performance
4000	1	Very easy to use.	5	2022-05-05	Google Play	POSITIVE	0.9993563294410706	Other
4001	1	It was good app I like it.	4	2022-05-05	Google Play	POSITIVE	0.99986469745636	Other
4002	1	Stopped showing received or deposits recently.	3	2022-05-05	Google Play	NEGATIVE	0.9988152980804444	Other
4003	1	reviews	1	2022-05-04	Google Play	POSITIVE	0.998808741569519	Other
4004	1	Best app to use	5	2022-05-04	Google Play	POSITIVE	0.9985859394073486	Other
4005	1	Every time it needs to reconfiger by physical presentation. Why online access is not given to the user?	2	2022-05-04	Google Play	NEGATIVE	0.9982894062995912	Account Access Issues
4006	1	open	5	2022-05-03	Google Play	POSITIVE	0.9997945427894592	Other
4007	1	Good its	5	2022-05-03	Google Play	POSITIVE	0.9998164772987366	Other
4008	1	First of all you need to be given a pin from a commercial bank, next you must have your bank book with you in order to be given the pin code. So I never got to use it, I just didn't want it that bad.	1	2022-05-02	Google Play	NEGATIVE	0.9848414659500122	Other
4009	1	You have to go to the bank branch to activate the app where there is the worst customer service, after the activation the app lags so much that i had to uninstall it to restart it again. Know it asks to go to the bank again to activate it.	1	2022-05-01	Google Play	NEGATIVE	0.999767005443573	Customer Support
4010	1	Am a postgraduate student. it has eased my life here .	5	2022-04-29	Google Play	POSITIVE	0.9908064007759094	Other
4011	1	Really Simple and Secured	5	2022-04-25	Google Play	POSITIVE	0.9998243451118468	Other
4012	1	It has simply simplified my life..i love it.	5	2022-04-25	Google Play	POSITIVE	0.9996981620788574	Other
4013	1	very very nice app but it's Not done by simple network	4	2022-04-25	Google Play	NEGATIVE	0.9484642744064332	Other
4014	1	It's the perfect app for online mobile banking	5	2022-04-22	Google Play	POSITIVE	0.9997904896736144	Other
4015	1	Exceptionaly Good!!	5	2022-04-22	Google Play	POSITIVE	0.9998587369918824	Other
4016	1	Excellent and simple app than all available apps	5	2022-04-20	Google Play	POSITIVE	0.9998650550842284	Other
4017	1	It would be really awesome if it had an export to csv file option on recent transactions.	4	2022-04-20	Google Play	NEGATIVE	0.9871724843978882	Transaction Performance
4018	1	Easly And Vergood App Thanks CBE From Shilabo Ethiopia Somali Regional State	5	2022-04-19	Google Play	POSITIVE	0.7312828302383423	Other
4019	1	Best bank of Ethiopia good	2	2022-04-19	Google Play	POSITIVE	0.9998111128807068	Other
4020	1	መልካም	5	2022-04-19	Google Play	NEGATIVE	0.697056770324707	Other
4021	1	Immaculately designed for the target group.	4	2022-04-17	Google Play	POSITIVE	0.9995649456977844	User Interface
4022	1	Difficult to link two accounts	2	2022-04-15	Google Play	NEGATIVE	0.9997584223747252	Other
4023	1	Perfect!!	5	2022-04-15	Google Play	POSITIVE	0.9998695850372314	Other
4024	1	That's a good app but it 's more fun if you add features like weekly report download in PDF and that's why I gave you 4⭐.	4	2022-04-15	Google Play	POSITIVE	0.9986829161643982	Other
4025	1	Superb	5	2022-04-14	Google Play	POSITIVE	0.9998656511306764	Other
4026	1	Ridiculous	2	2022-04-14	Google Play	NEGATIVE	0.9996989965438844	Other
4027	1	Is very important APP used at a time T, anywhere. Thanks	5	2022-04-13	Google Play	POSITIVE	0.9990317821502686	Other
4028	1	Its good to taransfer	4	2022-04-13	Google Play	POSITIVE	0.9995874762535096	Other
4029	1	Thanks CBE!	5	2022-04-13	Google Play	POSITIVE	0.999774158000946	Other
4030	1	Best mobile banking App	5	2022-04-12	Google Play	POSITIVE	0.9997095465660096	Other
4031	1	This app makes it easy to make transaction	4	2022-04-12	Google Play	POSITIVE	0.9957734942436218	Transaction Performance
4032	1	Not helpful	1	2022-04-10	Google Play	NEGATIVE	0.9997971653938292	Customer Support
4033	1	በጣም አሪፍ ሲስትም ነው በርቱ	5	2022-04-09	Google Play	NEGATIVE	0.8832130432128906	Other
4034	1	It is very good, it make my life easy !!	4	2022-04-08	Google Play	POSITIVE	0.9998786449432372	Other
4035	1	Bdry good app and functional system	5	2022-04-07	Google Play	POSITIVE	0.9998414516448976	Other
4036	1	It's a nice app & works properly.	5	2022-04-07	Google Play	POSITIVE	0.9998606443405152	Other
4037	1	It app so bad for it can't update review recent send,others thing the service are so poor	1	2022-04-06	Google Play	NEGATIVE	0.9996225833892822	Other
4038	1	Fast and accurate	5	2022-04-06	Google Play	POSITIVE	0.9998525381088256	Other
4039	1	Exelent app it's very help full	5	2022-04-06	Google Play	POSITIVE	0.9884259700775146	Customer Support
4040	1	I am a biginer, too early to comment	5	2022-04-05	Google Play	NEGATIVE	0.9945287108421326	Other
4041	1	Great 👍 👌 👍 App	5	2022-04-05	Google Play	POSITIVE	0.9984753727912904	Other
4042	1	I appreciate the effort you put in this application, but for commercial bank employees, you should include staff who speak the language spoken by the customers, depending on the location of the bank, in particular, the Somali region thank you. ለንግድ ባንክ ሰራተኞች ግን ደንበኞቹ የሚናገሩትን ቋንቋ የሚናገሩ ሰራተኞችን ማካተት አለቦት እንደ ባንኩ አካባቢ በተለይም የሶማሌ ክልል እናመሰግናለን።	3	2022-04-05	Google Play	POSITIVE	0.9969294667243958	Other
4043	1	Unreliable,slow app with childish interface. Learn from other banks such as BoA to design your app and try to add more functionality.	1	2022-04-05	Google Play	NEGATIVE	0.9996914863586426	Transaction Performance;User Interface
4044	1	Really I am happy by this app is to use and time wise insted of go bank I use my phone to transfer money.	5	2022-04-05	Google Play	POSITIVE	0.9985722303390504	Transaction Performance
4045	1	How do I register what do I need am new customer ?	3	2022-04-04	Google Play	NEGATIVE	0.9988681077957152	Other
4046	1	Not fun.....not lively Its 2022 and counting u guys suck	1	2022-04-04	Google Play	NEGATIVE	0.9997674822807312	Other
4047	1	It's good application but sometimes can't work properly!	3	2022-04-03	Google Play	NEGATIVE	0.9980024695396424	Other
4048	1	It is a great app, I like it!	5	2022-04-03	Google Play	POSITIVE	0.9998739957809448	Other
4049	1	Not seen money send to agent why?	5	2022-04-02	Google Play	NEGATIVE	0.9990680813789368	Other
4050	1	It is very useful app I like it to use	1	2022-04-01	Google Play	POSITIVE	0.9993374943733216	Other
4051	1	Have been using it for 2 years, the new update is even better. Best MB app	4	2022-04-01	Google Play	POSITIVE	0.9982481002807616	Other
4052	1	Wow very good app i like	5	2022-03-31	Google Play	POSITIVE	0.9998621940612792	Other
4053	1	Not always good It is helpfull	5	2022-03-29	Google Play	NEGATIVE	0.98907870054245	Customer Support
4054	1	አንድ ጊዜ ታዞ ሁለቴ ያስተላልፋል አረ አስተካክሉት	4	2022-03-29	Google Play	NEGATIVE	0.9200406670570374	Other
4055	1	Very good. App	4	2022-03-29	Google Play	POSITIVE	0.9998645782470704	Other
4056	1	The best and secured app thank you!	5	2022-03-28	Google Play	POSITIVE	0.9998613595962524	Other
4057	1	After everything done it can't save and share the transactions receipt	3	2022-03-28	Google Play	NEGATIVE	0.9979425072669984	Transaction Performance
4058	1	A must have apps.	5	2022-03-28	Google Play	POSITIVE	0.9657730460166932	Other
4059	1	It's good app, it is simple to use. It would be better if there was more recent records on the "recents" toolbar. It is only about 17 deposit and withdrawal recent records displayed to the user while others are deleted automatically.	4	2022-03-28	Google Play	POSITIVE	0.9365180730819702	Other
4060	1	Thank you.	5	2022-03-27	Google Play	POSITIVE	0.9998457431793212	Other
4061	1	I like the apps	5	2022-03-27	Google Play	POSITIVE	0.9994787573814392	Other
4062	1	Fantastic it's nice to using internationally network to developing world-wide.	4	2022-03-27	Google Play	POSITIVE	0.9998517036437988	Other
4063	1	Wow! This is how to make life easier!	5	2022-03-25	Google Play	POSITIVE	0.9996380805969238	Other
4064	1	its good app but the main problem of this app is When you change your phone or restore it you should go bank to instill the up again so imagin any time if you want change your phone you should go bank.thats to bad.	1	2022-03-25	Google Play	NEGATIVE	0.9967520236968994	Other
4065	1	Great and I am happy especially using it from abroad.	5	2022-03-25	Google Play	POSITIVE	0.9998881816864014	Other
4066	1	The app should have FAQ SO THAT THE APP DESCRIBES HOW TO USE SPECIALLY TRANSACTION ISSUES LIKE LIMITATIONS	3	2022-03-24	Google Play	NEGATIVE	0.9989374279975892	Transaction Performance
4067	1	Easy	5	2022-03-24	Google Play	POSITIVE	0.9972309470176696	Other
4068	1	Experience for free of charge payment	5	2022-03-22	Google Play	POSITIVE	0.8543922901153564	Transaction Performance
4069	1	It's a great app. I've been using this app since the bank launched it. As a long-term user, I would like to point out things that need to be improved. 1. Deleting money transfer history should be the user's choice. 2. There should be an option to download an in-depth transfer history for each transfer activity , just as there is posiblity to download a single time transfer recit. Do that and get 5 star.	3	2022-03-18	Google Play	POSITIVE	0.7781173586845398	Transaction Performance
4070	1	Tell us more	5	2022-03-18	Google Play	POSITIVE	0.994201958179474	Other
4071	1	Useless up for payment purpose	1	2022-03-18	Google Play	NEGATIVE	0.999790608882904	Transaction Performance
4072	1	Easy to use v good	5	2022-03-18	Google Play	POSITIVE	0.9909098744392396	Other
4073	1	Its amazing app , i like it specifically updated version is to smart . WOW CBE. But users have to Login without of goingto Bank after first registration . In this app If User was change His phone or uninstall app Hi have to go bank to use again, this is not good :: if this problem was fixed This app wasn't Any - comments. This is my feedback Thanks	5	2022-03-18	Google Play	NEGATIVE	0.9954646229743958	Account Access Issues
4074	1	It is very useful app that easer to use	5	2022-03-17	Google Play	POSITIVE	0.9991061091423036	Other
4075	1	Fetching transactions is very slow and makes the whole app stacked.	3	2022-03-16	Google Play	NEGATIVE	0.999546468257904	Transaction Performance
4076	1	Easy to use. I love it !	5	2022-03-15	Google Play	POSITIVE	0.9998782873153688	Other
4077	1	It would be more help full if you can login with two of your accounts	3	2022-03-15	Google Play	NEGATIVE	0.9984725117683412	Account Access Issues;Customer Support
4078	1	It is easy and safe application	5	2022-03-11	Google Play	POSITIVE	0.9995610117912292	Other
4079	1	Deducting 2times the same order starting from march7and 8 it is difficult to use mobile banking	2	2022-03-11	Google Play	NEGATIVE	0.9994576573371888	Other
4080	1	I am interested in the application.	5	2022-03-10	Google Play	POSITIVE	0.9994285702705384	Other
4081	1	I am comfertable with the sevice upto this time. But wish the service be applicable without internet connection. If this is possible more custemers benifits.	4	2022-03-10	Google Play	NEGATIVE	0.9983903169631958	Other
4082	1	is the best	1	2022-03-10	Google Play	POSITIVE	0.999841809272766	Other
4083	1	🙄🙄🙄	5	2022-03-09	Google Play	NEGATIVE	0.697056770324707	Other
4084	1	I can;t see my account, I can;t send it, it;s just a search, it doesn;t open	1	2022-03-09	Google Play	NEGATIVE	0.9996917247772216	Other
4085	1	easy for life	5	2022-03-08	Google Play	POSITIVE	0.9970002770423888	Other
4086	1	Wow makes my Business Smarter and Faster. Thank you for Details.	5	2022-03-08	Google Play	POSITIVE	0.9998680353164672	Other
4087	1	1. Withdrawal messages are not received regularly 2. Apps need to be more friendly use in terms of operation, 3. Apps lack some advanced security features, Additional comment: 4. Now that we are using modern technology, requirements for Bank Book should fade away with time. Some Branch offices do not entertain customers w/out Bank Book. Thanks and best regards	3	2022-03-08	Google Play	NEGATIVE	0.9996441602706908	User Interface
4088	1	Great App!	5	2022-03-08	Google Play	POSITIVE	0.9998462200164796	Other
4089	1	Very convenient	5	2022-03-07	Google Play	POSITIVE	0.9988445043563844	Other
4090	1	Please improve your transferring systems , ??👍	4	2022-03-07	Google Play	POSITIVE	0.7925189137458801	Transaction Performance
4091	1	I'm satisfied	5	2022-03-06	Google Play	POSITIVE	0.999729335308075	Other
4092	1	I like z app so much	4	2022-03-06	Google Play	POSITIVE	0.9994441866874696	Other
4093	1	Some time the connection is busy Plz try to solve only these	1	2022-03-05	Google Play	NEGATIVE	0.9985849857330322	Other
4094	1	This doesnt even deserve any star. I havent seen any thing like it. Not only that but also the ones working in the bank dont even have a clue what to do about it. They got confused like me and ask me questions that they have to answer wow so much incomptency i have seen today. Wow	1	2022-03-05	Google Play	NEGATIVE	0.975131094455719	Other
4095	1	Terrible! I had to use it to pay for my service at Document Authentication & Registration office. I hit confirm it says try again & I hit confirm again & it ends up sending the money twice. Then I had to write a letter to the office to get my money back & it is been more than 2 weeks but I didn't get my money back yet. I talked the issue to my branch they said you are lucky the issue is with a gov't office, they would do their accounting and return your money, but there is nothing they can do.	1	2022-03-05	Google Play	NEGATIVE	0.9992859959602356	Account Access Issues
4096	1	How can i get akey word of this app.?	5	2022-03-04	Google Play	NEGATIVE	0.9988116025924684	Other
4097	1	Nac	5	2022-03-04	Google Play	NEGATIVE	0.9303057789802552	Other
4098	1	Nice appa	5	2022-03-03	Google Play	POSITIVE	0.9998340606689452	Other
4099	1	This app made simple my life.	5	2022-03-03	Google Play	POSITIVE	0.9991034865379332	Other
4100	1	Does not work	1	2022-03-03	Google Play	NEGATIVE	0.9997377991676332	Other
4101	1	Make life easy	5	2022-03-02	Google Play	POSITIVE	0.999527096748352	Other
4102	1	It is good service, but the service charge is not fair. I prefer to get the service in physical or ATM unless otherwise diffulty case happened.	2	2022-03-02	Google Play	NEGATIVE	0.985978662967682	Other
4103	1	Its hard to trust this application coz while transfering money it transfers two times to the same account after only one transfer click and sometimes it says error but it actualy have transfered the money, so i only use it if it is mandatory unless its better to go to the bank, so it still doesn't solve the problem not to go to the bank, i am sure it have some systematic errors	1	2022-03-01	Google Play	NEGATIVE	0.9994592070579528	Transaction Performance;Reliability
4104	1	Fast&relaible!	5	2022-03-01	Google Play	POSITIVE	0.9987757802009584	Other
4105	1	Stops working while u want to use most of the tíme. Please fix the bugs.	4	2022-02-28	Google Play	NEGATIVE	0.9997356534004213	Reliability
4106	1	I don't see any options for outside of the country users.	5	2022-02-27	Google Play	NEGATIVE	0.9977610111236572	Other
4107	1	ሁሉንም አገልግሎችን በተቀላጠፈና በአመቺ ሁኔታ ለማግኘት የሚያስችል መተግበሪያ ነው።	5	2022-02-27	Google Play	NEGATIVE	0.9366679191589355	Other
4108	1	Well organized apo	5	2022-02-27	Google Play	POSITIVE	0.999772012233734	Other
4109	1	ብዙም ፈጣን አደለም ያስበላል ፍጥነቱ ያናደኛል በጣም.... እና ቢስተካከል መልካም ነዉ	3	2022-02-26	Google Play	NEGATIVE	0.9628021121025084	Other
4110	1	I love it. I can make easy transaction.	4	2022-02-26	Google Play	POSITIVE	0.999876856803894	Transaction Performance
4111	1	wonderful.	5	2022-02-26	Google Play	POSITIVE	0.9998692274093628	Other
4112	1	በጣም አዛ App	1	2022-02-26	Google Play	NEGATIVE	0.6179805397987366	Other
4113	1	This app is very easy to use and I interest it	5	2022-02-26	Google Play	POSITIVE	0.9995473027229308	Other
4114	1	Good Application	5	2022-02-26	Google Play	POSITIVE	0.999854564666748	Other
4115	1	Can't use the application since two weeks. I am outside Ethiopia but not able to transact. It is a disaster	2	2022-02-25	Google Play	NEGATIVE	0.9995111227035522	Other
4116	1	The only best app from cbe's tech	5	2022-02-25	Google Play	NEGATIVE	0.969443380832672	Other
4117	1	best work	5	2022-02-24	Google Play	POSITIVE	0.9998117089271544	Other
4118	1	excelent App	5	2022-02-24	Google Play	POSITIVE	0.9983735084533693	Other
4119	1	Upgrade it	4	2022-02-24	Google Play	POSITIVE	0.9895620942115784	Other
4120	1	Good luck	5	2022-02-23	Google Play	POSITIVE	0.9998250603675842	Other
4121	1	It doesn't show me my number as well as my amount its always loading and its never stop that.	1	2022-02-23	Google Play	POSITIVE	0.7246105670928955	Transaction Performance
4122	1	This app doesn't work on my Samsung J6.	1	2022-02-23	Google Play	NEGATIVE	0.999338924884796	Other
4123	1	Thanks for the update as it eradicates several errors but my concern is that I couldn't download or send the transaction detail after a transfer/yransaction is made.	4	2022-02-23	Google Play	NEGATIVE	0.993176281452179	Transaction Performance;Reliability
4124	1	Scheme of further security is no doubt good	2	2022-02-22	Google Play	POSITIVE	0.99892657995224	Other
4125	1	Awesome app	4	2022-02-21	Google Play	POSITIVE	0.9998600482940674	Other
4126	1	Very interesting application	5	2022-02-20	Google Play	POSITIVE	0.9998199343681335	Other
4127	1	Very bad application which can not working properly.	1	2022-02-20	Google Play	NEGATIVE	0.9998152852058412	Other
4128	1	Great App.	5	2022-02-19	Google Play	POSITIVE	0.9998407363891602	Other
4129	1	Giddugaleessatti bareedadha	3	2022-02-19	Google Play	POSITIVE	0.7668176889419556	Other
4130	1	The best app 👌 I love it easy to use	5	2022-02-18	Google Play	POSITIVE	0.999839186668396	Other
4131	1	Not working regularly	3	2022-02-18	Google Play	NEGATIVE	0.9997568726539612	Other
4132	1	After i update it's very slow and not working good	2	2022-02-18	Google Play	NEGATIVE	0.9997357726097108	Transaction Performance
4133	1	Failed to use mobile banking	5	2022-02-18	Google Play	NEGATIVE	0.9997592568397522	Other
4134	1	Taks	1	2022-02-18	Google Play	NEUTRAL	0.5	Other
4135	1	Its good. I like it	4	2022-02-17	Google Play	POSITIVE	0.9998579025268556	Other
4136	1	Can't refresh and display balance even. No proper updates maintainance. Update fail many times. Too much lag	1	2022-02-16	Google Play	NEGATIVE	0.9997870326042176	Other
4137	1	👏👏👏👌👏👏	5	2022-02-16	Google Play	NEGATIVE	0.697056770324707	Other
4138	1	Normal	4	2022-02-16	Google Play	POSITIVE	0.9916048049926758	Other
4139	1	Very satisfying app	5	2022-02-16	Google Play	POSITIVE	0.9998756647109984	Other
4140	1	App says phone is rooted while it's actually not after the update. Devs please fix this issue	1	2022-02-16	Google Play	NEGATIVE	0.9183648228645324	Other
4141	1	The best way	5	2022-02-16	Google Play	POSITIVE	0.9997900128364564	Other
4142	1	Excellent👏👏👏⚫️🔴⚪️	5	2022-02-15	Google Play	NEGATIVE	0.697056770324707	Other
4143	1	It's just very exlent apo	3	2022-02-15	Google Play	POSITIVE	0.9891427159309388	Other
4144	1	Very amazing app	5	2022-02-15	Google Play	POSITIVE	0.9998725652694702	Other
4145	1	Always....busy Cant sync is common problem	5	2022-02-15	Google Play	NEGATIVE	0.9996442794799804	Other
4146	1	Such a nice	5	2022-02-15	Google Play	POSITIVE	0.9998594522476196	Other
4147	1	App not down load why	1	2022-02-15	Google Play	NEGATIVE	0.9323920011520386	Other
4148	1	I have use for every purpose. It save me time and the app is a pocket money for me.	5	2022-02-15	Google Play	NEGATIVE	0.9859012961387634	Other
4149	1	Hi Cbe the updeted app is still not instoled becouse app problem...	1	2022-02-15	Google Play	NEGATIVE	0.9897109866142272	Other
4150	1	This update amezed me , its possible to send money across different banks wow . thanks	5	2022-02-15	Google Play	POSITIVE	0.998402178287506	Other
4151	1	It shows Sinc finished but no Money figures shown on the page. I coudn't see or use the money i have in the Bank.	4	2022-02-15	Google Play	NEGATIVE	0.9994114637374878	Other
4152	1	it is very fast and simple to use.	5	2022-02-14	Google Play	POSITIVE	0.9995734095573424	Other
4153	1	remarkable improvement	5	2022-02-14	Google Play	POSITIVE	0.9998606443405152	Other
4154	1	The last one week the App is not working even after updating not working please give some solution	1	2022-02-14	Google Play	NEGATIVE	0.9996280670166016	Other
4155	1	Everything is perfect, but the transfer history must show the account owner(sender or the receiver)	5	2022-02-14	Google Play	POSITIVE	0.8931725025177002	Transaction Performance
4156	1	Once you update this application it will stop working even the staff at cbe branch can't fix it.	1	2022-02-14	Google Play	NEGATIVE	0.9994788765907288	Other
4157	1	Very a good	5	2022-02-14	Google Play	POSITIVE	0.9998700618743896	Other
4158	1	Not good enough for transfer funds to hellocash or rays microfinance.	5	2022-02-14	Google Play	NEGATIVE	0.9997928738594056	Transaction Performance
4159	1	The app is very helpful	4	2022-02-14	Google Play	POSITIVE	0.9993189573287964	Customer Support
4160	1	Very 🤞 apps	1	2022-02-14	Google Play	POSITIVE	0.9651067852973938	Other
4161	1	Thank you for everything	3	2022-02-14	Google Play	POSITIVE	0.9998495578765868	Other
4162	1	Wow it is really easier way to communicate business men , even it is more than Front CBE servant.	4	2022-02-14	Google Play	POSITIVE	0.985559582710266	Other
4163	1	good but sometimes system is sometimes hard	3	2022-02-14	Google Play	NEGATIVE	0.9171889424324036	Other
4164	1	It is not working still now	1	2022-02-13	Google Play	NEGATIVE	0.9993496537208556	Other
4165	1	By my self it is very nice i hope you will add another options!!	4	2022-02-13	Google Play	POSITIVE	0.99983012676239	Other
4166	1	I have a lot of experience ,some of them are:- 1. Being a teacher, 2. Being member of Air Force , 3. Being Sport coach	5	2022-02-13	Google Play	POSITIVE	0.9822814464569092	Other
4167	1	App kana jaaladhe	1	2022-02-13	Google Play	NEGATIVE	0.9690576791763306	Other
4168	1	Easy & Perfect app	5	2022-02-13	Google Play	POSITIVE	0.9998266100883484	Other
4169	1	Have nice!!!	5	2022-02-13	Google Play	POSITIVE	0.9998583793640136	Other
4170	1	very funtestic	5	2022-02-13	Google Play	POSITIVE	0.9996631145477296	Other
4171	1	ጊዜችንን በአግበቡ ለመጠቀም ምርጥ የሆና አፕ	5	2022-02-13	Google Play	NEGATIVE	0.904695212841034	Other
4172	1	Wow, its easy to use	5	2022-02-13	Google Play	POSITIVE	0.9993599057197572	Other
4173	1	I love this app!!	5	2022-02-13	Google Play	POSITIVE	0.9998692274093628	Other
4174	1	The problem that I have seen is some of the branches specially out of Addis Ababa doesn't have a know how about this application to authenticate it	4	2022-02-13	Google Play	NEGATIVE	0.9996389150619508	Other
4175	1	This app is very useful	3	2022-02-13	Google Play	POSITIVE	0.998563826084137	Other
4176	1	The app is good but it needs some improvment. It is better to enable two accounts within one mobile to work with in a single app by switching out.	3	2022-02-13	Google Play	NEGATIVE	0.9941020607948304	Other
4177	1	It's recommended to use this any other banking system	5	2022-02-13	Google Play	NEGATIVE	0.9441529512405396	Other
4178	1	this a wonderful app, use it and it will help u a lot.	5	2022-02-13	Google Play	POSITIVE	0.9998695850372314	Customer Support
4179	1	Good. Keep it up!	4	2022-02-13	Google Play	POSITIVE	0.9998517036437988	Other
4180	1	Good app. Can you add option to print or save "Recent Transaction page".	5	2022-02-13	Google Play	POSITIVE	0.9994120597839355	Transaction Performance
4181	1	It is good App I like fast	4	2022-02-12	Google Play	POSITIVE	0.9998598098754884	Other
4182	1	Very simple and satisfying app	5	2022-02-12	Google Play	POSITIVE	0.9998786449432372	Other
4183	1	Good app but not fast	4	2022-02-12	Google Play	POSITIVE	0.9981508851051332	Other
4184	1	Save money	5	2022-02-12	Google Play	POSITIVE	0.9871341586112976	Other
4185	1	Excellent application. 1. It lacks currency exchange rate. 2. It says "error" but transfer the birr which biase customers. Please solve the above issues.	4	2022-02-12	Google Play	POSITIVE	0.9803069233894348	Transaction Performance;Reliability
4186	1	ምርጥ	5	2022-02-12	Google Play	NEGATIVE	0.697056770324707	Other
4187	1	Easy time saver and reliable for modern life !!	5	2022-02-12	Google Play	POSITIVE	0.9995489716529846	Other
4188	1	The one leads the ethiopian economy is commercial bank of Ethiopia am very satisfied with this service and customer let be customers I invest in	5	2022-02-12	Google Play	POSITIVE	0.9963983297348022	Other
4189	1	Not working properly. Can not synchronized the current status	1	2022-02-12	Google Play	NEGATIVE	0.99979966878891	Other
4190	1	I used to do everything with it but now it says can't sync. I can not do anything with it now. I'm having difficulties. Please try to fix it	1	2022-02-12	Google Play	NEGATIVE	0.9995355606079102	Other
4191	1	Very nice!!!!!!!!!!!!!!!!!	5	2022-02-12	Google Play	POSITIVE	0.9998555183410645	Other
4192	1	Fast and easy to use	5	2022-02-12	Google Play	POSITIVE	0.9995805621147156	Other
4193	1	It worked fine until I have received an SMS with a link to update the app, it directs me to play store having Open and uninstall options which when I choose open kept bringing me back to the interface of the app I already have.	1	2022-02-12	Google Play	NEUTRAL	0.5	User Interface
4194	1	Sometimes there is a problem of synchronization.	4	2022-02-12	Google Play	NEGATIVE	0.9988049268722534	Other
4195	1	It's good to have this app for easy use	5	2022-02-12	Google Play	POSITIVE	0.9991406202316284	Other
4196	1	Simple and friendly	5	2022-02-12	Google Play	POSITIVE	0.9998623132705688	Other
4197	1	Greatest one ever I never see before	5	2022-02-12	Google Play	POSITIVE	0.9998549222946168	Other
4198	1	I like it 👍	5	2022-02-12	Google Play	POSITIVE	0.9997929930686952	Other
4199	1	Nice and easy app	5	2022-02-12	Google Play	POSITIVE	0.9998438358306884	Other
4200	1	It's just good and secured application	5	2022-02-12	Google Play	POSITIVE	0.9998252987861632	Other
4201	1	Awo	4	2022-02-12	Google Play	NEGATIVE	0.9910936951637268	Other
4202	1	need to be improved	3	2022-02-12	Google Play	NEGATIVE	0.9935452938079834	Other
4203	1	Very good application. However, recently, it is not working properly. Refusing to transfer money to telebirr and other accounts.	5	2022-02-12	Google Play	NEGATIVE	0.998383402824402	Transaction Performance
4204	1	Simple & easy!	5	2022-02-12	Google Play	POSITIVE	0.9997207522392272	Other
4205	1	Is for work	5	2022-02-12	Google Play	POSITIVE	0.9994713664054872	Other
4206	1	💯💯💯💯	5	2022-02-12	Google Play	NEGATIVE	0.697056770324707	Other
4207	1	Thanks more	5	2022-02-12	Google Play	POSITIVE	0.9998072981834412	Other
4208	1	.Sorry.not Tsedeneya But Eden. Thanks.	5	2022-02-12	Google Play	POSITIVE	0.9993939399719238	Other
4209	1	The Bank you always rely on!	5	2022-02-12	Google Play	POSITIVE	0.9987932443618774	Other
4210	1	ጥሩ ነው በርቱ	5	2022-02-12	Google Play	NEGATIVE	0.8337255716323853	Other
4211	1	It wouldn't sync usually.	5	2022-02-12	Google Play	NEGATIVE	0.9994750618934632	Other
4212	1	The best of best	5	2022-02-12	Google Play	POSITIVE	0.9998393058776855	Other
4213	1	Really wonderful. Facilitates Hassle free operation.	5	2022-02-12	Google Play	POSITIVE	0.9995088577270508	Other
4214	1	Makes life simple	5	2022-02-12	Google Play	POSITIVE	0.999837040901184	Other
4215	1	10 years	3	2022-02-12	Google Play	POSITIVE	0.9842737913131714	Other
4216	1	Thanks for this multiple purpose app	4	2022-02-12	Google Play	POSITIVE	0.9993498921394348	Other
4217	1	It is friendly app	5	2022-02-12	Google Play	POSITIVE	0.9997376799583436	Other
4218	1	almost every day	5	2022-02-12	Google Play	POSITIVE	0.9971551895141602	Other
4219	1	The service is very efficient and user friendly.	5	2022-02-12	Google Play	POSITIVE	0.9996676445007324	User Interface
4220	1	Great app. Pls continue	5	2022-02-12	Google Play	POSITIVE	0.9997647404670716	Other
4221	1	it doesn't update status in any network i don't know where it work, please fix this problem it does't work at all	1	2022-02-12	Google Play	NEGATIVE	0.9997230172157288	Other
4222	1	Optimal	5	2022-02-12	Google Play	POSITIVE	0.9997511506080629	Other
4223	1	It is the best mob.banking app, i ever used.	5	2022-02-12	Google Play	POSITIVE	0.9997490048408508	Other
4224	1	Good app We love it	4	2022-02-12	Google Play	POSITIVE	0.9998812675476074	Other
4225	1	I'm very interested in this app, easily and friendly to use Im so happy of using it, and thank you for update information.	5	2022-02-12	Google Play	POSITIVE	0.9998043179512024	Other
4226	1	Apdate	5	2022-02-12	Google Play	POSITIVE	0.9417197704315186	Other
4227	1	.... nice app	5	2022-02-12	Google Play	POSITIVE	0.9997275471687316	Other
4228	1	An interesting digital platform	5	2022-02-12	Google Play	POSITIVE	0.9998338222503662	Other
4229	1	it's very good cbe	5	2022-02-12	Google Play	POSITIVE	0.9998574256896972	Other
4230	1	በኮቪድ ምክንያት እንቅስቃሴዬ በተገደበበት በዚህ ወቅት የተለያዩ ክፍያዎቼን ለመፈጸም ቀላል ያደረገልኝ መተግበሪያ (አፕሊኬሽን) ነው።	5	2022-02-12	Google Play	NEGATIVE	0.9555225372314452	Other
4231	1	Do proud of my people in CBE , the developers Great mobile app !!!!	5	2022-02-12	Google Play	POSITIVE	0.9998164772987366	Other
4232	1	Until now it is not functional	1	2022-02-12	Google Play	NEGATIVE	0.9995853304862976	Other
4233	1	For me it was really comfortable 😌	5	2022-02-12	Google Play	POSITIVE	0.9995645880699158	Other
4234	1	This is an excellent app. However, it did not work offline please work on it.	5	2022-02-12	Google Play	NEGATIVE	0.974579930305481	Other
4235	1	I am using it 1.5 years ago it is so nice.	5	2022-02-12	Google Play	POSITIVE	0.9997840523719788	Other
4236	1	It is very nice and professional 👌	5	2022-02-12	Google Play	POSITIVE	0.9998672008514404	Other
4237	1	tiru nw mizu amarach alew	4	2022-02-12	Google Play	NEGATIVE	0.9761312007904052	Other
4238	1	i like the services	1	2022-02-12	Google Play	POSITIVE	0.9997939467430116	Other
4239	1	This App ir really helpful and easy. Thank you CBE	1	2022-02-12	Google Play	POSITIVE	0.9989323019981384	Customer Support
4240	1	Easy to use!	4	2022-02-12	Google Play	POSITIVE	0.9990563988685608	Other
4241	1	Please Ethiopian electric opethio all	5	2022-02-12	Google Play	POSITIVE	0.9605408906936646	Other
4242	1	Ever loved apps software for transaction timely and with speed. But the activation key process should be improved.	4	2022-02-12	Google Play	POSITIVE	0.9928421974182128	Transaction Performance
4243	1	እስካሁን ስጠቀመው ምንም ግራ ያጋባኝ ነገር አላገኘሁበትም፣ በተለው ክፍያዎችን ለመከወን በጣም ተመችቶኛል። ወደ ሌላ ባንክ ለመላክ ግን ቴሌ ብር በጣም ይበልጠዋል።	5	2022-02-12	Google Play	NEGATIVE	0.9613831043243408	Other
4244	1	It is fast and saves my time to make payments.	4	2022-02-12	Google Play	NEGATIVE	0.9942687749862672	Transaction Performance
4245	1	I am using it for a year. And the app is easy and fast, Use it.	5	2022-02-12	Google Play	POSITIVE	0.9976499676704408	Other
4246	1	ብራንች ድረስ መሄድ ምን አስፈለገ verified ለማድረግ sms መላክ ትችላላችሁ እኮ ሰዎች	1	2022-02-12	Google Play	NEGATIVE	0.9574648141860962	Other
4247	1	This is awesome	5	2022-02-12	Google Play	POSITIVE	0.9998669624328612	Other
4248	1	Good nice	5	2022-02-12	Google Play	POSITIVE	0.9998514652252196	Other
4249	1	Excellent application.	5	2022-02-12	Google Play	POSITIVE	0.999865174293518	Other
4250	1	5 stars	5	2022-02-12	Google Play	POSITIVE	0.9983590245246888	Other
4251	1	Thank you for easing the life and making our business modern ,easy and reachable.	5	2022-02-12	Google Play	POSITIVE	0.9998629093170166	Other
4252	1	I got a text message i need to update this app with a link.but nothing here. Are u crazy.	1	2022-02-12	Google Play	NEGATIVE	0.9988391995429992	Other
4253	1	These is the most rediculous app i have ever seen in my life! You ahould just remove it from play store.	1	2022-02-12	Google Play	NEGATIVE	0.977371096611023	Other
4254	1	it's good and easy app,i like it	4	2022-02-12	Google Play	POSITIVE	0.9998723268508912	Other
4255	1	Cannot update	4	2022-02-12	Google Play	NEGATIVE	0.9981446266174316	Other
4256	1	Loved it	5	2022-02-12	Google Play	POSITIVE	0.9998797178268432	Other
4257	1	The Most worrying thing of this Application is, while you confirm Transfer and hit ok, it prompted "Connection error" but actually if you see your balance the transfer was already done. This is serious bugg which you need to update and make security amendment's. I personally send twice one day , if the reciepent wasn't kind enough, imagine what will happen. Serious problem which needs Attention.	3	2022-02-12	Google Play	NEGATIVE	0.998945653438568	Transaction Performance;Reliability
4258	1	U redirect me here to update the app, but there is no an update rather to open it and the app is not working. Unable to sync, pls go througn it.	4	2022-02-12	Google Play	NEGATIVE	0.9997754693031312	Other
4259	1	Very bad experience	1	2022-02-12	Google Play	NEGATIVE	0.9998032450675964	Other
4260	1	Easy to use everywhere	5	2022-02-12	Google Play	POSITIVE	0.9984612464904784	Other
4261	1	Some buttons get stuck, like the transfer button	2	2022-02-12	Google Play	NEGATIVE	0.9986640214920044	Transaction Performance
4262	1	Sometimes get stack!!!	5	2022-02-11	Google Play	NEGATIVE	0.9229671955108644	Other
4263	1	Verification key sucks after installing again	1	2022-02-11	Google Play	NEGATIVE	0.99970942735672	Other
4264	1	Nice app, I live abroad and I was managing transactions using the app since last 4 months. but now after 3 4 days onward, I couldn't access it. pls any one can help me with this?	4	2022-02-11	Google Play	NEGATIVE	0.9958457350730896	Account Access Issues;Transaction Performance;Customer Support
4265	1	Currently not working, but was a great app!	2	2022-02-11	Google Play	POSITIVE	0.99610435962677	Other
4266	1	The app is not functioning for me. Please assist.	4	2022-02-11	Google Play	NEGATIVE	0.9996091723442078	Other
4267	1	It said, always poor network, poor network....... even the network is there. You grilled us!!	1	2022-02-11	Google Play	NEGATIVE	0.9997208714485168	Other
4268	1	WiFi integrated is not worked	1	2022-02-11	Google Play	NEGATIVE	0.9993695616722108	Other
4269	1	WI-FI and Mobile data integration is nope! Other updates not worked on Sysy ...	2	2022-02-11	Google Play	NEGATIVE	0.9994202852249146	Other
4270	1	Its so nice	5	2022-02-11	Google Play	POSITIVE	0.9998569488525392	Other
4271	1	Best in everything.	4	2022-02-11	Google Play	POSITIVE	0.9998100399971008	Other
4272	1	Though the app is a better enough in its service till now, now we can't access the service as it tells us no network and sync , thus please update it	1	2022-02-11	Google Play	NEGATIVE	0.9971394538879396	Account Access Issues
4273	1	Tipical app	5	2022-02-10	Google Play	POSITIVE	0.6726172566413879	Other
4274	1	Some what good,it's so dormant l don't known the reason why	1	2022-02-10	Google Play	NEGATIVE	0.9952978491783142	Other
4275	1	I thanks again	5	2022-02-10	Google Play	POSITIVE	0.9998075366020204	Other
4276	1	Very good but latley has been some glitchs	5	2022-02-10	Google Play	POSITIVE	0.9182306528091432	Other
4277	1	Disappointing! I lost my phone so I went to a CBE branch to reactivate it (unnecessary imo) waited for 2 hours to receive the verification key for it to be useless and invalid.	1	2022-02-10	Google Play	NEGATIVE	0.999771535396576	Other
4278	1	Can't download	1	2022-02-09	Google Play	NEGATIVE	0.9904319643974304	Other
4279	1	This app is loser app I ever seen.this app is it's not working in verification code.the verification code is not sending!!!😡😡😤	1	2022-02-07	Google Play	NEGATIVE	0.9996671676635742	Other
4280	1	I dont wanna give even one star it's annoying	1	2022-02-07	Google Play	NEGATIVE	0.9991231560707092	Other
4281	1	Currently the app is not working becuase I think they forgot to update it. It always shows'sync failed''. And there is no customer service online. People living abroad are having problems. It is a big shame. It is very annoying and not user friendly, People are using CBE just becuase salary is transferd there. The app is a total failur.	1	2022-02-06	Google Play	NEGATIVE	0.9997491240501404	Transaction Performance;User Interface;Customer Support
4282	1	Very interested	1	2022-02-06	Google Play	POSITIVE	0.999777853488922	Other
4283	1	Its easy and safe, I like it.	5	2022-02-06	Google Play	POSITIVE	0.9998559951782228	Other
4284	1	Woe	5	2022-02-06	Google Play	NEGATIVE	0.9996906518936156	Other
4285	1	Great app, thank you cbe! You make my life easy!	5	2022-02-05	Google Play	POSITIVE	0.9998136162757874	Other
4286	1	Sometimes it's too annoying 🙄.	4	2022-02-05	Google Play	NEGATIVE	0.9994586110115052	Other
4287	1	Very exelent	5	2022-02-04	Google Play	POSITIVE	0.9991648197174072	Other
4288	1	Good App !!!!	5	2022-02-04	Google Play	POSITIVE	0.9998618364334106	Other
4289	1	Farfataa	5	2022-02-04	Google Play	NEGATIVE	0.7869293093681335	Other
4290	1	My internate banking is not allowing me to transfer to another bank. While having this app, the application asks me to contact a nearby nmbranch. Don't save your money trysting this application. It is so bad! It doesn't even have help icon included. I dislike this up.	1	2022-02-04	Google Play	NEGATIVE	0.9997137188911438	Transaction Performance;Customer Support
4291	1	System stopped suddenly from working. Very unreliable system which fails when you need it.	2	2022-02-04	Google Play	NEGATIVE	0.9997101426124572	Other
4292	1	It works perfectly	5	2022-02-03	Google Play	POSITIVE	0.9998629093170166	Other
4293	1	It's easy to use and accessable	5	2022-02-03	Google Play	POSITIVE	0.9993510842323304	Account Access Issues
4294	1	Users should have verified themselves without the need to go in branch.	3	2022-02-02	Google Play	NEGATIVE	0.8845566511154175	Other
4295	1	Great App	5	2022-02-02	Google Play	POSITIVE	0.999821126461029	Other
4296	1	Well organized and easy access keep it up and also wish all the best......	5	2022-02-02	Google Play	POSITIVE	0.999756157398224	Account Access Issues
4297	1	It is nice have to ATM withdrawal on mobile banking	3	2022-02-01	Google Play	NEGATIVE	0.8742895722389221	Other
4298	1	Excllent app fast	5	2022-02-01	Google Play	NEGATIVE	0.96697336435318	Other
4299	1	It's very fast and reliable	4	2022-02-01	Google Play	POSITIVE	0.999840259552002	Other
4300	1	transfer	5	2022-01-31	Google Play	POSITIVE	0.9731261134147644	Transaction Performance
4301	1	minizarie ayasayim	5	2022-01-31	Google Play	POSITIVE	0.7633823156356812	Other
4302	1	Very good up. Would be greate if there is a pdf download feature for transfers	4	2022-01-31	Google Play	POSITIVE	0.999433934688568	Transaction Performance
4303	1	ባንክ ከሚያስተናግዱን የተሰላቹ ባንከሮች እጅግ በጣም በተሻለ መንገድ ይሄ አፕ አገልግሎት ይሰጣል።	5	2022-01-30	Google Play	NEGATIVE	0.9510265588760376	Other
4304	1	I really love it	5	2022-01-29	Google Play	POSITIVE	0.9998788833618164	Other
4305	1	They don't deserve even half star The worst bank I ever use it.	1	2022-01-28	Google Play	NEGATIVE	0.9997177720069884	Other
4306	1	Very satisfying!	5	2022-01-28	Google Play	POSITIVE	0.9998824596405028	Other
4307	1	All good except the inability to rotate when rotates my phones.	4	2022-01-24	Google Play	POSITIVE	0.9949870109558104	Other
4308	1	My bank👍👍👍	5	2022-01-23	Google Play	POSITIVE	0.7963727712631226	Other
4309	1	CBE My# Best aps.	3	2022-01-21	Google Play	POSITIVE	0.9985539317131042	Other
4310	1	Tnx more	5	2022-01-20	Google Play	NEGATIVE	0.963689625263214	Other
4349	1	It's best app	5	2021-12-18	Google Play	POSITIVE	0.9998397827148438	Other
4311	1	I really loved this app. So much easy and make my transaction's and payment's easy. Great app 👍	4	2022-01-20	Google Play	POSITIVE	0.99979966878891	Transaction Performance
4312	1	It always need to go the branch that you open first time to solve errors.	1	2022-01-19	Google Play	NEGATIVE	0.9650897979736328	Reliability
4313	1	Woow!!it's very good app to done your job and it is help us any deposits‚withdrow and transfer details	5	2022-01-19	Google Play	POSITIVE	0.999055802822113	Transaction Performance;Customer Support
4314	1	I too like the service of this app it is the special service for all	5	2022-01-18	Google Play	POSITIVE	0.9511808156967164	Other
4315	1	Adil Ziyaad CBE mobile	1	2022-01-18	Google Play	POSITIVE	0.824794352054596	Other
4316	1	Wenderfull I Love It!!!!!!!!	5	2022-01-17	Google Play	POSITIVE	0.9998792409896852	Other
4317	1	It is good app and really user friendly , but it not possible to start service after the app is uninstalled or device phone is changed. So please make it easy for us, after once you set us the requirements in your office we should have to use it only by install and launch it. We do not have to visit the near by branch office every time for such silly businesses but important things.	3	2022-01-17	Google Play	NEGATIVE	0.905954897403717	User Interface
4318	1	Online banking services በጣም ጥሩ ነው። የATM services እንደ አማራጭ ጥሩ የሚባል ነው ነገር ግን በአብዛኛው ማለት ይቻላል አለም ባንክ እና አንፎ ቅርንጫፎች ያሉት ኤቲኤም ማሽኖች ገንዘብህን ይቆርጣሉ ግን ብር አይሰጥህም የተቆረጠውም ገንዘብ ወደ አካውንትህ ከሳምንታት ቦሀላ ይመለሳል፤ ሌላው አብዛኛው CBE Customer service ላይ የሚሰሩ ስራተኞች ፊትለፊት ላይ ቁጭ ይላሉ ነገር ግን ስራ አይሰሩም በጣም ጥቂቶቹ ለደንበኛ አገልግሎት ይሰጣሉ በጣም አሳፋሪው ነር ደግሞ ማናጀሮቻቸውም ብዙ ደንበኞች አግልግሎት ፈልገው ቆመው እርሱም መፍትሄ ከመስጠት ከጀርባ ሆኖ ያዮሃል ይህ ችግር በአብዛኛው የCBE ላይ አለ በተለይ አንፎ ቅርንጫፍ ላይ ይብሳል	3	2022-01-13	Google Play	NEGATIVE	0.9511667490005492	Customer Support
4319	1	Not working all of a sudden. I do not even know who to call to fix the bug. Disappointed as usual. I believe I need to visit the Branch to get the app fixed. Come on guys! It is not a car we are in 2022 for God sake. .	2	2022-01-13	Google Play	NEGATIVE	0.9997557997703552	Reliability
4320	1	Easy to use, but it is not functional always.	5	2022-01-11	Google Play	NEGATIVE	0.9984309077262878	Other
4321	1	It is really amazing app, it makes everything easy ...	5	2022-01-08	Google Play	POSITIVE	0.9998743534088136	Other
4322	1	Payment	5	2022-01-08	Google Play	POSITIVE	0.9950516819953918	Transaction Performance
4323	1	After updating The app says This Device is rooted. You can't use this app. But my phone is not rooted I don't think it works on Android 11. Please fix it	1	2022-01-07	Google Play	NEGATIVE	0.9979902505874634	Other
4324	1	Hmmm... I like it	5	2022-01-06	Google Play	POSITIVE	0.999717652797699	Other
4325	1	I can't transfer money from other country .	1	2022-01-05	Google Play	NEGATIVE	0.992939591407776	Transaction Performance
4326	1	This is the best app l used till now .	1	2022-01-05	Google Play	POSITIVE	0.9995934367179872	Other
4327	1	በጣም ሀሪፍ ደስስስስስ የሚል	5	2022-01-05	Google Play	NEGATIVE	0.8616330027580261	Other
4328	1	Perfect .	5	2022-01-04	Google Play	POSITIVE	0.99985671043396	Other
4329	1	Good, only attachement download is not working	4	2022-01-04	Google Play	NEGATIVE	0.9707416892051696	Other
4330	1	Great App. I wonder why do I need CBE Birr when this app works pretty good and exceedingly convenient. There were bugs but it seems like they are now addressed.	4	2022-01-04	Google Play	POSITIVE	0.8643096089363098	Reliability
4331	1	Isn't there an IT professional in Ethiopia who can solve the problem of downloading the app? it's been 3 days since I've been trying to download the app. You're losing business, big time. I am so disappointed I don't even have words to express how frustrated I am. Please fix it.	1	2022-01-02	Google Play	NEGATIVE	0.9997010231018066	Transaction Performance
4332	1	Good system	4	2022-01-01	Google Play	POSITIVE	0.9998434782028198	Other
4333	1	This app best of the best	5	2021-12-31	Google Play	POSITIVE	0.9995429515838624	Other
4334	1	It was working good from ET and outside the country but after recent update. No more working!	2	2021-12-30	Google Play	NEGATIVE	0.9946228265762328	Other
4335	1	Nice to see more transactions BUT if u have lots of transaction it lags and becomes slow. May be an option to limit the transaction history to a reasonable amount or by date so it doesnt load all data.	5	2021-12-29	Google Play	NEGATIVE	0.9988582134246826	Transaction Performance
4336	1	Wowww, With my own mistake i was saying it works only Werkamaw Bank. But now i got real point and it works for me also Finfine Bank. I am so happy. I am doing any thing what i want very easly from out of Ethiopia. simply it is really Fantastic very usefull. Thanks our CBE Banking system	5	2021-12-27	Google Play	POSITIVE	0.9998130202293396	Other
4337	1	So Far so Good. Needs work on showing better transaction history.	5	2021-12-25	Google Play	POSITIVE	0.8696416616439819	Transaction Performance
4338	1	It's a good app but I have two suggestions. It would be nice if it had an option to change between our own accounts. The option for downloading and sharing transactions that we have made does not work	4	2021-12-24	Google Play	NEGATIVE	0.9990193843841552	Transaction Performance
4339	1	Good user experience. Your backbend requires more work in terms of availability though.	5	2021-12-24	Google Play	POSITIVE	0.6399291157722473	User Interface
4340	1	Very useful and easy to use.	5	2021-12-22	Google Play	POSITIVE	0.9998332262039183	Other
4341	1	It is best to make your financial activities .and please do your best again .	5	2021-12-22	Google Play	POSITIVE	0.9775598049163818	Other
4342	1	It is very simple to use and have almost all kinda online services. Am very satisfied with this app.	5	2021-12-21	Google Play	POSITIVE	0.9984955787658693	Other
4343	1	It has improved much since I reviewed last time.	4	2021-12-20	Google Play	POSITIVE	0.9997887015342712	Other
4344	1	Very best app thanks CBE	5	2021-12-19	Google Play	POSITIVE	0.9997716546058656	Other
4345	1	The app is working despite limited connectivity. I tried it from USA and satisfied. Keep it up to remain in the fierce competition!	4	2021-12-19	Google Play	POSITIVE	0.9957017302513124	Other
4346	1	It will be good to show the balance rather than only showing recent transaction.	1	2021-12-19	Google Play	POSITIVE	0.9986333250999452	Transaction Performance
4347	1	የሚተማመኑበት ባንክ ወረፋ ዜሮ አድርጉ 951 የጥሪ ማዕከላችሁን ለማግኘት በፀሎትም አይሆንም	5	2021-12-18	Google Play	NEGATIVE	0.9310958981513976	Other
4348	1	Useful	5	2021-12-18	Google Play	POSITIVE	0.9997634291648864	Other
4350	1	ምርጥ መተግበሪያ ነው ፣ ብዙ ነገር ነው ሚያቀለው። እንደ ቴሌ እና መብራት ኃይል ወርኃዊ የአገልግሎት ክፍያ ስንከፍል ሒሳብ ከሌለብን 0.0 ቢያሳይ ጥሩ ነበር።	5	2021-12-17	Google Play	NEGATIVE	0.9694609642028807	Other
4351	1	Excellence	5	2021-12-15	Google Play	POSITIVE	0.999836564064026	Other
4352	1	Great app, it like bank on my hand	5	2021-12-15	Google Play	POSITIVE	0.9996848106384276	Other
4353	1	it is nice app,but it must have an option to add an other cbe account for multi account users	5	2021-12-14	Google Play	NEGATIVE	0.9085894227027892	Other
4354	1	Nice app well done	5	2021-12-14	Google Play	POSITIVE	0.9998270869255066	Other
4355	1	Good app.	4	2021-12-13	Google Play	POSITIVE	0.9998503923416138	Other
4356	1	This is very good app 👏 👌 👍	5	2021-12-13	Google Play	POSITIVE	0.9998095631599426	Other
4357	1	It's a very good and helpful mobile banking app when compared with other local banking apps. Thank you!	5	2021-12-12	Google Play	POSITIVE	0.9998701810836792	Customer Support
4358	1	ever good	5	2021-12-11	Google Play	POSITIVE	0.9998745918273926	Other
4359	1	Unable to connect, pls. Improve the system	5	2021-12-11	Google Play	NEGATIVE	0.9995279312133788	Other
4360	1	Good application but you have to incorporate Paperless bank statement obtaining method and should abolish going to the branch whenever changing a new device and new number for activation.	4	2021-12-07	Google Play	NEGATIVE	0.9957181811332704	Other
4361	1	Transfer to another bank is working just it shows error	1	2021-12-05	Google Play	NEGATIVE	0.9995777010917664	Transaction Performance;Reliability
4362	1	Better than all banks apps good work CBE	5	2021-12-04	Google Play	POSITIVE	0.999578058719635	Other
4363	1	Doesn't work. Horrible.	1	2021-12-03	Google Play	NEGATIVE	0.9997959733009338	Other
4364	1	Clear and very easy	5	2021-12-02	Google Play	POSITIVE	0.9998263716697692	Other
4365	1	Transfering meny	5	2021-12-02	Google Play	POSITIVE	0.9406796097755432	Transaction Performance
4366	1	The worst app.... Made me think I was robbed. Please fix or make an update	1	2021-12-01	Google Play	NEGATIVE	0.9998021721839904	Other
4367	1	Rate	5	2021-11-30	Google Play	POSITIVE	0.9813971519470216	Other
4368	1	Soulihe.ali	5	2021-11-29	Google Play	POSITIVE	0.9397828578948976	Other
4369	1	Very Good to use	5	2021-11-29	Google Play	POSITIVE	0.999869465827942	Other
4370	1	Not working properly	2	2021-11-25	Google Play	NEGATIVE	0.999784767627716	Other
4371	1	It's just fine	2	2021-11-25	Google Play	POSITIVE	0.9998652935028076	Other
4372	1	Fresh	5	2021-11-24	Google Play	POSITIVE	0.9998635053634644	Other
4373	1	It is amazing app no more comment	5	2021-11-24	Google Play	POSITIVE	0.9996471405029296	Other
4374	1	Its not working on my mobile	1	2021-11-23	Google Play	NEGATIVE	0.9993883371353148	Other
4375	1	Best app. I love the simplicity. Keep up the good job.	5	2021-11-22	Google Play	POSITIVE	0.9998726844787598	Other
4376	1	Veri nic	5	2021-11-21	Google Play	POSITIVE	0.982702374458313	Other
4377	1	Easy to use but can not update it?	5	2021-11-21	Google Play	NEGATIVE	0.9976518750190736	Other
4378	1	I think it's best for us..for the biggest transaction banks..but update it and modernizing throughout technologies.	4	2021-11-20	Google Play	POSITIVE	0.9739791750907898	Transaction Performance
4379	1	5000.000000dawnelode	5	2021-11-19	Google Play	NEGATIVE	0.9913657903671264	Other
4380	1	When the connection is good the app also very good	4	2021-11-19	Google Play	POSITIVE	0.9997557997703552	Other
4381	1	It has been improved tremendosly. I am now comfortable to use it anytime I want. Good job CBE team.	5	2021-11-18	Google Play	POSITIVE	0.9995273351669312	Other
4382	1	It is best app it remove waste of time.	1	2021-11-16	Google Play	NEGATIVE	0.9981326460838318	Other
4383	1	Fast and secure service, exchange money everywhere	5	2021-11-15	Google Play	POSITIVE	0.9919558763504028	Other
4384	1	Its nice app more easy to use it. It shown only Recent history transaction. Please all transaction history.To summarize my transaction with reason. And add traffic penality button. Generally its nice app	5	2021-11-13	Google Play	POSITIVE	0.990934669971466	Transaction Performance
4385	1	It's not showing the second account and takes long on loading	2	2021-11-12	Google Play	NEGATIVE	0.9996131062507628	Transaction Performance
4386	1	V.nice	5	2021-11-12	Google Play	POSITIVE	0.9973741769790648	Other
4387	1	ፀዴ አፕ	5	2021-11-10	Google Play	NEGATIVE	0.7850590348243713	Other
4388	1	Wow cbe	5	2021-11-09	Google Play	POSITIVE	0.9987693428993224	Other
4389	1	Yes very good to be with	5	2021-11-08	Google Play	POSITIVE	0.9998654127120972	Other
4390	1	Great app, fast transactions and seemless experience.	5	2021-11-08	Google Play	POSITIVE	0.9790658950805664	Transaction Performance
4391	1	ብዙው ነገሩ ጥሩ ነው። ካየኇቸው ችግሮች መካከል አፕሊኬሽኑ ተዘግቶ ከተወጣ በኇላ ሌላ ነገር ሌላ ቦታ እየተጠቀምን እያለ የን.ባ አፕሊኬሽን ድንገት ራሱ በጣልቃ መጥቶ ፓስወርድ ማስገቢያውን ቦታ ያቀርባል። ሌላው ነገር ፤ የተደረገ የገንዘብ እንቅስቃሴን ለማሳየት መዘግየት ነው። ይሄኛው የባንኩ ሲስተም ችግር ይሁን የአፕሊኬሽኑ ግን አላውቅም።	4	2021-11-07	Google Play	NEGATIVE	0.9657654762268066	Other
4392	1	Best app from all Ethiopia banks	5	2021-11-07	Google Play	POSITIVE	0.9996637105941772	Other
4393	1	Its a nice app and banking services. I have two questions&/ suggestions, why the beneficiary lists are sometimes not available/ not working? It will better if you allowed to see more than one page transaction statement.	4	2021-11-06	Google Play	NEGATIVE	0.9433919191360474	Transaction Performance
4394	1	Very nice app, it makes my financial work so easy but i have one problem, that is the app RELAUNCHES itself after I closed it. if you guys could get rid of this it would be a lot better. Thanks!	4	2021-11-05	Google Play	POSITIVE	0.9190500378608704	Other
4395	1	Love it, keep up my country	5	2021-11-05	Google Play	POSITIVE	0.9998713731765748	Other
4396	1	I love it.it makes payment easier for me.as i don't like going to banks and wait and waste my time,i found this app very helpful and important . 5⭐	5	2021-11-05	Google Play	POSITIVE	0.9994882345199584	Transaction Performance;Customer Support
4397	1	It's very nice to use this app and no reason to be on the line.	5	2021-11-04	Google Play	NEGATIVE	0.9927834272384644	Other
4398	1	ከፍተኛ እግልትን የሚቀንስ አፖ ነው good app	5	2021-11-04	Google Play	POSITIVE	0.9990843534469604	Other
4399	1	Very convenient to sign in and out as well as mobile service is perfect.	5	2021-11-03	Google Play	POSITIVE	0.9996869564056396	Other
4400	1	Commercial Bank of Ethipia	5	2021-11-02	Google Play	POSITIVE	0.767291247844696	Other
4401	1	Good but I couldn't receive verification key	5	2021-11-01	Google Play	NEGATIVE	0.9312185049057008	Other
4402	1	The app is designed well however some actions require assistance and when I called ur bank for assistance, I guess no one cares enough to answer	1	2021-11-01	Google Play	NEGATIVE	0.9808244705200196	User Interface
4403	1	951 call center was not unable to answer the call idlee guys.... My cbe application was stoped working the last 2weeks....please give us the reason	3	2021-11-01	Google Play	NEGATIVE	0.9995434880256652	Other
4404	1	Its cool	5	2021-10-31	Google Play	POSITIVE	0.9998533725738524	Other
4405	1	The best app in Ethiopia	5	2021-10-30	Google Play	POSITIVE	0.9997978806495668	Other
4406	1	Very simple and easy to use I loved it	5	2021-10-29	Google Play	POSITIVE	0.9998583793640136	Other
4407	1	Very easy to use	5	2021-10-29	Google Play	POSITIVE	0.999142289161682	Other
4408	1	BEST !	5	2021-10-27	Google Play	POSITIVE	0.9998348951339722	Other
4409	1	Its really fantastic	5	2021-10-27	Google Play	POSITIVE	0.999874234199524	Other
4410	1	Can not check my account! All I see is a blank screen! What is the problem?It is not user friendĺy!I will have to take my money & try other banķs.This is a waste of time!!!	1	2021-10-27	Google Play	NEGATIVE	0.9998151659965516	Other
4411	1	Finely tuned	5	2021-10-26	Google Play	POSITIVE	0.9998664855957032	Other
4412	1	Good God my business	5	2021-10-25	Google Play	POSITIVE	0.9983428716659546	Other
4413	1	Transcation information available only for a very short period of time. Unstable when used for two accounts. It sometimes doesn't show me my second account.	2	2021-10-24	Google Play	NEGATIVE	0.998755931854248	Other
4414	1	Great App👍	5	2021-10-23	Google Play	POSITIVE	0.9997692704200744	Other
4415	1	So easy and clear to use the app	5	2021-10-22	Google Play	POSITIVE	0.9967843294143676	Other
4416	1	Very useful, but Please add daily foreign exchange rate. Thank you.	5	2021-10-21	Google Play	POSITIVE	0.9996483325958252	Other
4417	1	Great, please include bank statement options.	5	2021-10-21	Google Play	POSITIVE	0.9997798800468444	Other
4418	1	best app keep the update for new features	4	2021-10-21	Google Play	POSITIVE	0.998214840888977	Other
4419	1	The bank always rely on CBE.	5	2021-10-18	Google Play	POSITIVE	0.8127685785293579	Other
4420	1	Baga nagayan asiin nuu ga'e	1	2021-10-17	Google Play	NEGATIVE	0.9700130820274352	Other
4421	1	Ilike this app because it is fast and easy	5	2021-10-16	Google Play	POSITIVE	0.9979273080825806	Other
4422	1	Best app It's user friendly	5	2021-10-16	Google Play	POSITIVE	0.9994657635688782	User Interface
4423	1	SAMSUNG Galaxy A21s	5	2021-10-15	Google Play	POSITIVE	0.8098438382148743	Other
4424	1	It is a good app but sometimes very poor and i hate your rules about transfering birr only 5 times a week... We have more than 5 problem per week and it is shamefull.	3	2021-10-15	Google Play	NEGATIVE	0.9970398545265198	Transaction Performance
4425	1	Nice app but sometimes it deduct two times when i recharge mobile card and Dstv payment	5	2021-10-15	Google Play	NEGATIVE	0.979146122932434	Transaction Performance
4426	1	Easy and fast but some time it show us error but the trasaction is alrady sent and the error mislead us and we do the trx again. This affect our acount twice	5	2021-10-15	Google Play	NEGATIVE	0.99353289604187	Reliability
4427	1	Very slow and worst doesn't work good 🙃	1	2021-10-14	Google Play	NEGATIVE	0.9998074173927308	Transaction Performance
4428	1	What a nice and simple app 😊	5	2021-10-14	Google Play	POSITIVE	0.9997171759605408	Other
4429	1	Very unsafe! The password is stored in the phone, which is very unsafe. And once you entered the password, there is no timeout nor ask for password while making transaction. Therefore, if you have stolen your phone, you may end-up loosing your money	1	2021-10-13	Google Play	NEGATIVE	0.9991058707237244	Account Access Issues;Transaction Performance
4430	1	በሚፈለገው ፍጥነትና ጥራት ለመጠቀም የኔትወርክ ወይም የዳታ ዉስንነት አለበት ይህ ችግር ቢቀረፍ እላለሁኝ በተረፈ ምርጥ አፕ ነው በርቱልን።	4	2021-10-13	Google Play	NEGATIVE	0.9595013856887816	Other
4431	1	Thak you for your support specaliy who is leaving on bord. Easy access and outstanding. I would like ro sujest all who was leving on bord like me use this up. Blessings,	5	2021-10-12	Google Play	POSITIVE	0.9997259974479676	Account Access Issues;Customer Support
4432	1	No working perfectly	1	2021-10-11	Google Play	NEGATIVE	0.9996792078018188	Other
4433	1	The application is good but sometimes it doesn't respond my issues ie: Transfer,. In addition to this the application don't show my balance instade it only shows transaction history. If possible it's better if z app were able to show z exact balance sheet and fix a problem of not responding, if so I will rate z app ***** by adding z remaining 2 ** 10 Q.	3	2021-10-11	Google Play	NEGATIVE	0.9942299127578736	Transaction Performance
4434	1	Great app but it would be nice if it allow cardless transaction On ATM like abyssinya bank has on its mobile app.	4	2021-10-10	Google Play	NEGATIVE	0.972039520740509	Transaction Performance
4435	1	I wrote that 15 days ago i think. It's better now for the most part. Also please stop showing toasts! There is no way to stop it from showing repeatedly	5	2021-10-09	Google Play	NEGATIVE	0.9975467324256896	Other
4436	1	Interbank transaction is not functional.	3	2021-10-08	Google Play	NEGATIVE	0.9997681975364684	Transaction Performance
4437	1	I love 💕 it's easy and fast	5	2021-10-08	Google Play	POSITIVE	0.9997997879981996	Other
4438	1	Good work at all	5	2021-10-07	Google Play	POSITIVE	0.999854564666748	Other
4439	1	Very nice app 👌	5	2021-10-06	Google Play	POSITIVE	0.9998155236244202	Other
4440	1	So simplified and easy to use. I suggest you all to download and use it ASAP.	5	2021-10-06	Google Play	POSITIVE	0.9214041233062744	Other
4441	1	I looke best application to work in the future	2	2021-10-05	Google Play	POSITIVE	0.992123544216156	Other
4442	1	Can you update please..the utility service does not work	3	2021-09-30	Google Play	NEGATIVE	0.99979168176651	Other
4443	1	What is the verification code ? And how to get it? why?	4	2021-09-30	Google Play	NEGATIVE	0.9994035959243774	Other
4444	1	That so nice	5	2021-09-28	Google Play	POSITIVE	0.99985933303833	Other
4445	1	I like it very much..is secured and easy to use..we can easily make a transaction with accounts of the same bank..	4	2021-09-28	Google Play	POSITIVE	0.999732792377472	Transaction Performance
4446	1	Enable to read my accounts fast	5	2021-09-27	Google Play	POSITIVE	0.9971234202384948	Other
4447	1	I love this app. It's simple to use and syncs fast. The only issue I had was the balance shows only what's on the ledger, there is no way to tell what the actual balance is. I learn about the difference between the two balance types the hard way on an ATM machine. I would love to see that fixed in your next update.	5	2021-09-25	Google Play	POSITIVE	0.9968239068984984	Other
4448	1	Very nice app but please incorporate exchange rate and ATM locater	4	2021-09-23	Google Play	POSITIVE	0.9677081108093262	Other
4449	1	very well apps thanks	5	2021-09-22	Google Play	POSITIVE	0.9998468160629272	Other
4450	1	It is good app before but now it's not working properly	2	2021-09-21	Google Play	NEGATIVE	0.9987711310386658	Other
4451	1	I am trying to use now	5	2021-09-21	Google Play	NEGATIVE	0.9878836274147034	Other
4452	1	It is a a much better App than other Private Banks. But you have to include the following options; 1. The Bank Statement should be Unlimited. It should allow to see all Transactions by Tracing Back. No Need to Limit it with only one Page Transaction (May be 10Page). 2. You have to Work on transferring Money to other Banks too. You can ask additional payment for it. But the Service will be Essential for Us.	5	2021-09-21	Google Play	POSITIVE	0.9583486914634703	Transaction Performance
4453	1	biutyfull	5	2021-09-17	Google Play	NEGATIVE	0.9593095183372498	Other
4454	1	Chaking	5	2021-09-16	Google Play	NEGATIVE	0.9570676684379578	Other
4455	1	Keep it up	5	2021-09-16	Google Play	POSITIVE	0.9998098015785216	Other
4456	1	It's fast and reliable. You can make transaction from anywhere in the world.	5	2021-09-16	Google Play	POSITIVE	0.9997475743293762	Transaction Performance
4457	1	It's very nice more better from this .	5	2021-09-15	Google Play	POSITIVE	0.9985658526420592	Other
4458	1	Its god	5	2021-09-15	Google Play	POSITIVE	0.9914584755897522	Other
4459	1	It works very well. I have two issues though 1/ it is not possible to transfer accounts in other Banks. 2/ the exoress money sending function dies not work as neither the recipient nor the sender get the secret number but the money will alrwady be sent. I had to go throgh a very lengthy process to get the money back with the transfer fee already deducted. In the end I lost three days plus the transfer fee for teying to send money fast. Other than these issues it does the rest of the job well.	3	2021-09-15	Google Play	NEGATIVE	0.9870928525924684	Transaction Performance
4460	1	The app doesn't have more option. I expected more and convinient features than other local banks mobile app however i found it poor. Pls add option where clients can check statment back dated, ....etc u need to advace the security like disabling screen shots from mobile device. I recommend you to bench mark Wells Fargo app.	1	2021-09-14	Google Play	NEGATIVE	0.9989804625511168	Other
4461	1	Good But Not perfect	4	2021-09-14	Google Play	NEUTRAL	0.5	Other
4462	1	By far the most crucial and progressivly growing financial app. Keep up the good work.from an end user stand point It would also make sense to include push notification for each transaction as well.	4	2021-09-13	Google Play	POSITIVE	0.9991058707237244	Transaction Performance
4463	1	Keep good work	5	2021-09-12	Google Play	POSITIVE	0.9998666048049928	Other
4464	1	Hanna umukunzi	1	2021-09-11	Google Play	POSITIVE	0.68626868724823	Other
4465	1	Nice and smooth to use.	5	2021-09-10	Google Play	POSITIVE	0.999864935874939	Other
4466	1	እጅግ በጣም ጥሩ አፕሊኬሽን ነው	5	2021-09-10	Google Play	NEGATIVE	0.8832130432128906	Other
4467	1	Not able to get transaction list, it has very few options from what other Banks mobile app offer. It needs improvement.	2	2021-09-10	Google Play	NEGATIVE	0.9995711445808412	Transaction Performance
4468	1	Frequent responce	5	2021-09-10	Google Play	NEGATIVE	0.9510806202888488	Other
4469	1	Just Wow!	5	2021-09-08	Google Play	POSITIVE	0.999786913394928	Other
4470	1	Root betederege mobile lay ayseram	3	2021-09-07	Google Play	NEGATIVE	0.9984822869300842	Other
4471	1	Good. Saves time!	5	2021-09-07	Google Play	POSITIVE	0.9998332262039183	Other
4472	1	Easy, versatile and secure financial transaction mobile app in Ethiopia.	5	2021-09-07	Google Play	POSITIVE	0.9992190599441528	Transaction Performance
4473	1	Its very slow annoying	1	2021-09-07	Google Play	NEGATIVE	0.9997945427894592	Transaction Performance
4474	1	Mustafe shide	5	2021-09-07	Google Play	POSITIVE	0.986116588115692	Other
4475	1	I am spending too much time because it gets stuck frequently. I would rather go to pay at the bank than waste my time with this app. Bad app	1	2021-09-03	Google Play	NEGATIVE	0.9998019337654114	Other
4476	1	Can developers present options to see transactions details like locations ( city ) or CBE branches where transactions are initiated or identity who wired transfers rather than simple generic term "transfer" ? This option helps to track cash in flows without going to nearby CBE branch to learn details of a transaction. Apart from this, the app is great and make life easy.	4	2021-09-03	Google Play	POSITIVE	0.9991087317466736	Transaction Performance;Customer Support
4477	1	Unable to save transaction message Please solve asap	4	2021-09-03	Google Play	NEGATIVE	0.9995225667953492	Transaction Performance
4478	1	when are you going to change the CBE Logo	3	2021-09-02	Google Play	NEGATIVE	0.9942418336868286	Other
4479	1	Echange rate is not added and all recoginzed banks not included in bank to bank transfer	4	2021-09-01	Google Play	NEGATIVE	0.9987419247627258	Transaction Performance
4480	1	በጣም አሪፍ መተግበሪያ ነው👏👏👏	5	2021-09-01	Google Play	NEGATIVE	0.8616330027580261	Other
4481	1	The best and active app ever	5	2021-08-31	Google Play	POSITIVE	0.9998562335968018	Other
4482	1	Best, application for use and time saving	5	2021-08-31	Google Play	POSITIVE	0.9982130527496338	Other
4483	1	Is best app in ethiopia there is avaliable for next time	1	2021-08-31	Google Play	POSITIVE	0.9978195428848268	Other
4484	1	Easily manege the money	4	2021-08-31	Google Play	POSITIVE	0.997051239013672	Other
4485	1	Nice app it's help life runs easly and facilititet busines fast	5	2021-08-31	Google Play	POSITIVE	0.9902742505073548	Customer Support
4486	1	fast & perfect with a good new feuture. thanks & keep it up🙏	5	2021-08-30	Google Play	POSITIVE	0.9998867511749268	Other
4487	1	Why it's not found on App Gallery for Huawei users?	2	2021-08-27	Google Play	NEGATIVE	0.9995107650756836	Other
4488	1	Poor update, not exactly show the figure on the time!!	1	2021-08-27	Google Play	NEGATIVE	0.9997978806495668	Other
4489	1	I couldn't synchronize my current balance.	3	2021-08-26	Google Play	NEGATIVE	0.9996457099914552	Other
4490	1	Best mobile banking	5	2021-08-26	Google Play	POSITIVE	0.9997305274009703	Other
4491	1	Freindly app, suitable for many clients.sometimes, synchronization would not be possibe.	3	2021-08-26	Google Play	NEGATIVE	0.9795477390289308	User Interface
4492	1	Fast ,best and saves time.	5	2021-08-25	Google Play	POSITIVE	0.999777615070343	Other
4493	1	Perfect & Reliable Service	5	2021-08-25	Google Play	POSITIVE	0.9998666048049928	Other
4494	1	Couldn't see any thing.even i can't see my balance.	1	2021-08-25	Google Play	NEGATIVE	0.99883371591568	Other
4495	1	Very Interesting	5	2021-08-24	Google Play	POSITIVE	0.999863862991333	Other
4496	1	Very user friendly App	5	2021-08-24	Google Play	POSITIVE	0.996707558631897	User Interface
4497	1	This one is better than the previous versions. But am unable to send to benficiaries, it was working on the previous versions. While working on the other features please work on this failure too. Thank u!	4	2021-08-24	Google Play	NEGATIVE	0.9966689944267272	Other
4498	1	Was so nice, days ago. But since last week I couldn't transfer and use it, properly. Would you forwarded me any option, please ? Thank you!	2	2021-08-23	Google Play	POSITIVE	0.8652455806732178	Transaction Performance
4499	1	Please add the ability to view all transaction history, and pressing back on sub pages should not display logout confirmation. Plus, self registration should be a thing	3	2021-08-21	Google Play	NEGATIVE	0.993638813495636	Transaction Performance
4500	1	Exceptionally super boring to use.	1	2021-08-20	Google Play	NEGATIVE	0.9996790885925292	Other
4501	1	As much as possible good job save and share of transaction not work yet.	4	2021-08-20	Google Play	NEGATIVE	0.9660605192184448	Transaction Performance
4502	1	It's Child apps Design	1	2021-08-19	Google Play	NEGATIVE	0.9546896815299988	User Interface
4503	1	100% perfect number one chosen bank	5	2021-08-19	Google Play	POSITIVE	0.9998332262039183	Other
4504	1	Seet	1	2021-08-19	Google Play	POSITIVE	0.9986395239830016	Other
4505	1	Horrible can't sync my account	1	2021-08-18	Google Play	NEGATIVE	0.9996353387832642	Other
4506	1	It's amazing app easy to use	5	2021-08-18	Google Play	POSITIVE	0.9998030066490172	Other
4507	1	Esay	1	2021-08-18	Google Play	POSITIVE	0.9963625073432922	Other
4508	1	this app is not functional for some phones	1	2021-08-17	Google Play	NEGATIVE	0.9996984004974364	Other
4509	1	This app is not compatible for Samsung not	5	2021-08-17	Google Play	NEGATIVE	0.999714195728302	Other
4510	1	Not working at all!	1	2021-08-16	Google Play	NEGATIVE	0.9997861981391908	Other
4511	1	How can I get verification Code lol🤔?	3	2021-08-16	Google Play	NEGATIVE	0.9991008043289183	Other
4512	1	Very efficient, good, very good	5	2021-08-14	Google Play	POSITIVE	0.99987530708313	Other
4513	1	I meed updated	5	2021-08-14	Google Play	POSITIVE	0.9432913661003112	Other
4514	1	The last update is not working properly, please fix the bug fast	2	2021-08-13	Google Play	NEGATIVE	0.9997782111167908	Reliability
4515	1	I uninstalled the app but Now I can't download it	1	2021-08-12	Google Play	NEGATIVE	0.9936490654945374	Other
4516	1	Good app...It would be good if Summary of transactions also incorporated .	4	2021-08-12	Google Play	POSITIVE	0.9988237023353576	Transaction Performance
4517	1	Genet zewde77@yahoo .come	1	2021-08-11	Google Play	NEGATIVE	0.964835524559021	Other
4518	1	Doesn't work for Samsung A30s!	1	2021-08-11	Google Play	NEGATIVE	0.9992050528526306	Other
4519	1	very limited option we could see the previous transactions.	2	2021-08-09	Google Play	NEGATIVE	0.9986044764518738	Transaction Performance
4520	1	i'm happy this cbe service	5	2021-08-09	Google Play	POSITIVE	0.9998464584350586	Other
4521	1	Ir is nice try it	5	2021-08-08	Google Play	POSITIVE	0.9991763234138488	Other
4522	1	How it can be explained for those mass customer's	5	2021-08-07	Google Play	POSITIVE	0.968008279800415	Other
4523	1	Good Interface and user frendly app great work cbe👍🏻	4	2021-08-05	Google Play	POSITIVE	0.9996709823608398	User Interface
4524	1	It is not functional after installing error message says "this device is rooted.you can't use this app." i think it is not compatible for android 10	2	2021-08-04	Google Play	NEGATIVE	0.9995784163475036	Reliability
4525	1	App's literally broken after the last update. The new interface was great but unusable. I sent E-mail to to Dev. team but no response or acknowledgment of the issue so far. Please resolve it ASAP.	1	2021-08-03	Google Play	NEGATIVE	0.9990302324295044	User Interface;Customer Support
4526	1	Good job, but sometimes even with good connection it can't sync.	3	2021-08-02	Google Play	NEGATIVE	0.9830387830734252	Other
4527	1	This is a very good app that every customer should be able to be a bank for him/her self👍👍	5	2021-07-30	Google Play	POSITIVE	0.9996659755706788	Other
4528	1	አማርኛ ምርጫ ላይ እንግሊዘኛ ቃላት ምን ማለት ነው? አሁን ወራቶች መጠረያ ቃል የለንምና ነው ? ያለንን በትክክል ተጠቀሙበት ቋንቋ መግባቢያ እንጂ እውቀት አይደለም!! ስለዚህ አትቀላቅሉ? ሬት አፕ ምን ማለት ነው? ሁለተኛው አስተያየት ያለኝ መተግበርያው ብዙ የሚጎድሉት ነገሮች አሉት። ምሳሌ የሚስጥር ቁጥር አገባቡ ቀላል ነው። ብር ማስተላለፍ ድጋሚ የተለየ ቁጥርና ቢኖረውና ይህም ተቀያያሪ ቢሆን ብዙ አለ ። ለማንኛውም እስኪ አንድ የኮርያ ባንክ ልጠቁምና እዩት። keb hana bank ከዚህ ብዙ ትማራላችው ብዬ አስባለው።	2	2021-07-30	Google Play	NEGATIVE	0.9802010655403136	Other
4529	1	Very convenient, easy to use. The only reason that made me be a CBE customer.	5	2021-07-30	Google Play	NEGATIVE	0.9978237152099608	Other
4530	1	በጣም ቆንጆ አፕ ነው	5	2021-07-29	Google Play	NEGATIVE	0.8616330027580261	Other
4531	1	This is very helpful and functional app. Recently I am facing issues on transfer to other banks. Please address it	5	2021-07-27	Google Play	POSITIVE	0.99876070022583	Transaction Performance;Customer Support
4532	1	Good app but sometimes its down	3	2021-07-25	Google Play	NEGATIVE	0.9574103951454164	Other
4533	1	Awesome app keep up the good work 👏	5	2021-07-22	Google Play	POSITIVE	0.9998750686645508	Other
4534	1	Best of the best	4	2021-07-19	Google Play	POSITIVE	0.9998401403427124	Other
4535	1	this is best but add traffic fine app.	4	2021-07-17	Google Play	POSITIVE	0.9989206790924072	Other
4536	1	The application makes my day to day activities very easy and comfotable.	5	2021-07-17	Google Play	POSITIVE	0.9859604835510254	Other
4537	1	My country big bank	5	2021-07-16	Google Play	POSITIVE	0.9820246696472168	Other
4538	1	ለአጠቃቀም ምቹ እና ግልፅ አፕልኬሽን ነው። ከኤቲኤም ሲስተም እጅጉን ይሻላል።	4	2021-07-16	Google Play	NEGATIVE	0.9489793181419371	Other
4539	1	Arif New Temechtognal	5	2021-07-15	Google Play	NEGATIVE	0.8881316781044006	Other
4540	1	It's good, but why have a limit of 5 on weekly transfer.	4	2021-07-15	Google Play	POSITIVE	0.7221133708953857	Transaction Performance
4541	1	It isMore comfortable application!	1	2021-07-14	Google Play	POSITIVE	0.99938702583313	Other
4542	1	Great app for an Ethiopian perspective	5	2021-07-13	Google Play	POSITIVE	0.999599039554596	Other
4543	1	The best app for banking	5	2021-07-12	Google Play	POSITIVE	0.999771535396576	Other
4544	1	Not functional our mobile	1	2021-07-12	Google Play	NEGATIVE	0.9997795224189758	Other
4595	1	Best app but if you add more than ten transaction it will be better	3	2021-06-07	Google Play	NEGATIVE	0.9484383463859558	Transaction Performance
4545	1	Starting from the past two weeks, it is not working properly. Did you release any update? If not please investigate the problem and solve it.	3	2021-07-11	Google Play	NEGATIVE	0.9997326731681824	Other
4546	1	Simple and user friendly. Thanks it is very helpful.	5	2021-07-10	Google Play	POSITIVE	0.9998093247413636	User Interface;Customer Support
4547	1	It is very great and helpful app. Easy and helps to save time alot	5	2021-07-09	Google Play	POSITIVE	0.9997001886367798	Customer Support
4548	1	Good cbe app	5	2021-07-08	Google Play	POSITIVE	0.9994891881942748	Other
4549	1	It's nice app...!	5	2021-07-08	Google Play	POSITIVE	0.99985671043396	Other
4550	1	It does not work properly	1	2021-07-07	Google Play	NEGATIVE	0.9997746348381042	Other
4551	1	ተመችቶኛል	1	2021-07-07	Google Play	NEGATIVE	0.697056770324707	Other
4552	1	So gooood!! Keep Going	4	2021-07-06	Google Play	NEGATIVE	0.8874844908714294	Other
4553	1	wow nice app thanks	5	2021-06-30	Google Play	POSITIVE	0.9998430013656616	Other
4554	1	Great GUI, easy to use and convenience.	5	2021-06-29	Google Play	POSITIVE	0.9993645548820496	User Interface
4555	1	CBE, please fix this app or you'll be left behind. Considering this was one of the first banking apps in Ethiopia, most bugs should have been fixed by now. But bugs still abound. It worked from outside Ethiopia but not for long. I haven't been able to use it (from outside Ethiopia) for the past 4 weeks. No updates visible. Nothing against the country that I dearly love. But this app is the one-eyed version as far as banking apps go. You know... a one-eyed man is a king...	3	2021-06-28	Google Play	NEGATIVE	0.996508777141571	Reliability
4556	1	It reduces life hassling.	1	2021-06-28	Google Play	NEGATIVE	0.9989944100379944	Other
4557	1	Comfortable and easiest app	5	2021-06-27	Google Play	POSITIVE	0.9998262524604796	Other
4558	1	Bad...very Bad..taboo .. Need an education	1	2021-06-27	Google Play	NEGATIVE	0.9997575879096984	Other
4559	1	It works only on WiFi	2	2021-06-27	Google Play	NEGATIVE	0.9948703050613404	Other
4560	1	win	5	2021-06-26	Google Play	POSITIVE	0.9997997879981996	Other
4561	1	Very good app. Thanks	5	2021-06-26	Google Play	POSITIVE	0.999863862991333	Other
4562	1	So far soooo good 👍	5	2021-06-25	Google Play	POSITIVE	0.9996744394302368	Other
4563	1	No account balance shown	2	2021-06-25	Google Play	NEGATIVE	0.9992691874504088	Other
4564	1	WOW I am so impressed using this App. It is simple to use and helps digital money transaction.	5	2021-06-24	Google Play	POSITIVE	0.999526023864746	Transaction Performance;Customer Support
4565	1	My phone is not rooted however the app claims that it is. Please fix this bug. Whoever wrote the verification for a rooted OS please please please revisit your code.	1	2021-06-24	Google Play	NEGATIVE	0.991236925125122	Reliability
4566	1	It makes life easy everything is there you are expected only to download this app and use it a bank you can always relay	5	2021-06-24	Google Play	POSITIVE	0.9709317088127136	Other
4567	1	Excellent app! Like it. It's user friendly. And the last updated is also good for adding some privacy.	5	2021-06-21	Google Play	POSITIVE	0.999739110469818	User Interface
4568	1	Well improved	5	2021-06-21	Google Play	POSITIVE	0.9998574256896972	Other
4569	1	በጣም ተመችቶኛል ሂወቴ ፈጣን አረገልኝ	4	2021-06-20	Google Play	NEGATIVE	0.8832130432128906	Other
4570	1	What does it mean can't sync	4	2021-06-20	Google Play	NEGATIVE	0.9994314312934875	Other
4571	1	I realy hate this app it simply keep on saying that your device is rooted you can't use this ap when my device is not rooted so you better consult an android developer✌️ so one star is too much....	1	2021-06-19	Google Play	NEGATIVE	0.9992941617965698	Other
4572	1	Best option for Any CBE account services I have seen yet.	5	2021-06-19	Google Play	POSITIVE	0.985259175300598	Other
4573	1	It's mostly unable to connect to the Internet, very frustrating	1	2021-06-18	Google Play	NEGATIVE	0.9998120665550232	Other
4574	1	ameloayele@g email	1	2021-06-17	Google Play	NEGATIVE	0.9780842661857604	Other
4575	1	useful update but at the moment its not easy to download or update and that means we can't use the the app at the moment	3	2021-06-17	Google Play	NEGATIVE	0.9983192086219788	Other
4576	1	Only works when it wants!	1	2021-06-15	Google Play	NEGATIVE	0.9150943756103516	Other
4577	1	Why my app not responding	5	2021-06-15	Google Play	NEGATIVE	0.9993854761123656	Other
4578	1	Good apk	5	2021-06-14	Google Play	POSITIVE	0.9998421669006348	Other
4579	1	No comment	5	2021-06-14	Google Play	NEGATIVE	0.9760733842849731	Other
4580	1	Simply Poor.	1	2021-06-14	Google Play	NEGATIVE	0.999785840511322	Other
4581	1	I need to get the details of my utilities payment without going to the Bank. Thank you!	3	2021-06-13	Google Play	POSITIVE	0.9996362924575806	Transaction Performance
4582	1	Why you are closed seeing our balance in recently updated version?	1	2021-06-12	Google Play	NEGATIVE	0.9935397505760192	Other
4583	1	I need it to active my job	5	2021-06-11	Google Play	NEGATIVE	0.9887879490852356	Other
4584	1	Very bad app	5	2021-06-11	Google Play	NEGATIVE	0.9997768998146056	Other
4585	1	Is not working	1	2021-06-11	Google Play	NEGATIVE	0.9997809529304504	Other
4586	1	What an update its amazing Super Fast	5	2021-06-11	Google Play	POSITIVE	0.9997957348823548	Other
4587	1	ወድጄዋለሁ	5	2021-06-11	Google Play	NEGATIVE	0.697056770324707	Other
4588	1	I have been used this app from the beginning and like it. On the current updated version it states we can share and save the transaction details. However it can't share or save. The only option I am using is Screenshot. So would you please review it?	4	2021-06-09	Google Play	NEGATIVE	0.9624651074409484	Transaction Performance
4589	1	Wonderful update. I use to take a screenshot of my transactions before but now I can share or download the details. Thank you so much. Keep up!	5	2021-06-09	Google Play	POSITIVE	0.9998459815979004	Transaction Performance
4590	1	I used this app for a long time , and i like it, its user friendly, not complicated at all, and more over it makes life easier for real. But the now after some times, this app is working better only on wifi, .. its veary hard to use it with mobile data, so please do something	3	2021-06-08	Google Play	NEGATIVE	0.9868799448013306	User Interface
4591	1	እኔ ከምንም በላይ ጊዜና ድካሜን ቀንሶልኛል	5	2021-06-07	Google Play	NEGATIVE	0.904695212841034	Other
4592	1	The installed app says this app is rooted you can't open it whats the problem they don't know what they are doing.	1	2021-06-07	Google Play	NEGATIVE	0.9978575110435486	Other
4593	1	Just updated to version 4.3 but it failed to sync after that. Please do something, I couldn't use it since it is popping "can't sync".	1	2021-06-07	Google Play	NEGATIVE	0.9996404647827148	Other
4594	1	CBE is My Favorite Choice in All Transaction	5	2021-06-07	Google Play	POSITIVE	0.998528003692627	Transaction Performance
4596	1	Very Good App	5	2021-06-06	Google Play	POSITIVE	0.9998675584793092	Other
4597	1	Wow very easy and wonderful app	5	2021-06-06	Google Play	POSITIVE	0.9998797178268432	Other
4598	1	Hey! What a weakly limit restriction you made? Why I cannot withdraw my money at any time when I want? This leads the app to be debris!	1	2021-06-06	Google Play	NEGATIVE	0.9993014335632324	Other
4599	1	After I update this app when I try to use it say can't cync. I can't use. What is the problem?	1	2021-06-06	Google Play	NEGATIVE	0.9994112253189088	Other
4600	1	It so clear and symple to use, solves problems in our daily financial activities and enrichs us with current exchange informations. It is so lovely.	5	2021-06-06	Google Play	POSITIVE	0.999863624572754	Other
4601	1	Wonderfully make your lifrle simple	5	2021-06-05	Google Play	POSITIVE	0.9998857975006104	Other
4602	1	Wonderful Application!!!	5	2021-06-05	Google Play	POSITIVE	0.9998829364776612	Other
4603	1	Bareeda mitti Sireesaa akkaa nuu banamu	5	2021-06-05	Google Play	NEGATIVE	0.9850276708602904	Other
4604	1	Its better if you allow to pay for tele wifi payment ..	3	2021-06-05	Google Play	NEGATIVE	0.9964706897735596	Transaction Performance
4605	1	Nice app but mostly the txn sorting is not correct, earlier txns come on top but latest ones at below so its better if it has a time stamp besides the date or do something for better txn sorting.	4	2021-06-04	Google Play	NEGATIVE	0.9968621730804444	Other
4606	1	Normal uset	5	2021-06-04	Google Play	NEGATIVE	0.7612539529800415	Other
4607	1	It used to work fine, but it's not logging in after the recent forced update.	5	2021-06-04	Google Play	NEGATIVE	0.9784940481185912	Other
4608	1	After the update I received today, I have tried to conduct transfer to other CBE accounts and it continously brings error messages saying none available. It is also not allowing me to download the transacation picture as is advertised here. Please do something CBE as this app is continuing to frustrate me again and again.	3	2021-06-04	Google Play	NEGATIVE	0.9993345141410828	Transaction Performance;User Interface;Reliability
4609	1	Thank you for timely response. The app now working really well. Recommendations: please synchronize this app with telebirr.	4	2021-06-04	Google Play	POSITIVE	0.9991389513015748	Customer Support
4610	1	I have been using for more than 3 years. It was good, but after upgrade to new version end up with white screen. What is wrong with that. Thanks.	3	2021-06-04	Google Play	NEGATIVE	0.9940481185913086	Other
4611	1	When u need to transfer the network stuck.... please fix this things	3	2021-06-04	Google Play	NEGATIVE	0.9986622333526612	Transaction Performance
4612	1	Why build a skyscraper when your mobile app is this bad!!!... Priorities !!!!	1	2021-06-04	Google Play	NEGATIVE	0.9997913241386414	User Interface
4613	1	Its very easy to use in contrast to other similar apps	5	2021-06-04	Google Play	POSITIVE	0.9981250166893004	Other
4614	1	It could be very useful if the app is able to show all the transactions made with out limitations, the current app shows only recent transactions.	3	2021-06-04	Google Play	NEGATIVE	0.9986376166343688	Transaction Performance
4615	1	አሁን አሪፍ ሆኗል ገንዘባችንን ፊትለፊት አያሳይብንም እሱ ተመችቶኛል በጣም በርቱ	5	2021-06-04	Google Play	NEGATIVE	0.9366679191589355	Other
4616	1	In the home menu, the updated date of balance is not shown. Moreover, the recent account does not show the withdrawal cash amount.	2	2021-06-04	Google Play	NEGATIVE	0.9975804090499878	Other
4617	1	The up is simple and easy to use so far. And in the future updates i would recommed adding transaction statment in a report manner. Thankbyou CBE.	3	2021-06-04	Google Play	POSITIVE	0.9911053776741028	Transaction Performance
4618	1	Its a perfect app, Easy to use and works almost everytime	5	2021-06-04	Google Play	POSITIVE	0.99980491399765	Other
4619	1	Nice app!!!!	5	2021-06-03	Google Play	POSITIVE	0.9997331500053406	Other
4620	1	Worst app I've ever seen	1	2021-06-03	Google Play	NEGATIVE	0.9997695088386536	Other
4621	1	The best app, that I have used it	5	2021-06-03	Google Play	POSITIVE	0.999816119670868	Other
4622	1	Er Jh	5	2021-06-03	Google Play	POSITIVE	0.8132337927818298	Other
4623	1	Very good👍	5	2021-06-03	Google Play	POSITIVE	0.8243632316589355	Other
4624	1	I tried to transfer a payment to my friend. The app did not show me any confirmation of a payment I belived as the payment was not sent to my friend so I tried many times. At the end I have found out that my account was out of balance. Its A Crazy And Unreliable App.	1	2021-06-03	Google Play	NEGATIVE	0.9996324777603148	Transaction Performance
4625	1	A job well done!	5	2021-06-03	Google Play	POSITIVE	0.999850869178772	Other
4626	1	Very fantastic application	1	2021-06-03	Google Play	POSITIVE	0.9998766183853148	Other
4627	1	It is Good!	4	2021-06-03	Google Play	POSITIVE	0.9998489618301392	Other
4628	1	Stuke	1	2021-06-02	Google Play	NEGATIVE	0.9989861845970154	Other
4629	1	what is the application verification key pls??	4	2021-06-02	Google Play	NEGATIVE	0.9991856217384338	Other
4630	1	The interface is good. But can you hide amount of money. It is sensitive. And login pin and keyboard are not really synced	4	2021-06-01	Google Play	POSITIVE	0.8480169177055359	Account Access Issues;User Interface
4631	1	it's very nice and Thanks	5	2021-06-01	Google Play	POSITIVE	0.9998562335968018	Other
4632	1	It is very easy to use specially for paying utilities	5	2021-06-01	Google Play	NEGATIVE	0.9481186866760254	Other
4633	1	Setastelu	1	2021-05-31	Google Play	POSITIVE	0.9560436606407166	Other
4634	1	It very smooth, but it need a QR code payment system	4	2021-05-31	Google Play	NEGATIVE	0.9781503677368164	Transaction Performance
4635	1	My#ap	4	2021-05-31	Google Play	POSITIVE	0.9129136204719543	Other
4636	1	This application is really bad. It is slow and doesn't work properly. It doesn't show recent activities. Using this app I transfered money to a friend and after showing deduction on my account, the money didn't reach the other end,the activity is not reflected on my recent transactions either. The worst app ever. It doesn't work outside of Ethiopia.	1	2021-05-31	Google Play	NEGATIVE	0.9997982382774352	Transaction Performance
4637	1	A easy and wonderful app to use	5	2021-05-31	Google Play	POSITIVE	0.9998669624328612	Other
4638	1	The UI sucks it needs improvement Didnt expect this from a bank as big as this	2	2021-05-30	Google Play	NEGATIVE	0.9953936338424684	User Interface
4639	1	The best app wich provides best , releable and fast financial service for cbe users.	5	2021-05-30	Google Play	POSITIVE	0.9996641874313354	Other
4640	1	Where can i get A verification key	4	2021-05-29	Google Play	NEGATIVE	0.9990028738975524	Other
4641	1	Thank you CBE	5	2021-05-29	Google Play	POSITIVE	0.999755561351776	Other
4642	1	How do i get verification code?	1	2021-05-29	Google Play	NEGATIVE	0.9988968372344972	Other
4643	1	Doesn't work on rooted phone...! Its bad app to use..... You have to develop it again	1	2021-05-28	Google Play	NEGATIVE	0.9996745586395264	Other
4644	1	Nice one It has shown a lot of improvement everytime!!!	5	2021-05-26	Google Play	POSITIVE	0.999177873134613	Other
4645	1	I cant use this app cos it stops syncing after I update the app.	2	2021-05-26	Google Play	NEGATIVE	0.9990991353988647	Other
4646	1	as part of a secured app it should have request users for update before stop working.	1	2021-05-25	Google Play	NEGATIVE	0.9980132579803468	Other
4647	1	ምቹ እና ለአጠቃቀም ቀላል ነው።	5	2021-05-25	Google Play	NEGATIVE	0.904695212841034	Other
4648	1	ኮድ ጠፍቶብኝ ማግኘት እችላለው	5	2021-05-24	Google Play	NEGATIVE	0.8616330027580261	Other
4649	1	We can not send transaction more than 5 times per week. It is restricted.	4	2021-05-24	Google Play	NEGATIVE	0.9966248273849488	Transaction Performance
4650	1	Very nice at all	5	2021-05-24	Google Play	POSITIVE	0.999864935874939	Other
4651	1	superb	5	2021-05-21	Google Play	POSITIVE	0.9998656511306764	Other
4652	1	How can i get my authorization code	1	2021-05-20	Google Play	NEGATIVE	0.9991483688354492	Other
4653	1	Active exllent	5	2021-05-20	Google Play	NEUTRAL	0.5	Other
4654	1	Excellent service....	5	2021-05-20	Google Play	POSITIVE	0.9998573064804076	Other
4655	1	Best mobile banking app in Eth	5	2021-05-19	Google Play	POSITIVE	0.9995651841163636	Other
4656	1	It makes my life easy. I love it	5	2021-05-19	Google Play	POSITIVE	0.9998798370361328	Other
4657	1	The app. doesnt work🙄🙄Smh	1	2021-05-18	Google Play	NEGATIVE	0.9987659454345704	Other
4658	1	🤔	5	2021-05-18	Google Play	NEGATIVE	0.697056770324707	Other
4659	1	Dear all, if you're an iOS user then the new update doesn't work at all. Those of you who use the Android App and you've been having troubles your user credentials have expired that's why it doesn't even load your balance, so you need to go to your branch and have them fix that!	1	2021-05-18	Google Play	NEGATIVE	0.9996954202651978	Other
4660	1	Where do I find the app verification code	1	2021-05-18	Google Play	NEGATIVE	0.9989218711853028	Other
4661	1	service part is not working	1	2021-05-18	Google Play	NEGATIVE	0.9997575879096984	Other
4662	1	It is interesting App	5	2021-05-17	Google Play	POSITIVE	0.9997692704200744	Other
4663	1	this is good for nothing and useless where is the verification code you are always back asholes useless and half	1	2021-05-17	Google Play	NEGATIVE	0.9998028874397278	Other
4664	1	The best app!!	5	2021-05-16	Google Play	POSITIVE	0.999862551689148	Other
4665	1	it is crashed after updating why and how to fix it	5	2021-05-16	Google Play	NEGATIVE	0.9997805953025818	Reliability
4666	1	not bad	5	2021-05-16	Google Play	POSITIVE	0.9995881915092468	Other
4667	1	What is this this is the worest app i have ever seen they gave me a code but it say it doesn't work and they blocked me	1	2021-05-15	Google Play	NEGATIVE	0.9996381998062134	Other
4668	1	Verification key not sending	4	2021-05-15	Google Play	NEGATIVE	0.99679833650589	Other
4669	1	Thank u	5	2021-05-15	Google Play	POSITIVE	0.9998247027397156	Other
4670	1	Difficult to find out verfication code. It took me z whole day	5	2021-05-15	Google Play	NEGATIVE	0.9974111914634703	Other
4671	1	I opened an account and unable to download this app. What's wrong? 14.05.21 Two weeks now, and still unable to download app. No one from CBE is reacting. Negative image for an old institute such as CBE.	1	2021-05-14	Google Play	NEGATIVE	0.9996089339256288	Other
4672	1	Perfect ui But mine is not working now days. Does something happened new? It was working well 3 day back now it say sync failed.. Are u people under mantainance??	1	2021-05-13	Google Play	NEGATIVE	0.9993357062339784	User Interface
4673	1	Best app with smooth experience.	5	2021-05-13	Google Play	POSITIVE	0.9995704293251038	Other
4674	1	What a shame is this...how comes such a stupid app come from the huge ethiopian proud bank???boring, digesting app I have ever seen before. Asking Authorization /verification after downloading the app what the hell is this?!;:'"	1	2021-05-11	Google Play	NEGATIVE	0.9998078942298888	Transaction Performance
4675	1	this very smart & simple app	5	2021-05-11	Google Play	POSITIVE	0.9998358488082886	Other
4676	1	Easy to access and transfer	5	2021-05-10	Google Play	POSITIVE	0.9993129968643188	Account Access Issues;Transaction Performance
4677	1	Good app !	5	2021-05-10	Google Play	POSITIVE	0.9998592138290404	Other
4678	1	Only works about 1 out of 10 times	1	2021-05-08	Google Play	NEGATIVE	0.9801187515258788	Other
4679	1	I don't know what to do with this app anymore..after I synconized it, it doesn't show the features or the tools that needed to use for, just it shows my balance.. needed to be fixed asap.	1	2021-05-08	Google Play	NEGATIVE	0.9981024861335754	Other
4680	1	Really app but net is poor	3	2021-05-07	Google Play	NEGATIVE	0.9970760345458984	Other
4681	1	Worest app i didn't expect this kind of app from u	1	2021-05-07	Google Play	NEGATIVE	0.7097331285476685	Other
4682	1	Well, helpful but still lacks much more	4	2021-05-07	Google Play	NEGATIVE	0.9968274235725404	Customer Support
4683	1	I am new to this app, I downloaded just right now from playstore and i it asked me for Verification code and i don't have it, Someone please help me......To solve the issue.	1	2021-05-05	Google Play	NEGATIVE	0.99842631816864	Customer Support
4684	1	Commercial bank of Ethiopia is the most preferable organised and technician and thinking observation to saving institution and also this institution is my first choose	5	2021-05-04	Google Play	POSITIVE	0.9965001344680786	Other
4685	1	Time save	5	2021-05-03	Google Play	POSITIVE	0.9670603275299072	Other
4686	1	Why is this app not working out of Addis Ababa?	1	2021-05-03	Google Play	NEGATIVE	0.9996386766433716	Other
4687	1	I can't hide my balance on this app like CBE App on iphone	5	2021-05-02	Google Play	NEGATIVE	0.9929118752479552	Other
4688	1	Very good and useful app	5	2021-05-02	Google Play	POSITIVE	0.9998699426651	Other
4689	1	I have bad experience since I started using this app. I get "none available " error message while there is good internet connection. And I went to my branch two times to activate the app. There should be some way to activate without physically going to the branch. Anyway, it should be improved much from what it is now!!!	1	2021-05-02	Google Play	NEGATIVE	0.998217761516571	Reliability
4690	1	Idee bashin abrahim	1	2021-05-02	Google Play	POSITIVE	0.9754105806350708	Other
4691	1	It is not synchronizing with core banking	1	2021-05-01	Google Play	NEGATIVE	0.9996830224990844	Other
4692	1	I like this app b/c of it's do life simple	1	2021-05-01	Google Play	POSITIVE	0.9989073276519777	Other
4693	1	I have been using it for the last three years and was working perfectly but since this week cannot even show my balance and unable to make payment. Please try to fix it.	2	2021-04-29	Google Play	NEGATIVE	0.9988918900489808	Transaction Performance
4744	1	Easy to manage	5	2021-03-21	Google Play	POSITIVE	0.99965238571167	Other
4694	1	It is good application and expected to move the financial sector forward	5	2021-04-29	Google Play	POSITIVE	0.9997000694274902	Other
4695	1	Good, no bugs yet.	4	2021-04-29	Google Play	POSITIVE	0.9987323880195618	Reliability
4696	1	Its really good app i have ever have in ethiopia	5	2021-04-27	Google Play	POSITIVE	0.9998196959495544	Other
4697	1	Where do i get a verification code?	1	2021-04-27	Google Play	NEGATIVE	0.999500036239624	Other
4698	1	How can I get the verification code to install the app??	3	2021-04-24	Google Play	NEGATIVE	0.999588668346405	Other
4699	1	እባካችሁን ሂሳባችንን የምናውቅበት መንገድ ስሩልን🙏	4	2021-04-24	Google Play	NEGATIVE	0.8832130432128906	Other
4700	1	ወድጄዋለሁ አሪፍ አማራጭ ነው	5	2021-04-22	Google Play	NEGATIVE	0.8616330027580261	Other
4701	1	Good, Improve App Always	4	2021-04-22	Google Play	POSITIVE	0.9998514652252196	Other
4702	1	እጅግ በጣም አሪፍ አፕ ነው ተመችቶኛል ተጠቀሙበት	5	2021-04-22	Google Play	NEGATIVE	0.9200406670570374	Other
4703	1	One limitation of the the app is that it is not functioning with normal mobile data (3G). It needs wifi or stronger signal. How can I fix this issue? Any help.	3	2021-04-21	Google Play	NEGATIVE	0.99954491853714	Customer Support
4704	1	I cant get authorization code yet	5	2021-04-19	Google Play	NEGATIVE	0.9988569021224976	Other
4705	1	Really I troubled to use this application since last week, I've been using it more than 2 years. I don't know what's wrong with it now. It can't synchronize, even can't see any update in my account. I tried to repair and manage in setting, but not possible. Also you don't have any means of online communication/ chat. Could you please tell me what to do?	4	2021-04-18	Google Play	NEGATIVE	0.9996029734611512	Other
4706	1	Lately, it is not working	1	2021-04-17	Google Play	NEGATIVE	0.999706208705902	Other
4707	1	Ethiopia commerical bank	5	2021-04-17	Google Play	POSITIVE	0.9830245971679688	Other
4708	1	It made things a lot easier	5	2021-04-16	Google Play	POSITIVE	0.9977601766586304	Other
4709	1	Found it easy to check payments for utility services, see payment history. Login is simple and software is easy to use.	5	2021-04-16	Google Play	POSITIVE	0.9919597506523132	Account Access Issues;Transaction Performance
4710	1	Very disappointed! It asks for verification code but no way to get it. The verification code should be sent to our mail or phone number. It doesn't give you any clue to get the code. I go to CBE branch & requested them if I can get the code, but they don't even know how to get it.	1	2021-04-15	Google Play	NEGATIVE	0.9997848868370056	Other
4711	1	Thanks for making life easy for getting service providers easily... Thanks	5	2021-04-12	Google Play	POSITIVE	0.9991359114646912	Other
4712	1	It's a gr8 app, that can makes everyone user life very simple.	5	2021-04-12	Google Play	POSITIVE	0.9910179376602172	Other
4713	1	It does not oppen	1	2021-04-12	Google Play	NEGATIVE	0.6113077402114868	Other
4714	1	Where can I get the authorization number?	1	2021-04-11	Google Play	NEGATIVE	0.9993904829025269	Other
4715	1	Easy to use I found it intuitive to use the app. It would be nice if it includes finger print to access the account.	4	2021-04-10	Google Play	NEUTRAL	0.5	Account Access Issues;User Interface
4716	1	Great experience on android and you need some work on iphone connection	5	2021-04-10	Google Play	POSITIVE	0.9861271381378174	Other
4717	1	ምርጥ ነው፣ ሰልፍ የለ፣ ቢሮክራሲ የለ፣ ገንዘብ ከፋዩን እባክህ ፈጠን በል አስቸኳይ ነው የለ፣ u're bank is at ur finger tips. መስተካከል ያለበት ነገር ቢኖር፣ time out ይልና አልተላለፈም ይላል፣ ነገር ግን አንዳንዴ time out ቢልም ያስተላልፋል እና ድጋሚ ድጋሚ መሞከር ተጨማሪ ገንዘብ ያስከፍላል፣ ይሄን ጥንቃቄ ማድረግ ይስፈልጋል	3	2021-04-10	Google Play	NEGATIVE	0.9776081442832948	Other
4718	1	Verynice	5	2021-04-09	Google Play	NEGATIVE	0.9840372800827026	Other
4719	1	It is cool	5	2021-04-09	Google Play	POSITIVE	0.999865174293518	Other
4720	1	I love this App	5	2021-04-09	Google Play	POSITIVE	0.9998608827590942	Other
4721	1	It is very good app tanks	5	2021-04-08	Google Play	POSITIVE	0.9997854828834534	Other
4722	1	smart	1	2021-04-08	Google Play	POSITIVE	0.9998456239700316	Other
4723	1	Tried buying air time, there was network problems but it still withdrew the Money.	1	2021-04-07	Google Play	NEGATIVE	0.9988464117050172	Other
4724	1	This is a nice app- very fast and does well what it's designed to do	5	2021-04-05	Google Play	POSITIVE	0.999834418296814	User Interface
4725	1	I have been using this app for many times. But now stopped. How it is solved?	5	2021-04-04	Google Play	NEGATIVE	0.9967693090438844	Other
4726	1	Has a good service with a hope to improve. Much.	3	2021-04-04	Google Play	POSITIVE	0.9998268485069276	Other
4727	1	Please add RTGS services in your next update.	3	2021-04-03	Google Play	NEGATIVE	0.9505534768104552	Other
4728	1	It's not loading	1	2021-04-02	Google Play	NEGATIVE	0.9785672426223756	Transaction Performance
4729	1	nica	5	2021-04-02	Google Play	NEGATIVE	0.8657254576683044	Other
4730	1	Exellent app!!	5	2021-04-01	Google Play	NEGATIVE	0.9190099835395812	Other
4731	1	not working	5	2021-04-01	Google Play	NEGATIVE	0.999777853488922	Other
4732	1	Simple and nice !!! The issue with using mobile app is you can't print/share the transaction slip.Some company/people required the printable file for their record	4	2021-03-31	Google Play	POSITIVE	0.8845292925834656	Transaction Performance;User Interface
4733	1	It is deficult to refresh, no menu for refreshment	3	2021-03-30	Google Play	NEGATIVE	0.9958279728889464	Other
4734	1	Nice app...	5	2021-03-28	Google Play	POSITIVE	0.9997116923332214	Other
4735	1	Good way at this time.	5	2021-03-28	Google Play	POSITIVE	0.99983549118042	Other
4736	1	Very nice and easy	5	2021-03-27	Google Play	POSITIVE	0.9998743534088136	Other
4737	1	Never works abroad	1	2021-03-27	Google Play	NEGATIVE	0.9988319277763368	Other
4738	1	Amazing app.l like it!!	5	2021-03-25	Google Play	POSITIVE	0.9998748302459716	Other
4739	1	It is very user friendly. I would love to see and use simillar type of appplication without internet connection. Thanks.	4	2021-03-25	Google Play	POSITIVE	0.974737584590912	User Interface
4740	1	It makes all personal banking system easy!better it will be best need more updating by adding extra uses!	5	2021-03-25	Google Play	NEGATIVE	0.9346992373466492	Other
4741	1	Very bad experience as it sticks every now and then	1	2021-03-25	Google Play	NEGATIVE	0.9996503591537476	Other
4742	1	I appriciate	5	2021-03-22	Google Play	POSITIVE	0.9619125127792358	Other
4743	1	Intuitive and reliable application! Excellent!	5	2021-03-21	Google Play	POSITIVE	0.9998806715011596	User Interface
4745	1	Because it is my Bank	5	2021-03-20	Google Play	POSITIVE	0.9802226424217224	Other
4746	1	GOOD	4	2021-03-19	Google Play	POSITIVE	0.999816119670868	Other
4747	1	Excellent to use am happy	5	2021-03-19	Google Play	POSITIVE	0.9998754262924194	Other
4748	1	ጥሩ እና ቀለል ያለ መተግበሪያ ነው። ጊዜውን ባማከለ ሁኔታ መተግበሪያውን ማዘመኑንም በፍጥነት ስሩ።እናመሰግናለን።	5	2021-03-18	Google Play	NEGATIVE	0.9582906365394592	Other
4749	1	Easy and reliable app love it	5	2021-03-18	Google Play	POSITIVE	0.9997780919075012	Other
4750	1	Great app. Its 100% nice app than previous one.	5	2021-03-16	Google Play	POSITIVE	0.999789297580719	Other
4751	1	Bad product	1	2021-03-16	Google Play	NEGATIVE	0.9997833371162416	Other
4752	1	let me get this straight you have to go to the Bank to get the verification code ? for get it I leave abroad. I am trying to activate my swift account pending for three weeks I try to call the number no body picks up .😡😡😡	1	2021-03-15	Google Play	NEGATIVE	0.999398708343506	Other
4753	1	Very bad app. Never use it.	1	2021-03-14	Google Play	NEGATIVE	0.9977849721908568	Other
4754	1	The app is nice. But from the previous version we can transfer amount to the added beneficiaries. On this version not.	3	2021-03-14	Google Play	NEGATIVE	0.9901245832443236	Transaction Performance
4755	1	Thanks for making easy access	5	2021-03-13	Google Play	POSITIVE	0.9997060894966124	Account Access Issues
4756	1	Fantastic I love the simplicity	5	2021-03-12	Google Play	POSITIVE	0.9998849630355836	Other
4757	1	Next merchant account	5	2021-03-12	Google Play	NEGATIVE	0.9398931860923768	Other
4758	1	I can't able to see account balance ,transfer and other services Performance is bad.	3	2021-03-12	Google Play	NEGATIVE	0.999745547771454	Transaction Performance
4759	1	It has been really helpful. Thank u CBE	5	2021-03-12	Google Play	POSITIVE	0.9996342658996582	Customer Support
4760	1	Love it !!!	5	2021-03-09	Google Play	POSITIVE	0.9998838901519777	Other
4761	1	How can i get verification code?	4	2021-03-08	Google Play	NEGATIVE	0.9993411898612976	Other
4762	1	Great app to manage your account, and the update as a very modern and simplistic GUI and is really great!	5	2021-03-07	Google Play	POSITIVE	0.9998611211776732	User Interface
4763	1	My application was blocked what is the reason?!	5	2021-03-07	Google Play	NEGATIVE	0.9996386766433716	Other
4764	1	Totally not working I can't see my balance ot is blank.	1	2021-03-06	Google Play	NEGATIVE	0.999705970287323	Other
4765	1	Great app. But why limit transaction history? We should be able to view transaction history at least for the past 12 months if not more. Currently it only goes back one or two weeks.	4	2021-03-04	Google Play	NEGATIVE	0.9941831231117249	Transaction Performance
4766	1	Good work. I am happy we have mobile banking access. I am sure it will develop more and more.	5	2021-03-04	Google Play	POSITIVE	0.9998257756233216	Account Access Issues
4767	1	Very interesting but it doesn't support all networks	4	2021-03-02	Google Play	NEGATIVE	0.9972911477088928	Customer Support
4768	1	l like the app.GREAT	5	2021-03-01	Google Play	POSITIVE	0.9997512698173524	Other
4769	1	Best bank !	5	2021-02-28	Google Play	POSITIVE	0.9997982382774352	Other
4770	1	after i updated the app, Refreshing the home page took forever, now it doesn't load at all	1	2021-02-28	Google Play	NEGATIVE	0.9921557307243348	Other
4771	1	I can not activate and it can not syncronized	2	2021-02-28	Google Play	NEGATIVE	0.9995988011360168	Other
4772	1	Good but i cant rich verification key	5	2021-02-28	Google Play	POSITIVE	0.984391450881958	Other
4773	1	Where do I get the verification key the app asking me to start	1	2021-02-28	Google Play	NEGATIVE	0.9989860653877258	Other
4774	1	After money is transferred, it shows failed signal. When trying again, it says failed again but it was actually transferring two times. Damn!	3	2021-02-26	Google Play	NEGATIVE	0.999320387840271	Transaction Performance
4775	1	Great App...👍	4	2021-02-23	Google Play	POSITIVE	0.9996790885925292	Other
4776	1	Best app, I like it, it makes my life easy	5	2021-02-23	Google Play	POSITIVE	0.9997770190238952	Other
4777	1	Beautiful	5	2021-02-19	Google Play	POSITIVE	0.9998807907104492	Other
4778	1	Commercial Bank of Ethiopia Best Bank of Africa	5	2021-02-17	Google Play	POSITIVE	0.9995530247688292	Other
4779	1	How can Iget auth code	3	2021-02-14	Google Play	NEGATIVE	0.9970671534538268	Other
4780	1	Imagine being that larget bank in Ethiopia and building this kind of trash for your customers. Its not even showing any information it just login and every activity or transaction only says "none done" what does that even mean? Is this thing even tested before launch.በጣም ነው የምታሳዝኑት ወሬ ብቻ።	1	2021-02-13	Google Play	NEGATIVE	0.9996907711029052	Account Access Issues;Transaction Performance;User Interface
4781	1	Better than than the previous	5	2021-02-13	Google Play	POSITIVE	0.9997387528419496	Other
4782	1	The bast app	5	2021-02-12	Google Play	POSITIVE	0.998450517654419	Other
4783	1	Perfect app.	5	2021-02-12	Google Play	POSITIVE	0.9998550415039062	Other
4784	1	It keeps repeating transfer and makes you lose your money it has done that multiple times	2	2021-02-11	Google Play	NEGATIVE	0.9992631077766418	Transaction Performance
4785	1	Best mobile banking app from all the banks in Ethiopia.	5	2021-02-11	Google Play	POSITIVE	0.9997647404670716	Other
4786	1	It says "none available" after installed and subscribed. what is wrong with it?	1	2021-02-09	Google Play	NEGATIVE	0.9997889399528505	Other
4787	1	Very nice application 👍.	5	2021-02-08	Google Play	POSITIVE	0.999788463115692	Other
4788	1	I like the new interface but gave me headache!! Most of the time it fails to sync.	2	2021-02-06	Google Play	NEGATIVE	0.9997476935386658	User Interface
4789	1	The verfication doesnt sent me until now	1	2021-02-06	Google Play	NEGATIVE	0.9776602983474731	Other
4790	1	Wow i like this	5	2021-02-05	Google Play	POSITIVE	0.9998372793197632	Other
4791	1	Much faster and easier to access	5	2021-02-04	Google Play	POSITIVE	0.9993956089019777	Account Access Issues
4792	1	Please it needs to be updated or do some improvement The previous version was very good as compared to this one . with this app I can't make any payment . When I try to send payment it always says You have exceeded your weekly number of transaction!!	2	2021-02-04	Google Play	NEGATIVE	0.9870461225509644	Transaction Performance
4793	1	I like this app it is better than the previous one!	5	2021-02-04	Google Play	POSITIVE	0.999710977077484	Other
4794	1	Fantastic application.	5	2021-02-03	Google Play	POSITIVE	0.9998774528503418	Other
4795	1	Its not working properly .it say (syn error )	2	2021-02-03	Google Play	NEGATIVE	0.9998142123222352	Reliability
4796	1	I really luv this app it's makes life get easy	5	2021-02-02	Google Play	POSITIVE	0.960307002067566	Other
4797	1	Good app for making payments.	5	2021-02-02	Google Play	POSITIVE	0.9995654225349426	Transaction Performance
4798	1	It is helpful!	4	2021-02-01	Google Play	POSITIVE	0.9996732473373412	Customer Support
4799	1	There is problem with sudden system or software failure. And most importantly the history of transaction is too short , at least we must be able to look at monthly statement on the app!!!	3	2021-01-31	Google Play	NEGATIVE	0.9997462630271912	Transaction Performance
4800	1	CBE can provide us better version of the app they are the biggest bank in horn of africa yet they dont concer in developing thier system or application	3	2021-01-29	Google Play	NEGATIVE	0.9463853240013124	Other
4801	1	Very nice it is easy to use it I like it	5	2021-01-28	Google Play	POSITIVE	0.999819815158844	Other
4802	1	Really I like the new update. I rate it ☺️☺️	5	2021-01-28	Google Play	POSITIVE	0.998834788799286	Other
4803	1	Very efficient and easy to use I like it	5	2021-01-25	Google Play	POSITIVE	0.9998667240142822	Other
4804	1	It doesn't even sync Very bad app it doesn't work anymore	1	2021-01-24	Google Play	NEGATIVE	0.9972781538963318	Other
4805	1	This application is very useful I do like it Thank you so much Ethiopian Commercial Bank really you are the best ❤️👍 Please keep it up	5	2021-01-23	Google Play	POSITIVE	0.999826729297638	Other
4806	1	dump🙄	1	2021-01-23	Google Play	NEGATIVE	0.697056770324707	Other
4807	1	The update looks cleaner and better. Kudos to the app developer. (it took me a while to figure out the update was what was wrong with my app though)	5	2021-01-22	Google Play	NEGATIVE	0.9994888305664062	Other
4808	1	It ia taking forever to load once i signed up ans its been 10days. No change. This is not working.	1	2021-01-22	Google Play	NEGATIVE	0.9997933506965636	Other
4809	1	Very bad app. It doesn't even tell balances. ብዙ መሻሻል አለበር። I prefer the USSD.	1	2021-01-21	Google Play	NEGATIVE	0.9997918009757996	Other
4810	1	Great app.but appears on screen after finish using application.	4	2021-01-21	Google Play	POSITIVE	0.912693977355957	Other
4811	1	This version is better than than the previous one and this one didn't find strong internet connection which is its strong side.	5	2021-01-20	Google Play	NEGATIVE	0.9861095547676086	Other
4812	1	app is a good ideas and good version but this app not download my phone i want to use this app	4	2021-01-20	Google Play	NEUTRAL	0.5	Other
4813	1	Really good!	5	2021-01-18	Google Play	POSITIVE	0.9998509883880616	Other
4814	1	Lovely app	5	2021-01-17	Google Play	POSITIVE	0.9998546838760376	Other
4815	1	Easy to use but all new customers forced to download this app bc shared app doest work on other phone	2	2021-01-16	Google Play	NEGATIVE	0.9988922476768494	Other
4816	1	በጣምአረፍነበር ነገርግንአደገኛነቱምበዛውልክነዉ ለምሳእኔየገጠኝንልንገራቹህ ለአንደሰውአሰርሸመላክፋልጌ እናየብርጠኑንአሰቀምጬ የመጨረሻየይለፍምልክቷተጭኜደረሰኝእድሰጠኝእየተጠባበኩባለሁበትሁለትደቂቃዘግይቶቀጥታበራወጣ ትንቆቶሶሰትግዜ ከሂሳቤተቀነሰ	3	2021-01-16	Google Play	NEGATIVE	0.9239576458930968	Other
4817	1	It nice	5	2021-01-16	Google Play	POSITIVE	0.9998676776885986	Other
4818	1	Good app from the old one but during sign up the old search box doesn't appear in order to activate directly from message	4	2021-01-16	Google Play	NEGATIVE	0.99809330701828	Other
4819	1	App doesn't work most of the time and refreshing the updates it takes more time	2	2021-01-13	Google Play	POSITIVE	0.941133201122284	Other
4820	1	4266 Mahmad mahmud	5	2021-01-13	Google Play	NEUTRAL	0.5	Other
4821	1	It ask application verification key what does it mean	1	2021-01-12	Google Play	NEGATIVE	0.9955236911773682	Other
4822	1	loved it	5	2021-01-12	Google Play	POSITIVE	0.9998797178268432	Other
4823	1	how to add verification	5	2021-01-09	Google Play	POSITIVE	0.9760434031486512	Other
4824	1	The app asks me to write verifcation number where can i get it?	5	2021-01-09	Google Play	NEGATIVE	0.9988151788711548	Other
4825	1	I love the app	5	2021-01-08	Google Play	POSITIVE	0.9998427629470824	Other
4826	1	I respect your transparency	2	2021-01-06	Google Play	POSITIVE	0.9991328120231628	Other
4827	1	It is good for saving time consuming and fast service giving.	4	2021-01-06	Google Play	POSITIVE	0.9996140599250792	Other
4828	1	Better view but less performance Why?🙄	3	2021-01-06	Google Play	NEGATIVE	0.9897857904434204	Other
4829	1	I had very comfortable to used this app. The best app at all !!!	5	2021-01-05	Google Play	POSITIVE	0.9997428059577942	Other
4830	1	It's not working properly	1	2021-01-04	Google Play	NEGATIVE	0.9997792840003968	Other
4831	1	Simple for utility	5	2021-01-04	Google Play	POSITIVE	0.6543303728103638	Other
4832	1	v.good	1	2021-01-04	Google Play	POSITIVE	0.994877278804779	Other
4833	1	It doesn't work anymore. It says it synced successfully but doesn't show any thing. It doesn't sync at all	1	2021-01-03	Google Play	NEGATIVE	0.9985387325286864	Other
4834	1	Some time it is not working	1	2021-01-02	Google Play	NEGATIVE	0.9995595812797546	Other
4835	1	I love this app. Some improvement I wish to be made is that a menu that helps to Bach delete beneficiaries (delete two or more beneficiaries at once instead of individually). Thank you!	5	2021-01-02	Google Play	POSITIVE	0.9993904829025269	Customer Support
4836	1	Home page Loading for 5 min on 4G net are you kidding me😬😬	1	2021-01-02	Google Play	NEGATIVE	0.9966506361961364	Transaction Performance
4837	1	It was working perfectly until it stopped displaying my balance.	2	2021-01-02	Google Play	NEGATIVE	0.9847171902656556	Other
4838	1	The previous version is much better than this one. I used it for more than six years without any problem. But now I'm having a serious trouble with the updated app. I don't know why it takes him forever to refresh and load the home page once you sign in. And if it fails to load, it never recovers. I only see some UI changes. Really disappointed	2	2021-01-01	Google Play	NEGATIVE	0.9991132616996764	User Interface
4839	1	በጣም ብዙ ነገሮችን የሚያቀል መተግበሪያ ነው። እናመሰግናለን	5	2021-01-01	Google Play	NEGATIVE	0.9239576458930968	Other
4840	1	Sometimes this app becomes iactive.	4	2021-01-01	Google Play	NEGATIVE	0.9971318244934082	Other
4841	1	Easy to use, it has got everything you need. The only problem I encountered is it doesn't show all your transactions in history, It just hides some without any reason.	4	2021-01-01	Google Play	NEGATIVE	0.9965721368789672	Transaction Performance
4842	1	The activatin code that i got from the bank doesn't work, 😡	1	2020-12-31	Google Play	NEGATIVE	0.999606430530548	Other
4843	1	CBE mob app works so well in Ethiopia and internationally too.	5	2020-12-30	Google Play	POSITIVE	0.9991183876991272	Other
4942	1	EXCellent	5	2020-10-26	Google Play	POSITIVE	0.9998434782028198	Other
4844	1	I get the access from my nearest CBE branch but i still couldn't see my transactions	1	2020-12-28	Google Play	NEGATIVE	0.9969066977500916	Account Access Issues;Transaction Performance
4845	1	15 years	1	2020-12-28	Google Play	POSITIVE	0.9893747568130492	Other
4846	1	😀 በጣም ጠቃሚ፣፣ኀ	5	2020-12-27	Google Play	NEGATIVE	0.904695212841034	Other
4847	1	keep it up	5	2020-12-26	Google Play	POSITIVE	0.9998098015785216	Other
4848	1	How we make athourize	5	2020-12-26	Google Play	POSITIVE	0.9485120177268982	Other
4849	1	Great App, easy to use!	5	2020-12-23	Google Play	POSITIVE	0.99973064661026	Other
4850	1	how can I get application variation code	3	2020-12-23	Google Play	NEGATIVE	0.9980331063270568	Other
4851	1	Working smoot	5	2020-12-23	Google Play	NEGATIVE	0.9628139734268188	Other
4852	1	Good 🖒	3	2020-12-23	Google Play	POSITIVE	0.9998576641082764	Other
4853	1	never update my balance	1	2020-12-22	Google Play	NEGATIVE	0.9901136159896852	Other
4854	1	Its good ..keep it up	5	2020-12-22	Google Play	POSITIVE	0.9998527765274048	Other
4855	1	Intersting & I feel good to use this app. Thanks .	5	2020-12-22	Google Play	POSITIVE	0.9998303651809692	Other
4856	1	I love it u can do what ever you want easily	5	2020-12-21	Google Play	POSITIVE	0.9998347759246826	Other
4857	1	Not active	1	2020-12-21	Google Play	NEGATIVE	0.999765932559967	Other
4858	1	Nice but Account display is not private it's lways front line.	4	2020-12-21	Google Play	NEGATIVE	0.7427850365638733	Other
4859	1	what is application verification code	4	2020-12-21	Google Play	NEGATIVE	0.9912303686141968	Other
4860	1	This isn't safe app	1	2020-12-20	Google Play	NEGATIVE	0.9997703433036804	Other
4861	1	Very good apps	3	2020-12-19	Google Play	POSITIVE	0.9998751878738404	Other
4862	1	It is very nice	5	2020-12-19	Google Play	POSITIVE	0.9998657703399658	Other
4863	1	ጥሩ መሻሻል ነው። አንዳንድ ጊዜ ደግሞ አዝግ ነው አይሰራም	3	2020-12-18	Google Play	NEGATIVE	0.9366679191589355	Other
4864	1	Better than others	5	2020-12-17	Google Play	POSITIVE	0.999774158000946	Other
4865	1	Better from the former one	5	2020-12-16	Google Play	POSITIVE	0.9966979026794434	Other
4866	1	Before years later i used this app and is used to work in mobile data eventhough it doesn't have different features like this version but now it doesn't even sync my balance and even can't use any of the services it says " can't sync " and " none available " 😡🤬😡	1	2020-12-16	Google Play	NEGATIVE	0.999244213104248	Other
4867	1	Since I have started using the application, I have saved a lot of time. It is very important application for individuals who want to save their time	5	2020-12-15	Google Play	POSITIVE	0.9957717061042786	Other
4868	1	No working direct upgrade, you need to go to a branch everytime there is enhancement	1	2020-12-14	Google Play	NEGATIVE	0.9974155426025392	Other
4869	1	Sometimes it does not work.	4	2020-12-13	Google Play	NEGATIVE	0.9997753500938416	Other
4870	1	Gug app	4	2020-12-13	Google Play	NEGATIVE	0.9769474267959596	Other
4871	1	- Stop showing toasts on errors. It keeps showing up after app is closed - Show paged transaction history. The latest 10 is not enough. - Network error is happening and it's taking money without filling airtime to my phone ...	1	2020-12-13	Google Play	NEGATIVE	0.9996021389961244	Transaction Performance;Reliability
4872	1	Thanks How to get application verification	5	2020-12-12	Google Play	POSITIVE	0.9982169270515442	Other
4873	1	The app cannot sync with backend server, keep shown me can't sync	1	2020-12-11	Google Play	NEGATIVE	0.9996432065963744	Other
4874	1	Loving it!!	5	2020-12-11	Google Play	POSITIVE	0.9998834133148192	Other
4875	1	Wow good app	4	2020-12-11	Google Play	POSITIVE	0.9998589754104614	Other
4876	1	It is not working,not syncing,not perfectly updated	2	2020-12-09	Google Play	NEGATIVE	0.9997984766960144	Other
4877	1	It's a great app	5	2020-12-08	Google Play	POSITIVE	0.999862790107727	Other
4878	1	how can i get the verification code?	1	2020-12-07	Google Play	NEGATIVE	0.999536395072937	Other
4879	1	Good app to operate	5	2020-12-06	Google Play	POSITIVE	0.999827206134796	Other
4880	1	I appreciated by this app. But it can't send money to inactive account and pending authorization account. Please develop more. I have long experience( more than 3 years) with former version and ussd *889#. This latter version is better than both. Keep it up!thank you. is there any payment for using cbe mobile bank? Please explain	5	2020-12-06	Google Play	POSITIVE	0.9947804808616638	Transaction Performance
4881	1	Very help fuel	5	2020-12-06	Google Play	POSITIVE	0.9888080954551696	Customer Support
4882	1	Where i get app verification key?	5	2020-12-05	Google Play	NEGATIVE	0.9984500408172609	Other
4883	1	i lov it	3	2020-12-05	Google Play	POSITIVE	0.998885452747345	Other
4884	1	Best app and user familiar with more information included	5	2020-12-04	Google Play	POSITIVE	0.9975962042808532	Other
4885	1	Well help the people to meet bank	5	2020-12-04	Google Play	POSITIVE	0.9971801042556764	Customer Support
4886	1	Like always it is the worst app of all time, even I doubt it's oudated or updated. My phone is not rooted and it says you can't use this app because it's rooted	1	2020-12-04	Google Play	NEGATIVE	0.9997615218162536	Other
4887	1	I've been using the previous app more than a year without any prob. This application is not working more than a month and even they couldn't also fix it.	1	2020-12-04	Google Play	NEGATIVE	0.9996914863586426	Other
4888	1	Excellent Application that's appropriate for use.	5	2020-12-03	Google Play	POSITIVE	0.9998546838760376	Other
4889	1	It's not working it only updates I can't even see my balance	2	2020-12-02	Google Play	NEGATIVE	0.9986029267311096	Other
4890	1	Easy and compatible	5	2020-12-02	Google Play	POSITIVE	0.9998053908348083	Other
4891	1	Looks grate. Thanks	4	2020-12-02	Google Play	POSITIVE	0.9691722989082336	Other
4892	1	It's doesn't work properly.	1	2020-12-01	Google Play	NEGATIVE	0.9997817873954772	Other
4893	1	Its good app but we cant check statements for past months just recent is availavle Ita good to add this function	4	2020-12-01	Google Play	POSITIVE	0.9804527759552002	Other
4894	1	Gobezoch!	5	2020-12-01	Google Play	NEGATIVE	0.9857284426689148	Other
4895	1	It's not working please make it something	1	2020-11-30	Google Play	NEGATIVE	0.9996987581253052	Other
4896	1	How to verify it?	3	2020-11-30	Google Play	NEGATIVE	0.9928795695304872	Other
4897	1	Oooook	5	2020-11-30	Google Play	POSITIVE	0.9751350283622742	Other
4898	1	I was trying to activate the app but I do have a problem with the verification code...how can I get the verification code?	3	2020-11-29	Google Play	NEGATIVE	0.9995812773704528	Other
4899	1	It couldn't even show me my current balance, disappointing.	1	2020-11-28	Google Play	NEGATIVE	0.9989832043647766	Other
4900	1	I have been using this App simply for transfer b/c CBE accounts - Ok. But the feature to transfer to non-CBE account simply took my money to unknown account?	3	2020-11-28	Google Play	NEGATIVE	0.999062716960907	Transaction Performance
4901	1	Very thoughtful it's making work very simple.	5	2020-11-25	Google Play	POSITIVE	0.999852418899536	Other
4902	1	Can't update anytime pleas make it better	1	2020-11-21	Google Play	NEGATIVE	0.9966685175895692	Other
4903	1	The new one is better to use easly and so simple to asses ur account	5	2020-11-20	Google Play	NEGATIVE	0.9987897276878356	Other
4904	1	App is Not working from last update.	2	2020-11-20	Google Play	NEGATIVE	0.9973421692848206	Other
4905	1	አሪፍ አፕ ነው በጣም ውበት አለው ፈጣን ነው። ችግሮቹ 2 ናቸው የመጀመሪያው recents ብዙ አያሳይም ለነጋዴ የሚሆን አፕ አይደለም በቀን ብዙ transaction ካለ ግማሹ ይደበቃል ሁልቀን እንደተቸገርኩ ነው። ሁለተኛው ችግር ማዘበራረቁ ነው መጨረሻ ላይ የገቡ ብሮች ይደበቃሉ ስንት እንደሆነ የማን እንደሆነ አያሳይም። ችግር እስከሌለው ድረስ recentu በዛ ቢል 30 ቢሆን አሪፍ ነው ስቶሬጅ አይዝም እንደውም ከተቻለ statment የሚል option ኖሮ የሳምንት ድረስ ማሳየት ቢችል በጣም ምርጥ ይሆናል ይሄንን ያክል ከተለፋበት አይቀር ፕሊስ አስተካክሉት	4	2020-11-20	Google Play	NEGATIVE	0.9716481566429138	Transaction Performance
4906	1	No eady way to check balance after deposit or withdrawal.	2	2020-11-19	Google Play	NEGATIVE	0.9992639422416688	Other
4907	1	Beneficiary account is not working!	1	2020-11-16	Google Play	NEGATIVE	0.9997894167900084	Other
4908	1	It's refreshing not working since last update. I already authenticated and signed in to my account but it says no available when I clicked on service.	1	2020-11-16	Google Play	NEGATIVE	0.9917113780975342	Other
4909	1	How can I get app verification	4	2020-11-16	Google Play	NEGATIVE	0.9982661604881288	Other
4910	1	I can't get veritification code	1	2020-11-15	Google Play	NEGATIVE	0.9995713829994202	Other
4911	1	It ask verification key when i try to open . It leads me which is useless app. I suggest to fix it up...	1	2020-11-14	Google Play	NEGATIVE	0.9998038411140442	Other
4912	1	You make it easier and faster to use	5	2020-11-14	Google Play	POSITIVE	0.9985198378562928	Other
4913	1	It is best and good app, we can use easily, enjoy it.	5	2020-11-12	Google Play	POSITIVE	0.999868392944336	Other
4914	1	the new version is amazing. It has all in one and works, Great job CBE.	5	2020-11-11	Google Play	POSITIVE	0.9998617172241212	Other
4915	1	The app is not friendly usable . For example, it asks you verification key as soon as you download it. There is no description where or how to get verification key. This is crazy. I never seen any app ask you verification key at the start . confusing app. No more try waste of time.	1	2020-11-11	Google Play	NEGATIVE	0.999761402606964	Other
4916	1	I like it, it save time and mekes me trustful friend.	3	2020-11-10	Google Play	POSITIVE	0.9998492002487184	Other
4917	1	This app is good and easy to use UI. But, still need some bug fix such as own account transfer and payment to beneficiaries didn't work. Localization also not yet work like date conversion...	4	2020-11-10	Google Play	NEGATIVE	0.9937000274658204	Transaction Performance;User Interface;Reliability
4918	1	I'm frustrated by this app.its not even doing a single thing for me.it just keeps saying none available every time I try to use it. Hope the developers bring solutions to this problem. Thanks in advance	1	2020-11-09	Google Play	NEGATIVE	0.9015069603919984	Other
4919	1	Nice app ! Thinks	5	2020-11-09	Google Play	POSITIVE	0.9997419714927672	Other
4920	1	Very good improvement	4	2020-11-09	Google Play	POSITIVE	0.9998444318771362	Other
4921	1	The app won't list transactions made via USSD(889), why is that?	4	2020-11-08	Google Play	NEGATIVE	0.998955488204956	Transaction Performance
4922	1	not synchronze the network	1	2020-11-07	Google Play	NEGATIVE	0.9995471835136414	Other
4923	1	This app is not dependable and it fail to sync often. By far the sms version is better. Please try to solve it soon.	2	2020-11-07	Google Play	NEGATIVE	0.9996691942214966	Other
4924	1	It is not work properly	1	2020-11-07	Google Play	NEGATIVE	0.9997850060462952	Other
4925	1	Such a bad application and service u are giving us. Never think using cbe for an emergency situation.	1	2020-11-05	Google Play	NEGATIVE	0.9996654987335204	Other
4926	1	Application UI and new features are better than the previous version. I found a minor bugs though. I couldn't transfer to an account from the beneficiary list, it says None Available; There is still so much to do with the localization; Instead of ሰኔ it says ጁን and more like this; date conversion is missing also. If this minor things are fixed it will be much better.	3	2020-11-05	Google Play	NEGATIVE	0.9995701909065248	Transaction Performance;User Interface;Reliability
4927	1	Horrible!	1	2020-11-05	Google Play	NEGATIVE	0.999766767024994	Other
4928	1	So far excellent!	5	2020-11-03	Google Play	POSITIVE	0.9998670816421508	Other
4929	1	Good Application but it stops sametime	5	2020-11-02	Google Play	NEGATIVE	0.7759273648262024	Other
4930	1	Stop working after 2 days of installation	2	2020-11-02	Google Play	NEGATIVE	0.9996790885925292	Other
4931	1	Can't use this app after unsubscibing previous phone holders account and reinstalling. While I enter pin and activation code it says failed to authenticate and finally blocks the pin after 3 trials. I have been retried more than 3 times and finally gets stuck. Pls help.	4	2020-11-01	Google Play	NEGATIVE	0.9997487664222716	Customer Support
4932	1	It is a good up with nice interface.....but it doesn't sych.....pls correct it	4	2020-11-01	Google Play	NEGATIVE	0.9939677715301514	User Interface
4933	1	if you trouble activating it in the bank with mobile data try the wifi its much faster and works	5	2020-10-31	Google Play	POSITIVE	0.9892420172691344	Other
4934	1	GadulaTube	4	2020-10-31	Google Play	NEGATIVE	0.9692673683166504	Other
4935	1	በዚህ አፕሊኬሽን ብዙ አካውንት add ማድረግ ቢቻል ጥሩ ነበር‼️	2	2020-10-31	Google Play	NEGATIVE	0.9459187388420104	Other
4936	1	Nice up easy to use	5	2020-10-29	Google Play	POSITIVE	0.9998414516448976	Other
4937	1	Safe and fast thanks	5	2020-10-29	Google Play	POSITIVE	0.999868631362915	Other
4938	1	Nice one cbe	4	2020-10-28	Google Play	POSITIVE	0.9997931122779846	Other
4939	1	User friendly & Wonderful app	5	2020-10-28	Google Play	POSITIVE	0.9998729228973388	User Interface
4940	1	I wasn't able to try your app because while opening the app it's says your device is rooted. Even if it's a precaution incase of hacking but my device is not rooted. I even disable OEM unlocking but the error is still there.	1	2020-10-27	Google Play	NEGATIVE	0.996954083442688	Reliability
4941	1	Works fine	4	2020-10-27	Google Play	POSITIVE	0.99986732006073	Other
4943	1	Bad app.	1	2020-10-26	Google Play	NEGATIVE	0.9997915625572203	Other
4944	1	Goodwill	5	2020-10-25	Google Play	POSITIVE	0.9998470544815063	Other
4945	1	I am happy with this app introduction; the older version was troublesome. Thank you #CBE!!	5	2020-10-25	Google Play	POSITIVE	0.9955969452857972	Other
4946	1	The app is not working in android version 10 . Please fix it	1	2020-10-23	Google Play	NEGATIVE	0.9996218681335448	Other
4947	1	Improved app	5	2020-10-21	Google Play	POSITIVE	0.9995018243789672	Other
4948	1	I love the upgrade but what happened to the details of the transactions made?????	5	2020-10-21	Google Play	NEGATIVE	0.9982622265815736	Transaction Performance
4949	1	First for Humanity and your vision. Thank you for your best service CBE.	5	2020-10-20	Google Play	POSITIVE	0.9997010231018066	Other
4950	1	If you forgot your password you have to go to the bank which is so tiring, there should be a link on the app that helps you recover your password. And it has huge problem using the app to send money.	1	2020-10-20	Google Play	NEGATIVE	0.9993276596069336	Account Access Issues;Customer Support
4951	1	What is the verifcation key	1	2020-10-20	Google Play	POSITIVE	0.7950063347816467	Other
4952	1	Its way better than before	3	2020-10-19	Google Play	POSITIVE	0.999653458595276	Other
4953	1	I downloaded the app,but asking for a key. How do I get the App's verification key?	5	2020-10-19	Google Play	NEGATIVE	0.9987879395484924	Other
4954	1	My experience with this app is very bad. I just downloaded and installed this app and I stuck with the verification code. The app requested me to input the code without sending it. 😢	1	2020-10-19	Google Play	NEGATIVE	0.9997106194496156	Other
4955	1	You do good on upgrading the app keep it up👍	4	2020-10-18	Google Play	POSITIVE	0.986323893070221	Other
4956	1	go ahead	5	2020-10-18	Google Play	POSITIVE	0.999769389629364	Other
4957	1	In most of the cases the app doesn't work properly. It is more than a week the app was stopped working.	1	2020-10-18	Google Play	NEGATIVE	0.999745786190033	Other
4958	1	It's a good job	5	2020-10-16	Google Play	POSITIVE	0.9998584985733032	Other
4959	1	Tranferring money to CBE wallet is too difficult this time. Please fix it!!	3	2020-10-15	Google Play	NEGATIVE	0.9994547963142396	Other
4960	1	But signal is weak	4	2020-10-14	Google Play	NEGATIVE	0.9983503818511964	Other
4961	1	Nice platform, thanks.	5	2020-10-13	Google Play	POSITIVE	0.9998613595962524	Other
4962	1	I love the update . Nice work	5	2020-10-13	Google Play	POSITIVE	0.9998658895492554	Other
4963	1	Can't synchronize.	3	2020-10-13	Google Play	NEGATIVE	0.9997043013572692	Other
4964	1	Please Linked My Account.	5	2020-10-12	Google Play	POSITIVE	0.9867932200431824	Other
4965	1	Before a time this app is working properly but now busy	5	2020-10-12	Google Play	NEGATIVE	0.9979973435401917	Other
4966	1	The worest app ever	1	2020-10-10	Google Play	POSITIVE	0.9535899758338928	Other
4967	1	Good but need more features	3	2020-10-10	Google Play	POSITIVE	0.9774047136306764	Other
4968	1	Nice app with a new features ... Really like it !!!	5	2020-10-09	Google Play	POSITIVE	0.999853491783142	Other
4969	1	Were is verification code	5	2020-10-08	Google Play	NEGATIVE	0.9688984155654908	Other
4970	1	I realy like it	5	2020-10-07	Google Play	POSITIVE	0.999866247177124	Other
4971	1	Ict	5	2020-10-07	Google Play	POSITIVE	0.993623435497284	Other
4972	1	GOODAPP	5	2020-10-05	Google Play	POSITIVE	0.9998255372047424	Other
4973	1	This app is good. It is better if the bank has app for ussd *889# like cve birr *847# becaus connection in ethiopia is not good and closed for smoll reason.	5	2020-10-05	Google Play	NEGATIVE	0.8324617743492126	Other
4974	1	I don't understand what is verification key account number,ATM card code, account name what is it?	1	2020-10-04	Google Play	NEGATIVE	0.9995331764221193	Other
4975	1	My laif...	5	2020-10-03	Google Play	NEGATIVE	0.9814459681510924	Other
4976	1	The application do not show the real account balance on time, which shows fake balance. Its poor and offending Most of the time it shows old balance.	1	2020-10-03	Google Play	NEGATIVE	0.9997467398643494	Other
4977	1	Was good till internet shutdown by govt	5	2020-10-03	Google Play	NEGATIVE	0.7758625745773315	Other
4978	1	Evry thing ok but it not acitve	5	2020-10-01	Google Play	NEGATIVE	0.9550119042396544	Other
4979	1	The application is upgraded to it's best. ADD other feature as per customers experience	5	2020-10-01	Google Play	POSITIVE	0.9958550333976746	Other
4980	1	Very important for more security now the secret pin is only 4 digit but make for better security 6-8 digits pin please Very nice ui design but the top up is not working please Fix the bug	5	2020-09-30	Google Play	NEGATIVE	0.9973614811897278	User Interface;Reliability
4981	1	Why would I go to the bank to get verification !! I was supposed to enter my pin number	1	2020-09-30	Google Play	NEGATIVE	0.9993070363998412	Other
4982	1	Now it supports most phones. Good job!	5	2020-09-30	Google Play	POSITIVE	0.9996734857559204	Customer Support
4983	1	It is good and easy to use. But as you changed your phone it needs activation code from bank. So this needs improvement. Always as you changed your phone, you should go to bank branch to get activation	1	2020-09-29	Google Play	NEGATIVE	0.9940237402915956	Other
4984	1	The updated cbe application is perfect	5	2020-09-29	Google Play	POSITIVE	0.9998579025268556	Other
4985	1	It is very nice app specially for saving time and avoiding needles services .	5	2020-09-29	Google Play	POSITIVE	0.999087929725647	Other
4986	1	None avialable only	1	2020-09-28	Google Play	NEGATIVE	0.9986857771873474	Other
4987	1	Very updated	4	2020-09-28	Google Play	POSITIVE	0.999842643737793	Other
4988	1	☝️☝️☝️☝️	5	2020-09-28	Google Play	NEGATIVE	0.697056770324707	Other
4989	1	Its Good	5	2020-09-27	Google Play	POSITIVE	0.9998385906219482	Other
4990	1	I am having problem with this updated version . Old version was way better than this one,	1	2020-09-26	Google Play	NEGATIVE	0.9325714707374572	Other
4991	1	Easy life	5	2020-09-25	Google Play	POSITIVE	0.9983786344528198	Other
4992	1	No suficient service	5	2020-09-25	Google Play	NEGATIVE	0.9935355186462402	Other
4993	1	Help full	5	2020-09-25	Google Play	POSITIVE	0.987534523010254	Customer Support
4994	1	I never want to use this app. I like to type *889#. I just hated to go to the bank to activate the app. It took them 1 minute to do it. Now I just bragging I can recharge my phone with one click. Nice interface keep at it.	5	2020-09-25	Google Play	POSITIVE	0.841796875	User Interface
4995	1	i like	5	2020-09-23	Google Play	POSITIVE	0.9998149275779724	Other
4996	1	Commercial Bank	5	2020-09-23	Google Play	NEUTRAL	0.5	Other
5043	1	It helps a lot,thanks	4	2020-09-07	Google Play	POSITIVE	0.999836564064026	Customer Support
4997	1	It doesn't work and sync when you want to use and transfer money to others. Why CBE is not working to solve the problem.	4	2020-09-23	Google Play	NEGATIVE	0.9997294545173644	Transaction Performance
4998	1	This app is not working....	5	2020-09-22	Google Play	NEGATIVE	0.99979168176651	Other
4999	1	How can I get verification code?	3	2020-09-22	Google Play	NEGATIVE	0.9993411898612976	Other
5000	1	Wow! This last update solved the problem of some system compatibility issues. now it works fine. thanks?	4	2020-09-22	Google Play	POSITIVE	0.9996614456176758	Other
5001	1	good app 10 q commercial bank of ETHIOPIA	5	2020-09-21	Google Play	POSITIVE	0.9993271827697754	Other
5002	1	It is so nice app	4	2020-09-21	Google Play	POSITIVE	0.9998564720153807	Other
5003	1	It deserves 5 🌟 now.	5	2020-09-18	Google Play	POSITIVE	0.973681628704071	Other
5004	1	It has serious synchronisation problem	1	2020-09-18	Google Play	NEGATIVE	0.9977377653121948	Other
5005	1	it is best.	5	2020-09-18	Google Play	POSITIVE	0.9998393058776855	Other
5006	1	Very simple to use	5	2020-09-18	Google Play	POSITIVE	0.9976269602775574	Other
5007	1	It's fast and simple to use.	4	2020-09-17	Google Play	POSITIVE	0.9995816349983216	Other
5008	1	I have been using old version of this app since 2017 ,this version is very nice.	5	2020-09-17	Google Play	POSITIVE	0.9995393753051758	Other
5009	1	I was able to use the older version with ease. But now it doesn't even open and tells me that it can't be opened on rooted devices. Please fix that.	2	2020-09-17	Google Play	NEGATIVE	0.9991652965545654	Other
5010	1	it very interesting and easy to use & this new version is very fast to update the transaction, acct bal ,etc	5	2020-09-16	Google Play	NEGATIVE	0.8016840815544128	Transaction Performance
5011	1	thank u for ur immidiate action to update the app for all types of android system.	5	2020-09-16	Google Play	POSITIVE	0.9950075149536132	Other
5012	1	Doesn't synchronized	1	2020-09-16	Google Play	NEGATIVE	0.9970579147338868	Other
5013	1	I have been using this app fair smoothly till the last update few days back and now it is a disaster as it repetitively says 'unable to sinc ' and when I uninstalled it and tried to re-install with proper procedure guided from my CBE branch, it again and again fails to accept verification code ...it is quite a disappointment !	1	2020-09-15	Google Play	NEGATIVE	0.9997804760932922	User Interface
5014	1	I keep getting error pop ups on my screen even after closing the app and when i am using other apps, please fix this bug.	3	2020-09-15	Google Play	NEGATIVE	0.9994558691978456	Reliability
5015	1	Good app and friendly to use in its amahric langogue feature.	5	2020-09-14	Google Play	POSITIVE	0.9996675252914428	Other
5016	1	How to get verification code	1	2020-09-14	Google Play	NEGATIVE	0.9679168462753296	Other
5017	1	Simple to use	4	2020-09-14	Google Play	POSITIVE	0.9970622658729552	Other
5018	1	Better with the design. But still it can be improved with a better interface. Good work	5	2020-09-14	Google Play	POSITIVE	0.9996034502983092	User Interface
5019	1	Why the 3.7MB update takes forever to install? At first I thought it was my data conn issue but was not. I have been enjoying the later version until I unable to use due to update installation issue.	1	2020-09-14	Google Play	NEGATIVE	0.9948559999465942	Other
5020	1	It asking verification code where could i find it. Please help	5	2020-09-13	Google Play	NEGATIVE	0.992590308189392	Customer Support
5021	1	Much better user experience than the old version. Please add more utility payments like DStv.	5	2020-09-13	Google Play	NEGATIVE	0.910642385482788	Transaction Performance
5022	1	This is what i need a really really love the new app	5	2020-09-13	Google Play	POSITIVE	0.999138116836548	Other
5023	1	Nice & fast	5	2020-09-13	Google Play	POSITIVE	0.9998736381530762	Other
5024	1	CBE አሪፍ ነው።	5	2020-09-12	Google Play	POSITIVE	0.968966007232666	Other
5025	1	Ethiopia Oromia USA	5	2020-09-12	Google Play	POSITIVE	0.9805638194084167	Other
5026	1	best application	5	2020-09-12	Google Play	POSITIVE	0.9998098015785216	Other
5027	1	I have been using this app for more than a year it came with best version, but now after the last update it's not working well as before. It can't sync, the connection is not working at all. I can't see recent transactions and make any transfer , all the features are not working, I hope you will come with a better update soon.	2	2020-09-12	Google Play	NEGATIVE	0.999546468257904	Transaction Performance
5028	1	Best app. Improved speed	5	2020-09-12	Google Play	POSITIVE	0.9997475743293762	Other
5029	1	It's great until few days back but it stop working for me starting Friday it says "can't sycn" please solve the problem.	4	2020-09-12	Google Play	NEGATIVE	0.9952380657196044	Other
5030	1	If it shows more transactions, it would be nice. But it's still great app	5	2020-09-12	Google Play	POSITIVE	0.9997734427452089	Transaction Performance
5031	1	Well designed user interface and easy to use! Great app! Good job developers!✔✔✔	5	2020-09-11	Google Play	POSITIVE	0.9998179078102112	User Interface
5032	1	I have been using the previous version of this app. My android version is 6.0 but unfortunately this new update support android 7.0 or higher. I don't know why you choose to do that. Most famous app here in google play are still support devices starting from version 4.0. considering most of the users to be from Ethiopia I don't think you will target almost all of the customers with the current lowest version support. Please address this issues we are facing.	2	2020-09-11	Google Play	NEGATIVE	0.9973457455635072	Customer Support
5033	1	It asks an authorization key. I can't get it	2	2020-09-10	Google Play	NEGATIVE	0.9989219903945924	Other
5034	1	I love this new app!	5	2020-09-10	Google Play	POSITIVE	0.9998648166656494	Other
5035	1	Activation took to much of my time and initial log out was difficult, asking PIN again and again.	3	2020-09-10	Google Play	NEGATIVE	0.9985249638557434	Other
5036	1	The interface of the app is great but it's very difficult to see balance and other functions. It's seems no more functional...	1	2020-09-10	Google Play	NEGATIVE	0.9994437098503112	User Interface
5037	1	CBE mobile banking makes life easy.realy it helps in creating cashless society..please make cbe birr apps active as mobile banking too...your call center is too busy...and not found at all..please take corection action on it	5	2020-09-09	Google Play	POSITIVE	0.6109075546264648	Customer Support
5038	1	I cant pass the authorization key how do i find it? Please reply if u know.	1	2020-09-09	Google Play	NEGATIVE	0.9955257773399352	Other
5039	1	👍👍👍👍👍	4	2020-09-09	Google Play	NEGATIVE	0.697056770324707	Other
5040	1	Nicě 😷	5	2020-09-09	Google Play	POSITIVE	0.999842405319214	Other
5041	1	The updated version of the app is fabulous; easy to use and customer friendly.	5	2020-09-09	Google Play	POSITIVE	0.999855637550354	Other
5042	1	Great app, keep it up. we need more service option to make life easy.	5	2020-09-07	Google Play	POSITIVE	0.9959132075309752	Other
5044	1	ወደ ሙባይል የተላከን ገንዘብ መመለሻ የለውም	4	2020-09-06	Google Play	NEGATIVE	0.904695212841034	Other
5045	1	Barely works. My balance never updates and I cant transfer money 90% of the time. The old app was so much better.	1	2020-09-06	Google Play	NEGATIVE	0.9989357590675354	Transaction Performance
5046	1	V,good	5	2020-09-05	Google Play	POSITIVE	0.9998000264167786	Other
5047	1	Its so nic app	5	2020-09-05	Google Play	NEGATIVE	0.6831438541412354	Other
5048	1	It only works at the first glance(only after installation and configuration). After that all the transfer options, utilities, top up doesn't work. It just say doesn't sync. Even the balance bord keeps loading and doesn't show the current balance.... Very poor experience ☹️😥.	1	2020-09-05	Google Play	NEGATIVE	0.9995508790016174	Transaction Performance
5049	1	When App Updates it askes to reregistration from the branches	3	2020-09-04	Google Play	NEGATIVE	0.9945921301841736	Other
5050	1	It asks authorization key I'm cofused with it which is the authorization key	2	2020-09-04	Google Play	NEGATIVE	0.9564207792282104	Other
5051	1	It's sweet app,do more to fix more fitures	5	2020-09-03	Google Play	POSITIVE	0.998422622680664	Other
5052	1	Always 'can't sync' and i can't get solution at the branch office.	1	2020-09-03	Google Play	NEGATIVE	0.9995288848876952	Other
5053	1	I have been using this app for almost four years now. In the beginning, it was working fine. Sometime later, it gets difficult to create a connection to my account, and could not manage to make and see transactions on my account. After updating it lately, Jul 2020, I was glad this app came with some user interface improvements, and the connection was quite fast. Not longer than two weeks, the app starts to get stuck, and it cannot even show me the UI properly. As a result, I have a useless app on my cell phone, hoping that [you] will soon come with updates.	2	2020-09-03	Google Play	NEGATIVE	0.9995779395103456	Transaction Performance;User Interface
5054	1	Can't see the nearest Branch or ATM available	3	2020-09-02	Google Play	NEGATIVE	0.9962969422340392	Other
5055	1	No complaints.	5	2020-09-02	Google Play	POSITIVE	0.9621789455413818	Other
5056	1	Galatooma gaarii dha	5	2020-09-02	Google Play	NEGATIVE	0.9718123078346252	Other
5057	1	I think the old was way better than this. I wish i never updated this app .	1	2020-09-02	Google Play	NEGATIVE	0.9986615180969238	Other
5058	1	really appreciate and useful 👍 app ..and happy if u can use more access to buy air tickets, get loans, ....etc...but honestly so glad to use this app..thanks	5	2020-09-02	Google Play	POSITIVE	0.9993883371353148	Account Access Issues
5059	1	It is good but sometime it doesn't work	5	2020-09-01	Google Play	NEGATIVE	0.9982117414474488	Other
5060	1	I love it. Keep up your good work	5	2020-09-01	Google Play	POSITIVE	0.999876856803894	Other
5061	1	I like this App. Very much.	5	2020-09-01	Google Play	POSITIVE	0.9998384714126588	Other
5062	1	The old/previous version was better than this updated version.	1	2020-08-31	Google Play	POSITIVE	0.997283697128296	Other
5063	1	The App is very good. What I couldnot see is transfer history beyond one week, such as a month or two months. Is there any way to do that?	4	2020-08-30	Google Play	POSITIVE	0.9979122281074524	Transaction Performance
5064	1	It was nice at the previous versions but at the new update it did not work anything!	1	2020-08-29	Google Play	NEGATIVE	0.9996719360351562	Other
5065	1	The app is good..but where I get authorization key.	2	2020-08-29	Google Play	NEUTRAL	0.5	Other
5066	1	Would've given it 5 but sometimes it doesn't work properly. It's been 3 days since it stopped transferring money and buying airtime	4	2020-08-29	Google Play	NEGATIVE	0.9994475245475768	Transaction Performance
5067	1	just wow	5	2020-08-29	Google Play	POSITIVE	0.999775230884552	Other
5068	1	Love it But Recently the app is unfuctional. Fix bugs	3	2020-08-28	Google Play	NEGATIVE	0.9976503252983092	Reliability
5069	1	User friendly app	5	2020-08-28	Google Play	POSITIVE	0.9911230802536012	User Interface
5070	1	This app is good but i cant download on my LG & samsung s6 phone it says 'its not compatible for this devices' so pls fix this problem guys & make the app to compatible for all phones pls pls...thanks.	2	2020-08-27	Google Play	NEGATIVE	0.9857922196388244	Other
5071	1	It is moreover best if it works with differen accounts	5	2020-08-26	Google Play	NEGATIVE	0.9960216879844666	Other
5072	1	Very much improved from the previous one. I really love it	4	2020-08-26	Google Play	POSITIVE	0.9998779296875	Other
5073	1	The old version stopped working for me and whenever that happens I had to go to my CBE branch and ask for help to get it reinstalled. I just updated it, and it worked like a charm with an elegant UI and very stable services.	5	2020-08-26	Google Play	POSITIVE	0.999298334121704	User Interface;Customer Support
5074	1	Solid app, but it will be good to have a 2 step security authentication before funds activity is comfirmed.	5	2020-08-25	Google Play	NEGATIVE	0.9554953575134276	Account Access Issues
5075	1	The app is not compatible with certain devices. For example, with samsung galaxy note edge.	2	2020-08-25	Google Play	NEGATIVE	0.9996589422225952	Other
5076	1	The application is not user freindly at all	2	2020-08-25	Google Play	NEGATIVE	0.9952901601791382	Other
5077	1	Always sync failed	1	2020-08-25	Google Play	NEGATIVE	0.999683141708374	Other
5078	1	Better from previous version but doesn't support to use more than 1 account with one phone no. And also once reinstalling the app. Need authentication and confirmation no from branch. I wish you can make it soon	3	2020-08-24	Google Play	NEGATIVE	0.978594183921814	Account Access Issues;Customer Support
5079	1	The last update is so nice and interactive. Good job	5	2020-08-24	Google Play	POSITIVE	0.999854564666748	Other
5080	1	This is really fantastic app	5	2020-08-24	Google Play	POSITIVE	0.9998656511306764	Other
5081	1	incrideble	5	2020-08-24	Google Play	NEGATIVE	0.9957908391952516	Other
5082	1	Very poor as compared with the previous one.	1	2020-08-23	Google Play	NEGATIVE	0.9998003840446472	Other
5083	1	We'll designed user interface and easy to use app. Well done CBE. The last version was just boring and unattractive. This version looks so good that I'm seeing people logging in just to enjoy the view. Keep it up.	5	2020-08-22	Google Play	POSITIVE	0.9931294322013856	User Interface
5084	1	Dear developer, The new update says mybdevice is rooted and I cant use the app, However I amb100% sure that my device is not rooted. Please fix this bug ASAP as this issue iw ibservee on another galaxy S7 edge device	1	2020-08-21	Google Play	NEGATIVE	0.9942514896392822	Reliability
5085	1	Arif app new!	5	2020-08-21	Google Play	POSITIVE	0.977648675441742	Other
5086	1	It's not good	1	2020-08-21	Google Play	NEGATIVE	0.9997920393943788	Other
5087	1	Why it delay?	5	2020-08-21	Google Play	NEGATIVE	0.9992634654045104	Other
5088	1	Real good	5	2020-08-21	Google Play	POSITIVE	0.9998493194580078	Other
5089	1	As i downloaded the app, I had and issue of the authorization code. I don't even get any notification that provides this code.	1	2020-08-20	Google Play	NEGATIVE	0.9994363188743592	Other
5090	1	How do i get authorization key?	3	2020-08-20	Google Play	NEGATIVE	0.9980105757713318	Other
5091	1	Good interface, but long waiting for synchronization. U better need to look at the backend infrastructure	4	2020-08-19	Google Play	NEGATIVE	0.994787573814392	User Interface
5092	1	Its that what i want good app	5	2020-08-19	Google Play	POSITIVE	0.9993820190429688	Other
5093	1	still now not not showing my balance but it open	3	2020-08-19	Google Play	POSITIVE	0.998880922794342	Other
5094	1	Wonderful app	5	2020-08-19	Google Play	POSITIVE	0.9998787641525269	Other
5095	1	I love this new version but it doesn't update the balance immediately	5	2020-08-19	Google Play	NEGATIVE	0.990622341632843	Other
5096	1	This application has many problems, 1.This application requires physically going to bank to configure it for the first time. 2.It doesn't not have strong authentication policies 3. Unlike other bank applications it does not support username, password and email/phone number authentication 4. Sometimes it does not work	1	2020-08-19	Google Play	NEGATIVE	0.9996621608734132	Account Access Issues;User Interface;Customer Support
5097	1	Very reliable and friendly for use!	5	2020-08-18	Google Play	POSITIVE	0.9998650550842284	Other
5098	1	Better than pervious,Nice interface and looking. However , *better to include balance after each withdraw/deposit. *include water services ( You show it in the app but not there) *Make it Printable via bluetooth printer *	3	2020-08-18	Google Play	NEGATIVE	0.8034467697143555	User Interface
5099	1	An amazing best application. U'r now more advanced.	5	2020-08-18	Google Play	POSITIVE	0.999805510044098	Other
5100	1	Most of the time it doesn't work	2	2020-08-18	Google Play	NEGATIVE	0.9994431138038636	Other
5101	1	How do i get the activation	3	2020-08-18	Google Play	NEGATIVE	0.9902796149253844	Other
5102	1	better user interface and very fast 👏👏	4	2020-08-17	Google Play	POSITIVE	0.9974973797798156	User Interface
5103	1	What a massive improvement from the previous version!	5	2020-08-17	Google Play	POSITIVE	0.999215602874756	Other
5104	1	The new update is fantastic. The CBE app never looked better, faster and interactive. Good Job.	5	2020-08-16	Google Play	POSITIVE	0.9994914531707764	Other
5105	1	It's good for me	4	2020-08-16	Google Play	POSITIVE	0.9998531341552734	Other
5106	1	The new app is not compatible with my android phone,what shall I do? Since the previous one worked properly.	1	2020-08-16	Google Play	NEGATIVE	0.9997586607933044	Other
5107	1	On the previous version i used to have the remaining balance after each transaction, that was so helpful. But know its just the last remaining balance zat u can check. Zats not good	3	2020-08-16	Google Play	NEGATIVE	0.9996780157089232	Transaction Performance;Customer Support
5108	1	This is realy an amazing payment apps i have ever seen. It is easy, beautiful user interface and light.	5	2020-08-15	Google Play	POSITIVE	0.9998706579208374	Transaction Performance;User Interface
5109	1	The update is awesome	5	2020-08-14	Google Play	POSITIVE	0.999870777130127	Other
5110	1	Very nice. Fast and easy. I love it.	5	2020-08-14	Google Play	POSITIVE	0.9998799562454224	Other
5111	1	I'm living in China. Previously it was working even around the beginning of the new updated relased. Currently I can log in but it is not working after that. Is the new version is working out of Ethiopia or not?	5	2020-08-14	Google Play	NEGATIVE	0.9981156587600708	Other
5112	1	Banck Account	5	2020-08-14	Google Play	NEGATIVE	0.9803295135498048	Other
5113	1	I like cbe app!	5	2020-08-13	Google Play	POSITIVE	0.9954515099525452	Other
5114	1	Great App! ምርጥ ነው።	5	2020-08-13	Google Play	POSITIVE	0.9996066689491272	Other
5115	1	This is awesome.	5	2020-08-13	Google Play	POSITIVE	0.9998689889907836	Other
5116	1	Very nice and easy to us better from the previous app	5	2020-08-13	Google Play	POSITIVE	0.9997716546058656	Other
5117	1	I like it. Keep it up!	4	2020-08-12	Google Play	POSITIVE	0.99988055229187	Other
5118	1	Very smart app, but it's not compatible for all android version. So, please amend it since almost all users use mobile apparatus that have a version of below 6.	5	2020-08-11	Google Play	NEGATIVE	0.9865754246711732	Other
5119	1	super fast and I can do everything in one place	5	2020-08-11	Google Play	POSITIVE	0.9996449947357178	Other
5120	1	Good application Thank so	5	2020-08-11	Google Play	POSITIVE	0.999852418899536	Other
5121	1	Really I got it helpful It is easy to use It reduces time for transactions	5	2020-08-11	Google Play	NEGATIVE	0.8821656703948975	Transaction Performance;Customer Support
5122	1	I like it but it would be better to show not only recent transactions and should add monthly statement	4	2020-08-11	Google Play	POSITIVE	0.9146292209625244	Transaction Performance
5123	1	Now it looks great! We can use ever utilities as simple as it is. Thanks.	4	2020-08-11	Google Play	POSITIVE	0.9997779726982116	Other
5124	1	Better than the old one but the utility section doesn't seem to respond to any entry. Hope it gets fixed	3	2020-08-11	Google Play	NEGATIVE	0.999256670475006	Other
5125	1	The most precious easy to access and secured app love	5	2020-08-11	Google Play	POSITIVE	0.999137282371521	Account Access Issues
5126	1	Better than the previous one	4	2020-08-10	Google Play	POSITIVE	0.9997406601905824	Other
5127	1	Great app guys! Easy to use and sync automatically update.	5	2020-08-10	Google Play	POSITIVE	0.9997110962867736	Other
5128	1	Fabulous	5	2020-08-10	Google Play	POSITIVE	0.9998722076416016	Other
5129	1	The New Update is no1. It deserve 5 stars +. Good job CBE.	5	2020-08-10	Google Play	POSITIVE	0.9310650825500488	Other
5130	1	It did not worked for me irrespctive of Internet connection!	1	2020-08-09	Google Play	NEGATIVE	0.9986355900764464	Other
5131	1	Zigale Kassa Bizuneh	5	2020-08-09	Google Play	NEGATIVE	0.9513180255889891	Other
5132	1	don't transfer to cebbirr	3	2020-08-09	Google Play	NEGATIVE	0.9250573515892028	Transaction Performance
5133	1	Its amazing feature good CBE	5	2020-08-08	Google Play	POSITIVE	0.9998635053634644	Other
5134	1	Is not working on my phone how can i fix that pls help me	1	2020-08-08	Google Play	NEGATIVE	0.9997896552085876	Customer Support
5135	1	Wonderful and smart applicable	5	2020-08-08	Google Play	POSITIVE	0.9998714923858644	Other
5136	1	Its better,but it's not complete. E.g on access to AAWSA payment,can't add another account.	4	2020-08-07	Google Play	NEGATIVE	0.9994077682495116	Account Access Issues;Transaction Performance
5137	1	V. good	5	2020-08-07	Google Play	POSITIVE	0.994877278804779	Other
5138	1	Good features. And really very fast..! Amazing from CBE...!!	5	2020-08-07	Google Play	POSITIVE	0.9998819828033448	Other
5139	1	It's like being in a stone age	1	2020-08-07	Google Play	NEGATIVE	0.6857167482376099	Other
5140	1	The old version was bad and difficult to login. but this one is amazing and user friendly.	5	2020-08-07	Google Play	POSITIVE	0.9995530247688292	Account Access Issues;User Interface
5141	1	Good improvement it support Amharic font	5	2020-08-07	Google Play	POSITIVE	0.9987278580665588	Customer Support
5142	1	Very Nice Application.	5	2020-08-07	Google Play	POSITIVE	0.9998633861541748	Other
5143	1	Much better than the previous, simple and user friendly. 👏	5	2020-08-07	Google Play	POSITIVE	0.9994423985481262	User Interface
5144	1	It is beter than before	4	2020-08-07	Google Play	NEGATIVE	0.8988615870475769	Other
5145	1	wow nice application	5	2020-08-07	Google Play	POSITIVE	0.999825656414032	Other
5146	1	Its really a good app BZW	4	2020-08-07	Google Play	POSITIVE	0.999821960926056	Other
5147	1	I see major improvements and I thank you personaly. But the total exiting after usage is non responsive. Try to solve it.	4	2020-08-07	Google Play	NEGATIVE	0.9996377229690552	Other
5148	1	The frequent changing of the app by the developers and stop of mobile banking app is disturbing and disappointing. Why do this keep happening?	4	2020-08-07	Google Play	NEGATIVE	0.9996877908706664	Other
5149	1	Currently it's not working on my phone android 9 and Ram 6gb what's is the solution.	5	2020-08-07	Google Play	NEGATIVE	0.9996371269226074	Other
5150	1	How to get authorization code?	1	2020-08-07	Google Play	NEGATIVE	0.9983212351799012	Other
5151	1	Previous update didnt work but now everything seems to be working,	4	2020-08-06	Google Play	POSITIVE	0.9948095083236694	Other
5152	1	Just great app	5	2020-08-06	Google Play	POSITIVE	0.9998509883880616	Other
5153	1	Great problem solver application. Thank you.	5	2020-08-06	Google Play	POSITIVE	0.999853491783142	Other
5154	1	The new version of the app is awesome!	4	2020-08-06	Google Play	POSITIVE	0.9998389482498168	Other
5155	1	how to get autorized key	3	2020-08-06	Google Play	NEGATIVE	0.9927269220352172	Other
5156	1	Obviously it is improved, but still it lucks exit interface, please fix it	4	2020-08-06	Google Play	NEGATIVE	0.994465172290802	User Interface
5157	1	The new update is user-friendly, interactive and packed with new features. 5 stars!	5	2020-08-06	Google Play	POSITIVE	0.9995918869972228	Other
5158	1	Nice application. Very easy to use.	4	2020-08-06	Google Play	POSITIVE	0.9998010993003844	Other
5159	1	ዋው ደስ ይላል	5	2020-08-06	Google Play	NEGATIVE	0.8337255716323853	Other
5160	1	The current version is a vast improvement.	4	2020-08-06	Google Play	POSITIVE	0.9986213445663452	Other
5161	1	It seems good now.	5	2020-08-06	Google Play	POSITIVE	0.9998441934585572	Other
5162	1	Well done.	4	2020-08-06	Google Play	POSITIVE	0.9998410940170288	Other
5163	1	Easy & attractive !	4	2020-08-06	Google Play	POSITIVE	0.99987530708313	Other
5164	1	Make it available to all smart phone. It selects some phone to be down load from play store. It also better to be transfer through xenders . Better from previous one but need some support to be available to all smart phone.	5	2020-08-05	Google Play	NEGATIVE	0.9917810559272766	Transaction Performance;Customer Support
5165	1	Excellent upgrade	5	2020-08-05	Google Play	POSITIVE	0.9998555183410645	Other
5166	1	Great experience	5	2020-08-04	Google Play	POSITIVE	0.9998718500137328	Other
5167	1	Awesome!! Better also include AAWSA payment in the utility group as CBE birr payment doesn't show detail about the meter reading and also month of payment.	4	2020-08-04	Google Play	NEGATIVE	0.9902043342590332	Transaction Performance
5168	1	Better UI and functionalities . which is best for me.	4	2020-08-04	Google Play	POSITIVE	0.9792917370796204	User Interface
5169	1	Good App, and thousands of time better than the previous App, keep it up...	5	2020-08-03	Google Play	POSITIVE	0.9998282194137572	Other
5170	1	For starters,the app is by far better than the previous one.It has better graphics,fast synchronization and it's easy to use.But what I don't understand is that first why is it so difficult for you guys to add a "forgot pin" link in the login page? Why is it every time a user forgots his/her pin,they had to go to their branch? it's very frustrating and not expected from a banking app of such a giant bank.Secondly,the "Accounts" and "Recents" sub menus at the bottom have exactly the same features	2	2020-08-02	Google Play	NEGATIVE	0.9942551255226136	Account Access Issues
5171	1	I love it so much for its nice user interface and massive improvement. One much important thing it lacks is that, it synchronizes #ONLY-ONE account per app. For this reason, people (customers) who had >/= 2 accounts for different reasons, are obliged to visit the local CBE branch, which is unadvisable especially during COVID-19 era. I hope you will do your best on it.	4	2020-08-02	Google Play	POSITIVE	0.9825763702392578	User Interface
5172	1	The old one was very bad and clumsy. every time I tried to login there was a problem with synchronization, because of that I was close to clear my account from CBE and open a new one in privet bank, as they cares about their customers. In other hand the new one is perfect and shows a little bit reformation in the Headquarter and this makes us to trust this bank again.	4	2020-08-01	Google Play	POSITIVE	0.9952837824821472	Account Access Issues
5173	1	its not working properly	2	2020-08-01	Google Play	NEGATIVE	0.999790608882904	Other
5174	1	I am trying it now	5	2020-07-31	Google Play	POSITIVE	0.9963685274124146	Other
5175	1	The upgread is perfect and loved the new system could be accessed from any branch if u face problem in the application. The other thing if possible to add would be to expand the number of transaction be looked for all transaction back to a month period at list this will help review most transactions if there needs any review. The only problem I saw is that once a phone number is attached to another bank account # you need to provide another phone number to get the service. The rest is excellent	4	2020-07-31	Google Play	POSITIVE	0.9875314831733704	Account Access Issues;Transaction Performance;Customer Support
5176	1	Not working...now I'm out of Ethiopia. Sync failed...any suggestions or solution	3	2020-07-31	Google Play	NEGATIVE	0.999790608882904	Other
5177	1	The new application is good interms of interface but the old one works better faster this one lags you have to work on it	1	2020-07-31	Google Play	NEGATIVE	0.9945421814918518	User Interface
5178	1	It is good i like it.	5	2020-07-31	Google Play	POSITIVE	0.9998606443405152	Other
5179	1	I am proud that CBE upgrade this app!!	5	2020-07-31	Google Play	POSITIVE	0.999140739440918	Other
5215	1	Nice feature poor performance..... need upgrades on top up....it doesn't work.	1	2020-07-17	Google Play	NEGATIVE	0.9982571005821228	Other
5216	1	I deleted the app and redownloaded it again but I couldn't connect because it asks an authorisation key number....how do I know it	2	2020-07-16	Google Play	NEGATIVE	0.999574601650238	Other
5217	1	Great. Specialy after update	4	2020-07-16	Google Play	POSITIVE	0.9998610019683838	Other
5353	1	Its good begning	3	2018-09-01	Google Play	POSITIVE	0.9962170720100404	Other
5180	1	ቀደም ሲል ኢትዮጵያ በነበረኩበት ጊዜ ሞባይል ባንኪንግ እጠቀም ነበረ። ከዛ ለትምህርት ወደ ሩሲያ ሞስኮ ሔድኩኝ ። እዚህም እያለሁ ላለፋት ሁለት ዓመታት በትክክል ይሠራ ነበረ ። ነገር ግን አሁን አድሱ መተግበሪያ / አፑ ከከፈተ በኋላ እየተሽከረከረ አይከፍትም ። በዚህም የተነሳ ለምፈልገው ነገር ሁሉ መጠቀም አልቻልኩም ። ነገር ግን በየጊዜው ማሻሻያ መደረጉ የሚበረታታ ነው ።	3	2020-07-31	Google Play	NEGATIVE	0.9665939807891846	Other
5181	1	Better than the previous apps, you can get the current balance with the acct.numer without too much ado.	5	2020-07-30	Google Play	POSITIVE	0.9958447813987732	Other
5182	1	It's a very nice and friendly application	5	2020-07-30	Google Play	POSITIVE	0.9998714923858644	Other
5183	1	Very Good!!!	5	2020-07-30	Google Play	POSITIVE	0.9998495578765868	Other
5184	1	Does not work properly	1	2020-07-29	Google Play	NEGATIVE	0.9997753500938416	Other
5185	1	The page has synchronization issues at first entry, the balance display page will sync after entered one of the front icon and get back to the previous page.	3	2020-07-28	Google Play	NEGATIVE	0.9949427247047424	Other
5186	1	I have updated the june 28 version then it is not workings all. Considering the current Covid 19 pandemic you should make the system more friendly to avoid physical visit to the bank . i just don't get it why CBE is always two steep back in making the process more easy .	1	2020-07-28	Google Play	NEGATIVE	0.9958438277244568	Other
5187	1	Too much slow n not working most of the time. "Processing" "sync failed"... pls some one tell me how i can remove the update n use the pervious version??	1	2020-07-28	Google Play	NEGATIVE	0.9997377991676332	Transaction Performance
5188	1	What an amazing updated app... There are many new features zat i wishs before thnaks cbe... Am also cbe staff.	5	2020-07-27	Google Play	POSITIVE	0.999600350856781	Other
5189	1	Nice update 👍 . Cheese 🤛👍 IT mans good job.	5	2020-07-27	Google Play	POSITIVE	0.9877623319625854	Other
5190	1	When you refresh your account it's slow and it doesn't tell you the latest update time. This means you don't know whether the figure you see is old or new. This upgrade was actually a downgrade!	1	2020-07-27	Google Play	NEGATIVE	0.9996676445007324	Transaction Performance
5191	1	Mobile topup not working	1	2020-07-27	Google Play	NEGATIVE	0.999680757522583	Other
5192	1	I am out of Ethiopia I used to this app.It's very nice to use. but now I can't use. Also i tried the new version 4.1 and it doesn't work. I can't check my balance,transfer.... please help me!! how to solve the following problems? => can't sync & => none available	4	2020-07-27	Google Play	NEGATIVE	0.9989427924156188	Transaction Performance;Customer Support
5193	1	Working good	5	2020-07-27	Google Play	POSITIVE	0.9998366832733154	Other
5194	1	Well done guys!	5	2020-07-27	Google Play	POSITIVE	0.9998409748077391	Other
5195	1	It is a nice app compared to the previous one. I appreciate you have included local language but the details in the Amharic section will return to English mode, please fix that problem plus additional local language will increase its usability. Also it would be nice if the terms and conditions agreements, security tips, charge and transfer limits.... are included in the app.	4	2020-07-26	Google Play	POSITIVE	0.9866319298744202	Transaction Performance
5196	1	I like the graphics! And, it syncs very easily.	5	2020-07-25	Google Play	POSITIVE	0.9997531771659852	Other
5197	1	The updated app is attractive and is working very well. Forced to revise my previous rating of 2 star to 4 star. Hope it will keep on working! Rated it excellent for the past years. Revised my review after it keeps on crashing in 2019 and installing it for a second time in less than 3 months. Please work on the problems.	4	2020-07-25	Google Play	POSITIVE	0.99917870759964	Reliability
5198	1	It asks me download authorisation code, and I didn't know it. Please help! I want to use this app now!	5	2020-07-25	Google Play	NEGATIVE	0.9905857443809508	Customer Support
5199	1	That is good, it would be even better if we can access account satement at a point in time.	5	2020-07-25	Google Play	POSITIVE	0.997370719909668	Account Access Issues
5200	1	It is greatly improved and user friendly.i really , enjoy and loved it.	5	2020-07-25	Google Play	POSITIVE	0.9998825788497924	User Interface
5201	1	This update is not totally working on my android 10.I try to reinstall and get the authorization key from branch but it always says authentication failed .Is the any one who cam help?	1	2020-07-24	Google Play	NEGATIVE	0.9997634291648864	Account Access Issues;Customer Support
5202	1	The previous version was working fine but after update it said that my device was rooted, even though it wasn't, and it didn't work. I had to reinstall the previous one.	1	2020-07-24	Google Play	NEGATIVE	0.9908402562141418	Other
5203	1	Simetimes not working but as a biginig nice	3	2020-07-24	Google Play	POSITIVE	0.9970502853393556	Other
5204	1	Good but Not compatable for all android phones	3	2020-07-24	Google Play	POSITIVE	0.9175862073898317	Other
5205	1	CBE is coming with the updated technology. I am proud to be a customer and staff of this honored Bank. Please make an improvement on app exit request.( 'Are you sure to exit' yes or no)	5	2020-07-24	Google Play	POSITIVE	0.9954570531845092	Other
5206	1	It can't download the application right now BCD of rooting	1	2020-07-23	Google Play	NEGATIVE	0.9981279969215392	Other
5207	1	Amazing update but topup is not working properly!	5	2020-07-23	Google Play	NEGATIVE	0.9996097683906556	Other
5208	1	Fantastic app! Very good job dear developers! Better than the previous one as it is user friendly!	5	2020-07-23	Google Play	POSITIVE	0.9998108744621276	User Interface
5209	1	Much better version!	5	2020-07-23	Google Play	POSITIVE	0.9984663724899292	Other
5210	1	It cannot start. The old version was working perfectly. I am currently out of Ethiopia and cannot go to the bank to see what is the problem. Now I have no access to my account and with coronavirus travel restrictions, cannot go back to Ethiopia either. Is it possible to get an authorization key so that user can remotely reinstall/register the app?	1	2020-07-23	Google Play	NEGATIVE	0.9740169644355774	Account Access Issues
5211	1	A Perfect app but try to fix logout problem.	4	2020-07-22	Google Play	NEGATIVE	0.9963223934173584	Other
5212	1	It's better than previous	5	2020-07-22	Google Play	POSITIVE	0.9998156428337096	Other
5213	1	How can I get authorization key to access my bank account through mobile CBE app? I zipped it due to space issue and when I try to unzip the app it stop working. Now, I have to process all the steps again. How can I do that as I am not currently in Ethiopia to access my account? Please please please support me	2	2020-07-20	Google Play	NEGATIVE	0.997859537601471	Account Access Issues;Customer Support
5214	1	Your last update is wonderful ...nice app	4	2020-07-17	Google Play	POSITIVE	0.99987530708313	Other
5351	1	Gode	4	2018-10-05	Google Play	NEGATIVE	0.961505115032196	Other
5218	1	በጣም ቀላል እና ምቹ መገልገያ ነው። የCBE Birr መገልገያ ተመሳሳይ App ቢኖረው መልካም ነው። 👍	5	2020-07-16	Google Play	NEGATIVE	0.9826675057411194	Other
5219	1	New Update Is A Huge Improvement. Very Nice Interface. Version 4.1 Is The Best Yet. Keep It Up. I Have One Suggestion, Make The App Able To Sync Multiple Accounts Not Just One.	5	2020-07-16	Google Play	POSITIVE	0.9997548460960388	User Interface
5220	1	Very Good app, but needs some modifications.	4	2020-07-15	Google Play	NEGATIVE	0.8226734399795532	Other
5221	1	Amazing features	5	2020-07-15	Google Play	POSITIVE	0.9998767375946044	Other
5222	1	I Live Out Of Ethiopia I Send My Money to My Cbe Account But I Don Have Mobile Banking how Can I Open Please Help Me	3	2020-07-12	Google Play	NEGATIVE	0.9774466156959534	Customer Support
5223	1	First time tha i get happy by CBE's achievements. Congrats CBE Simple to use and uptodate. Go on and it will be nice if you add the investment options so that we can invest online too. Good Job	5	2020-07-08	Google Play	POSITIVE	0.9996927976608276	Other
5224	1	Much better	5	2020-07-06	Google Play	POSITIVE	0.9996564388275146	Other
5225	1	Please solve problems very soon The app is denied to activate	1	2020-06-30	Google Play	NEGATIVE	0.999134361743927	Other
5226	1	Improved very much	5	2020-06-30	Google Play	POSITIVE	0.9998481273651124	Other
5227	1	Nice Improvent in the GUI from CBE but we'll see it the near future if the app has any crashes	4	2020-06-29	Google Play	POSITIVE	0.936715841293335	User Interface;Reliability
5228	1	what a nice!. user friendly, easy to access, updated, Amharic supported, error solved and well developed app.	5	2020-06-29	Google Play	POSITIVE	0.999651312828064	Account Access Issues;User Interface;Reliability;Customer Support
5229	1	Wonderful app thanks for changing the oldq one, Good Job!	5	2020-06-29	Google Play	POSITIVE	0.9997695088386536	Other
5230	1	Recent update is very good. User interface has been redesigned and it's really awesome. Only downside is that you can't see all of recent transactions, it is limited to some and there is no way to see older transactions. Apart from that CBE has done a good job in revitalizing the old app.	4	2020-06-29	Google Play	POSITIVE	0.9988609552383424	Transaction Performance;User Interface
5231	1	👏👏👏👏	5	2020-06-29	Google Play	NEGATIVE	0.697056770324707	Other
5232	1	This ought to be a major update in a while. The graphical user interface has been well improved. However, a very important feature that used to exist in the old versions, which used to allow the user to transfer money within his own accounts in the CBE at ease has to be reinstated back.	3	2020-06-29	Google Play	NEGATIVE	0.9570716023445128	Transaction Performance;User Interface
5233	1	Its nice user interface...I hope you fix synchronisation fail problems that is common in before apk. In before apk if you are in middle of try to send the money and unfortunately internet is disconnected or someone is call you , the application say to you synchronisation is fail ..try to restart my phone or off and on internet the application never work again.. I call 951 but never get any support .	4	2020-06-28	Google Play	NEGATIVE	0.9989043474197388	User Interface;Customer Support
5234	1	Blameless !	5	2020-06-28	Google Play	NEGATIVE	0.9963117241859436	Other
5235	1	Better than previous app	5	2020-06-28	Google Play	POSITIVE	0.9995808005332948	Other
5236	1	Make it USSD not showing pin	5	2020-06-28	Google Play	NEGATIVE	0.9985872507095336	Other
5237	1	It is clear and nice application. Becuase it is more Userfriend app.	5	2020-06-28	Google Play	POSITIVE	0.9971373081207277	Other
5238	1	It keeps on crashing after the update.	1	2020-06-27	Google Play	NEGATIVE	0.9883272051811218	Reliability
5239	1	Thank you for the update. It has been a long long time since the last update, now it seems cool than the old boring one.	5	2020-06-27	Google Play	POSITIVE	0.9494887590408324	Other
5240	1	It have improved... I like this version but if I can see all the month statment is best!	5	2020-06-27	Google Play	POSITIVE	0.9994584918022156	Other
5241	1	Marvelous design	5	2020-06-27	Google Play	POSITIVE	0.999863624572754	User Interface
5242	1	It is a very good app; but as a comment, the signs in the app should have their own unique color. For example, the Top up sign should have the color of ethiotelecom.	4	2020-06-27	Google Play	POSITIVE	0.974915087223053	Other
5243	1	Unfortunatly the app stoped working all the time when i try to run it	1	2020-06-27	Google Play	NEGATIVE	0.9988357424736024	Other
5244	1	frequently crashes	3	2020-06-27	Google Play	NEGATIVE	0.9992374181747437	Reliability
5245	1	Soooooo wonderful application	4	2020-06-27	Google Play	POSITIVE	0.9998639822006226	Other
5246	1	App is not opening after update	5	2020-06-27	Google Play	NEGATIVE	0.9967371821403505	Other
5247	1	It's good app, you need upgrade continuously Thank you	5	2020-06-26	Google Play	POSITIVE	0.9997848868370056	Other
5248	1	Nice improvement	5	2020-06-26	Google Play	POSITIVE	0.9997482895851136	Other
5249	1	Happy to have ACCOUNT with CBE. Thank you for the new mobile banking app which can help the customer for settlement of their bills.	5	2020-06-26	Google Play	POSITIVE	0.9997864365577698	Customer Support
5250	1	I am very proud of my bank. It is such a remarkable application ever.	5	2020-06-26	Google Play	POSITIVE	0.9998825788497924	Other
5251	1	With your new CBE mobile app version, it is gonna be alright and much interactice I hope. However, using it in weaker internet connection is often tiring... 4 issues... 1. One thing, please allow the use to subscribe or unsubscribe from the service without the subscriber requiring him to come to your office in person.... 2. You may also introduce two-factor authorization, like if someone even has got your pin, 3. Consider includng water billing and 4.update your apps often work on improvements	3	2020-06-26	Google Play	NEGATIVE	0.9708494544029236	User Interface
5252	1	Five star	5	2020-06-26	Google Play	POSITIVE	0.9985104203224182	Other
5253	1	This one is better than the earlier version. It still needs more to show info	4	2020-06-26	Google Play	NEGATIVE	0.9851277470588684	Other
5254	1	It works perfectly for me and has many options......5 star......	5	2020-06-26	Google Play	POSITIVE	0.9998149275779724	Other
5255	1	Its very nice!👌	5	2020-06-26	Google Play	POSITIVE	0.9998598098754884	Other
5256	1	Not working... it says. Can't Sync...	1	2020-06-26	Google Play	NEGATIVE	0.9998095631599426	Other
5257	1	Nice view layout	5	2020-06-25	Google Play	POSITIVE	0.9998550415039062	Other
5258	1	Good look and easy to use.	5	2020-06-25	Google Play	POSITIVE	0.9998676776885986	Other
5259	1	Just wow	5	2020-06-25	Google Play	POSITIVE	0.999775230884552	Other
5260	1	Improved	5	2020-06-25	Google Play	POSITIVE	0.9998389482498168	Other
5261	1	looks better	5	2020-06-25	Google Play	POSITIVE	0.6169984340667725	Other
5262	1	Upgraded to user friendly	5	2020-06-25	Google Play	POSITIVE	0.9844953417778016	User Interface
5263	1	ur update is so rubbish.. it crash when u login... and after all this comments you didn't do anything.. you should remove it or replace it with the old working version...or either tell us what to do.	1	2019-04-01	Google Play	NEGATIVE	0.999800741672516	Account Access Issues;Reliability
5264	1	fast & relayable!	5	2019-03-31	Google Play	POSITIVE	0.9988308548927308	Other
5265	1	can you please fix the problem, I'm overseas and can't get to CBE branch for a fix, PLEASE DO SOMETHING!! start by removing it from play store until you figure out what the issue is!	1	2019-03-31	Google Play	NEGATIVE	0.9983205199241638	Other
5266	1	the new app is not integrating with the system... fix it.	1	2019-03-30	Google Play	NEGATIVE	0.9997791647911072	Other
5267	1	Does not work after update	1	2019-03-29	Google Play	NEGATIVE	0.9996979236602784	Other
5268	1	whre can i get the donload authorization code	1	2019-03-28	Google Play	NEGATIVE	0.9991737008094788	Other
5269	1	Can't log in	3	2019-03-28	Google Play	NEGATIVE	0.9981762170791626	Other
5270	1	ዳንኤል	5	2019-03-28	Google Play	NEGATIVE	0.697056770324707	Other
5271	1	after updating the app it never works. Let alone giving a star if there was a negative star, i would have given you negative start. how could a biggest bank in a country doesn't have good app. ለማንኛውም ግን ማፈሪያ ባንክ ነው !!	1	2019-03-26	Google Play	NEGATIVE	0.9996659755706788	Other
5272	1	frequently failed and needs authorization.	2	2019-03-26	Google Play	NEGATIVE	0.9995005130767822	Other
5273	1	app not working after update if ur not aware of it already care to do something about it?	1	2019-03-26	Google Play	NEGATIVE	0.9993306398391724	Other
5274	1	please do something about the app!! the new update is useless!!!	1	2019-03-25	Google Play	NEGATIVE	0.9997829794883728	Other
5275	1	ባለፈው ግዜ የተሻለ ሃሳብ ሰጥቼ ነበር፣ አጋጣሚ ሁኖ አሁን ሃሳቤን ቀይሬ አለሁኝ፣ የኮከብ ደረጃም ከ5 ወደ አንድ ለማውረድ ተገድጄ አለሁኝ፣ አፕዴት አድርጎ የተሻሻለ አፕልኬሽን ለዛውም የፋይናንስ እንዴት ክራሽ ልያደርግ ይችላል፣ ከሃገር ውጭ ሁኜ አካውንት ማንቀሳቀስ አስችሎኝ ነበር ክራሽ በማድረጉ እና እንደገና አክትቬሽን ኮድ በመፈለጉ፣ ሃገር ቤት እስክመለስ እንዳልጠቀም አድርጎኛል። ለቀጣይ በተሻለ መልኩ ተሳራላችሁ ብየ ተስፋ አለኝ!!	1	2019-03-25	Google Play	NEGATIVE	0.7800650596618652	Other
5276	1	why this app is trash,cannot open using my pin,please do something with this issue	1	2019-03-24	Google Play	NEGATIVE	0.999600350856781	Other
5277	1	I was using this up for while but after I logged out for several weeks and tried it again it failed to log in .. then I Uninstall the and tried it again after reinstall but somehow it needs a verification code form CBE	2	2019-03-22	Google Play	NEGATIVE	0.9995720982551576	Other
5278	1	wowww cbe	5	2019-03-22	Google Play	POSITIVE	0.9825054407119752	Other
5279	1	I just update this week it won't open now. Please fix it asap	4	2019-03-21	Google Play	NEGATIVE	0.9972766041755676	Other
5280	1	Best application for me.	4	2019-03-21	Google Play	POSITIVE	0.9990484118461608	Other
5281	1	app is crashing with the new update. please fix it as soon as possible. I am in another country and not able to make transactions. Please, are you reading the reviews? Guys does anyone know if it works by uninstalling and reinstalling without needing to go the bank??	1	2019-03-21	Google Play	NEGATIVE	0.9996110796928406	Transaction Performance;Reliability
5282	1	Version 2 not working correctly	3	2019-03-21	Google Play	NEGATIVE	0.9998002648353576	Other
5283	1	The very important App for us.	5	2019-03-20	Google Play	POSITIVE	0.9989832043647766	Other
5284	1	its very annoying a company with this size doesn't respond to it's customer.very arrogant and ignorant	1	2019-03-19	Google Play	NEGATIVE	0.9996212720870972	Other
5285	1	Please try to link the updated version.	2	2019-03-19	Google Play	NEGATIVE	0.9887638092041016	Other
5286	1	Very Good App but add some Transactions list	3	2019-03-18	Google Play	POSITIVE	0.9979988932609558	Transaction Performance
5287	1	crashes after update for v2. please reply for comments asap.	1	2019-03-17	Google Play	NEGATIVE	0.9996559619903564	Reliability
5288	1	very very very useful	5	2019-03-17	Google Play	POSITIVE	0.99982750415802	Other
5289	1	one day it just has stopped in the middle of no where and left me helpless. i was to transfer money to my brother for an urgent school fee.	4	2019-03-17	Google Play	NEGATIVE	0.9992427825927734	Transaction Performance;Customer Support
5290	1	what is going on with this app it's not working at all	1	2019-03-15	Google Play	NEGATIVE	0.999777615070343	Other
5291	1	With the recent update, I faced a serious problem similar to those mentioned by others. Hence I have to uninstall and reinstall the app...and it is working well now. I strongly suggest if CBE makes a regular check and take a quick corrective actions on reviews made by customers!!!	3	2019-03-14	Google Play	POSITIVE	0.9954637885093688	User Interface
5292	1	update NOT Working	1	2019-03-14	Google Play	NEGATIVE	0.9997429251670836	Other
5293	1	After the recent update the application is getting crashed. Kindly fix the bug soon.	1	2019-03-14	Google Play	NEGATIVE	0.9972238540649414	Reliability
5294	1	Crashed after update. Pls release fix asap.	1	2019-03-14	Google Play	NEGATIVE	0.999716341495514	Reliability
5295	1	Absolute trash after an update	1	2019-03-14	Google Play	NEGATIVE	0.9998000264167786	Other
5296	1	Excellente	5	2019-03-13	Google Play	POSITIVE	0.9998300075531006	Other
5297	1	Crashed after update	1	2019-03-13	Google Play	NEGATIVE	0.9996795654296876	Reliability
5298	1	App still crushing after entering pin! And still no response from tech support!!!!	1	2019-03-13	Google Play	NEGATIVE	0.9994932413101196	Customer Support
5299	1	sms code did not work	2	2019-03-13	Google Play	NEGATIVE	0.999776303768158	Other
5300	1	not working after i update	1	2019-03-12	Google Play	NEGATIVE	0.9996498823165894	Other
5301	1	It has been a week since it stop working. How it doesn't work after UPDATE? Need attention. CBE, Please correct it!	1	2019-03-12	Google Play	NEGATIVE	0.9972031116485596	Other
5302	1	Crashes after update, shame.	1	2019-03-12	Google Play	NEGATIVE	0.9997838139533995	Reliability
5303	1	After updating the app stops working.	1	2019-03-11	Google Play	NEGATIVE	0.9997413754463196	Other
5304	1	the app is crashing after update. please fix the problem or let us what to do.	5	2019-03-10	Google Play	NEGATIVE	0.9996159076690674	Reliability
5305	1	New update is very poor. Immediately crashes after Entering pin.	1	2019-03-10	Google Play	NEGATIVE	0.999743640422821	Reliability
5306	1	difficult on using occasional time.	1	2019-03-09	Google Play	NEGATIVE	0.9991942048072816	Other
5352	1	It's not enough to have an app. It has to work	1	2018-09-03	Google Play	NEGATIVE	0.9997184872627258	Other
5307	1	Please don't release update because after update it says unfortunately stoped! what is wrong?ohhh	2	2019-03-09	Google Play	NEGATIVE	0.9996347427368164	Other
5308	1	was working fine, but now it crashes after the update and lots of people are complaining about it but you chose to keep silent	1	2019-03-08	Google Play	NEGATIVE	0.9968084692955016	Reliability
5309	1	useless update	1	2019-03-08	Google Play	NEGATIVE	0.9997654557228088	Other
5310	1	I recently updated this app but it completely stop responding...this is very sad,can't even run my business deals.	1	2019-03-08	Google Play	NEGATIVE	0.9997512698173524	Other
5311	1	update doesn't work	1	2019-03-08	Google Play	NEGATIVE	0.9997705817222596	Other
5312	1	it is not working totally after update.	1	2019-03-08	Google Play	NEGATIVE	0.9997801184654236	Other
5313	1	This app is mot working after the recent update.	1	2019-03-07	Google Play	NEGATIVE	0.9984531402587892	Other
5314	1	this update is was not working	1	2019-03-07	Google Play	NEGATIVE	0.9997735619544984	Other
5315	1	crashing crashing and crashing fix it	1	2019-03-07	Google Play	NEGATIVE	0.994541585445404	Reliability
5316	1	Do you even have tech support who reads the review and work on the glitch? the last update is totally unusable. Fix it quickly its a big national brand, it shouldn't have taken this long	1	2019-03-07	Google Play	NEGATIVE	0.9985784292221068	User Interface;Customer Support
5317	1	እየፈጩ ፡ ጥሬ ፡ አለ ፡ የሀገሬ ፡ ሰው፡፡ በዩዘር ፡ ለምን ፡ እንድንገባ ፡ አታረጉም ፡ ሰው ፡ ከሌላ ፡ ሀገር ፡ እኮ ፡ እንዳገና ፡ መግባት ፡ ሊያስፈልግ ፡ ይችላል ፡ ስልክ ፡ ቢቀየር ፡ ወይ ፡ አፑ ፡ ቢበላሽ	1	2019-03-07	Google Play	NEGATIVE	0.9646372199058532	Other
5318	1	It crashes acfter this update...so what is the meaning of releasing V2...previously it was working....oppss...bad app.	1	2019-03-06	Google Play	NEGATIVE	0.9997689127922058	Reliability
5319	1	not working..	1	2019-03-06	Google Play	NEGATIVE	0.9997947812080384	Other
5320	1	too much beautiful and amazing apps	5	2019-03-06	Google Play	POSITIVE	0.9989117383956908	Other
5321	1	the app stop working when you update it and it has no solution for the problem	1	2019-03-06	Google Play	NEGATIVE	0.9997908473014832	Other
5322	1	app crush after update	1	2019-03-06	Google Play	NEGATIVE	0.9982498288154602	Other
5323	1	you're lucky that you've got one star from me, because there is no half star.	1	2019-03-06	Google Play	POSITIVE	0.9996886253356934	Other
5324	1	The app keeps on crushing & I can't log in or access my account. Went to the bank for trouble shooting. The customer service was very poor and I told to reinstall the app and enter new activation key. I did and after starting to work for few hours again the prob is there and the app is still crushing and not working. Such poor service is unexpected from a big statd owned bank. You should fix the problem ASAP.	1	2019-03-06	Google Play	NEGATIVE	0.999626398086548	Account Access Issues;Customer Support
5325	1	Completely and utterly made it unusable after the update. Why would anyone, in their right minds, make something that worked before to a new “updated” rubbish!?	1	2019-03-05	Google Play	NEGATIVE	0.999052345752716	Other
5326	1	last update keeps crashing after inserting pin. fix please!	1	2019-03-05	Google Play	NEGATIVE	0.980674684047699	Reliability
5327	1	Peoples are complaining. what aren't you responding? Your customer support is lame!	1	2019-03-05	Google Play	NEGATIVE	0.9998136162757874	Customer Support
5328	1	The app crashes after the last update. Please fix it.	3	2019-03-05	Google Play	NEGATIVE	0.9996981620788574	Reliability
5329	1	update ከሆነ ቡሀላ ባግባቡ አይሰራም በተቻለ መጠን በፍጥነት አስተካክሉት የመጀመሪያው የተሻለ ነበር	2	2019-03-05	Google Play	NEGATIVE	0.9298678040504456	Other
5330	1	Latest update is having bugs. The is not opening and crashing after updating.plz fix soon.	1	2019-03-05	Google Play	NEGATIVE	0.9994139671325684	Reliability
5331	1	this update crashes please do something	1	2019-03-05	Google Play	NEGATIVE	0.9982571005821228	Reliability
5332	1	App crushing after update. I approach the bank to fix it and they told me I need new authentication key for every update. What if I was abroad? Even after I logged in, features like Services, Finance and Banking are not there. It doesn't deserve a single star either.	1	2019-03-05	Google Play	NEGATIVE	0.9990986585617064	Account Access Issues
5333	1	incompatible	1	2019-03-05	Google Play	NEGATIVE	0.9995378255844116	Other
5334	1	updated version keeps crashing on Android Oreo, please fix it. UI is also really bad. its functional but could be a lot better.	3	2019-03-05	Google Play	NEGATIVE	0.9990684390068054	User Interface;Reliability
5335	1	App doesn't work.	1	2019-03-04	Google Play	NEGATIVE	0.9997852444648744	Other
5336	1	Very bad app from the so called largest bank in Ethiopia. It keeps crashing after the new update and the interface is ugly.	2	2019-03-04	Google Play	NEGATIVE	0.9998124241828918	User Interface;Reliability
5337	1	it was good app since last update now doesn't work after updating… what happened? please fix the problem ASAP.	2	2019-03-04	Google Play	POSITIVE	0.971830666065216	Other
5338	1	this Last update is defective. the app is crashing after I updated it. please do fix it.	2	2019-03-04	Google Play	NEGATIVE	0.9997876286506652	Reliability
5339	1	Excellent app, but limited transfer plz make the app to be tranferred large amount. Thanks	5	2019-03-04	Google Play	POSITIVE	0.9964309930801392	Transaction Performance
5340	1	App crushing after update to V2. Keeps crushing after accepting pin.	1	2019-03-04	Google Play	NEGATIVE	0.9982324242591858	Other
5341	1	me	5	2019-01-12	Google Play	POSITIVE	0.9947214126586914	Other
5342	1	activate	4	2019-01-11	Google Play	POSITIVE	0.9993797540664672	Other
5343	1	It's a good app for android but I can't find it on iPhone apps store pls make it available for iPhone	3	2019-01-10	Google Play	NEGATIVE	0.948334574699402	Other
5344	1	Thank u for the app	4	2018-12-29	Google Play	POSITIVE	0.9996694326400756	Other
5345	1	To autherize new account it needs uninsrall dis not good fix it	5	2018-12-13	Google Play	NEGATIVE	0.999459445476532	Other
5346	1	It keeps on failing to connect to server at intervals , to solve it, install again and activate	3	2018-12-03	Google Play	NEGATIVE	0.9997373223304749	Other
5347	1	needs improvement. can't see who makes the transfers the name should be seen when the detail is selected. also i have different accounts in my name and i can only use my phone for one account only ? mobile banking has become easy ....commercial banks of Ethiopia......you need to keep up!!!	1	2018-11-07	Google Play	NEGATIVE	0.9982166886329652	Transaction Performance
5348	1	Thank you download app	5	2018-11-07	Google Play	POSITIVE	0.9997865557670592	Other
5349	1	It is best app for my life	5	2018-10-19	Google Play	POSITIVE	0.9995896220207214	Other
5350	1	Impressive	5	2018-10-11	Google Play	POSITIVE	0.999863862991333	Other
5354	1	To use this app send massages	5	2018-08-25	Google Play	NEGATIVE	0.9368524551391602	Other
5355	1	Islamic creadit sistem fome	5	2018-08-20	Google Play	NEGATIVE	0.9855911731719972	Other
5356	1	Shopping	4	2018-08-15	Google Play	POSITIVE	0.9981168508529664	Other
5357	1	I haven't money but i'm very happy!!	5	2018-08-06	Google Play	POSITIVE	0.9998824596405028	Other
5358	1	Its good and simply to use but internet must be there	5	2018-08-06	Google Play	NEGATIVE	0.947688102722168	Other
5359	1	Please remove what you call authentication code and use other simple steps	3	2018-08-02	Google Play	NEGATIVE	0.9990922212600708	Account Access Issues
5360	1	to approve the update	5	2018-07-30	Google Play	POSITIVE	0.9977389574050904	Other
5361	1	Why everything is complicated and difficult to use in ethiopia?your all \napplications are difficult to use I hate your everything	1	2018-07-29	Google Play	NEGATIVE	0.999699592590332	Other
5362	1	It say download the app authorization code&PIN from branch	5	2018-07-17	Google Play	NEGATIVE	0.9803845882415771	Other
5363	1	This is very good you can use any place all over the world i like it	5	2018-05-20	Google Play	POSITIVE	0.9998561143875122	Other
5364	1	በ ኣይፎን 11 ኣይሰራም ምክንያቱ ኣፕዴት ይጠይቃል	5	2018-05-13	Google Play	NEGATIVE	0.8943160176277161	Other
5365	1	TESFAY. CANADA. B.C.	4	2018-03-19	Google Play	NEGATIVE	0.9544904232025146	Other
5366	1	I think i growth  with you by anything  business	5	2018-01-04	Google Play	POSITIVE	0.9995850920677184	Other
5367	1	Add financial news and correct the speed of your network	3	2017-12-07	Google Play	POSITIVE	0.9973732233047484	Other
5368	1	great application	5	2017-12-03	Google Play	POSITIVE	0.999858856201172	Other
5369	1	i .....	5	2017-11-09	Google Play	NEGATIVE	0.9613500833511353	Other
5370	1	How poor is this app it's dead	1	2017-10-31	Google Play	NEGATIVE	0.9997846484184264	Other
5371	1	Hananeya	5	2017-10-20	Google Play	POSITIVE	0.7833883166313171	Other
5372	1	So happy with cbe	5	2017-10-13	Google Play	POSITIVE	0.9998633861541748	Other
5373	1	Yea	4	2017-09-28	Google Play	POSITIVE	0.7720579504966736	Other
5374	1	Not tanx	5	2017-09-01	Google Play	NEGATIVE	0.9825923442840576	Other
5375	1	It was somehow good but need improvement!	2	2017-08-11	Google Play	NEGATIVE	0.9602239727973938	Other
5376	1	Good app for major transaction & need to improve with  monthly summary repot	3	2017-08-11	Google Play	POSITIVE	0.9982794523239136	Transaction Performance
5377	1	Authorization key!?  What does it mean? May it be the Activation Code or the Pin Code I received from one of CBE Branches!? Or a different thing that, I should do another way???????? Every body asks, but no one appeared answering!! What a hell!!!	5	2017-08-09	Google Play	NEGATIVE	0.9995962977409364	Other
5378	1	Very nice app.i admire how it makes it easy for access	5	2017-07-03	Google Play	POSITIVE	0.9997988343238832	Account Access Issues
5379	1	Good to use it	3	2017-06-26	Google Play	POSITIVE	0.99985671043396	Other
5380	1	The blank space to write Ac no is unvisible  please modify to whight color.ነጭ ኣድርጉት	1	2017-06-17	Google Play	NEGATIVE	0.9987320303916932	Other
5381	1	This makes me to use the bank services easly	5	2017-06-14	Google Play	NEGATIVE	0.989694595336914	Other
5382	1	Authorization fails problem	5	2017-05-14	Google Play	NEGATIVE	0.9995920062065125	Other
5383	1	Iwanttobeuse SMS	5	2017-05-13	Google Play	NEGATIVE	0.9825907349586488	Other
5384	1	this is excellent app  Easy to use  Good work	5	2017-04-21	Google Play	POSITIVE	0.9996960163116456	Other
5385	1	Short and precise	5	2017-04-13	Google Play	POSITIVE	0.9996391534805298	Other
5386	1	Lol	5	2017-04-07	Google Play	NEGATIVE	0.9438178539276124	Other
5387	1	Sends cash many times with no number of count  dialogue to the same receiver.	4	2017-03-31	Google Play	NEGATIVE	0.9988579750061036	Other
5388	1	So these is very application	3	2017-03-30	Google Play	POSITIVE	0.9983730316162108	Other
5389	1	Yes	1	2017-03-21	Google Play	POSITIVE	0.9997805953025818	Other
5390	1	When transaction are made it displays error and made no entry in the transaction list. When i made the second transaction it deduct twice a very serious bug that should be handled soon, i faced twice in a month. After all it is individual's money you are dealing with.	2	2017-03-19	Google Play	NEGATIVE	0.998996913433075	Transaction Performance;Reliability
5391	1	this app is not functional  in some android smart  phone. eg. android 3.4	1	2017-03-15	Google Play	NEGATIVE	0.9996906518936156	Other
5392	1	The Essential app	5	2017-03-06	Google Play	POSITIVE	0.999496579170227	Other
5393	1	App	5	2017-01-11	Google Play	POSITIVE	0.9684572219848632	Other
5394	1	Very, very important and helpful	5	2017-01-10	Google Play	POSITIVE	0.999847412109375	Customer Support
5395	1	COMERSHAL	5	2017-01-03	Google Play	POSITIVE	0.9975531697273254	Other
5396	1	After some times it fails not working for those services insie it except checking balance. When I open to new service the app will close it self.	1	2016-12-08	Google Play	NEGATIVE	0.9993671774864196	Other
5397	1	Whos and what is authorization. Code? ?	1	2016-12-07	Google Play	NEGATIVE	0.9975131750106812	Other
5398	1	to download and how ican log in my account?	1	2016-11-20	Google Play	NEGATIVE	0.9991288781166076	Other
5399	1	Excellent Appllication	5	2016-11-06	Google Play	POSITIVE	0.999815046787262	Other
5400	1	Woooow	2	2016-10-27	Google Play	POSITIVE	0.9561601281166076	Other
5401	1	Most liked bank and trustworthy!	4	2016-10-15	Google Play	POSITIVE	0.9996707439422609	Other
5402	1	I have downloaded and went to CBE and registered my account. It shows only my balance and previous transactions. But when I tried to transfer money to non CBE customer it asks only revipients name, phone number and amount not any other criteria such as branch of sender and recipient. Finally when I press "submit" button it says input valid data. So how can I use it? I filled all the available blank spaces correctly but it doesn' work	1	2016-09-25	Google Play	NEGATIVE	0.998160183429718	Transaction Performance
5403	1	Dish	5	2016-09-16	Google Play	NEGATIVE	0.9772239923477172	Other
5404	1	so smart	5	2016-09-13	Google Play	POSITIVE	0.999864101409912	Other
5405	1	Hey	5	2016-09-08	Google Play	POSITIVE	0.9979209303855896	Other
5406	1	I thrust commercial bank of Ethiopia my money established it	5	2016-08-29	Google Play	POSITIVE	0.987874448299408	Other
5407	1	Kkkk what is this?	1	2016-08-28	Google Play	NEGATIVE	0.9967718720436096	Other
5408	1	I like it saves your time.	3	2016-08-23	Google Play	POSITIVE	0.9995536208152772	Other
5409	1	please allow us to register online without going to branch office	1	2016-08-20	Google Play	POSITIVE	0.9870079159736632	Other
5410	1	I liked it.	4	2016-07-21	Google Play	POSITIVE	0.999852180480957	Other
5411	1	it is not  work	1	2016-07-21	Google Play	NEGATIVE	0.9996998310089112	Other
5412	1	bank	1	2016-07-13	Google Play	POSITIVE	0.8260878324508667	Other
5413	1	is not so good but if you trying this is well we want app like barcalys or standerd chtred	4	2016-07-03	Google Play	NEGATIVE	0.9851577281951904	Other
5414	1	king	5	2016-06-18	Google Play	POSITIVE	0.9992654919624328	Other
5415	1	The bank has given me an authorization key,but it says invalid	4	2016-06-15	Google Play	NEGATIVE	0.999619483947754	Other
5416	1	This mobile app is great if it work properly. It is not working in my mobile (Samsung galaxy core).it  is not self contained and need web to see the full interface which is bad. The graphics(the first page) look very unprofessional.	1	2016-06-15	Google Play	NEGATIVE	0.997943103313446	User Interface
5417	1	Where can we get authorization code??  Need help from a developer or any body uses this App.?????	1	2016-06-13	Google Play	NEGATIVE	0.999671459197998	Customer Support
5418	1	Plse send	5	2016-06-05	Google Play	POSITIVE	0.8373762369155884	Other
5419	1	Downloaded and I've to go cbe branch ...not any branch.	2	2016-05-04	Google Play	NEGATIVE	0.998778998851776	Other
5420	1	Anyone	5	2016-05-02	Google Play	POSITIVE	0.9625333547592164	Other
5421	1	I really hate CBR! I'd rather be AIB or OIB customer to get a good service.	1	2016-03-15	Google Play	NEGATIVE	0.99947851896286	Other
5422	1	Market	5	2016-03-09	Google Play	POSITIVE	0.926568865776062	Other
5423	1	Can't download.	5	2016-03-02	Google Play	NEGATIVE	0.996533989906311	Other
5424	1	ebc	5	2016-02-04	Google Play	POSITIVE	0.974597692489624	Other
5425	1	Authorization code	5	2016-02-01	Google Play	POSITIVE	0.871202290058136	Other
5426	1	It is nice	5	2016-01-26	Google Play	POSITIVE	0.9998648166656494	Other
5427	1	Hi	5	2016-01-25	Google Play	POSITIVE	0.9983267188072203	Other
5428	1	It not installing it takes time why?	3	2015-12-11	Google Play	NEGATIVE	0.9992239475250244	Other
5429	1	It works well but some functions are not visible for android 2.1, . . .	4	2015-11-07	Google Play	NEGATIVE	0.9800057411193848	Other
5430	1	But like all ethiopians app	5	2015-09-30	Google Play	POSITIVE	0.990036129951477	Other
5431	1	I loved it so much....	5	2015-09-30	Google Play	POSITIVE	0.9998741149902344	Other
5432	1	I like b.c it is must	1	2015-09-26	Google Play	POSITIVE	0.9987871050834656	Other
5433	1	Makes life simple.	1	2015-09-08	Google Play	POSITIVE	0.999845027923584	Other
5434	1	Seems good but needs lil improvements in speed & performance	4	2015-09-02	Google Play	NEGATIVE	0.9883387088775636	Other
5435	1	I am always with this efficient Bank.	4	2015-08-13	Google Play	POSITIVE	0.9998379945755004	Other
5436	1	Your color choice makes it hard to read the text.  Logo is very blurry.  Try to use better quality vector images.  It seems like the app was designed by a beginner.  Look at some of the major banking apps like Bank of America  etc...  Nice try	1	2015-07-19	Google Play	NEGATIVE	0.997199296951294	User Interface
5437	1	I cant use by galaxy s6 edge	5	2015-07-14	Google Play	NEUTRAL	0.5	Other
5438	1	Ajemamru lay  algebgnem yemn cod  new yemasegbaw ? Plss  help me	1	2015-07-08	Google Play	NEGATIVE	0.9970110654830932	Customer Support
5439	1	it is easy to work with	5	2015-07-03	Google Play	POSITIVE	0.9996808767318726	Other
5440	1	it Helps!	5	2015-06-29	Google Play	POSITIVE	0.999819815158844	Customer Support
5441	1	It is little bit confusing.	5	2015-06-17	Google Play	NEGATIVE	0.994425654411316	Other
5442	1	Good App.	5	2015-06-10	Google Play	POSITIVE	0.9998503923416138	Other
5443	1	Www bayye gariidha	5	2015-04-28	Google Play	POSITIVE	0.8926613330841064	Other
5444	1	I Appreciate it app	5	2015-04-06	Google Play	POSITIVE	0.9998303651809692	Other
5445	1	Oky	5	2015-03-30	Google Play	POSITIVE	0.9996008276939392	Other
5446	1	What is an authorization code???	5	2015-03-19	Google Play	NEGATIVE	0.9973159432411194	Other
5447	1	first i thank you for this service  .then please tell me what is አውቶራይዜሽን key  please	4	2015-01-26	Google Play	POSITIVE	0.99815034866333	Other
5448	1	What is Authorisation code and where  can I get it!?	1	2015-01-14	Google Play	NEGATIVE	0.9991306662559508	Other
5449	1	Authorizations code	5	2015-01-12	Google Play	NEUTRAL	0.5	Other
5450	1	I have authorization key  and activation code already. But when i tried to login ,it always says ,connection failed and try again. What shall i do?	5	2015-01-09	Google Play	NEGATIVE	0.9993378520011902	Account Access Issues
5451	1	Happy to have online banking in Ethiopia	5	2015-01-09	Google Play	POSITIVE	0.9997764229774476	Other
5452	1	Now everybody has access	5	2015-01-04	Google Play	POSITIVE	0.9980400204658508	Account Access Issues
5453	1	so bad how can we know the authorization code?	5	2015-01-03	Google Play	NEGATIVE	0.999769389629364	Other
5454	1	For Samsung S3 it doesn't work properly (isn't compatible ) please fix it.	2	2014-12-19	Google Play	NEGATIVE	0.9997259974479676	Other
5455	1	I want to activate mobile banking with CBE.CBE has sent me the pin and activation code.	5	2014-12-16	Google Play	NEGATIVE	0.9629372954368592	Other
5456	1	Gutama mahamad	5	2014-12-13	Google Play	POSITIVE	0.8598729372024536	Other
5457	1	My partner to develop!	5	2014-12-04	Google Play	POSITIVE	0.999692440032959	Other
5458	1	all of you have to go to the bank and fill in forms and get a pin	5	2014-11-29	Google Play	NEGATIVE	0.999091386795044	Other
5459	1	Found it very helpful	4	2014-11-28	Google Play	POSITIVE	0.9997076392173768	Customer Support
5460	1	no one can ever get it work.  Completely unfinished app. please complete all the path.  it is more useful when it is a whole app.. This is a waste of time. guys, Don't download it.  I like the idea though.	2	2014-11-23	Google Play	NEGATIVE	0.9989519119262696	Other
5461	1	money transfer	5	2014-11-19	Google Play	NEGATIVE	0.9640114903450012	Transaction Performance
5462	1	I don't like it just because it's limitation it's  not working  abroad and it doesn't give you the authentication numbers and also its only in English why not amharic	1	2014-10-21	Google Play	NEGATIVE	0.9974052309989928	Account Access Issues
5463	1	It's awesome software, but sometimes it completely doesn't work. But still it's nice to start thinking like that as a developing country.....better tomorrow!	4	2014-10-17	Google Play	POSITIVE	0.999180018901825	Other
5464	1	it is so nice try to use it.	5	2014-10-15	Google Play	POSITIVE	0.9973324537277222	Other
5465	1	Best apps fore bissneses Man.	5	2014-10-15	Google Play	POSITIVE	0.99183988571167	Other
5466	1	I cant explain my feeling itso good iliked it thanks	4	2014-10-09	Google Play	POSITIVE	0.9994556307792664	Other
5467	1	All services not available on my phone.	4	2014-09-28	Google Play	NEGATIVE	0.9987918734550476	Other
6311	3	gadaa	5	2025-06-01	Google Play	NEGATIVE	0.7211456894874573	Other
5468	1	Yes!Yes!Yes! I loved it very much because of they gave me fast service to obtain mobile banking service and ATM service.	5	2014-09-25	Google Play	POSITIVE	0.9998226761817932	Other
5469	1	It good  application! Thanks !	3	2014-09-25	Google Play	POSITIVE	0.9998619556427002	Other
5470	1	Etv	1	2014-09-23	Google Play	POSITIVE	0.8248991966247559	Other
5471	1	Ato.Mussie Yohannes	4	2014-09-13	Google Play	POSITIVE	0.9934934973716736	Other
5472	1	I love  this app it's  so cool  and time  saving but poor  method of authorization  key delivery  method	5	2014-09-13	Google Play	NEGATIVE	0.9988303780555724	Other
5473	1	It's nice I like it	4	2014-09-11	Google Play	POSITIVE	0.9998660087585448	Other
5474	1	Lov it	5	2014-09-08	Google Play	POSITIVE	0.9991973042488098	Other
5475	1	thanks!!	5	2014-09-06	Google Play	POSITIVE	0.9998160004615784	Other
5476	1	Any one pls tell me how to use mobile banking from overseas	5	2014-08-31	Google Play	NEGATIVE	0.9869308471679688	Other
5477	1	Help me to get an authorization code as soon as possible please!	2	2014-08-27	Google Play	NEGATIVE	0.9519113898277284	Customer Support
5478	1	After some step it is not functioning!	3	2014-08-26	Google Play	NEGATIVE	0.9998028874397278	Other
5479	1	User friendly!	5	2014-08-20	Google Play	POSITIVE	0.994134485721588	User Interface
5480	1	But what is download authorization code???	3	2014-08-20	Google Play	NEGATIVE	0.9982736110687256	Other
5481	1	I love it.	5	2014-08-07	Google Play	POSITIVE	0.9998767375946044	Other
5482	1	Costamer	4	2014-08-03	Google Play	POSITIVE	0.9944397211074828	Other
5483	1	I what add bot i dot now cod	1	2014-07-31	Google Play	NEGATIVE	0.9951733946800232	Other
5484	1	It was so cool and I love it	5	2014-07-17	Google Play	POSITIVE	0.9998829364776612	Other
5485	1	CBE is really the bank we rely on.	5	2014-07-15	Google Play	POSITIVE	0.9976351261138916	Other
5486	1	Jasmin Rongcales.Taylor	5	2014-07-12	Google Play	POSITIVE	0.9758719801902772	Other
5487	1	Enas mohammed	5	2014-06-14	Google Play	POSITIVE	0.9613676071166992	Other
5488	1	LIKE !!!	5	2014-06-13	Google Play	POSITIVE	0.9993576407432556	Other
5489	1	It is always good to make services easier. Go CBE.	5	2014-06-10	Google Play	POSITIVE	0.9991705417633056	Other
5490	1	To fast	5	2014-06-02	Google Play	POSITIVE	0.9978535771369934	Other
5491	1	Wow very nice but how con working	5	2014-05-23	Google Play	POSITIVE	0.934184193611145	Other
5492	1	Nice startup.	3	2014-05-08	Google Play	POSITIVE	0.9998303651809692	Other
5493	1	I think it is good for all.	4	2014-05-07	Google Play	POSITIVE	0.9997573494911194	Other
5494	1	Need	5	2014-04-30	Google Play	NEUTRAL	0.5	Other
5495	1	Very good but not i know using	4	2014-04-14	Google Play	POSITIVE	0.9939045310020448	Other
5496	1	I love my cbe	4	2014-04-07	Google Play	POSITIVE	0.999862551689148	Other
5497	1	Its very bsst app	5	2014-04-06	Google Play	NEGATIVE	0.7392169833183289	Other
5498	1	It  is good	4	2014-03-29	Google Play	POSITIVE	0.9998494386672974	Other
5499	1	Nice to see U leading...	5	2014-03-25	Google Play	POSITIVE	0.9997896552085876	Other
5500	1	It says that Once you download the application, you can get Authorization code and PIN from your CBE Branch at any time.  Have downloaded the application and Authorization code should be available at the time of downloading instantly.  Instructions should be clear.  Once we can log in to the system, we can comment more but for now we can only say what I have experienced	3	2014-03-24	Google Play	NEGATIVE	0.98166024684906	Transaction Performance
5501	1	Please keep upgrading. We thank you.	1	2014-03-20	Google Play	POSITIVE	0.9998589754104614	Other
5502	1	good application how can I get authorization code for CBE application for used	5	2014-03-18	Google Play	POSITIVE	0.9909324645996094	Other
5503	1	God is love.	5	2014-03-09	Google Play	POSITIVE	0.9998632669448853	Other
5504	1	Wish they made ut easier to get the initial codes tho.	5	2014-03-08	Google Play	NEGATIVE	0.9992986917495728	Other
5505	1	Du	5	2014-03-07	Google Play	NEGATIVE	0.9543795585632324	Other
5506	1	Not recive the code	4	2014-03-05	Google Play	NEGATIVE	0.9976456761360168	Other
5507	1	How I get the aut.code?	5	2014-03-04	Google Play	NEGATIVE	0.9991065859794616	Other
5508	1	it is very cool app ti me, but unfinished description and guide yet! .	2	2014-03-03	Google Play	NEGATIVE	0.7114076614379883	User Interface
5509	1	zola	5	2014-02-28	Google Play	POSITIVE	0.9968421459197998	Other
5510	1	God is love	5	2014-02-27	Google Play	POSITIVE	0.9998513460159302	Other
5511	1	Unable to get auth key	4	2014-02-27	Google Play	NEGATIVE	0.9996441602706908	Other
5512	1	As wr wb	5	2014-02-26	Google Play	NEGATIVE	0.9528068900108336	Other
5513	1	Cbe where a good access	1	2014-02-25	Google Play	POSITIVE	0.999267876148224	Account Access Issues
5514	1	Really I am more appreciate your work. It is a nice application.	3	2014-02-24	Google Play	POSITIVE	0.9998306035995485	Other
5515	1	The  bank thats realy gives a better service	5	2014-02-24	Google Play	NEUTRAL	0.5	Other
5516	1	Good idea	5	2014-02-23	Google Play	POSITIVE	0.9998435974121094	Other
5517	1	Authorization code i don't know how to get it anyone out there please help	4	2014-02-22	Google Play	NEGATIVE	0.9988975524902344	Customer Support
5518	1	its good	5	2014-02-22	Google Play	POSITIVE	0.9998385906219482	Other
5519	1	can any one explain me how this thing work? currently I am a mobile banking service user and I have installed this app. but whenever I start the app it requests for download authorization key.  where and how can I get this key?  Thanks	1	2014-02-20	Google Play	NEGATIVE	0.991179883480072	Other
5520	1	It might be good	3	2014-02-19	Google Play	POSITIVE	0.9993725419044496	Other
5521	1	it's ok letst tecnologey.	4	2014-02-17	Google Play	NEGATIVE	0.9988667964935304	Other
5522	2	it's not working	3	2025-06-05	Google Play	NEGATIVE	0.9997857213020324	Other
5523	2	Hello, I’m facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says “BoaMobile closed because this app has a bug.” I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.	1	2025-06-03	Google Play	NEGATIVE	0.999415159225464	Account Access Issues;Reliability
5524	2	exceptional	5	2025-06-03	Google Play	POSITIVE	0.9998514652252196	Other
5525	2	BoA Mobile good bank	5	2025-06-02	Google Play	POSITIVE	0.9984728693962096	Other
5526	2	this is worest app 24/7 loading	1	2025-06-01	Google Play	NEGATIVE	0.993474304676056	Transaction Performance
5527	2	This App is not interest for Android phone Please update it .	1	2025-06-01	Google Play	NEGATIVE	0.9971383810043336	Other
5528	2	BoA system is confartable	5	2025-06-01	Google Play	NEGATIVE	0.9980142116546632	Other
5529	2	very nice Abyssinia bank is choice all	5	2025-05-31	Google Play	POSITIVE	0.999583065509796	Other
5530	2	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	2025-05-27	Google Play	NEGATIVE	0.99980491399765	Other
5531	2	Good service.	3	2025-05-25	Google Play	POSITIVE	0.9998533725738524	Other
5532	2	the app crush frequently	1	2025-05-24	Google Play	NEGATIVE	0.998525083065033	Other
5533	2	You guys keeps getting worst	1	2025-05-22	Google Play	NEGATIVE	0.9997075200080872	Other
5534	2	This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. Can’t log in, can’t transfer money, can’t even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path🙏	1	2025-05-21	Google Play	NEGATIVE	0.999026656150818	Transaction Performance;User Interface;Reliability
5535	2	BoA	2	2025-05-20	Google Play	NEGATIVE	0.7410538196563721	Other
5536	2	but not opening on android	4	2025-05-19	Google Play	NEGATIVE	0.9952228665351868	Other
5537	2	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	2025-05-18	Google Play	NEGATIVE	0.9997984766960144	Other
5538	2	ሞላዬ ከበደ	5	2025-05-14	Google Play	NEGATIVE	0.7850590348243713	Other
5539	2	this app does no work on Samsung a51, it just gives a preview of the logo	1	2025-05-11	Google Play	NEGATIVE	0.9992283582687378	Other
5540	2	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	2025-05-10	Google Play	NEGATIVE	0.9994921684265136	Other
5541	2	liking this application good 👍	5	2025-05-07	Google Play	POSITIVE	0.9996829032897948	Other
5542	2	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	2025-05-06	Google Play	NEGATIVE	0.9989790916442872	Other
5543	2	it's really good 👍	5	2025-04-23	Google Play	POSITIVE	0.9998701810836792	Other
5544	2	Bad app . it stuck when you open and noting WORKS.	1	2025-04-23	Google Play	NEGATIVE	0.9995198249816896	Other
5545	2	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	2025-04-20	Google Play	NEGATIVE	0.9997255206108092	Account Access Issues;Transaction Performance
5546	2	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	2025-04-19	Google Play	NEGATIVE	0.999669909477234	Transaction Performance
5547	2	yideg	1	2025-04-18	Google Play	NEGATIVE	0.7675806283950806	Other
5548	2	አይከፍትም እኮ	1	2025-04-17	Google Play	NEGATIVE	0.7850590348243713	Other
5549	2	great boa	5	2025-04-10	Google Play	POSITIVE	0.9992689490318298	Other
5550	2	boa of mobile backing	5	2025-04-09	Google Play	NEGATIVE	0.980626106262207	Other
5551	2	faster bank of Abissinya	5	2025-04-08	Google Play	POSITIVE	0.9722142815589904	Other
5552	2	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	2025-04-08	Google Play	NEGATIVE	0.9996716976165771	Reliability
5553	2	it just doesn't work...so frustrating	1	2025-04-07	Google Play	NEGATIVE	0.999774158000946	Other
5554	2	like	5	2025-04-06	Google Play	POSITIVE	0.9910564422607422	Other
5555	2	it's not work correctly... you must have update it	1	2025-04-06	Google Play	NEGATIVE	0.9998013377189636	Other
5556	2	the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.	5	2025-04-04	Google Play	POSITIVE	0.957535207271576	Account Access Issues;Transaction Performance
5557	2	after i typed in my password it says successfully logged out ...and goes back to the first page	2	2025-04-04	Google Play	NEUTRAL	0.5	Account Access Issues
5558	2	good but they don't update enough don't add new things	3	2025-04-04	Google Play	NEGATIVE	0.9693678617477416	Other
5559	2	it doesn't work period z slowest mobile banking ever i would rather use *815#	1	2025-04-01	Google Play	NEGATIVE	0.9990907907485962	Transaction Performance
5560	2	after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?	1	2025-03-31	Google Play	NEGATIVE	0.9973751306533812	Other
5561	2	this version is not working for me I cannot even buy card. I cannot send money	1	2025-03-30	Google Play	NEGATIVE	0.9995684027671814	Other
5562	2	It can't actively on initialization, it says incorrect OTP getting the exact OTP	1	2025-03-29	Google Play	NEGATIVE	0.9996182918548584	Other
5563	2	always problematic hardly works	1	2025-03-26	Google Play	NEGATIVE	0.99955552816391	Other
5564	2	considering the fact the bank is huge this app really bad you could do better	1	2025-03-25	Google Play	NEGATIVE	0.9997418522834778	Other
5565	2	worst app and Bank ever u be ashamed, scammer	1	2025-03-24	Google Play	NEGATIVE	0.9998050332069396	Other
5566	2	great BoA	5	2025-03-22	Google Play	POSITIVE	0.9992689490318298	Other
5567	2	i have went to the bank so many times because i couldn't make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can't make any transaction with it please work in that	1	2025-03-21	Google Play	NEGATIVE	0.9988333582878112	Transaction Performance
5568	2	there is no speed	1	2025-03-19	Google Play	NEGATIVE	0.9994422793388368	Other
5569	2	For anyone who wants to download it, just don't!!!	1	2025-03-19	Google Play	NEGATIVE	0.999398112297058	Other
5570	2	wonderful	5	2025-03-19	Google Play	POSITIVE	0.9998772144317628	Other
5571	2	all worck	5	2025-03-19	Google Play	NEGATIVE	0.9971314668655396	Other
5572	2	Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y'all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.	1	2025-03-12	Google Play	NEGATIVE	0.9985970854759216	Reliability
5573	2	Improved to be the best	5	2025-03-11	Google Play	POSITIVE	0.9998570680618286	Other
5574	2	Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can't transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!	3	2025-03-11	Google Play	NEGATIVE	0.99748432636261	Transaction Performance;Reliability
5575	2	BoA Greqt Ethiopian bank.	5	2025-03-11	Google Play	NEGATIVE	0.8457719683647156	Other
5576	2	The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32	1	2025-03-10	Google Play	NEGATIVE	0.9994600415229796	Reliability
5577	2	Almost better compared to cbe where it is not qualified for	4	2025-03-09	Google Play	NEGATIVE	0.9741679430007936	Other
5578	2	what awesome apps. it is very simple to use and more much important apps.	5	2025-03-09	Google Play	POSITIVE	0.9998214840888976	Other
5579	2	Wonderfull app	5	2025-03-08	Google Play	POSITIVE	0.9998815059661864	Other
5580	2	i can't use this app why?	5	2025-03-07	Google Play	NEGATIVE	0.9993101358413696	Other
5581	2	Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they're too much better!!!! It clashes it takes much longer time to login while loading in short it's a complete of trash	1	2025-03-06	Google Play	NEGATIVE	0.9997013211250304	Account Access Issues;Transaction Performance
5582	2	bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!	1	2025-03-05	Google Play	NEGATIVE	0.9998133778572084	Other
5583	2	AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages	1	2025-03-04	Google Play	NEGATIVE	0.9959415793418884	Other
5584	2	I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately	1	2025-03-03	Google Play	NEGATIVE	0.9916398525238036	Other
5585	2	It has good features but sometimes it doesn't work...0	1	2025-03-02	Google Play	NEGATIVE	0.9956711530685424	Other
5586	2	Very poor proformance	1	2025-03-01	Google Play	NEGATIVE	0.9998043179512024	Other
5587	2	It's not opening. Really frustrating	1	2025-03-01	Google Play	NEGATIVE	0.9997020363807678	Other
5588	2	Verry Amazing App from all IB	5	2025-03-01	Google Play	POSITIVE	0.9997394680976868	Other
5589	2	Not working on this days	1	2025-02-26	Google Play	NEGATIVE	0.9972773194313048	Other
5590	2	Thank you BoA	5	2025-02-23	Google Play	POSITIVE	0.9998399019241332	Other
5591	2	best banking app in the wworld	5	2025-02-22	Google Play	POSITIVE	0.999572217464447	Other
5592	2	Nice app and it's easy to use	5	2025-02-21	Google Play	POSITIVE	0.999751627445221	Other
5593	2	please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachable…it is serious issue!	1	2025-02-15	Google Play	NEGATIVE	0.999267876148224	Transaction Performance
5594	2	This is help full i like ittttt	5	2025-02-14	Google Play	POSITIVE	0.9977995753288268	Customer Support
5595	2	The is not functional at all?	2	2025-02-12	Google Play	NEGATIVE	0.9997331500053406	Other
5596	2	Best bank	5	2025-02-08	Google Play	POSITIVE	0.9997438788414	Other
5597	2	Make it easy and convienient to use and perfect for all to high prefrence and choice.	3	2025-02-07	Google Play	POSITIVE	0.9997236132621764	Other
5598	2	🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹👍👍👍👍👍👍👍	5	2025-02-04	Google Play	NEGATIVE	0.697056770324707	Other
5599	2	I have been using this app for two years.It is amazing.	5	2025-02-01	Google Play	POSITIVE	0.9998595714569092	Other
5600	2	Sad experience	1	2025-01-30	Google Play	NEGATIVE	0.999068796634674	Other
5601	2	Always do update and that is annoying	3	2025-01-27	Google Play	NEGATIVE	0.9994439482688904	Other
5602	2	Best app, somehow waiting a few minutes	5	2025-01-23	Google Play	NEGATIVE	0.6387040019035339	Other
5603	2	I can't dijitalize my atm in the apollo app on my phone	1	2025-01-22	Google Play	NEGATIVE	0.9946038126945496	Other
5604	2	Whenever I try to sign in app close please fixed it out	2	2025-01-21	Google Play	NEGATIVE	0.9976611137390136	Other
5605	2	Beter	5	2025-01-21	Google Play	POSITIVE	0.6771945357322693	Other
5606	2	Boa	4	2025-01-18	Google Play	NEGATIVE	0.7410538196563721	Other
5607	2	በጣም የሚያስጠላ አፕ በጣም የወረደ ዜሮ ነው የምሰጠው ዘሮ It's not App it's very slow ehhhh. Why don't you upgrade the app???? It's always zero	1	2025-01-18	Google Play	NEGATIVE	0.9979276657104492	Transaction Performance
5608	2	Aadan Axmed Barkhadle	5	2025-01-17	Google Play	POSITIVE	0.6127505898475647	Other
5609	2	😡😡😡🤬🤬🤬	1	2025-01-16	Google Play	NEGATIVE	0.697056770324707	Other
5610	2	Horrible customer service and app crashes Horrible!!	1	2025-01-15	Google Play	NEGATIVE	0.9997913241386414	Reliability;Customer Support
5611	2	It keeps asking me to turn off developer mode even when dev mode is off. Couldn't use it.	1	2025-01-13	Google Play	NEGATIVE	0.9985793828964232	Other
5612	2	Good🙏	5	2025-01-12	Google Play	NEGATIVE	0.697056770324707	Other
5613	2	Like to much	5	2025-01-11	Google Play	POSITIVE	0.9997984766960144	Other
5614	2	I was using this app for long time it amazing user friendly UI but the i can't found for get pin button in the app	3	2025-01-07	Google Play	NEGATIVE	0.901659607887268	User Interface
5615	2	Great 👍	5	2025-01-04	Google Play	POSITIVE	0.9997692704200744	Other
5616	2	Fast and suitable for the customers.	5	2025-01-04	Google Play	POSITIVE	0.9997920393943788	User Interface
5617	2	Good app and helpful	5	2025-01-03	Google Play	POSITIVE	0.9998565912246704	Customer Support
5618	2	I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia's services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!	1	2025-01-03	Google Play	NEGATIVE	0.9978498220443726	Other
5619	2	By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?	1	2025-01-02	Google Play	NEGATIVE	0.9992759823799132	Other
5620	2	It doesn't work at all.	2	2025-01-02	Google Play	NEGATIVE	0.9997771382331848	Other
5621	2	this app is not available	1	2025-01-02	Google Play	NEGATIVE	0.9997593760490416	Other
5622	2	Wow what amazing	5	2024-12-30	Google Play	POSITIVE	0.9998555183410645	Other
5623	2	love it	5	2024-12-30	Google Play	POSITIVE	0.99987530708313	Other
5665	2	i find it interesting specially in reciept downloading	1	2024-11-12	Google Play	POSITIVE	0.9981314539909364	Transaction Performance
5624	2	በጣም መሻሻል አለበት....... ለ ባንኩ ማይመጥን መተግበርያ ነው ::	2	2024-12-30	Google Play	NEGATIVE	0.9733066558837892	Other
5625	2	Lemn embi yilal??	5	2024-12-30	Google Play	NEGATIVE	0.990697145462036	Other
5626	2	It's useless app downgraded.	1	2024-12-29	Google Play	NEGATIVE	0.999807059764862	Other
5627	2	Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.	1	2024-12-27	Google Play	NEGATIVE	0.7652353644371033	Account Access Issues
5628	2	When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.	1	2024-12-24	Google Play	NEGATIVE	0.9997933506965636	Other
5629	2	አይሰራም ሼም ነው፤	1	2024-12-23	Google Play	NEGATIVE	0.8616330027580261	Other
5630	2	Not that much bad	3	2024-12-22	Google Play	POSITIVE	0.998815894126892	Other
5631	2	The dirtiest application ever seen...	1	2024-12-20	Google Play	NEGATIVE	0.995487630367279	Other
5632	2	Nic ap	5	2024-12-19	Google Play	POSITIVE	0.9873360991477966	Other
5633	2	The forest app ever	1	2024-12-19	Google Play	POSITIVE	0.9840953946113586	Other
5634	2	I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won't work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!	1	2024-12-19	Google Play	NEGATIVE	0.9967040419578552	Other
5635	2	Bank of abissena	1	2024-12-17	Google Play	POSITIVE	0.948011875152588	Other
5636	2	Easy and sooo simple to use it, also its easy to stole someones money using the app	3	2024-12-16	Google Play	NEGATIVE	0.9888866543769836	Other
5637	2	The worst banking app ever. Never works!	1	2024-12-14	Google Play	NEGATIVE	0.999800741672516	Other
5638	2	Poorly functioning app	3	2024-12-13	Google Play	NEGATIVE	0.999775230884552	Other
5639	2	Your system is the worst you should do better😡😡😡😡😡😡	2	2024-12-11	Google Play	NEGATIVE	0.999800741672516	Other
5640	2	It has been a while since you guys started giving the mobile app service but still couldn't get it to work. I'm sure you know that it doesn't work already but not sure if you're lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.	1	2024-12-10	Google Play	NEGATIVE	0.9997615218162536	Other
5641	2	This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I'm tired of having to constantly switch the developer options off and on. I've been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.	4	2024-12-08	Google Play	POSITIVE	0.9543284177780152	Customer Support
5642	2	I’m giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst I’ve used. I hope improvements are made to enhance the user experience.	1	2024-12-07	Google Play	NEGATIVE	0.9997000694274902	Transaction Performance
5643	2	Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.	1	2024-12-06	Google Play	NEGATIVE	0.9941067695617676	Other
5644	2	It doesn't work on my 2 devices A05 and A34 😡	1	2024-12-02	Google Play	NEGATIVE	0.9996792078018188	Other
5645	2	It's better to say I don't use boa rather than pulling your phone out and opening this app	1	2024-12-01	Google Play	NEGATIVE	0.9981752634048462	Other
5646	2	My attention is very important because it will be the most difficult time for me	5	2024-11-30	Google Play	POSITIVE	0.9926175475120544	Other
5647	2	I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.	1	2024-11-29	Google Play	NEGATIVE	0.999800145626068	Account Access Issues;Transaction Performance
5648	2	I don't know why but your apps start out great then all of a sudden don't work🤷‍♀️	1	2024-11-28	Google Play	POSITIVE	0.8064295649528503	Other
5649	2	This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don't see the point.	1	2024-11-28	Google Play	NEGATIVE	0.99979966878891	Other
5650	2	exellent digital transaction of money	5	2024-11-27	Google Play	NEGATIVE	0.994447946548462	Transaction Performance
5651	2	The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.	1	2024-11-26	Google Play	NEGATIVE	0.999749720096588	Other
5652	2	Money	5	2024-11-24	Google Play	POSITIVE	0.9659326076507568	Other
5653	2	It needs more improvment	2	2024-11-24	Google Play	NEGATIVE	0.998616099357605	Other
5654	2	Hey Google	5	2024-11-21	Google Play	POSITIVE	0.9950044751167296	Other
5655	2	ab	3	2024-11-20	Google Play	POSITIVE	0.9603193998336792	Other
5656	2	Ademtahir	5	2024-11-20	Google Play	POSITIVE	0.9930110573768616	Other
5657	2	✌️✌️	5	2024-11-20	Google Play	NEGATIVE	0.697056770324707	Other
5658	2	Please this app on my android phone	3	2024-11-20	Google Play	POSITIVE	0.6488640308380127	Other
5659	2	GOAT 🐐 🐐	5	2024-11-19	Google Play	NEGATIVE	0.9337347149848938	Other
5660	2	Your app doesn't match your bank, the app is disaster, super slow. Please learn something from tele birr app.	1	2024-11-19	Google Play	NEGATIVE	0.9994460940361024	Transaction Performance
5661	2	The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.	1	2024-11-17	Google Play	NEGATIVE	0.9998020529747008	Other
5662	2	One of the poorest mobile banking system	1	2024-11-13	Google Play	NEGATIVE	0.999756634235382	Other
5663	2	❤❤❤❤❤❤	5	2024-11-12	Google Play	NEGATIVE	0.697056770324707	Other
5664	2	Oene	5	2024-11-12	Google Play	POSITIVE	0.8278861045837402	Other
5666	2	it good	5	2024-11-12	Google Play	POSITIVE	0.9998427629470824	Other
5667	2	This app crashes everytime, please fix it	1	2024-11-12	Google Play	NEGATIVE	0.9996472597122192	Reliability
5668	2	አንድ star ራሱ ይበዛበታል። i dont recomend to use this app also the bank	1	2024-11-12	Google Play	NEGATIVE	0.9964038133621216	Other
5669	2	I need a support the app is not working	5	2024-11-12	Google Play	NEGATIVE	0.9998034834861756	Customer Support
5670	2	Bast bank of ethiopia	5	2024-11-12	Google Play	POSITIVE	0.9978061318397522	Other
5671	2	very slow app. አቢሲኒያን ከሚያክል ባንክ የማይጠበቅ software app. ከቻላችሁ ሙሉ ለሙሉ እንደገና አሰሩት።በጣም ይመራያል ያሳፍራል።ለapp የወጣው ወጭ በሙስና የተበላ ነው የሚመስለው።	1	2024-11-12	Google Play	NEGATIVE	0.9990527033805848	Transaction Performance
5672	2	thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...	5	2024-11-12	Google Play	POSITIVE	0.9878897070884703	Other
5673	2	The worst App i have never seen like this before	1	2024-11-12	Google Play	NEGATIVE	0.999774158000946	Other
5674	2	Wweeeer	4	2024-11-12	Google Play	NEGATIVE	0.8910733461380005	Other
5675	2	Infinx	5	2024-11-12	Google Play	NEGATIVE	0.904255986213684	Other
5676	2	This app is not available on all android versions and some times it is not functional.	1	2024-11-08	Google Play	NEGATIVE	0.9997187256813048	Other
5677	2	senayt Mesfin	4	2024-11-08	Google Play	POSITIVE	0.887482225894928	Other
5678	2	Bad app vety bad.	1	2024-11-07	Google Play	NEGATIVE	0.9998058676719666	Other
5679	2	Abessnya Banke	5	2024-11-05	Google Play	NEGATIVE	0.987365186214447	Other
5680	2	The most useless app, I never expected such an irrelevant app from BOA. big shame!	1	2024-11-04	Google Play	NEGATIVE	0.9997209906578064	Other
5681	2	Okay	5	2024-11-03	Google Play	POSITIVE	0.9997709393501282	Other
5682	2	Professional on banking app	5	2024-11-01	Google Play	POSITIVE	0.9616295695304872	Other
5683	2	Has some nice interface but always freezes or slow to load .App developers please fix this issue.	3	2024-10-27	Google Play	NEGATIVE	0.993607759475708	Transaction Performance;User Interface;Reliability
5684	2	አይሰራም አስተካክሉት	5	2024-10-26	Google Play	NEGATIVE	0.7850590348243713	Other
5685	2	Please try another because this app doesn't feet the need of this generation	1	2024-10-25	Google Play	NEGATIVE	0.9962698221206664	Other
5686	2	Fast transfer	5	2024-10-24	Google Play	POSITIVE	0.9989985823631288	Transaction Performance
5687	2	What's up I can't log in, what's wrong	5	2024-10-22	Google Play	NEGATIVE	0.9989662170410156	Other
5688	2	Amrumehamed	1	2024-10-21	Google Play	POSITIVE	0.6924049258232117	Other
5689	2	Nice to meet you my proud bank in Ethiopia.. I'm a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service's over the world please? I'm working a lot of international money.But i can't get direct in Ethiopia because of don't knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please 🙏🙏🙏?	5	2024-10-18	Google Play	POSITIVE	0.9683735966682434	Other
5690	2	ደደገነሐ	5	2024-10-15	Google Play	NEGATIVE	0.697056770324707	Other
5691	2	Terrible Bank Experience It’s unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, there’s a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. They’ve put me in embarrassing situations countless times, and customer care never fixes anything. I’ve switched banks, and you should too!	1	2024-10-14	Google Play	NEGATIVE	0.9995194673538208	Transaction Performance;Reliability
5692	2	A painfully slow banking app service. Please don't make it your choice!	1	2024-10-13	Google Play	NEGATIVE	0.999660849571228	Transaction Performance
5693	2	Best app to me	5	2024-10-11	Google Play	POSITIVE	0.997821807861328	Other
5694	2	BOA	5	2024-10-11	Google Play	NEGATIVE	0.7410538196563721	Other
5695	2	Abdulkadir	5	2024-10-11	Google Play	POSITIVE	0.981449544429779	Other
5696	2	If it is possible I would gove0 star	1	2024-10-08	Google Play	NEGATIVE	0.9928192496299744	Other
5697	2	Nise mobile bankig	4	2024-10-05	Google Play	NEGATIVE	0.9858755469322203	Other
5698	2	Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer	4	2024-10-04	Google Play	NEGATIVE	0.953279197216034	Transaction Performance
5699	2	Just make it work please🤣 this is embarrassing for a bank of your size	1	2024-10-04	Google Play	NEGATIVE	0.999284327030182	Other
5700	2	Update to the simplest way it requires the developer option on and off why this is	5	2024-10-04	Google Play	NEGATIVE	0.998016357421875	User Interface
5701	2	Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? I’m not slowing down my phone just to use your God damn app. 🤮🤮🤮🤮	1	2024-10-04	Google Play	NEGATIVE	0.9964292645454408	Transaction Performance
5702	2	I'm living out of country how may I download and use mobile banking? It asks me the Ethiopia phone number and I can't receive text to confirm because I'm out side the country. So please lete know if I can use while I'm outside the country. Thanks	1	2024-10-04	Google Play	NEGATIVE	0.6597357392311096	Other
5703	2	Worest app	1	2024-10-03	Google Play	NEGATIVE	0.7789776921272278	Other
5704	2	አሪፍ ነው በርቱልን	5	2024-10-03	Google Play	NEGATIVE	0.8337255716323853	Other
5705	2	Wwwerrr	5	2024-10-02	Google Play	NEGATIVE	0.8502517342567444	Other
5706	2	ጀማል ውቀቱ	5	2024-09-30	Google Play	NEGATIVE	0.7850590348243713	Other
5707	2	Great For Financial company	5	2024-09-30	Google Play	POSITIVE	0.9998703002929688	Other
5708	2	The App's crash always.. Error.....	3	2024-09-27	Google Play	NEGATIVE	0.9996880292892456	Reliability
5709	2	This app is incredibly frustrating to use. It’s filled with issues that make it difficult to navigate and complete tasks efficiently. I’ve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.	1	2024-09-26	Google Play	NEGATIVE	0.998582124710083	User Interface
5710	2	Great UI and seamless UX. I love it!!	5	2024-09-25	Google Play	POSITIVE	0.9998557567596436	User Interface
5711	2	That's too good application but try to add more alternatives and futures or possibilitys for your customers	3	2024-09-25	Google Play	NEGATIVE	0.9941336512565612	Other
5712	2	It's easy used to operate program and secured 👍👍	4	2024-09-25	Google Play	NEGATIVE	0.9652976989746094	Other
5713	2	I bought a mobile card on this app but I didn't receive it and it took my money and I didn't get my money back.	1	2024-09-21	Google Play	NEGATIVE	0.9994741082191468	Other
5714	2	Great app with great services	5	2024-09-19	Google Play	POSITIVE	0.9998226761817932	Other
5715	2	Yes active user	5	2024-09-17	Google Play	POSITIVE	0.9983929991722108	Other
5716	2	Shameful	1	2024-09-17	Google Play	NEGATIVE	0.998016357421875	Other
5717	2	The worest app ever made i would not recommende for no one	1	2024-09-16	Google Play	NEUTRAL	0.5	Other
5718	2	How many hours should I wait after transferring money to telebirr, please do something about the transfer delay issue I need my money when ever.	1	2024-09-15	Google Play	NEGATIVE	0.9988893866539	Transaction Performance
5719	2	BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn't experience this kind of challenge while having transactions in other banks' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.	1	2024-09-15	Google Play	NEGATIVE	0.9993953704833984	Transaction Performance;Customer Support
5720	2	የእርስዎን ተሞክሮ ይግለጹ (አማራጭ)	5	2024-09-14	Google Play	NEGATIVE	0.8698039650917053	Other
5721	2	It's not working. It needs a big update. Can't you update the app quickly?	1	2024-09-14	Google Play	NEGATIVE	0.999777853488922	User Interface
5722	2	I am Aimohon Joel , It's can be Good for a Better Conversation in Time 🙂	3	2024-09-14	Google Play	NEGATIVE	0.9925204515457152	Other
5723	2	Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It's annoying.	1	2024-09-13	Google Play	NEGATIVE	0.999325394630432	Other
5724	2	Bes and freindly app	5	2024-09-13	Google Play	NEGATIVE	0.9136509895324708	Other
5725	2	It doesn't work.	1	2024-09-12	Google Play	NEGATIVE	0.9997761845588684	Other
5726	2	It say "The request was not successful. please check device connectivity or try again" why? One of the bank manager told me it is because of my phone's android version which is 9.1 It is ridiculous! Disappointing	1	2024-09-11	Google Play	NEGATIVE	0.9997968077659608	Other
5727	2	How to download or screenshot of payment receipt...what kinda worst app ever 🤮🤮🤢	1	2024-09-11	Google Play	NEGATIVE	0.9998114705085754	Transaction Performance
5728	2	Smart technology	5	2024-09-10	Google Play	POSITIVE	0.9998468160629272	Other
5729	2	Yegema app tish🪨	1	2024-09-08	Google Play	NEGATIVE	0.9501880407333374	Other
5730	2	This is not an appropriate app, i don't know how boa develops this app, i don't expect this much crazy and un confortable app form BOA, I'm soory!!!	1	2024-09-07	Google Play	NEGATIVE	0.9996864795684814	Other
5731	2	Shockingly bad! Even when it decides to work, it's painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank	1	2024-09-06	Google Play	NEGATIVE	0.9997275471687316	Transaction Performance
5732	2	It crashes frequently. It launches on Android 8.1 but I don't think it actually works on versions less than 10. If so, it shouldn't be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.	1	2024-09-06	Google Play	NEGATIVE	0.999210000038147	Reliability
5733	2	Awesome application. But lately its crashing everytime i opened it.	4	2024-09-05	Google Play	NEGATIVE	0.9127686619758606	Reliability
5734	2	እጅም በጣም ደካማ አፕ ነው ሲፈልግ ይከፍታል ሲፈልግ አይከፍትም ከአዋሽ እና ንግድ ባንክ የመሳሰሉ ባንኮች ሲወዳደር ሞባይል ባንኪንግ App እጅግ የሚያበሳጭ ነው ለውጥ ያስፈልጋችኋል	1	2024-09-05	Google Play	NEGATIVE	0.9639250636100768	Other
5735	2	Fast one	3	2024-09-04	Google Play	POSITIVE	0.9994491934776306	Other
5736	2	Nice looking app but a terrible user experience.	1	2024-09-03	Google Play	NEGATIVE	0.9958102703094482	Other
5737	2	The worest MB app ever!!🙄	1	2024-09-02	Google Play	NEGATIVE	0.8734642267227173	Other
5738	2	It is ok	5	2024-09-01	Google Play	POSITIVE	0.9998496770858764	Other
5739	2	Plz fix the Apps ....screenshot lovation hide from glarey share botten not work😔😔	1	2024-08-30	Google Play	NEGATIVE	0.9987314343452454	Other
5740	2	Apollo's	1	2024-08-29	Google Play	POSITIVE	0.9974138736724854	Other
5741	2	The worst experience ever	1	2024-08-29	Google Play	NEGATIVE	0.999792754650116	Other
5742	2	Hussenaliumar	5	2024-08-29	Google Play	NEGATIVE	0.6654543876647949	Other
5743	2	Hi I have problem with this App BOA mobile I don't know what is wrong with this App I did many times download but it's sam doesn't work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone	1	2024-08-28	Google Play	NEGATIVE	0.999367892742157	Other
5744	2	It is not work for my device	5	2024-08-27	Google Play	NEGATIVE	0.9997636675834656	Other
5745	2	I'm Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it's anoying	1	2024-08-26	Google Play	NEGATIVE	0.9990233182907104	Other
5746	2	The worst app ever	1	2024-08-26	Google Play	NEGATIVE	0.9997934699058532	Other
5747	2	Betanya Gebre	3	2024-08-23	Google Play	POSITIVE	0.8911886215209961	Other
5748	2	I dont recommand it to any one	1	2024-08-23	Google Play	NEGATIVE	0.9855504035949708	Other
5749	2	The application used to work well. But after updates I'm not able to use the forgot password feature, which is blocking me from accessing it as a whole.	1	2024-08-20	Google Play	NEGATIVE	0.9988825917243958	Account Access Issues
5750	2	ትርሃስ	5	2024-08-19	Google Play	NEGATIVE	0.697056770324707	Other
5751	2	Gio	4	2024-08-19	Google Play	POSITIVE	0.9969680905342102	Other
5752	2	App isn't working	1	2024-08-18	Google Play	NEGATIVE	0.9995692372322084	Other
5753	2	so far good but always it lugs	3	2024-08-17	Google Play	NEGATIVE	0.9829469919204712	Other
5754	2	Don't trust this bank and its service.	1	2024-08-16	Google Play	NEGATIVE	0.99963116645813	Other
5755	2	I can not open and use the application,please help me!	5	2024-08-15	Google Play	NEGATIVE	0.9995014667510986	Customer Support
5756	2	Horrible	1	2024-08-14	Google Play	NEGATIVE	0.9997841715812684	Other
5757	2	Mostly not working 😑	1	2024-08-14	Google Play	NEGATIVE	0.999582588672638	Other
5758	2	Awesome 👌	5	2024-08-12	Google Play	POSITIVE	0.9998607635498048	Other
5759	2	Despite the enhanced technology you have, the application doesn't work properly, and it asks for the developer option to be turned off, fix that.	3	2024-08-12	Google Play	NEGATIVE	0.9997915625572203	Other
5760	2	Very poor app b/c highly slow to open the app	1	2024-08-12	Google Play	NEGATIVE	0.9998080134391784	Transaction Performance
5761	2	Wedi Tekle .	5	2024-08-11	Google Play	NEGATIVE	0.8421270847320557	Other
5762	2	Bad app📱👎👎👎	1	2024-08-11	Google Play	NEGATIVE	0.9997676014900208	Other
5763	2	Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?	5	2024-08-11	Google Play	NEGATIVE	0.9956488013267516	Other
5764	2	Nice appp	5	2024-08-11	Google Play	POSITIVE	0.9997910857200624	Other
5765	2	ሰላም አቢሲኒያዎች የሞባይል ባንኪንጋችሁ ተጠቃሚ ነኝ አገልግሎቱን ስላስጀመራችሁለን እናመሰግናለን። ነገር ግን አለፎ አልፎ የነበረው የማስፈንጠሪያው በአግባቡ አለመስራት አልፎ አልፎ ወደመስራት ተቀይሯል ድሮ እንደነበራችሁ እናውቃለን ዘንድሮም ብትኖሩልን እንመርጣለን *ከዘመን አንጉደል*	3	2024-08-10	Google Play	NEGATIVE	0.952187716960907	Other
5766	2	Gooood app my dear	5	2024-08-10	Google Play	NEGATIVE	0.9005935192108154	Other
5767	2	Harun tamam galanaa	3	2024-08-09	Google Play	NEGATIVE	0.9410595893859864	Other
5768	2	A total disaster of an app. Always offline, never works, it's embarassing. I've lost hope and taken my business to a competitor	1	2024-08-08	Google Play	NEGATIVE	0.9998038411140442	Other
5769	2	Gamebela	1	2024-08-08	Google Play	POSITIVE	0.8994186520576477	Other
5770	2	so poor app to use can't start up when open the app	1	2024-08-08	Google Play	NEGATIVE	0.999744474887848	Other
5771	2	This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.	1	2024-08-07	Google Play	NEGATIVE	0.9987001419067384	Transaction Performance
5772	2	Worst app ever, not user friendly, even doesn't serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank	1	2024-08-07	Google Play	NEGATIVE	0.9998094439506532	Account Access Issues;User Interface
5773	2	Bad app .	1	2024-08-06	Google Play	NEGATIVE	0.9997915625572203	Other
5774	2	I mean how could a big financial company like this, be this much irresponsible to release this app? You should be ashamed!	1	2024-08-06	Google Play	NEGATIVE	0.9994394183158876	Other
5775	2	Review	5	2024-08-06	Google Play	POSITIVE	0.9946893453598022	Other
5776	2	👎👎👎👎👎👎👎👎👎	1	2024-08-06	Google Play	NEGATIVE	0.697056770324707	Other
5777	2	Is it necessary to switch off developer options every time to use mobile banking?🤔🤔😡😡😡	1	2024-08-04	Google Play	NEGATIVE	0.99793541431427	Other
5778	2	The previous version is better it doesn't work	1	2024-08-04	Google Play	NEGATIVE	0.9997755885124208	Other
5779	2	I don't know what is wrong with BOA as a bank in general. It's been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn't take a screenshot (or can't even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it's the worst!	1	2024-08-03	Google Play	NEGATIVE	0.9998201727867126	Transaction Performance
5780	2	Take some note from CBE mobile banking app, it's the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests 🙌	1	2024-08-03	Google Play	POSITIVE	0.9958856701850892	Other
5781	2	It's a useless app	1	2024-08-02	Google Play	NEGATIVE	0.9998058676719666	Other
5782	2	It's not working as it was , so much need to improve, it was the best but not anymore	2	2024-08-01	Google Play	NEGATIVE	0.9968530535697936	Other
5783	2	Poor network	1	2024-08-01	Google Play	NEGATIVE	0.9997891783714294	Other
5784	2	Not yet completely working this App. i don't know when is it will be working properly! Its Sad!!!	1	2024-07-31	Google Play	NEGATIVE	0.9993754029273988	Other
5785	2	The app does not open sometimes it says coonection issue which i dont have and after it opens it has bugs while using its not smooth to work with please improve it	1	2024-07-31	Google Play	NEGATIVE	0.9953023195266724	Reliability
5786	2	It's not working totally, what a useless app is it,	1	2024-07-31	Google Play	NEGATIVE	0.999817192554474	Other
5787	2	This app has become the most troubling every day. It doesn't work. I love the bank, and I hate the app	1	2024-07-31	Google Play	NEGATIVE	0.9989368319511414	Other
5788	2	this is so disappointing app 😞	1	2024-07-31	Google Play	NEGATIVE	0.9998024106025696	Other
5789	2	አቢስኒያ የሁሉም ምርጫ	5	2024-07-29	Google Play	NEGATIVE	0.8337255716323853	Other
5790	2	it can't even open and only display error messages	1	2024-07-27	Google Play	NEGATIVE	0.9993472695350648	Reliability
5791	2	not active	1	2024-07-27	Google Play	NEGATIVE	0.999765932559967	Other
5792	2	To get good quality	5	2024-07-27	Google Play	POSITIVE	0.999868392944336	Other
5793	2	አይሰራም እኮ ምንድን ነው ችግሩ?	1	2024-07-26	Google Play	NEGATIVE	0.9647620320320128	Other
5794	2	uselss app dont download	1	2024-07-26	Google Play	NEGATIVE	0.9977203011512756	Other
5795	2	Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it	1	2024-07-25	Google Play	NEGATIVE	0.9997162222862244	Transaction Performance
5796	2	This app didn't work. They have a new version (new app) but still not compatible with my Samsung S8+ , which is v.funny.	1	2024-07-25	Google Play	NEGATIVE	0.9991223216056824	Other
5797	2	Corrupted and poor app	1	2024-07-24	Google Play	NEGATIVE	0.9997439980506896	Other
5798	2	When I try to use the application it says 'developer setting should be off' where is the setting to off this play Still doesn't work for me	3	2024-07-24	Google Play	NEGATIVE	0.999801218509674	Other
5799	2	FIX YOUR Apollo!! You guys where the best 👌	1	2024-07-23	Google Play	POSITIVE	0.999450385570526	Other
5800	2	Always slow and doesn't work on weekends if you are in a rush or a merchant this app is not for you	1	2024-07-23	Google Play	NEGATIVE	0.9994396567344666	Transaction Performance
5801	2	It's very difficult to use the user, app,ones dawenload the user can't operate well , no one can help me,	1	2024-07-23	Google Play	NEGATIVE	0.9997815489768982	Customer Support
5802	2	Poor application. It turned off by itself	1	2024-07-23	Google Play	NEGATIVE	0.999744474887848	Other
5803	2	It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.	1	2024-07-23	Google Play	NEGATIVE	0.9991043210029602	Reliability
5804	2	we want international mobile banking	1	2024-07-22	Google Play	POSITIVE	0.958784520626068	Other
5805	2	screenshot isn't working, Please modify it	2	2024-07-22	Google Play	NEGATIVE	0.9996084570884703	Other
5806	2	Naziriet measho 89160437	1	2024-07-22	Google Play	NEGATIVE	0.9862651228904724	Other
5807	2	Ahmed Mohammed husen	3	2024-07-21	Google Play	POSITIVE	0.9124149680137634	Other
5808	2	Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking	1	2024-07-19	Google Play	NEGATIVE	0.9996222257614136	Other
5809	2	I have experiance	5	2024-07-19	Google Play	NEGATIVE	0.8070294857025146	Other
5810	2	The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.	1	2024-07-19	Google Play	NEGATIVE	0.9997739195823668	Reliability
5811	2	Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one	1	2024-07-19	Google Play	NEGATIVE	0.999760091304779	Reliability
5812	2	ርይርፍ	3	2024-07-19	Google Play	NEGATIVE	0.697056770324707	Other
5813	2	The previous application is much better than this one	1	2024-07-18	Google Play	POSITIVE	0.9991149306297302	Other
5814	2	Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.	1	2024-07-18	Google Play	NEGATIVE	0.9994294047355652	User Interface
5815	2	It is not working at all	1	2024-07-16	Google Play	NEGATIVE	0.9997811913490297	Other
5816	2	The poorest mobile banking survice ever. Only error reports frequently	1	2024-07-16	Google Play	NEGATIVE	0.999705970287323	Reliability
5817	2	😞😞😞😞	1	2024-07-16	Google Play	NEGATIVE	0.697056770324707	Other
5818	2	😡😡😡😡😡😡😡	1	2024-07-15	Google Play	NEGATIVE	0.697056770324707	Other
5819	2	The worst banking app	1	2024-07-15	Google Play	NEGATIVE	0.9998050332069396	Other
5820	2	The app is constantly crashing and freezing when to send to BOA customers' accounts.	1	2024-07-15	Google Play	NEGATIVE	0.9988401532173156	Reliability
5821	2	No work app	5	2024-07-15	Google Play	NEGATIVE	0.9968982934951782	Other
5822	2	Is ok but stop sundenly	5	2024-07-15	Google Play	POSITIVE	0.9309316277503968	Other
5823	2	🤷🤷🤷	3	2024-07-15	Google Play	NEGATIVE	0.697056770324707	Other
5824	2	experienced	5	2024-07-14	Google Play	POSITIVE	0.9950610995292664	Other
5825	2	Very poor app. Its Always cresh and not compatible	2	2024-07-13	Google Play	NEGATIVE	0.999818742275238	Other
5826	2	It's not functional at all. It keeps saying "error". Unable to activate.	1	2024-07-13	Google Play	NEGATIVE	0.9998112320899964	Reliability
5827	2	I can't believe that Abyssinia develop this kind of trash app it have a lot of issues 👎👎👎	1	2024-07-13	Google Play	NEGATIVE	0.998315453529358	Other
5828	2	The new app is very good	5	2024-07-13	Google Play	POSITIVE	0.9998589754104614	Other
5829	2	It's very good but sometimes isn't work probably	5	2024-07-12	Google Play	NEGATIVE	0.937102735042572	Other
5830	2	It doesn't work	1	2024-07-12	Google Play	NEGATIVE	0.9997813105583192	Other
5831	2	ጭራሽ አይነፋም	1	2024-07-12	Google Play	NEGATIVE	0.7850590348243713	Other
5832	2	This is the most stupid app I've seen, why would I turn off developer mode just because you can't make your app secure, this clearly indicates the app has very poor implementation and unskilled developers.. There are a lot of people who need developer option for different reasons. Please for the sake of the bank, fix this thing... Even the most secure international banking apps don't require it. Not to mention the lag and crashes	1	2024-07-12	Google Play	NEGATIVE	0.9997655749320984	User Interface;Reliability
5833	2	The worst mobile banking app	1	2024-07-11	Google Play	NEGATIVE	0.9997923970222472	Other
5834	2	The app keeps crashing it stops responding while I'm using it or trying to open the app. Now I have to go to the bank in person to do any banking activities. In short it is the worst mobile banking system in Ethiopia	1	2024-07-11	Google Play	NEGATIVE	0.9997914433479308	Reliability
5835	2	ሀየ	5	2024-07-10	Google Play	NEGATIVE	0.697056770324707	Other
5836	2	Too late!	1	2024-07-10	Google Play	NEGATIVE	0.9988941550254822	Other
5837	2	Pretty good for a banking app, it still lacks some things with in the ui and with the speed of the app but overall it's a good application. Thank you 5/5👍🏻	5	2024-07-09	Google Play	POSITIVE	0.9995549321174622	User Interface
5838	2	After update it doesn't work well	2	2024-07-09	Google Play	NEGATIVE	0.9996452331542968	Other
5839	2	Error occurred try again for 5 days tele birr user not found ለራሴ አዝዤ	1	2024-07-08	Google Play	NEGATIVE	0.9983060359954834	Reliability
5840	2	Good but Very slow.	1	2024-07-08	Google Play	POSITIVE	0.9877548813819884	Transaction Performance
5841	2	It is so bad apps ,it doesn't work	1	2024-07-06	Google Play	NEGATIVE	0.9998026490211488	Other
5842	2	From now on I will never going to use this app,It is a trash app.No one care about this app from bank I will rate them 0/5.	1	2024-07-06	Google Play	NEGATIVE	0.9991281628608704	Other
5843	2	It usually crashes and unable to process also it request to off the developer options	1	2024-07-05	Google Play	NEGATIVE	0.9996892213821412	Reliability
5844	2	Miliyone.	5	2024-07-05	Google Play	NEGATIVE	0.9675787687301636	Other
5845	2	Workneh girmamo	5	2024-07-05	Google Play	POSITIVE	0.9400009512901306	Other
5846	2	I can't believe in this day and age, one of the major banks of the country can't seem to understand that having a working mobile payment option is a **MUST** to survive. I have decided to move my accounts to CBE and Awash because of this. Can't be bothered with this useless app.	1	2024-07-04	Google Play	NEGATIVE	0.9974097609519958	Transaction Performance
5847	2	Is it even working these days? Please check it.	1	2024-07-04	Google Play	POSITIVE	0.989270567893982	Other
5848	2	The app is essentially unusable, it asks to disable developer mode even when it is already disabled and crashes, sometimes it only works with wifi and sometimes only with data, or it crashes just because.......	1	2024-07-04	Google Play	NEGATIVE	0.9995259046554564	Reliability
5849	2	Please make it functional.	5	2024-07-03	Google Play	POSITIVE	0.9997920393943788	Other
5850	2	its best app but its don't working in poor connection area so	5	2024-07-03	Google Play	NEGATIVE	0.9705930948257446	Other
5851	2	Please Recover thank you	5	2024-07-02	Google Play	POSITIVE	0.9997314810752868	Other
5852	2	This app doesn't work	1	2024-06-30	Google Play	NEGATIVE	0.9997921586036682	Other
5853	2	the app used to run fine, but now it takes like forever to even open the main dashboard and sometimes it just crashes on its own. you guys gotta step it up. we need this app to be way faster	1	2024-06-27	Google Play	NEGATIVE	0.9726089239120485	Reliability
5854	2	the underrated app I've ever seen and ur banking system is Soo Idiocracy	1	2024-06-27	Google Play	NEGATIVE	0.9977184534072876	Other
5855	2	It demands to disable developer option.	1	2024-06-27	Google Play	NEGATIVE	0.9994282126426696	Other
5946	2	It takes a very long time to log in please fix	1	2024-05-08	Google Play	NEGATIVE	0.9983991980552672	Other
5856	2	It's been two months now, I cannot do any transaction using this app. It's really disappointing. I am using bank of Abyssinia currently because it's the nearest bank to my work place. The bank is turning to the worst bank in the country day by day. They always respond to customers that they are updating their system all year long, I think that's what they train their customer service operators to do.	1	2024-06-26	Google Play	NEGATIVE	0.999635934829712	Transaction Performance;Customer Support
5857	2	Open Open service	5	2024-06-26	Google Play	POSITIVE	0.9997770190238952	Other
5858	2	አፑ በጣም አስቸጋሪ ሆኗል	1	2024-06-25	Google Play	NEGATIVE	0.8616330027580261	Other
5859	2	Its not working.	1	2024-06-24	Google Play	NEGATIVE	0.9997856020927428	Other
5860	2	Riddled with crashes, cant use it anymore. Very frustrating!	1	2024-06-20	Google Play	NEGATIVE	0.9994331002235411	Reliability
5861	2	Always error occured. The worst app ever	1	2024-06-20	Google Play	NEGATIVE	0.9997997879981996	Reliability
5862	2	ከዚህ ትልቅ ባንክ የማይጠበቅ ድንዝዝዝዝ ያለ App.... ዛግግግ ነው ያረገኝ 😡😡😡	1	2024-06-20	Google Play	NEGATIVE	0.96113383769989	Other
5863	2	It's not convenient	1	2024-06-17	Google Play	NEGATIVE	0.9998067021369934	Other
5864	2	meskelu Metku	5	2024-06-17	Google Play	POSITIVE	0.8474319577217102	Other
5865	2	Verry nice	5	2024-06-17	Google Play	POSITIVE	0.9997273087501526	Other
5866	2	It has become the most unreliable mibile banking app ever.	1	2024-06-16	Google Play	NEGATIVE	0.999081015586853	Other
5867	2	አኘልኬሽኑ በሁሉም ነገር ጥሩ ነዉ,ነገር ግን Network በጣም ነዉ እሚያስቸገረው	2	2024-06-13	Google Play	NEGATIVE	0.9465043544769288	Other
5868	2	The poorest mobile banking I have seen in the industry. Is not stable to login and post transactions. Is not attractive. Error reports frequently.	5	2024-06-13	Google Play	NEGATIVE	0.9998160004615784	Account Access Issues;Transaction Performance;Reliability
5869	2	Really Bank	5	2024-06-12	Google Play	POSITIVE	0.982058048248291	Other
5870	2	I like the the bank of Abyssinia is the best first bank of Ethiopia	1	2024-06-11	Google Play	POSITIVE	0.999809205532074	Other
5871	2	The app is not good need a few work	3	2024-06-11	Google Play	NEGATIVE	0.9997538924217224	Other
5872	2	The worst mob app i have ever seen. Slow, uncomfortable and stupid. It is better to learn from the best app (tele birr). The released updates is even worst.	1	2024-06-11	Google Play	NEGATIVE	0.9997610449790956	Transaction Performance
5873	2	Unreliable, expensive service. Most of the time, it is not working. Sometimes, it will take more than a day to complete transactions and charges more for this unworthy service. I will not recommend this bank app to anyone.	1	2024-06-10	Google Play	NEGATIVE	0.9994435906410216	Transaction Performance
5874	2	You are beutiful	5	2024-06-09	Google Play	NEGATIVE	0.8399413228034973	Other
5875	2	አይሰራም አፑ ለምንድነው	1	2024-06-06	Google Play	NEGATIVE	0.8337255716323853	Other
5876	2	Awful	1	2024-06-06	Google Play	NEGATIVE	0.9997954964637756	Other
5877	2	Developer option to be off really	1	2024-06-06	Google Play	NEGATIVE	0.9903940558433532	Other
5878	2	Good app boa	5	2024-06-06	Google Play	POSITIVE	0.999842882156372	Other
5879	2	I'm disappointed with the recent changes to this app. Disabling developer options for functionality seems unnecessary. The previous version offered a more user-friendly experience.	1	2024-06-06	Google Play	NEGATIVE	0.9997298121452332	Other
5880	2	Worest app, it cannot be downloaded	2	2024-06-05	Google Play	NEGATIVE	0.9979676604270936	Other
5881	2	😭😭😭😭😭😭😭	1	2024-06-05	Google Play	NEGATIVE	0.697056770324707	Other
5882	2	slow only some times the wey it is veary nice app	5	2024-06-05	Google Play	POSITIVE	0.949857532978058	Transaction Performance
5883	2	ok yes	5	2024-06-04	Google Play	POSITIVE	0.9997628331184388	Other
5884	2	It's nice apps	1	2024-06-04	Google Play	POSITIVE	0.999875545501709	Other
5885	2	Wow! what a disgrace for BOA. The app barely works. Too slow and always returns error.	1	2024-06-03	Google Play	NEGATIVE	0.9997871518135072	Transaction Performance;Reliability
5886	2	Excited by your service	5	2024-06-02	Google Play	POSITIVE	0.9997963309288024	Other
5887	2	Kerfafa new	1	2024-06-01	Google Play	POSITIVE	0.8148763179779053	Other
5888	2	ABDU MUDESR	2	2024-06-01	Google Play	POSITIVE	0.7394682765007019	Other
5889	2	The worst mobile banking app! It doesn't load (seems like with the perfect WiFi and data connection it still manages to have network issues), when you finally get into the app, it makes it so hard more than it should be to send money.	1	2024-05-31	Google Play	NEGATIVE	0.9996273517608644	Other
5890	2	It is Good to save time 👌👌	3	2024-05-31	Google Play	POSITIVE	0.9998168349266052	Other
5891	2	I'm sorry but what kind of stupid developer thinks the app will be faster if we disable "Developer mode"? I've never seen such degeneracy in my entire life, please get rid of this feature	1	2024-05-30	Google Play	NEGATIVE	0.9996848106384276	Other
5892	2	What is the purpose or point of not allowing to take a screenshot of the recipe after transferring???	1	2024-05-29	Google Play	NEGATIVE	0.9991626739501952	Transaction Performance
5893	2	Ayseram	1	2024-05-28	Google Play	NEGATIVE	0.656094491481781	Other
5894	2	Worst banking app ever	1	2024-05-28	Google Play	NEGATIVE	0.9997898936271667	Other
5895	2	I can't use the app unless I turn off developer mode?? What kind of stupid rule is that?? The worst experience for a banking app!!	1	2024-05-26	Google Play	NEGATIVE	0.9998013377189636	Other
5896	2	How disappointing!	1	2024-05-25	Google Play	NEGATIVE	0.99981290102005	Other
5897	2	Sorry to say this compared to other banks mobile app its the worest it need more improvement the app doesn't match the bank standard it need more update its too slow plus it keep saying stop developing option on your phone when no developing setting enabled ??plus when it come to recent transaction nothing to display...	1	2024-05-24	Google Play	NEGATIVE	0.9994317889213562	Transaction Performance
5898	2	Very Very nice 👌 👍	5	2024-05-23	Google Play	POSITIVE	0.9998488426208496	Other
5899	2	🥰🥰🥰🥰🥰	5	2024-05-23	Google Play	NEGATIVE	0.697056770324707	Other
5900	2	What is that disable developer option I have never seen any app commands.	3	2024-05-22	Google Play	NEGATIVE	0.9988861680030824	Other
5901	2	Please fix the app i doesn't belongs to Abbssinya Bank Name	1	2024-05-22	Google Play	NEGATIVE	0.9982648491859436	Other
5947	2	It's not functional at all	1	2024-05-08	Google Play	NEGATIVE	0.9997891783714294	Other
5996	2	So unreliable i had to send money asap but this app either laggs or doesn't work such a lazy work look at how efficient tele birr is and its not even a bank	1	2024-05-02	Google Play	NEGATIVE	0.9988459348678588	Other
5997	2	Great app than others	5	2024-05-02	Google Play	POSITIVE	0.9997201561927797	Other
5902	2	Playstore need to have some option to give 0 stars because this application right here, deserve exactly that, imagine being one of the biggest banks In the country and can't manage to have good mobile application in the Era of mobile money, you guys are in the brink of collapse you better make it right real quick or you gonna be 10 meters down to the grave. DON'T USE THIS APP, IT'S WASTE OF TIME.	1	2024-05-21	Google Play	NEGATIVE	0.9993355870246888	User Interface
5903	2	It's good when i've downloaded at first. But now it doesn't work well	2	2024-05-20	Google Play	NEGATIVE	0.994461953639984	Other
5904	2	It's just terrible. It kept crashing in middle of transaction. Hell sometimes it won't open. My phone is stock Android (pixel 8) and I don't even know how this happens. Fix it!	1	2024-05-20	Google Play	NEGATIVE	0.9996610879898072	Transaction Performance;Reliability
5905	2	ደስታው ንጋቴ	5	2024-05-20	Google Play	NEGATIVE	0.7850590348243713	Other
5906	2	Good but not working top up	5	2024-05-20	Google Play	POSITIVE	0.9643874168395996	Other
5907	2	በጣም ቀፋፊ አፕ ነው ። ሰርቶ አያውቅም ። በጣም ብዙ ችግር አለበት ከአቢሲኒያ ባንክ የማይጠበቅ አፕ ለምን ደህና ዲቨሎኘር ቀጥራችሁ አፕሊኬሽኑን ድጋሚ አታሰሩትም ?	1	2024-05-20	Google Play	NEGATIVE	0.9771652221679688	Other
5908	2	Great app..	3	2024-05-18	Google Play	POSITIVE	0.9998515844345092	Other
5909	2	This app is the most worst app I used in Ethiopia and belive me I know I live in Ethiopia. Being the fincial app It doesn't work when you want it. It makes you wait for cash out code and immediately debit the amount before sending the code I have got to say abysinia bank I didn't expect this from you and I use CBE mobile banking	1	2024-05-18	Google Play	NEGATIVE	0.9997337460517884	Other
5910	2	Poor mobile banking alwayes not working alwayes	1	2024-05-18	Google Play	NEGATIVE	0.9997960925102234	Other
5911	2	Absolutely the worst mobile banking app.it crashs every time,problem when logging in and and cuts my balance when top up without even recharging	1	2024-05-17	Google Play	NEGATIVE	0.9997944235801696	Reliability
5912	2	Fails occasionally.	4	2024-05-17	Google Play	NEGATIVE	0.9992883801460266	Other
5913	2	Easy and cool app	5	2024-05-16	Google Play	POSITIVE	0.999842643737793	Other
5914	2	App is so bad network	1	2024-05-16	Google Play	NEGATIVE	0.9997804760932922	Other
5915	2	It's not working for 3days. Come on as a big bank in Ethiopia this is unprofessionallism from boa	1	2024-05-15	Google Play	NEGATIVE	0.9994888305664062	Other
5916	2	Be careful of using this app to transfer large sums of money. Recently I can't top up my mobile card, can't pay tickets, can't transfer money to Telebirr. The *815# works but what's the use of an app if we're using USSD. It will refund your mobile top up days after failing to top up but I wouldn't want to risk that. I'm a big fan of BoA but I wouldn't recommend this app. 👎	1	2024-05-15	Google Play	NEGATIVE	0.9890459179878236	Transaction Performance
5917	2	Nice 🤙	5	2024-05-15	Google Play	POSITIVE	0.999842405319214	Other
5918	2	The worst mobile banking app, doesn't even work for a week properly.	1	2024-05-15	Google Play	NEGATIVE	0.999815046787262	Other
5919	2	Secretary	5	2024-05-14	Google Play	POSITIVE	0.996331751346588	Other
5920	2	77867748 I can't update my mobile banking	1	2024-05-14	Google Play	NEGATIVE	0.9957204461097716	Other
5921	2	Hate how we're expected to disable 'Developer Options' everytime we open the app. An unnecessary point of friction that's been put in place in the guise of security.	2	2024-05-14	Google Play	NEGATIVE	0.9997732043266296	User Interface
5922	2	Exilent service	5	2024-05-13	Google Play	NEGATIVE	0.9688147902488708	Other
5923	2	Build a new app	1	2024-05-13	Google Play	POSITIVE	0.9461661577224731	User Interface
5924	2	Exceptional service	5	2024-05-13	Google Play	POSITIVE	0.9998124241828918	Other
5925	2	I don't get why this app is developed it is not functional at all !!	1	2024-05-12	Google Play	NEGATIVE	0.9997220635414124	Other
5926	2	This app is trash	1	2024-05-12	Google Play	NEGATIVE	0.9997709393501282	Other
5927	2	It's improved now	3	2024-05-12	Google Play	POSITIVE	0.9998502731323242	Other
5928	2	It is really make my life so much easy!	5	2024-05-12	Google Play	POSITIVE	0.9993164539337158	Other
5929	2	My advice for whoever reading is go look for other bank(awash bank is a great example). This bank won't even allow you to access your money when you want. It has bad servers which don't work(respond) on time.	1	2024-05-11	Google Play	NEGATIVE	0.9994551539421082	Account Access Issues
5930	2	Am not satisfay	2	2024-05-11	Google Play	NEGATIVE	0.9995954632759094	Other
5931	2	Preventing login because I have developer options on is not security. Moved all my money somewhere else because I just didn't wanna deal with it	1	2024-05-11	Google Play	NEGATIVE	0.9994331002235411	Account Access Issues
5932	2	The app has bugs. Signing in is still a challenge. Transfer to another bank is impossible. The app is slow and bland.	3	2024-05-11	Google Play	NEGATIVE	0.999795138835907	Transaction Performance;Reliability
5933	2	Why do u force me to Turn OFF developers option just to use your app its not fair and am not using ur app anymore	1	2024-05-10	Google Play	NEGATIVE	0.9993390440940856	Other
5934	2	Very poor app. It crashes every time, doesn't load properly, and you can't even buy airtime. The programming is subpar. Please take lessons from other online banking apps. I would give it a zero if I could!!	1	2024-05-10	Google Play	NEGATIVE	0.9998053908348083	Reliability
5935	2	GOOD HARMONY BANK	5	2024-05-10	Google Play	POSITIVE	0.9997896552085876	Other
5936	2	This app is very simpl for useing	4	2024-05-10	Google Play	NEGATIVE	0.994102656841278	Other
5937	2	Very laggy un able to make transactions Fix it	1	2024-05-10	Google Play	NEGATIVE	0.9998063445091248	Transaction Performance
5938	2	After recent update the app keeps asking to disable developers options and won't let you use it unless you do.	2	2024-05-10	Google Play	NEGATIVE	0.9748206734657288	Other
5939	2	Wow amazing	5	2024-05-10	Google Play	POSITIVE	0.9998724460601808	Other
5940	2	Great UI UX Design !!!	5	2024-05-09	Google Play	POSITIVE	0.9996935129165648	User Interface
5941	2	Rubbish!	1	2024-05-09	Google Play	NEGATIVE	0.999776303768158	Other
5942	2	App is any updates why?	5	2024-05-09	Google Play	NEGATIVE	0.996690034866333	Other
5943	2	I am an app developer, I need to keep developer options on... WHY ARE YOU ASKING ME TO TURN DEVELOPER OPTIONS OFF... why is it that Abyssinia is the only damned bank in Ethiopia that just can't seem to buld an app that works... it's not that hard people, just look at CBE... this is simply terrible, borderline unusable!	1	2024-05-09	Google Play	NEGATIVE	0.9993929862976074	Other
5944	2	UGH 🤮🤮🤮 they are super calculative when it CM 2 Mobile-banking or any online stuff. If ur degital!! better chose other bank.	1	2024-05-09	Google Play	NEGATIVE	0.9985111355781556	Other
5945	2	Slow every time	2	2024-05-08	Google Play	NEGATIVE	0.999620795249939	Transaction Performance
5948	2	What's wrong with App. this days? it doesn't working properly. 1) it's VERY SLOW & doesn't open. it's very Annoying. 2) most of the time it says repeatedly Please try it again or try it later but again and again it doesn't open or work. 3) repeatedly it says something went wrong then it off the screen. I've updated the App. when it needed but nothing changed. 👉PLEASE if it has some issues with the App. Please fix it otherwise I'm going to uninstall it.	2	2024-05-08	Google Play	NEGATIVE	0.9997007846832277	Transaction Performance
5949	2	Eri	5	2024-05-08	Google Play	POSITIVE	0.924249529838562	Other
5950	2	Disgrace app	1	2024-05-08	Google Play	NEGATIVE	0.9997820258140564	Other
5951	2	It doesn't work 😔	1	2024-05-07	Google Play	NEGATIVE	0.9997815489768982	Other
5952	2	It crash repeatedly! Try to make it more stable for customers need meet!	2	2024-05-07	Google Play	NEGATIVE	0.9996886253356934	Reliability
5953	2	After two weeks it require update why?	5	2024-05-07	Google Play	NEGATIVE	0.9965284466743468	User Interface
5954	2	It keeps crashing and hasn't been fixed	1	2024-05-07	Google Play	NEGATIVE	0.999289870262146	Reliability
5955	2	The application is full of bug, so annoying.	1	2024-05-07	Google Play	NEGATIVE	0.9997913241386414	Reliability
5956	2	Why is the app asking me to remove developer options? Why does it matter what I do with my phone , this is unacceptable! Fix this	3	2024-05-06	Google Play	NEGATIVE	0.9997825026512146	Other
5957	2	Worst application relative to other Ethiopia mobile banking app	1	2024-05-06	Google Play	NEGATIVE	0.999796450138092	Other
5958	2	Lag,...	1	2024-05-06	Google Play	NEGATIVE	0.9997486472129822	Other
5959	2	"I am extremely disappointed with the poor service I have received. It is unacceptable that I cannot make transactions of 30,000 Birr and sometimes my money gets stuck in the air. As a result of your incompetence, I have been forced to change my bank account. This level of service is completely unacceptable and needs to be rectified immediately."	1	2024-05-06	Google Play	NEGATIVE	0.9997608065605164	Transaction Performance
5960	2	አረ wuyyyyyyyyyy	1	2024-05-05	Google Play	NEGATIVE	0.9829859137535096	Other
5961	2	Doesn't work properly, keeps closing won't activate any account, I wouldn't recommend downloading	1	2024-05-05	Google Play	NEGATIVE	0.9994381070137024	Transaction Performance
5962	2	Pls improve your mobile banking app it's doesn't work constantly after i updated the new version of your app try to improve	1	2024-05-05	Google Play	NEGATIVE	0.9994970560073853	Other
5963	2	አሁን update የተደረገው App ምንም ነው የማይሰራው መከራችንን እኮ ነው ያሳየን😏😏)	1	2024-05-05	Google Play	NEGATIVE	0.939930498600006	Other
5964	2	Dont even try	1	2024-05-05	Google Play	NEGATIVE	0.9920748472213744	Other
5965	2	The version 24.04.26 is not opening on any of my devices. I noticed this issue on my friend's Android 9 phone and also on my Samsung Android 12 phone. Even after weekly updates, the newest version is not working properly. Please provide a stable version update, as I prefer the older version of the app from the new one.	1	2024-05-04	Google Play	NEGATIVE	0.9987725615501404	Other
5966	2	This app is not working!!	1	2024-05-04	Google Play	NEGATIVE	0.9997822642326356	Other
5967	2	ayseram yastelal	3	2024-05-04	Google Play	POSITIVE	0.9675765633583068	Other
5968	2	this app not work why?pleas tell me	2	2024-05-04	Google Play	NEGATIVE	0.9996669292449952	Other
5969	2	I am comfortable with your good service	5	2024-05-04	Google Play	POSITIVE	0.9998639822006226	Other
5970	2	betam yedadab app	1	2024-05-04	Google Play	NEGATIVE	0.7780933380126953	Other
5971	2	i like is app boA	4	2024-05-04	Google Play	POSITIVE	0.938754379749298	Other
5972	2	best app from any mobilebanking	5	2024-05-04	Google Play	POSITIVE	0.9990023970603944	Other
5973	2	It crushes repeatedly	1	2024-05-03	Google Play	NEGATIVE	0.9994243383407592	Other
5974	2	Very bad app as always bothering any transaction processes.	1	2024-05-03	Google Play	NEGATIVE	0.999804675579071	Transaction Performance
5975	2	Ok true	1	2024-05-03	Google Play	POSITIVE	0.9998169541358948	Other
5976	2	Actually faster	4	2024-05-03	Google Play	POSITIVE	0.9996544122695924	Other
5977	2	I prefer the earlier version. This updated app crushes during login and says there is bug. Please fix the bug issue.	4	2024-05-03	Google Play	NEGATIVE	0.9993138313293456	Account Access Issues;Reliability
5978	2	Soo many bugs on this app I haven't been able to use it since I installed it very bad	1	2024-05-03	Google Play	NEGATIVE	0.9981491565704346	Reliability
5979	2	My #1 choice	5	2024-05-03	Google Play	POSITIVE	0.99905663728714	Other
5980	2	This application isn't working properly	1	2024-05-03	Google Play	NEGATIVE	0.9997974038124084	Other
5981	2	This is too poorer than the previous app.	1	2024-05-03	Google Play	NEGATIVE	0.9997180104255676	Other
5982	2	cool App Tnxes	5	2024-05-03	Google Play	POSITIVE	0.9994244575500488	Other
5983	2	Not working 😕	1	2024-05-03	Google Play	NEGATIVE	0.9997498393058776	Other
5984	2	The app keeps crashign again and again, i didn't even get to sign in. Worst update!!	1	2024-05-03	Google Play	NEGATIVE	0.999796450138092	Reliability
5985	2	Developers/ the company takes too long to update the app, and throughout that process, the app is basically useless. We can't send money or even be able to check our account. They even take it down from the Play Store for a while. This whole process usually takes them 3 to 5 days. This is very disappointing. It is an improvement from the previous version of the app, but they still have a long way to go to compete with the likes of CBE. Transferring to other banks sometimes doesn't work.	2	2024-05-03	Google Play	NEGATIVE	0.9998020529747008	Transaction Performance
5986	2	Yleiall	1	2024-05-03	Google Play	POSITIVE	0.984531819820404	Other
5987	2	Was working ok.but it started not displaying banks list to choose from, and it needs updating every couple of days, annoying	3	2024-05-03	Google Play	NEGATIVE	0.999055802822113	Other
5988	2	Dear BOA, Are you sure you are upgrading your application. It is becoming worse and worse. Please fix the bug as quickly as possible.	1	2024-05-03	Google Play	NEGATIVE	0.9997113347053528	User Interface;Reliability
5989	2	Nice one thanks abisiniya	5	2024-05-03	Google Play	POSITIVE	0.9998387098312378	Other
5990	2	it doesnt work it crashes	1	2024-05-03	Google Play	NEGATIVE	0.9852179884910583	Reliability
5991	2	It keeps clashing down What a crass stupid app is this... You forced me to update after I transferred money and now I can't open it	1	2024-05-03	Google Play	NEGATIVE	0.9997383952140808	Transaction Performance
5992	2	Sorie	1	2024-05-03	Google Play	POSITIVE	0.99139142036438	Other
5993	2	Slow	1	2024-05-03	Google Play	NEGATIVE	0.9997313618659972	Transaction Performance
5994	2	Plays	5	2024-05-02	Google Play	POSITIVE	0.9957723021507264	Other
5995	2	Crash... glitch... crash... blame connection... crash... crash again. Please fix it	1	2024-05-02	Google Play	NEGATIVE	0.9994064569473268	Reliability
5998	2	OMG this is like the worst mobile banking app ever. I have many different mobile banking app from different banks but this is the worst so far. It says it has connection issue when I have wifi or data connection and while I'm using other social media apps. It keeps asking me for update once like every week and takes forever to load like I have to wait at least 10 minutes to login and another 10 min to see my balance.	1	2024-05-02	Google Play	NEGATIVE	0.999766170978546	Account Access Issues
5999	2	I think I remember it worked once upon time...	2	2024-05-02	Google Play	POSITIVE	0.9455678462982178	Other
6000	2	This app is going to the worest boa app ever😡 It crushes every time login.	1	2024-05-02	Google Play	NEGATIVE	0.9977701902389526	Account Access Issues
6001	2	The app never worked properly, specially on android 14, do better	1	2024-05-02	Google Play	NEGATIVE	0.9997982382774352	Other
6002	2	Fix the bug.	1	2024-05-02	Google Play	NEGATIVE	0.9944986701011658	Reliability
6003	2	all the time updated but im not satisfy by boa mobile bancking 😡😡😡	1	2024-05-02	Google Play	NEGATIVE	0.9995203018188475	Other
6004	2	It always crashes	1	2024-05-02	Google Play	NEGATIVE	0.9992138147354126	Reliability
6005	2	Worst app ever. Barely works	1	2024-05-02	Google Play	NEGATIVE	0.99981027841568	Other
6006	2	It keep making me out and crash when i open the app and not working properly	1	2024-05-02	Google Play	NEGATIVE	0.9985978007316588	Reliability
6007	2	After last update, the app keeps crashing, not working. Pls fix it. Mobile transactions become impossible.	1	2024-05-02	Google Play	NEGATIVE	0.999652624130249	Transaction Performance;Reliability
6008	2	I don't know why every time you come up with a new update the app get worst than the oldest, it is taking more time to load, can load money to telebirr, can't pay awach. Please try to fix it.	1	2024-05-02	Google Play	NEGATIVE	0.999539852142334	Other
6009	2	The worest mobile banking app	1	2024-05-02	Google Play	NEGATIVE	0.8432711958885193	Other
6010	2	It was working good before the last update but after the update it asks to disable developer option. why is that? That means any developer with developer option enabled can't access his account. It crushs a lot of times.	2	2024-05-01	Google Play	NEGATIVE	0.9993207454681396	Account Access Issues
6011	2	Ayseram mnm	1	2024-05-01	Google Play	NEGATIVE	0.997495174407959	Other
6012	2	From Ethiopian Internet banking Abbisiniya Internet banking application is the most worst boring and slower app, please fix that	1	2024-05-01	Google Play	NEGATIVE	0.9995355606079102	Transaction Performance
6013	2	good App and user friendly.	4	2024-05-01	Google Play	POSITIVE	0.9998492002487184	User Interface
6014	2	Every time needs update & after that it's not working it's too boring	1	2024-05-01	Google Play	POSITIVE	0.987782657146454	Other
6015	2	Mnm beka ayeseram hule endaschegeregn	1	2024-05-01	Google Play	NEGATIVE	0.947674036026001	Other
6016	2	What mean disable developer option?	5	2024-05-01	Google Play	NEGATIVE	0.9994254112243652	Other
6017	2	Slow login, crashes frequently, annoying app ever. Since you updated this app, it's been extremely unhelpful.	1	2024-05-01	Google Play	NEGATIVE	0.9993731379508972	Account Access Issues;Transaction Performance;Reliability;Customer Support
6018	2	why do we need to turn off "developer options" in order to use your app, on the new update??? Are we suppose to not use our device for other purposes just so we can use your app? It is not security it is BS. (fix that and I will update my rating)	1	2024-05-01	Google Play	NEGATIVE	0.9993647933006288	Other
6019	2	Annoying it doesn't work totally	1	2024-05-01	Google Play	NEGATIVE	0.9998140931129456	Other
6020	2	The Worst application ever	1	2024-05-01	Google Play	NEGATIVE	0.999783456325531	Other
6021	2	The best beautiful app	5	2024-05-01	Google Play	POSITIVE	0.9998698234558104	Other
6022	2	Keeps crashing everytime what a disaster	1	2024-05-01	Google Play	NEGATIVE	0.9993972778320312	Reliability
6023	2	It doesn't work anymore	1	2024-05-01	Google Play	NEGATIVE	0.999621033668518	Other
6024	2	The app is terrible, nothing functions properly. Especially since the latest update, it crashes all the time.	1	2024-05-01	Google Play	NEGATIVE	0.9998101592063904	Reliability
6025	2	It's good app but the system is not same as CBE bankin mobile When i compare To these apps BOA and CBE, CBE is the best up	1	2024-05-01	Google Play	POSITIVE	0.9958796501159668	Other
6026	2	Please focus on the functionality of the app instead of spending money on the advertisements.	1	2024-05-01	Google Play	POSITIVE	0.7451228499412537	Other
6027	2	Frequently crashing fix it please	1	2024-05-01	Google Play	POSITIVE	0.948821187019348	Reliability
6028	2	95% of the time it crashes	1	2024-05-01	Google Play	NEGATIVE	0.9967778325080872	Reliability
6029	2	The worst update ever You don't deserve one star;	1	2024-05-01	Google Play	NEGATIVE	0.999794900417328	Other
6030	2	No feature works correctly. Its always buffering and needs probably high data. So its useless 😏😏😏	2	2024-04-30	Google Play	NEGATIVE	0.9997801184654236	Other
6031	2	This app is trash, it's not working for the past 3-4 days. I've to go to the bank to send money to other banks. Plus the app keeps crashing since the last update. BOA as a bank is deteriorating! This has to change.	1	2024-04-30	Google Play	NEGATIVE	0.9997557997703552	Reliability
6032	2	App needs a lot of work. It continuously crashes and shuts down.	1	2024-04-30	Google Play	NEGATIVE	0.9994617104530334	Reliability
6033	2	Not comfortable with this version. Its hard to down it load Developer option is not allowed to use it as usual.	5	2024-04-30	Google Play	NEGATIVE	0.9993792772293092	Other
6034	2	This app is so annoying as the previous version.	3	2024-04-30	Google Play	NEGATIVE	0.9997738003730774	Other
6035	2	Need many improvements	2	2024-04-30	Google Play	NEGATIVE	0.834504246711731	Other
6036	2	Great always great!!!	5	2024-04-30	Google Play	POSITIVE	0.9998846054077148	Other
6037	2	Pic new	5	2024-04-30	Google Play	POSITIVE	0.7098694443702698	Other
6038	2	አፑ ቆንጆ ነበር አማርኛ ቋንቋ ቢካተት ሌላው በአሁን ሰዓት ይኼን ስፅፍ እያስቸገረኝ ነው ሲስተሙ	5	2024-04-30	Google Play	NEGATIVE	0.9528433680534364	Other
6039	2	Such a junk application, its not working at all. Waste of time	1	2024-04-30	Google Play	NEGATIVE	0.9998182654380798	Other
6040	2	Hello is this new update cuz it keeps kicking me out!!!!! can't make a transaction fr!	3	2024-04-30	Google Play	NEGATIVE	0.9989492297172546	Transaction Performance
6041	2	you guys keep on releasing unstable app, now it won't login	2	2024-04-30	Google Play	NEGATIVE	0.9805342555046082	Account Access Issues
6042	2	Doeisn't work	5	2024-04-30	Google Play	NEGATIVE	0.9996792078018188	Other
6043	2	I never ever seen the worst commercial app like this in my life , it does not work anything , i donot know how the IT Team of the bank tested and launch the app. Its annoying !	1	2024-04-30	Google Play	NEGATIVE	0.9997454285621644	Other
6044	2	The best bank with the worst application and ussd service.	1	2024-04-30	Google Play	NEGATIVE	0.9984097480773926	Other
6045	2	The old version is best. This one is so lagging and it's not fast to quick transfer	1	2024-04-30	Google Play	NEGATIVE	0.8973886966705322	Transaction Performance;User Interface
6046	2	The latest update has a bug it keeps crashing. Please fix it it's so inconvenient to do our business this way. That or we will switch to other banks	3	2024-04-30	Google Play	NEGATIVE	0.999640703201294	Reliability
6047	2	Amaizing Bank in Etthiopia	5	2024-04-30	Google Play	NEUTRAL	0.5	Other
6048	2	Good banking app	4	2024-04-29	Google Play	POSITIVE	0.999841570854187	Other
6049	2	It doesn't function properly!! You don't even deserve one star.. please stop playing your dirty game on your customer...	1	2024-04-29	Google Play	NEGATIVE	0.9997984766960144	Other
6050	2	That's a fantastic app! L	2	2024-04-29	Google Play	POSITIVE	0.999869465827942	Other
6051	2	The best bank	5	2024-04-29	Google Play	POSITIVE	0.9998573064804076	Other
6052	2	This app has been found useless while I compared with the first version of IB12111...that was very good, you guys what is the matter with you. You are far from the technology and the competetor's digital product through convenience, reliable, easeness _-dashen, cbe, zemen... they are doing well! share their experience and be able to satisfy your esteemed customers including me. unless you will be down soon!	1	2024-04-29	Google Play	NEGATIVE	0.9895105361938475	Other
6053	2	This new update really sucks.. Can't even get the chance to put my pin, bugs and everything,please fix it developer	1	2024-04-29	Google Play	NEGATIVE	0.9997047781944276	Reliability
6054	2	I have never seen the worst mobile app like this	5	2024-04-29	Google Play	NEGATIVE	0.9995693564414978	Other
6055	2	Very very good app	5	2024-04-29	Google Play	POSITIVE	0.9998728036880492	Other
6056	2	it keeps crashing	1	2024-04-29	Google Play	NEGATIVE	0.9201827049255372	Reliability
6057	2	Excited	5	2024-04-29	Google Play	POSITIVE	0.9997768998146056	Other
6058	2	This app isn't working well on Tecno phone 📱. what is the error??	1	2024-04-29	Google Play	NEGATIVE	0.99974125623703	Reliability
6059	2	👑👑	5	2024-04-29	Google Play	NEGATIVE	0.697056770324707	Other
6060	2	Bad app	1	2024-04-29	Google Play	NEGATIVE	0.9997212290763856	Other
6061	2	To payment	1	2024-04-29	Google Play	POSITIVE	0.951269805431366	Transaction Performance
6062	2	With every update the app keeps on getting worse,it is filled with bugs	1	2024-04-29	Google Play	NEGATIVE	0.999658226966858	Reliability
6063	2	Not working properly why?????????	1	2024-04-29	Google Play	NEGATIVE	0.999762237071991	Other
6064	2	The update app is the worest one when i compare with past.	1	2024-04-28	Google Play	NEGATIVE	0.9917793869972228	Other
6065	2	It's nice, the stack thing needs update thou	5	2024-04-28	Google Play	POSITIVE	0.9839306473731996	Other
6066	2	This application is relatively good even if some times interpreted.But apolo is difficult application please improve it.	5	2024-04-28	Google Play	POSITIVE	0.9913715124130248	Other
6067	2	The app is not properly working.	3	2024-04-28	Google Play	NEGATIVE	0.999790370464325	Other
6068	2	It is always crushing it loged me out all the time	1	2024-04-28	Google Play	NEGATIVE	0.9912962913513184	Other
6069	2	I love boa but the mobile app isn't as good as the older version when the app gets update it gets worse and worse it doesn't even work..fix the issue with that	2	2024-04-28	Google Play	NEGATIVE	0.9996931552886964	Other
6070	2	Why Why Why???? it is difficult to make transactions, it takes alot of time to make payments, i thought the update will make it work, but it got worse. please fix it	1	2024-04-28	Google Play	NEGATIVE	0.999663472175598	Transaction Performance
6071	2	the worst app I have ever used, I could've given 5 star if it worked properly even just for logging in and check my accounts. seemed that's impossible	1	2024-04-28	Google Play	NEGATIVE	0.9998034834861756	Other
6072	2	sometime it is not working wel	4	2024-04-27	Google Play	NEGATIVE	0.999658703804016	Other
6073	2	Very helpfull app	5	2024-04-27	Google Play	POSITIVE	0.9989476799964904	Customer Support
6074	2	Very slow response , try to some updates in the application	1	2024-04-27	Google Play	NEGATIVE	0.9997745156288148	Transaction Performance;Customer Support
6075	2	useless app. bank to bank transactions do not work at all, wallet topups like telebirr take hours to reach. what a shame from a bank this big.	1	2024-04-26	Google Play	NEGATIVE	0.9997989535331726	Transaction Performance
6076	2	Really work very good app l like you BoA	5	2024-04-26	Google Play	POSITIVE	0.9998058676719666	Other
6077	2	ያምራል	5	2024-04-25	Google Play	NEGATIVE	0.697056770324707	Other
6078	2	Very old app is disgusting	1	2024-04-25	Google Play	NEGATIVE	0.9996281862258912	Other
6079	2	The worst App I have ever seen.	1	2024-04-25	Google Play	NEGATIVE	0.9997918009757996	Other
6080	2	I tried it with different phones, it only worked for about a week and then it stopped working. It needs some serious work.	1	2024-04-25	Google Play	NEGATIVE	0.9994667172431946	Other
6081	2	The onky defect is that it is too slow	3	2024-04-25	Google Play	NEGATIVE	0.9996615648269652	Transaction Performance
6082	2	Sorry to say it is very poor apps I have decided to suspend the BoA account	1	2024-04-25	Google Play	NEGATIVE	0.9997908473014832	Other
6083	2	Boa is the best app but Please Clear Instant or Not instant option of send money be for Asked !!!	5	2024-04-24	Google Play	NEGATIVE	0.8803104162216187	Other
6084	2	Installed the latest version of this app on my Android 14 device, but it is not working. I have already received the activation key from your branch (via SMS), but couldn't activate it. It is a failed app. I bet you don't have QA testers.	1	2024-04-24	Google Play	NEGATIVE	0.9996954202651978	Other
6085	2	This is not functional at all, it takes forever to make a transaction,please improve it.	1	2024-04-24	Google Play	NEGATIVE	0.996469259262085	Transaction Performance
6086	2	Nic app	5	2024-04-24	Google Play	POSITIVE	0.9797857403755188	Other
6087	2	I can't update the enable button not open.	1	2024-04-24	Google Play	NEGATIVE	0.9989743232727052	Other
6088	2	The Bank I always love 😘 and work with them is priceless	5	2024-04-24	Google Play	POSITIVE	0.9997803568840028	Other
6089	2	It's the best	5	2024-04-24	Google Play	POSITIVE	0.9998540878295898	Other
6090	2	BOA app was one of my favourite back in the days, now I don't if there is an app worsen that this.. very very bad. You need to fix it or remove it.	1	2024-04-24	Google Play	NEGATIVE	0.9997431635856628	Other
6091	2	This app is very wonderful	5	2024-04-24	Google Play	POSITIVE	0.999883770942688	Other
6092	2	It is not working at all.	1	2024-04-24	Google Play	NEGATIVE	0.999782145023346	Other
6093	2	To slow	1	2024-04-23	Google Play	NEGATIVE	0.999487280845642	Transaction Performance
6094	2	I've never seen a very worst mobile banking system like this, i lost 37000 birr because of your delay transaction system, i called 8397 and they told me stay for confirmation but, after i changed my mind and waiting for confirmation call to cancel the process they sent it with out my approval, so please don't use the mobile banking system please	1	2024-04-23	Google Play	NEGATIVE	0.9995245933532716	Transaction Performance
6095	2	6r---“q##👺	2	2024-04-23	Google Play	NEGATIVE	0.9579623341560364	Other
6096	2	In Ethiopia pest Bank	5	2024-04-23	Google Play	NEGATIVE	0.9949629306793212	Other
6097	2	It is not working	1	2024-04-23	Google Play	NEGATIVE	0.9997721314430236	Other
6098	2	እጅግ በጣም ጥሩ ነው ።	5	2024-04-23	Google Play	NEGATIVE	0.8832130432128906	Other
6099	2	Only problem is often it has connectivity issues.	5	2024-04-23	Google Play	NEGATIVE	0.9959843158721924	Other
6100	2	Not bad but please make it lite pls	1	2024-04-23	Google Play	POSITIVE	0.9990805387496948	Other
6101	2	Usfull	5	2024-04-23	Google Play	POSITIVE	0.945973813533783	Other
6102	2	Good bank	5	2024-04-22	Google Play	POSITIVE	0.9998420476913452	Other
6103	2	It says "Something is wrong with your internet banking user, go to your nearest branch" It hasn't been working since April 13.	1	2024-04-22	Google Play	NEGATIVE	0.99941086769104	Other
6104	2	በጣም ምርጥ አኘ ነው ቶሎ ይበላሻል	3	2024-04-22	Google Play	NEGATIVE	0.904695212841034	Other
6105	2	I like this bank by his activity and respect castemers i look like my house	5	2024-04-22	Google Play	POSITIVE	0.9994611144065856	Other
6106	2	አርፍ ነው	5	2024-04-22	Google Play	NEGATIVE	0.7850590348243713	Other
6107	2	Bank Of Abyssina	5	2024-04-22	Google Play	NEGATIVE	0.9958736300468444	Other
6108	2	very fast also nice app i love it	5	2024-04-22	Google Play	POSITIVE	0.9998733997344972	Other
6109	2	በጣም አስቸጋሪ እና አዳጋች የሆነ አሠራር ነው የሚጠቀመው ግብይት መፈፀም ክፍያው ተቆርጦ ሎክ አካውንት በማለት ያስቀምጣል በሌላ አማራጭ ከከፈሉ በኃላ ተመላሽ እንኳን አያደርግም	1	2024-04-22	Google Play	NEGATIVE	0.9615163207054138	Other
6110	2	By far the nicest looking app by an Ethiopian Bank. But it's functionality is weak. It is full of Transaction error, Function Error. Kudos, but it needs more backend work.	2	2024-04-22	Google Play	NEGATIVE	0.9993565678596495	Transaction Performance;Reliability
6111	2	Very bad 👎	2	2024-04-22	Google Play	NEGATIVE	0.9998021721839904	Other
6112	2	Not reliable always with some issues	1	2024-04-22	Google Play	NEGATIVE	0.9995911717414856	Other
6113	2	Right one	1	2024-04-22	Google Play	POSITIVE	0.9998385906219482	Other
6114	2	So BoA, your last application was horrible and buggy. And we thought "finally!! a functional new app with better UI." But It didn't last long, a non existent connection error at login.... Please just fix your app to the simplest functional form and it would be up to your other service standards.	1	2024-04-21	Google Play	NEGATIVE	0.9980742931365968	Account Access Issues;User Interface;Reliability
6115	2	It has good backgroud and simple. But keeps saying no conectivty , login, Close immediately you made it porly not woriking on stable network!!!	1	2024-04-21	Google Play	NEGATIVE	0.7382344007492065	Account Access Issues
6116	2	It was working fine a couple of days ago, in the utilities section of payment it only provides a few services but that is OK for now but my issue is it has started crashing down these past 2 days	2	2024-04-21	Google Play	NEGATIVE	0.9992096424102784	Transaction Performance;Reliability
6117	2	This app is awesome, I like the features	5	2024-04-21	Google Play	POSITIVE	0.9998729228973388	Other
6118	2	The app is a total waste of time, it glitches, doesn't log in fast, super slow.	1	2024-04-21	Google Play	NEGATIVE	0.9996176958084106	Transaction Performance
6119	2	Very very bad app	1	2024-04-21	Google Play	NEGATIVE	0.9997959733009338	Other
6120	2	Not work this app ...what is the problem	1	2024-04-20	Google Play	NEGATIVE	0.9997695088386536	Other
6121	2	the new updated app exception handling for connection fluctuations is so exhausting which lead users to login repeated times.	1	2024-04-20	Google Play	NEGATIVE	0.999728500843048	Account Access Issues
6122	2	Some problem this app,	1	2024-04-20	Google Play	NEGATIVE	0.9994459748268129	Other
6123	2	It keeps on crashing	1	2024-04-20	Google Play	NEUTRAL	0.5	Reliability
6124	2	poor performance	1	2024-04-20	Google Play	NEGATIVE	0.999767005443573	Other
6125	2	Hey no working	5	2024-04-19	Google Play	NEGATIVE	0.9963237047195436	Other
6126	2	It's good app tnx for u new update it's very easy to using this app they add some future tnx Abyssinia bank	5	2024-04-18	Google Play	POSITIVE	0.996093213558197	Other
6127	2	A lot of the app's features have been rearranged but sometimes it works sometimes it doesnt...and that makes it less reliable specially at times of need...pls improve it	2	2024-04-18	Google Play	NEGATIVE	0.9991328120231628	Other
6128	2	Now am confused upgrade or downgrade 🤔	1	2024-04-17	Google Play	NEGATIVE	0.9976465106010436	Other
6129	2	wow good job BOA	5	2024-04-16	Google Play	POSITIVE	0.9998181462287904	Other
6130	2	Vary good app	5	2024-04-15	Google Play	POSITIVE	0.9998146891593932	Other
6131	2	Can you please just make it functional. I don't think anyone cares how good it looks if not a single functionality works. Plus it's not even aestheticaly nice. The loading animated icon has white irregular edges because the logo wasn't cut out correctly. The app doesn't work at all. It doesn't even login. It gets stuck on login just showing the logo animation and blames the issue on connectivity. Connectivity is fine and the proof is that this review is posted.	1	2024-04-15	Google Play	NEGATIVE	0.778336226940155	Account Access Issues;Transaction Performance
6132	2	add receipt pdf like telebirr	5	2024-04-14	Google Play	NEGATIVE	0.9775200486183168	Other
6133	2	በጣም ቀለል ያለ እና ምቹ ና አስተማማኝ ነው እርሶም ይጠቀሙበት !!!	1	2024-04-14	Google Play	POSITIVE	0.9787020683288574	Other
6134	2	The app is not showing my balance or any transaction it is like corrupted showing usd amounts	1	2024-04-13	Google Play	NEGATIVE	0.999426007270813	Transaction Performance
6135	2	አሰ	1	2024-04-13	Google Play	NEGATIVE	0.697056770324707	Other
6136	2	it's so slow app please fix it	2	2024-04-13	Google Play	NEGATIVE	0.9994977712631226	Transaction Performance
6137	2	It crash always	4	2024-04-13	Google Play	NEGATIVE	0.9991788268089294	Reliability
6138	2	The most terrible mobel banking app in the world it is not working ones in a week	1	2024-04-13	Google Play	NEGATIVE	0.9983479976654052	Other
6139	2	Ultimately, the worst mobile banking experience ever left me feeling exasperated and disillusioned.Its a nightmare	1	2024-04-13	Google Play	NEGATIVE	0.9998087286949158	Other
6231	2	Very good app its easy to use	5	2024-02-15	Google Play	POSITIVE	0.9997560381889344	Other
6140	2	The updated version of this app is just time wasting. It doesn't work with 2G/3G network.require log in frequently,not fast as much as possible.automatic log out are the bad features of this app	1	2024-04-13	Google Play	NEGATIVE	0.999740183353424	User Interface
6141	2	Why u do that hh	2	2024-04-13	Google Play	NEGATIVE	0.9960595369338988	Other
6142	2	Abissiniya bank one of the best for giving the future	5	2024-04-12	Google Play	POSITIVE	0.9998038411140442	Other
6143	2	This the best mobile banking App BOA mobile banking included all digital banking features and we can access the most companies and sectors with this App. Thanks for giving this services Keep going .	5	2024-04-12	Google Play	POSITIVE	0.9996832609176636	Account Access Issues
6144	2	This has to be your worst app ever, damm so many bugs and it lags so baddd. Please fix it	1	2024-04-12	Google Play	NEGATIVE	0.9998080134391784	Reliability
6145	2	Simplify your life by using the Abyssinia app I like it because it is comfortable and safe	5	2024-04-11	Google Play	POSITIVE	0.9996391534805298	Other
6146	2	General, when I considered from other banks, this bank is unique	4	2024-04-11	Google Play	POSITIVE	0.9998138546943665	Other
6147	2	Boa ... The best	5	2024-04-09	Google Play	POSITIVE	0.9998708963394164	Other
6148	2	wow its so attractive	5	2024-04-09	Google Play	POSITIVE	0.9998676776885986	Other
6149	2	Yet another useless app	1	2024-04-09	Google Play	NEGATIVE	0.9997926354408264	Other
6150	2	Keep it up 1ygna bank	5	2024-04-09	Google Play	POSITIVE	0.99892395734787	Other
6151	2	It's good!	4	2024-04-09	Google Play	POSITIVE	0.9998363256454468	Other
6152	2	oh	5	2024-04-08	Google Play	POSITIVE	0.980659008026123	Other
6153	2	Great apps	5	2024-04-07	Google Play	POSITIVE	0.999853491783142	Other
6154	2	It closes playing audio app when it is opened . What is the solution?	5	2024-04-06	Google Play	NEGATIVE	0.9949249029159546	Other
6155	2	Mosisaborana	5	2024-04-05	Google Play	NEGATIVE	0.9697707295417786	Other
6156	2	Mubarak	5	2024-04-03	Google Play	NEGATIVE	0.7390630841255188	Other
6157	2	OTP should be inserted manually. not working on my phone	2	2024-04-02	Google Play	NEGATIVE	0.9994474053382874	Other
6158	2	my device is not auto inserting The OTP, So keyboard should be enabled on the apps OTP login to insert OTP Manually.	3	2024-04-02	Google Play	NEGATIVE	0.9937697052955629	Account Access Issues
6159	2	Worse mobile banking ever 👎👎	1	2024-03-29	Google Play	NEGATIVE	0.9997376799583436	Other
6160	2	What's wrong with app suddenly stoped to open?	1	2024-03-25	Google Play	NEGATIVE	0.998789370059967	Other
6161	2	Just use other banks if you want a good mobile app. CBE is 40X faster and safe than this app.	1	2024-03-23	Google Play	NEGATIVE	0.7189279794692993	Other
6162	2	Worst app ever previous version was way better than this version after I activated my mobile banking app it says account not found but I'm their system my IB customer does work fine please fix your bugs and test it before you release it I have visit and report many branches and head quarter but they can't fix the problem	1	2024-03-23	Google Play	NEGATIVE	0.9954324960708618	Reliability
6163	2	Wow! Thanks BoA	5	2024-03-22	Google Play	POSITIVE	0.9998019337654114	Other
6164	2	The app doesnot allow to transfer from foreign currency accounts to local currency accounts , it says transaction not allowed , please check it and also it is difficult to activate the app from abroad countries since the otp doesn't reach by sms and it uses email, it doesn't allow manual otp input and the email hardly received , please review your app and make an update !!!	2	2024-03-22	Google Play	NEGATIVE	0.9975436329841614	Transaction Performance
6165	2	I have nothing against your service but your App!!!!??? When will it ever work? Why do you keep changing the interface whenever there is an update? The most unreadable annoying app.	1	2024-03-22	Google Play	NEGATIVE	0.9995490908622742	User Interface
6166	2	Muhammaadamaan musxafaa	5	2024-03-21	Google Play	NEGATIVE	0.9876733422279358	Other
6167	2	When writing amounts z app cannot insert deceimasl so that one cannot transact amounts involving cents !!! A finnacial app to be released without this feature being checked !!!	3	2024-03-20	Google Play	NEGATIVE	0.8702901005744934	Other
6168	2	BOA mobile the best App	5	2024-03-20	Google Play	POSITIVE	0.9997171759605408	Other
6169	2	worst banking app i have ever used. Try to modify it	2	2024-03-19	Google Play	NEGATIVE	0.9997920393943788	Other
6170	2	The application is extremely slow.	1	2024-03-16	Google Play	NEGATIVE	0.9997929930686952	Transaction Performance
6171	2	I couldn't transfer because of bug's its annoying for a bank app nots acceptable	1	2024-03-15	Google Play	NEGATIVE	0.999514102935791	Transaction Performance;Reliability
6172	2	It was a very nice app and was exemplary to other banks, but I am experiencing difficulties in transfering transactions and thinking to leave Abyssinia? What would you advise me. ወጣ ወጣና ሆነእኮ ነገሩ።	5	2024-03-14	Google Play	NEGATIVE	0.99171781539917	Transaction Performance
6173	2	It's good Rate app	5	2024-03-12	Google Play	POSITIVE	0.9998313188552856	Other
6174	2	Always there a problem with this app it says check your connection while connected 😞	1	2024-03-09	Google Play	NEGATIVE	0.9987086057662964	Other
6175	2	Berry good	5	2024-03-08	Google Play	POSITIVE	0.9998668432235718	Other
6176	2	It's not fast to use	3	2024-03-08	Google Play	NEGATIVE	0.9720845222473145	Other
6177	2	A little faster than before . Thanks	5	2024-03-05	Google Play	POSITIVE	0.9996907711029052	Other
6178	2	Application	5	2024-03-05	Google Play	POSITIVE	0.9836764931678772	Other
6179	2	Toppen!!!	5	2024-03-04	Google Play	POSITIVE	0.952091634273529	Other
6180	2	The worst mobile banking app like the previous one. How long it would take for BOA to develop a good app?????? Years or decades?	1	2024-03-04	Google Play	NEGATIVE	0.9998072981834412	Other
6181	2	AoB	2	2024-03-04	Google Play	NEGATIVE	0.6094145178794861	Other
6182	2	Awosome	5	2024-03-03	Google Play	NEGATIVE	0.6613024473190308	Other
6183	2	Was good at first but now i couldn't reach my apollo account in the mobile banking app	1	2024-03-03	Google Play	NEGATIVE	0.9983847141265868	Other
6184	2	I don't know why they roll out new updates without making sure it works! Why???? Do they need to update to a new staff? Perhaps pay for a better network?? Mindenew? I don't know there always a problem with this app.	1	2024-03-02	Google Play	NEGATIVE	0.9995311498641968	Other
6185	2	Ayub Gebere	5	2024-03-02	Google Play	POSITIVE	0.9402117729187012	Other
6186	2	Always crashes	1	2024-03-02	Google Play	NEGATIVE	0.9993184804916382	Reliability
6187	2	Best version of boa apps	1	2024-03-02	Google Play	POSITIVE	0.999344527721405	Other
6188	2	Its amazing and easy to use , but from these two past days it crashes and tells me "there is not enough connectivity" while my internet was good enough , and i can't open it anymore !! Fix this proplem ASAP.	5	2024-03-02	Google Play	NEGATIVE	0.9995220899581908	Reliability
6189	2	After the recent update the application keeps crashing when I tried to open. Please fix.	1	2024-03-01	Google Play	NEGATIVE	0.9973648190498352	Reliability
6190	2	The worse app I have ever seen.	1	2024-03-01	Google Play	NEGATIVE	0.9997802376747132	Other
6191	2	An excellent app.	5	2024-03-01	Google Play	POSITIVE	0.9998602867126464	Other
6192	2	The worst mobile banking app ever!!! I have tried to transfer 25,000 from my BOA account to my CBE and it still hasn't reached my CBE account yet. When I tried contacting customer support they just tell me it's a problem with the system. I have waited 48 hours and I still haven't received my money. Bank of Abyssinia the worst bank and system, I don't recommend this app or bank to anyone.	1	2024-03-01	Google Play	NEGATIVE	0.9997801184654236	Transaction Performance;Customer Support
6193	2	666⁸	4	2024-02-29	Google Play	POSITIVE	0.9484033584594728	Other
6194	2	More interactive and easy to use mobile app👌	5	2024-02-29	Google Play	POSITIVE	0.9974318146705629	Other
6195	2	Thank you for wasting my time Abyssinia.	1	2024-02-26	Google Play	NEGATIVE	0.9570653438568116	Other
6196	2	Overrated service and recently glitching service system not being able to withdraw funds.	1	2024-02-26	Google Play	POSITIVE	0.9889348149299622	Other
6197	2	😏	1	2024-02-25	Google Play	NEGATIVE	0.697056770324707	Other
6198	2	ስንታየሁ	5	2024-02-24	Google Play	NEGATIVE	0.697056770324707	Other
6199	2	User friendly at it's best with the best security option.	5	2024-02-24	Google Play	POSITIVE	0.9988510608673096	User Interface
6200	2	It's a quiet good and smoothly accessible app which allows users to transfer , Airtime Top-up, ATM withdrawal and Utilities payments.	5	2024-02-24	Google Play	POSITIVE	0.9997918009757996	Account Access Issues;Transaction Performance;User Interface
6201	2	This app is not efficient and can't be used for people outside Ethiopia. I am not able to enter back my OTP code into the App screen as it gets frozen and nothing can be done. Also the login screen forces to enter a local cell phone in Ethiopia and a PIN number. Those of us who live abroad are left out. The previous application with BoA Authenitcater was working efficiently and I was also able to login using my LapTop. I recommend the Application to use login user name & email instead of Ph#.	1	2024-02-23	Google Play	NEGATIVE	0.9934360980987548	Account Access Issues
6202	2	Worst application I ever used	1	2024-02-23	Google Play	NEGATIVE	0.9997875094413756	Other
6203	2	Wow bank of Abyssinia great job I really like the updated version of Mobile banking specially it allows me to transfer 500000 birr	5	2024-02-23	Google Play	POSITIVE	0.998595893383026	Transaction Performance
6204	2	It is easy to use and very fast app	5	2024-02-23	Google Play	POSITIVE	0.9995606541633606	Other
6205	2	It is better than before and i like it	5	2024-02-22	Google Play	POSITIVE	0.9998542070388794	Other
6206	2	It good app	4	2024-02-22	Google Play	POSITIVE	0.9998632669448853	Other
6207	2	Abyssinian mobile banking the latest one	5	2024-02-22	Google Play	POSITIVE	0.8906642198562622	Other
6208	2	The receipt download option is very convenient.	5	2024-02-22	Google Play	POSITIVE	0.917429268360138	Other
6209	2	I used to access my Apollo account through the app before the update but now i can't access my Apollo account through this app and for me this is a step taken backwards!!!!!	3	2024-02-22	Google Play	NEGATIVE	0.9990597367286682	Account Access Issues
6210	2	Denez boa	2	2024-02-21	Google Play	POSITIVE	0.6235476732254028	Other
6211	2	Welcome BoA mobile	5	2024-02-21	Google Play	POSITIVE	0.999670147895813	Other
6212	2	It is very bad app. not friendly usable. needs extremely strong network. Can't be updated easily.	1	2024-02-21	Google Play	NEGATIVE	0.9997742772102356	Other
6213	2	Definitly better than the privious version but this one crashes frequently and needed to put to sleep on andrioid version 9	2	2024-02-20	Google Play	NEGATIVE	0.9993939399719238	Reliability
6214	2	Its nice platform when i compare with the previous version! But, when i try to use mobile banking the app states use the updated one! As it orders, i updated BOA from playstore, when i try to use mobile banking on the following day the same thing-update from the playstore!!!!	5	2024-02-20	Google Play	NEGATIVE	0.9963669776916504	Other
6215	2	Very Fast And attractive App	5	2024-02-20	Google Play	POSITIVE	0.999848246574402	Other
6216	2	The app got a better features and easy to use.	5	2024-02-20	Google Play	POSITIVE	0.6302568912506104	Other
6217	2	Thes is nise app	5	2024-02-19	Google Play	NEGATIVE	0.9557306170463562	Other
6218	2	I have a great experience using this App	5	2024-02-19	Google Play	POSITIVE	0.999530553817749	Other
6219	2	Best app but after the update the screenshot not working	4	2024-02-19	Google Play	NEGATIVE	0.9986650943756104	Other
6220	2	It was good and more secured mb app but this new version apk i can't find it on play store will you tell me what i have too do ...please	5	2024-02-19	Google Play	NEGATIVE	0.9961307048797609	Other
6221	2	I have a fitayah account, a type of interest free account, and because their system is unable to process anything for people like me I can't see any of my accounts in the account list on any transaction, although I can see it when performing security actions or checking my balance, as such this app is as useless to me as the previous one. Unbelievable	1	2024-02-18	Google Play	NEGATIVE	0.999779999256134	Transaction Performance
6222	2	ግሞች ደህና የነበረውን አግማሙት ኤጭ	1	2024-02-18	Google Play	NEGATIVE	0.8832130432128906	Other
6223	2	በጣም የሞተና የወረደ አፕ ነው	1	2024-02-17	Google Play	NEGATIVE	0.8832130432128906	Other
6224	2	Noting! Mnm ayseram	1	2024-02-17	Google Play	NEGATIVE	0.9467946290969848	Other
6225	2	It doesnt send birr immediately to anything	1	2024-02-17	Google Play	NEGATIVE	0.9893590211868286	Other
6226	2	So this updated version is so much better and faster but it doesn't open unless it's directly opened from play store. fix this issue I'd give it 5 if it wasn't for this	3	2024-02-16	Google Play	NEGATIVE	0.998803973197937	Other
6227	2	Horrible, your apps are getting worse and worse	1	2024-02-16	Google Play	NEGATIVE	0.9997705817222596	Other
6228	2	This is terrible app. What the hell is your problem. Passwords can't be entered manually. I'm abroad. I don't have my Ethiopian Sim. I'm receiving the activation code via telegram. But you locked the system not to accept the activation OTP manually. Hence, I can't see my accounts, I can't make transactions etc.... how can you not think of this in advance.... now I'm in a terrible situation. I can't know what is going on with my account. WOULD YOU FIX IT NOW.... NOT TOMORROW or THE DAY AFTER...	1	2024-02-16	Google Play	NEGATIVE	0.9994161128997804	Account Access Issues;Transaction Performance
6229	2	I can't use it anymore	3	2024-02-16	Google Play	NEGATIVE	0.998528242111206	Other
6230	2	update ካረኩት ቡሃላ screenshot አላስቀምጥም ብሏል። ግን screenshot ማንሳት ጀምሯል	4	2024-02-15	Google Play	NEGATIVE	0.9447153210639954	Other
6232	2	Its very slow and fail to load any transaction	2	2024-02-15	Google Play	NEGATIVE	0.999752938747406	Transaction Performance
6233	2	Great graphics, but why my music have to stop when I open this app? Make it make sense. But overall, it's good, but also needs too much data just to load this app. We might need a lite version of this.	3	2024-02-15	Google Play	NEGATIVE	0.996291995048523	Other
6234	2	Boring	1	2024-02-15	Google Play	NEGATIVE	0.99978905916214	Other
6235	2	Very good app!!	5	2024-02-14	Google Play	POSITIVE	0.9998703002929688	Other
6236	2	Was working fine for 2 days then Error the request was not successful please check your connectivity or try again my connection works perfectly i reinstalled the app called support multiple times all of them said it's a system problem be patient it has been a week since then, called again they even dared to say the problem is your phone restart it which i did but still the same other banking apps work perfectly but this my experience with this app, horrible the whole system is bad	1	2024-02-14	Google Play	NEGATIVE	0.9992081522941588	Reliability;Customer Support
6237	2	It is good &fast to open!!	5	2024-02-14	Google Play	POSITIVE	0.9998763799667358	Other
6238	2	It is the worst app that I have ever downloaded. It crushes every time I log in 👎 👎 👎 👎 👎 👎 👎 👎 👎 👎 👎 👎 👎 👎	1	2024-02-14	Google Play	NEGATIVE	0.9997887015342712	Other
6239	2	The keyboard not Working please fix it	1	2024-02-14	Google Play	NEGATIVE	0.9994933605194092	Other
6240	2	When we come to use mobile banking app this app is the WOREST one. Who made this app? Why? im almost forget to use it While the app right infront to my phone. I preffered to go branch office rather than to use it. Let alone for transaction or other service for simple purpose to check my balance i used to call for the bank 'call center' rather than to open for this difficult app. It need high speed internet service, it stop service for simple interuption of the network, after transfer the 1/2	1	2024-02-13	Google Play	NEGATIVE	0.9986769556999208	Transaction Performance
6241	2	You should include manual OTP input!	1	2024-02-13	Google Play	NEGATIVE	0.9951286315917968	Other
6242	2	Worst App it ain't allowing yo activate not even in the nearest branch are able to activate it. I have been client of the bank for 10years. What is this BoA? As we know it being a leading in simplifying banking service this App needs to be fixed. Then we will give it better rate,	1	2024-02-13	Google Play	NEGATIVE	0.9996511936187744	Other
6243	2	እኔ ከሀገር ውጪ ነው ያለሁት I need help please!!! የበፊቱ app አልከፍት ብሎኝ አብዴት ማድረግ አልቻልኩም ከ ፕሌይ ስቶር ላይ እንደ አዲስ ነው ዳውንሎድ የሚጠይቀው እሱንም ሳደርግ በ ኢትዮጵያ ስልክ ቁጥር ነው ኮድ የሚልከው ፣የኢትዮጵያ ቅጥሬ አሁን active አይደለም ምን ማድረግ እችላለው? በምን መንገድ ልትረዱኝ ትችላላችሁ?	1	2024-02-13	Google Play	NEGATIVE	0.984527587890625	Customer Support
6244	2	The app does not work well from abroad, there have been continuous upgrades and updates that are very interruptive and non-responsive. Staff do not have the technical capabilities to support whereas the support number and online support are never available.	1	2024-02-12	Google Play	NEGATIVE	0.9995705485343932	Customer Support
6245	2	App good. how money transfer tele birr agents	1	2024-02-12	Google Play	POSITIVE	0.9927453398704528	Transaction Performance
6246	2	BOA Mobile banking is hard to deal with. Very poor app never gets better it keep lagging	1	2024-02-12	Google Play	NEGATIVE	0.9995620846748352	Other
6247	2	Wow, that's an awesome app	4	2024-02-11	Google Play	POSITIVE	0.999861478805542	Other
6248	2	I sm a big fan of BOA , but the mobile banking is so trashy( sorry but its the best word to discribe it).... please buy a good server ....it always show blank age after login slecially on sundays it does not work at all...the new update has a good UI but has same respose problem ....	3	2024-02-11	Google Play	NEGATIVE	0.9976029992103576	Account Access Issues;User Interface
6249	2	Good but app lait	4	2024-02-11	Google Play	POSITIVE	0.9904499650001526	Other
6250	2	this app doesn't fit the bank	1	2024-02-10	Google Play	NEGATIVE	0.9997974038124084	Other
6251	2	The updated version is nice one BOA always #1 bank	5	2024-02-10	Google Play	POSITIVE	0.9990589022636414	Other
6252	2	As usual the app is ok, but this time i can't update it normally. It lags at 99% all the time. Hope it's fixable.	4	2024-02-10	Google Play	NEGATIVE	0.989357054233551	Other
6253	2	You have made a great application that is easy to use	4	2024-02-08	Google Play	POSITIVE	0.9994623064994812	Other
6254	2	More easy and secure fast app than previous one	5	2024-02-08	Google Play	POSITIVE	0.9963563680648804	Other
6255	2	Wonderful apk	5	2024-02-07	Google Play	POSITIVE	0.9998836517333984	Other
6256	2	ለምንድን ነው የexit መውጫ የሌለው back back ስንል እንውላለን እንጂ አፑ አይዘጋም	2	2024-02-06	Google Play	NEGATIVE	0.9785796403884888	Other
6257	2	It's much better now effoyee...	5	2024-02-06	Google Play	POSITIVE	0.86098712682724	Other
6258	2	What an awesome app! It is supper easy to use with very attractive GUI. But there are some problems to be addressed: (1) It crashes frequently and requires mobile cache to be cleared to relaunch. (2) Automatic OTP input is good. But fix the manual activation option, too. (3) It does not boot fast. (4) There are minor errors during the installation. (5) Color contrast: In the transactions menu, the credit accounts should be in dark green than light green. The debit accounts should be in dark red.	5	2024-02-06	Google Play	NEGATIVE	0.9883762001991272	Transaction Performance;User Interface;Reliability
6259	2	I am having a challenge to use the app. The app does not allow to update the previous app. Neither does it allow to manually insert OTP - BoA please modify the app to allow these features	3	2024-02-06	Google Play	NEGATIVE	0.998869240283966	Other
6260	2	Easy and very nice app to load more than the previouse	5	2024-02-06	Google Play	POSITIVE	0.9993129968643188	Other
6261	2	I Don't Like It Once U Open It's open did Not Ask U The Pin when u get back Not Safty the Old Version Is More Secured	2	2024-02-06	Google Play	NEGATIVE	0.993198573589325	Other
6262	2	I like it so much	5	2024-02-06	Google Play	POSITIVE	0.9998700618743896	Other
6263	2	Well Done	4	2024-02-05	Google Play	POSITIVE	0.9998384714126588	Other
6264	2	To FCC	5	2024-02-05	Google Play	NEGATIVE	0.8983859419822693	Other
6265	2	Best finance app,	5	2024-02-05	Google Play	POSITIVE	0.9996914863586426	Other
6266	2	Simple, fast and easy to use. I had bad experience on apollo and the older version of this app is too slow.	5	2024-02-05	Google Play	NEGATIVE	0.9984558820724488	Transaction Performance
6267	2	Much better and easy to access then the last boa app	5	2024-02-05	Google Play	NEGATIVE	0.9890987873077391	Account Access Issues
6268	2	best one	5	2024-02-04	Google Play	POSITIVE	0.999826967716217	Other
6310	3	መቸሸጠ	5	2025-06-03	Google Play	NEGATIVE	0.697056770324707	Other
6269	2	Not working properly always loading !	3	2024-02-04	Google Play	NEGATIVE	0.99980491399765	Transaction Performance
6270	2	Tnx for updating the app its easy and fadt	5	2024-02-04	Google Play	NEGATIVE	0.9770723581314088	Other
6271	2	Waw bezu amarache ke fetnet gar yemegerm lewt new	5	2024-02-04	Google Play	NEGATIVE	0.9938384890556335	Other
6272	2	I think this one is better than the prvious one much faster but try to make it more faster like nib and cbe specially nib bake their app is very nice but the bank is not anyways good job on this one	5	2024-02-04	Google Play	NEGATIVE	0.9988994598388672	Other
6273	2	One of the weakness in BOA is it's mobile App. I hope this will address some of them, but it is very critical to work on modernizing and ensuring the security of it's mobile banking system in this digitalized world	3	2024-02-04	Google Play	NEGATIVE	0.9934157133102416	Other
6274	2	woow	5	2024-02-04	Google Play	NEGATIVE	0.980244517326355	Other
6275	2	Please add an option to manually input the OTP. I am residing outside of Ethiopia. I encountered difficulty accessing my account following the recent update (change) of your mobile banking app. Unfortunately, I am unable to activate the app on my mobile device. During the activation process, the app prompts for an OTP, which I can receive via Telegram. However, there is no option to manually input the OTP. I kindly request your assistance in resolving this matter and activating my account	3	2024-02-03	Google Play	NEGATIVE	0.9976139068603516	Account Access Issues
6276	2	Why the app doesn't allow to update the previous version. In addition to this, when I install the new version and try to activate, the app doesn't allow to write the activation OTP code to the screen. I have received the OTP password from telegram and email. Would you please fix this bug. Thank you	1	2024-02-03	Google Play	NEGATIVE	0.997036337852478	Account Access Issues;Reliability
6277	2	I don't have words for your great work.. Really Good .what i like the most is the screenshots features is included which gives you the transactions detail ...Great Work...KEEP IT UP !!??	5	2024-02-03	Google Play	POSITIVE	0.9949223399162292	Transaction Performance
6278	2	A massive improvement from the previous app. More modern and actually works	5	2024-02-03	Google Play	POSITIVE	0.9997559189796448	Other
6279	2	"The choice for all" It is interesting app,The old one was time spent to open the app. I am with you BoA.	5	2024-02-03	Google Play	POSITIVE	0.9979369640350342	Other
6280	2	Good update	5	2024-02-03	Google Play	POSITIVE	0.9998435974121094	Other
6281	2	You make the app worse . Asif it is update you make us install it as new then you create us problems	1	2024-02-02	Google Play	NEGATIVE	0.9997640252113342	Other
6282	2	BOA App ...በጣም ቀርፋፋና ለመጠቀም ሳስበው ገና የሚደክመኝ አፕ ሆኗል። በጣም ያሳዝናል እንዲህ መሆኑ	1	2024-02-02	Google Play	NEGATIVE	0.9838867783546448	Other
6283	2	not change who I	5	2024-02-02	Google Play	NEGATIVE	0.993423581123352	Other
6284	2	Onok	5	2024-02-02	Google Play	POSITIVE	0.632042646408081	Other
6285	2	Good Good	5	2024-02-02	Google Play	POSITIVE	0.9998282194137572	Other
6286	2	This upper is very slow	5	2024-01-31	Google Play	NEGATIVE	0.9995712637901306	Transaction Performance
6287	2	🤔 it stucks at 79%	1	2024-01-30	Google Play	NEGATIVE	0.9986642599105836	Other
6288	2	ምንም የማይ ሰራ አብስያ ባንክ ለደምበኞች ግድ የሌለዉ በትክኖሎጂ ቀዳሚ ግን አብዛኛውዎች የማይ ሰሩ ከ አቲአም ምቹ በአቲአም አንደኛ ናችሁ ሌላ ደምበኞ ሞባይል ባንክ ባል ፀደቀ ሕግ ባልተፃፈ ሕግ የከለከለ ባንክ ነው	1	2024-01-29	Google Play	NEGATIVE	0.9628605842590332	Other
6289	2	Beat 100%	5	2024-01-28	Google Play	POSITIVE	0.9921340942382812	Other
6290	2	the bank you always accepted Bank of Abyssinia worldwide cyber bank of Ethiopia ⭐️⭐️⭐️⭐️⭐️	5	2024-01-28	Google Play	POSITIVE	0.8950863480567932	Other
6291	2	This app is way better than both Apollo and the old mobile banking app. It's super easy to use and loads really fast. If you already have boa mobile banking before, activating it is a piece of cake. Great job on making such an awesome app – keep it up !	5	2024-01-27	Google Play	POSITIVE	0.999708354473114	Other
6292	2	Teklemaryma Abrar	5	2024-01-25	Google Play	NEGATIVE	0.981964647769928	Other
6293	2	It is really great to see you have solved some of the problems with the previous version. Thank you for taking time to improve.	5	2024-01-24	Google Play	POSITIVE	0.9998124241828918	Other
6294	2	It is not downloading. It stops at 79 % . Why ?	1	2024-01-23	Google Play	NEGATIVE	0.9991632699966432	Transaction Performance
6295	2	Seid Asile Ibrahim	5	2024-01-21	Google Play	POSITIVE	0.9729253649711608	Other
6296	2	This is a much better app from BOA, easy to activate with ATM credit info, that helps someone like myself who already forgots previous PIN No or IB password. Apps runs fast unlike the previous versions. I hope you don't ruin it with unnecessary update. Please notify customers to use this app through their SMS.	5	2024-01-18	Google Play	NEGATIVE	0.9921575784683228	Account Access Issues;User Interface;Customer Support
6297	2	The new version is really nice. Keep it up	4	2024-01-18	Google Play	POSITIVE	0.9998657703399658	Other
6298	2	Like I said before, the previous version was horrendous! I'm glad that you took time and decided to develop this awesome app. Well done!	5	2024-01-18	Google Play	POSITIVE	0.999215006828308	Other
6299	2	ምን ሆናችው ነው ግን ?በጣም ቀርፋፋ ነው፡ቢያንስ እንኳን እንደ Apollo ቢፈጥን ። I'm more 15years customers in your bank but due your Application i decide to shift for other bank like CBE OR TELEBIRR PLEASE FIX THE SPEED	1	2024-01-18	Google Play	NEGATIVE	0.9928550124168396	Other
6300	2	You've improved from the previous one! Also try to add dark mode.	5	2024-01-17	Google Play	POSITIVE	0.7760269045829773	Other
6301	2	The worst app. Can't even login to my device. Phone : Pexel7a, version : android 13.	1	2024-01-16	Google Play	NEGATIVE	0.9998114705085754	Account Access Issues
6302	2	I think this app is fraudulent. It is not real	1	2024-01-15	Google Play	NEGATIVE	0.999800741672516	Other
6303	2	This new version of the app is really great. Loved it!	5	2024-01-15	Google Play	POSITIVE	0.9998737573623656	Other
6304	2	Nice one.	5	2024-01-14	Google Play	POSITIVE	0.9998599290847778	Other
6305	2	በጣም ደስ የሚል ለውጥ አናመሰግናለን 🇪🇹	5	2024-01-14	Google Play	NEGATIVE	0.904695212841034	Other
6306	2	Best application👍Thank you ! Abyssinia bank.	5	2024-01-12	Google Play	POSITIVE	0.9957923889160156	Other
6307	2	Absolutely it's fantastic apps this New apps it's fast and good apps	5	2024-01-11	Google Play	POSITIVE	0.9998877048492432	Other
6308	2	The best app next to Tele birr in ethiopia	5	2024-01-10	Google Play	POSITIVE	0.9987189769744872	Other
6309	3	love	3	2025-06-06	Google Play	POSITIVE	0.9998735189437866	Other
6312	3	Massive upgrade from the Amole app.	5	2025-05-31	Google Play	POSITIVE	0.9646421074867249	Other
6313	3	very good for this app	5	2025-05-31	Google Play	POSITIVE	0.9998138546943665	Other
6314	3	top	5	2025-05-31	Google Play	POSITIVE	0.9997069239616394	Other
6315	3	this app better than Amole . but the biometric on new update doesn't work	4	2025-05-31	Google Play	NEGATIVE	0.999607503414154	Other
6316	3	wow to it saff and this app	5	2025-05-30	Google Play	POSITIVE	0.998571276664734	Other
6317	3	it too slow	3	2025-05-29	Google Play	NEGATIVE	0.9996801614761353	Transaction Performance
6318	3	ዳሽን ባንክ ይለያል	4	2025-05-28	Google Play	NEGATIVE	0.8337255716323853	Other
6319	3	real life changer	5	2025-05-28	Google Play	POSITIVE	0.9997788071632384	Other
6320	3	nice application	5	2025-05-27	Google Play	POSITIVE	0.9998229146003724	Other
6321	3	useless app ever loading take long	1	2025-05-27	Google Play	NEGATIVE	0.9997350573539734	Transaction Performance
6322	3	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	2025-05-26	Google Play	POSITIVE	0.999617338180542	Account Access Issues;Transaction Performance;User Interface
6323	3	very useful App	1	2025-05-26	Google Play	POSITIVE	0.9995785355567932	Other
6324	3	Simple, robust features? Yes, please! But the endless loading screen killed the fun—I couldn’t use it for days. Fix the glitch, and I’ll yeet a higher rating!	2	2025-05-26	Google Play	NEGATIVE	0.8351487517356873	Transaction Performance
6325	3	Wawww	5	2025-05-24	Google Play	NEGATIVE	0.9418039321899414	Other
6326	3	it is good but some times says duplicate transaction why?	5	2025-05-24	Google Play	NEGATIVE	0.9836630821228028	Transaction Performance
6327	3	very Nice	5	2025-05-23	Google Play	POSITIVE	0.9998563528060912	Other
6328	3	its best	5	2025-05-23	Google Play	POSITIVE	0.9998121857643129	Other
6329	3	it is not as good as to the other mobile bank app.	1	2025-05-22	Google Play	NEGATIVE	0.999786913394928	Other
6330	3	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	2025-05-22	Google Play	POSITIVE	0.9996517896652222	Other
6331	3	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	2025-05-20	Google Play	NEGATIVE	0.9939862489700316	Other
6332	3	The best app ever in finance sector	5	2025-05-18	Google Play	POSITIVE	0.9998089671134948	Other
6333	3	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	2025-05-18	Google Play	NEGATIVE	0.9983357787132264	Transaction Performance
6334	3	dashen bank or dashen super app?	1	2025-05-17	Google Play	NEGATIVE	0.9937525391578674	Other
6335	3	wowwwe app	5	2025-05-17	Google Play	POSITIVE	0.9829692840576172	Other
6336	3	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	2025-05-17	Google Play	NEGATIVE	0.9994332194328308	Transaction Performance
6337	3	always lagging	1	2025-05-16	Google Play	NEGATIVE	0.9998013377189636	Other
6338	3	Amazing Application...	5	2025-05-16	Google Play	POSITIVE	0.9998786449432372	Other
6339	3	Dashen bank app is very good, but sometimes it is not working well	5	2025-05-15	Google Play	NEGATIVE	0.9976341724395752	Other
6340	3	its my choice	5	2025-05-15	Google Play	POSITIVE	0.9962010979652404	Other
6341	3	wow apo	5	2025-05-15	Google Play	POSITIVE	0.99947851896286	Other
6342	3	awesome app keep going	5	2025-05-14	Google Play	POSITIVE	0.9998502731323242	Other
6343	3	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	2025-05-14	Google Play	POSITIVE	0.9992207288742064	Other
6344	3	Game changer	5	2025-05-13	Google Play	POSITIVE	0.988757073879242	Other
6345	3	Totally amazing	5	2025-05-13	Google Play	POSITIVE	0.9998782873153688	Other
6346	3	super 😎	5	2025-05-13	Google Play	POSITIVE	0.9331682920455932	Other
6347	3	what a helpful app!!!!	5	2025-05-13	Google Play	POSITIVE	0.9990901947021484	Customer Support
6348	3	To be honest, best banking and lifestyle app in Ethiopia.	5	2025-05-12	Google Play	POSITIVE	0.9997262358665466	Other
6349	3	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	2025-05-12	Google Play	POSITIVE	0.9966461062431335	Other
6350	3	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	2025-05-10	Google Play	POSITIVE	0.9991555213928224	Transaction Performance;User Interface
6351	3	Amazing app super easy to use and best design. loved it.	5	2025-05-09	Google Play	POSITIVE	0.9998630285263062	User Interface
6352	3	its the best ever	5	2025-05-09	Google Play	POSITIVE	0.9998552799224854	Other
6353	3	excellent game changer App	5	2025-05-08	Google Play	POSITIVE	0.9998358488082886	Other
6354	3	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	2025-05-03	Google Play	POSITIVE	0.9995176792144777	Other
6355	3	it seems me logging out within minutes	1	2025-05-03	Google Play	NEGATIVE	0.9982207417488098	Other
6356	3	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	2025-05-03	Google Play	NEGATIVE	0.985798954963684	User Interface;Reliability
6357	3	yes i want dashen super open	5	2025-05-02	Google Play	POSITIVE	0.999435007572174	Other
6358	3	faster than this version	5	2025-05-01	Google Play	POSITIVE	0.9991979002952576	Other
6359	3	Best UI mobile banking app, props to design team	5	2025-04-30	Google Play	POSITIVE	0.9991565942764282	User Interface
6360	3	bad.	1	2025-04-30	Google Play	NEGATIVE	0.9997698664665222	Other
6361	3	Dashen bank always one step ahead	5	2025-04-30	Google Play	POSITIVE	0.9996015429496764	Other
6362	3	dashen super app is secure band very easy	5	2025-04-29	Google Play	POSITIVE	0.9899651408195496	Other
6363	3	It is very fast and secured mobile banking app! I like this app!	5	2025-04-29	Google Play	POSITIVE	0.9995939135551452	Other
6364	3	best app I have ever seen	5	2025-04-29	Google Play	POSITIVE	0.9996102452278136	Other
6365	3	best of best	5	2025-04-29	Google Play	POSITIVE	0.9997496008872986	Other
6366	3	Its slow when i try to see the Recent Transaction and stucked	1	2025-04-28	Google Play	NEGATIVE	0.9992387294769288	Transaction Performance
6367	3	wowslnwoooo wowwww amazing !!!!!!!!	5	2025-04-28	Google Play	POSITIVE	0.999722182750702	Other
6368	3	wow appl	5	2025-04-28	Google Play	POSITIVE	0.9994691014289856	Other
6369	3	why do i have to change a pin number i use my finger print so dummy	1	2025-04-27	Google Play	NEGATIVE	0.9994646906852722	Other
6370	3	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	2025-04-25	Google Play	NEGATIVE	0.9997708201408386	Transaction Performance
6371	3	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	2025-04-24	Google Play	POSITIVE	0.9996446371078492	Transaction Performance;User Interface
6372	3	Very easy and Fast.	5	2025-04-24	Google Play	POSITIVE	0.9995487332344056	Other
6373	3	Incomparably user-friendly and fast app for mobile banking.	5	2025-04-24	Google Play	NEGATIVE	0.9392759799957277	Other
6374	3	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	2025-04-24	Google Play	NEGATIVE	0.9993688464164734	Transaction Performance
6375	3	execellent	5	2025-04-24	Google Play	NEGATIVE	0.9866806864738464	Other
6376	3	This super app is a total game-changer—fast, reliable, and packed with everything I need in one place. It’s seamless and super convenient. Love it!"	5	2025-04-23	Google Play	POSITIVE	0.9998038411140442	Other
6377	3	All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!!	5	2025-04-23	Google Play	NEGATIVE	0.7598531246185303	Other
6378	3	it is incredible product.	5	2025-04-23	Google Play	POSITIVE	0.9998867511749268	Other
6379	3	I'm really impressed with this app! It’s user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	2025-04-23	Google Play	POSITIVE	0.9997783303260804	Other
6380	3	It's an amazing app, experience it!!	5	2025-04-23	Google Play	POSITIVE	0.9998760223388672	Other
6381	3	This is the best banking app ever. I recommend everyone to use it.	5	2025-04-23	Google Play	POSITIVE	0.9997599720954896	Other
6382	3	It is the best application!!!	5	2025-04-22	Google Play	POSITIVE	0.9998468160629272	Other
6383	3	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	2025-04-22	Google Play	POSITIVE	0.9998323917388916	Other
6384	3	its features are so dynamic	5	2025-04-22	Google Play	POSITIVE	0.999643087387085	Other
6385	3	fast &Friendly user Application.	5	2025-04-22	Google Play	POSITIVE	0.9993237257003784	Other
6386	3	Fast, Reliable and User Friendly. Keep it Up	5	2025-04-22	Google Play	POSITIVE	0.9997664093971252	User Interface
6387	3	#dashen super app is easy to use, secure & fast transaction😍	5	2025-04-22	Google Play	POSITIVE	0.9874821901321412	Transaction Performance
6388	3	i love this app esp 3 click that make e-commerce easier and convinient.	5	2025-04-22	Google Play	POSITIVE	0.9995126724243164	Other
6389	3	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	2025-04-22	Google Play	POSITIVE	0.9990369081497192	Account Access Issues
6390	3	Great for everyday banking and payments on the go	5	2025-04-22	Google Play	POSITIVE	0.9998255372047424	Transaction Performance
6391	3	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ።	5	2025-04-22	Google Play	POSITIVE	0.9997794032096864	Transaction Performance;User Interface
6392	3	making transactions has never been easier. the new update is just amazing	5	2025-04-22	Google Play	POSITIVE	0.9998310804367064	Transaction Performance
6393	3	The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.	5	2025-04-22	Google Play	POSITIVE	0.9850903749465942	Transaction Performance
6394	3	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	2025-04-22	Google Play	POSITIVE	0.999284565448761	Transaction Performance;User Interface
6395	3	betam mirt Ena betam le atikakem kelel Yale Ena michu application nw	5	2025-04-22	Google Play	NEGATIVE	0.9886249303817748	Other
6396	3	Convenient!	5	2025-04-22	Google Play	POSITIVE	0.9936902523040771	Other
6397	3	It is an amazing application that meets the needs of customers.	5	2025-04-22	Google Play	POSITIVE	0.999864935874939	Other
6398	3	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	2025-04-22	Google Play	POSITIVE	0.9731149673461914	Transaction Performance
6399	3	the best Supper App ever	5	2025-04-22	Google Play	POSITIVE	0.999849796295166	Other
6400	3	This is the best app ever, when is it planned to include digital lending and gasification?	5	2025-04-22	Google Play	POSITIVE	0.9990382194519044	Other
6401	3	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	2025-04-22	Google Play	POSITIVE	0.999815046787262	Other
6402	3	Dashen bank is my number one choice	5	2025-04-22	Google Play	POSITIVE	0.9996331930160522	Other
6403	3	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	2025-04-22	Google Play	POSITIVE	0.9994714856147766	Other
6404	3	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	2025-04-21	Google Play	POSITIVE	0.9991613626480104	User Interface
6405	3	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	2025-04-21	Google Play	POSITIVE	0.9998248219490052	Other
6406	3	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	2025-04-21	Google Play	POSITIVE	0.9990429282188416	User Interface
6407	3	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	2025-04-21	Google Play	POSITIVE	0.9997945427894592	Transaction Performance
6408	3	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	2025-04-21	Google Play	POSITIVE	0.9997891783714294	Other
6552	3	The app is good but it has no USSD option	4	2025-03-13	Google Play	NEGATIVE	0.9952346682548524	Other
6409	3	Dashen Super App is a game-changer! It’s fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	2025-04-21	Google Play	POSITIVE	0.9998010993003844	Transaction Performance;User Interface
6410	3	Easy to use and has many options. It is the best financial app I have ever used.	5	2025-04-21	Google Play	POSITIVE	0.9997546076774596	Other
6411	3	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	2025-04-21	Google Play	POSITIVE	0.9998537302017212	Other
6412	3	One of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	2025-04-21	Google Play	POSITIVE	0.9997860789299012	Transaction Performance
6413	3	This app has everything I was looking for, dashen is becoming a grandmaster.	5	2025-04-21	Google Play	POSITIVE	0.9995651841163636	Other
6414	3	The user experience is seamless, and everything just works perfectly right out of the box. I can’t believe how much time and effort it saves me every day.	5	2025-04-21	Google Play	POSITIVE	0.9997797608375548	Other
6415	3	wawwwww what nice super app !!keep it up dashen bank !!	5	2025-04-21	Google Play	POSITIVE	0.9991359114646912	Other
6416	3	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	2025-04-21	Google Play	POSITIVE	0.9991750121116638	Transaction Performance
6417	3	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	2025-04-21	Google Play	POSITIVE	0.9995538592338562	User Interface
6418	3	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	2025-04-21	Google Play	POSITIVE	0.99827241897583	Other
6419	3	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	2025-04-21	Google Play	POSITIVE	0.9994187355041504	Other
6420	3	one of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experie	5	2025-04-21	Google Play	POSITIVE	0.9995588660240172	Transaction Performance
6421	3	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	2025-04-21	Google Play	POSITIVE	0.9992392063140868	User Interface
6422	3	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	2025-04-21	Google Play	POSITIVE	0.9991500377655028	Other
6423	3	thanks again	5	2025-04-21	Google Play	POSITIVE	0.9998217225074768	Other
6424	3	Super Easy To Use and Fast Transaction.	5	2025-04-21	Google Play	POSITIVE	0.996877908706665	Transaction Performance
6425	3	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement 👏👏👏	5	2025-04-21	Google Play	POSITIVE	0.999527096748352	Other
6426	3	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	2025-04-21	Google Play	POSITIVE	0.9953939914703368	Account Access Issues;Transaction Performance;User Interface
6427	3	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. It’s saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	2025-04-21	Google Play	POSITIVE	0.9982413053512572	Transaction Performance
6428	3	what an App	5	2025-04-21	Google Play	POSITIVE	0.9938238859176636	Other
6429	3	The new e-commerce feature is incredibly amazing and user friendly.	5	2025-04-21	Google Play	POSITIVE	0.9998598098754884	User Interface
6430	3	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	2025-04-21	Google Play	POSITIVE	0.9974797368049622	Transaction Performance
6431	3	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work 🤝👏	5	2025-04-21	Google Play	POSITIVE	0.9997472167015076	Account Access Issues;Transaction Performance;User Interface
6432	3	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	2025-04-21	Google Play	POSITIVE	0.9998795986175536	Customer Support
6433	3	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	2025-04-21	Google Play	POSITIVE	0.9998557567596436	Customer Support
6434	3	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience – highly recommended!	5	2025-04-21	Google Play	POSITIVE	0.9997962117195128	User Interface
6435	3	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	2025-04-21	Google Play	POSITIVE	0.8947898149490356	Transaction Performance
6436	3	the chat banking and unique and only app that alow money request!!	5	2025-04-21	Google Play	NEGATIVE	0.9822685718536376	Other
6437	3	Better and inclusive app!	5	2025-04-21	Google Play	POSITIVE	0.999285876750946	Other
6438	3	Amazing Application	5	2025-04-21	Google Play	POSITIVE	0.9998698234558104	Other
6439	3	It keep my time to pay my bills and I generate my satment easily	5	2025-04-21	Google Play	POSITIVE	0.996675968170166	Other
6440	3	It's an amazing app that is up-to-date with the times, wow wow	5	2025-04-21	Google Play	POSITIVE	0.999868392944336	Other
6441	3	A game-changing Ethiopian innovation—where shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	2025-04-21	Google Play	POSITIVE	0.9993858337402344	Other
6442	3	Dashen Super App isn’t just an app — it’s an experience. Effortless, powerful, and built for the future	5	2025-04-21	Google Play	POSITIVE	0.9997283816337584	User Interface
6443	3	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	2025-04-21	Google Play	POSITIVE	0.9997382760047911	Other
6444	3	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret it!	5	2025-04-21	Google Play	POSITIVE	0.9996484518051147	Customer Support
6445	3	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchants—proud to back an Ethiopian-made solution!	5	2025-04-21	Google Play	POSITIVE	0.9998247027397156	Customer Support
6446	3	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. It’s clear a lot of thought went into the design and functionality. Great job!	5	2025-04-21	Google Play	POSITIVE	0.9998260140419006	Account Access Issues;Transaction Performance;User Interface
6447	3	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	2025-04-21	Google Play	POSITIVE	0.9817668795585632	Other
6448	3	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	2025-04-21	Google Play	POSITIVE	0.9943593144416808	Other
6449	3	it's a hestorical app. in the bank industry.	5	2025-04-21	Google Play	NEGATIVE	0.9915915727615356	Other
6450	3	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	2025-04-21	Google Play	POSITIVE	0.9996839761734008	Other
6451	3	easy &,simple to use	5	2025-04-21	Google Play	POSITIVE	0.9968307614326476	Other
6452	3	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	2025-04-21	Google Play	POSITIVE	0.999881148338318	Other
6453	3	All in one, that is it 👌	5	2025-04-21	Google Play	POSITIVE	0.8945446610450745	Other
6454	3	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	2025-04-21	Google Play	POSITIVE	0.9995104074478148	Other
6455	3	very easy and flexible app.	5	2025-04-21	Google Play	POSITIVE	0.9997106194496156	Other
6456	3	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	2025-04-21	Google Play	POSITIVE	0.9998281002044678	Other
6457	3	dashen super app is simple faster and reliable.	5	2025-04-21	Google Play	POSITIVE	0.999518632888794	Other
6458	3	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. It’s fast, secure, and truly reflects the bank’s commitment to digital excellence. Highly recommended!	5	2025-04-21	Google Play	POSITIVE	0.999748170375824	User Interface
6459	3	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	2025-04-21	Google Play	POSITIVE	0.9995062351226808	User Interface
6460	3	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	2025-04-21	Google Play	POSITIVE	0.9964408278465272	Transaction Performance
6461	3	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	2025-04-21	Google Play	POSITIVE	0.9997468590736388	User Interface
6462	3	An app with High performance and advanced features!	5	2025-04-21	Google Play	POSITIVE	0.9995831847190856	Other
6463	3	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	2025-04-21	Google Play	POSITIVE	0.9997954964637756	User Interface
6464	3	Good actually , but it have to WORK when developer option is on 🙏	5	2025-04-21	Google Play	NEGATIVE	0.9746389389038086	Other
6465	3	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	2025-04-21	Google Play	POSITIVE	0.9981801509857178	Other
6466	3	I appreciate that Dashen Bank takes lifestyle services into account.	5	2025-04-21	Google Play	POSITIVE	0.9980393052101136	Other
6467	3	keep it up!	5	2025-04-21	Google Play	POSITIVE	0.9998477697372437	Other
6468	3	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	2025-04-21	Google Play	POSITIVE	0.9998038411140442	Other
6469	3	very comfortable app keep it	5	2025-04-21	Google Play	POSITIVE	0.999691367149353	Other
6470	3	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	2025-04-21	Google Play	POSITIVE	0.999531626701355	Customer Support
6471	3	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	2025-04-21	Google Play	NEGATIVE	0.9068744778633118	Account Access Issues
6472	3	easiness to use with fast response time	5	2025-04-21	Google Play	NEGATIVE	0.9647259712219238	Customer Support
6473	3	The new mobile banking application is a major upgrade! It’s incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. It’s clear a lot of thought went into the user experi	5	2025-04-21	Google Play	POSITIVE	0.9992745518684388	Transaction Performance;User Interface;Reliability
6474	3	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	2025-04-21	Google Play	POSITIVE	0.9990044236183168	Transaction Performance;User Interface
6511	3	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	2025-04-14	Google Play	POSITIVE	0.99978905916214	Other
6475	3	A truly impressive app — user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in Ethiopia’s financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	2025-04-21	Google Play	POSITIVE	0.9998193383216858	User Interface
6476	3	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	2025-04-21	Google Play	POSITIVE	0.9974090456962584	Other
6477	3	The Dashen Bank Super App has truly elevated my mobile banking experience. It's fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this app—it’s reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!	5	2025-04-21	Google Play	POSITIVE	0.9998351335525512	User Interface
6478	3	A fantastic product!! keep the good work.	5	2025-04-21	Google Play	POSITIVE	0.9998842477798462	Other
6479	3	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	2025-04-21	Google Play	POSITIVE	0.9998030066490172	Other
6480	3	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	2025-04-21	Google Play	POSITIVE	0.999062716960907	Transaction Performance;User Interface
6481	3	Dashen supper App is the most useful app for our customers	5	2025-04-21	Google Play	POSITIVE	0.9988586902618408	Other
6482	3	it is the most amazing mobile app	5	2025-04-21	Google Play	POSITIVE	0.9998717308044434	Other
6483	3	A Good and fast supper app thanks for dashen bank	5	2025-04-21	Google Play	POSITIVE	0.999788463115692	Other
6484	3	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must say—it’s truly a game-changer! The app is incredibly fast and reliable; I’ve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	2025-04-21	Google Play	POSITIVE	0.9993189573287964	Transaction Performance;User Interface;Customer Support
6485	3	Too best	1	2025-04-21	Google Play	POSITIVE	0.8775478601455688	Other
6486	3	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	2025-04-21	Google Play	POSITIVE	0.9985912442207336	Other
6487	3	To join digital world use supper app and make your life easy	5	2025-04-21	Google Play	POSITIVE	0.987091064453125	Other
6488	3	best mobile banking application	5	2025-04-21	Google Play	POSITIVE	0.9996380805969238	Other
6489	3	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	2025-04-21	Google Play	POSITIVE	0.9998156428337096	User Interface
6490	3	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	2025-04-21	Google Play	POSITIVE	0.9981945157051086	Other
6491	3	this is what we expect to get service Dashen Bank always like his slogan	5	2025-04-21	Google Play	NEGATIVE	0.8835351467132568	Other
6492	3	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platform—such as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	2025-04-21	Google Play	POSITIVE	0.9997934699058532	Transaction Performance
6493	3	Dashen Super App gives me an amazing convenience and makes life easy.	5	2025-04-21	Google Play	POSITIVE	0.999823272228241	Other
6494	3	excellent mobile banking app	5	2025-04-21	Google Play	POSITIVE	0.9998179078102112	Other
6495	3	Wow! like his name Super App...	5	2025-04-21	Google Play	POSITIVE	0.9985873699188232	Other
6496	3	Dashen supper app is the most special. ይምቾቱ ይለያያል!!!!	5	2025-04-21	Google Play	POSITIVE	0.9926958084106444	Other
6497	3	convenient and fast	5	2025-04-21	Google Play	POSITIVE	0.9996170997619628	Other
6498	3	Best- in-class app.	5	2025-04-21	Google Play	POSITIVE	0.999584972858429	Other
6499	3	I really like this amazing application and Dashen Supper app that has made my life easier.	5	2025-04-21	Google Play	POSITIVE	0.9997171759605408	Other
6500	3	amazing features, faster and easy to use	5	2025-04-21	Google Play	POSITIVE	0.9998817443847656	Other
6501	3	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	2025-04-21	Google Play	POSITIVE	0.999481737613678	Other
6502	3	Best App!	5	2025-04-21	Google Play	POSITIVE	0.9997498393058776	Other
6503	3	I love it. one of the best mobile banking app in the banking industry	5	2025-04-21	Google Play	POSITIVE	0.999868392944336	Other
6504	3	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	2025-04-21	Google Play	NEGATIVE	0.9980541467666626	Other
6505	3	waw no idea the best app.	5	2025-04-19	Google Play	NEGATIVE	0.9923464059829712	Other
6506	3	fast best app	5	2025-04-19	Google Play	POSITIVE	0.999737560749054	Other
6507	3	nice app ever	5	2025-04-17	Google Play	POSITIVE	0.9998384714126588	Other
6508	3	very disappointing app. Closes frequently and unstable in function	2	2025-04-17	Google Play	NEGATIVE	0.9997677206993104	Other
6509	3	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	2025-04-16	Google Play	NEGATIVE	0.9992289543151855	Transaction Performance
6510	3	nic app	5	2025-04-16	Google Play	POSITIVE	0.9797857403755188	Other
6512	3	So far so good! their in person customer service is amazing 👏	5	2025-04-14	Google Play	POSITIVE	0.9998642206192015	Customer Support
6513	3	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!😥	1	2025-04-14	Google Play	NEGATIVE	0.9958034157752992	Other
6514	3	ምርጫዬ ነው	5	2025-04-13	Google Play	NEGATIVE	0.7850590348243713	Other
6515	3	It's bad for the connection and too many days are it that not working	1	2025-04-12	Google Play	NEGATIVE	0.9996840953826904	Other
6516	3	it's samart	5	2025-04-10	Google Play	POSITIVE	0.9992457628250122	Other
6517	3	The app is not working properly, I have been using it.	1	2025-04-10	Google Play	NEGATIVE	0.999715268611908	Other
6518	3	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	2025-04-09	Google Play	NEGATIVE	0.9996039271354676	Transaction Performance;Customer Support
6519	3	slow cumbersome	3	2025-04-08	Google Play	NEGATIVE	0.9997989535331726	Transaction Performance
6520	3	Is really 💀	2	2025-04-08	Google Play	POSITIVE	0.9858712553977966	Other
6521	3	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	2025-04-07	Google Play	NEGATIVE	0.9997294545173644	Transaction Performance
6522	3	This is the worst mobile banking experience I’ve ever had. It doesn’t work when you need it, and it randomly updates itself without warning. You can’t make transactions whenever you want. It’s a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. I’m lucky I’m not one of them, but still, it’s infuriating not being able to access your money when you need it."l	1	2025-04-07	Google Play	NEGATIVE	0.9996976852416992	Account Access Issues;Transaction Performance
6523	3	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	2025-04-07	Google Play	NEGATIVE	0.9981010556221008	Account Access Issues
6524	3	proud by dashen bank	5	2025-04-06	Google Play	POSITIVE	0.9998666048049928	Other
6525	3	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	2025-04-04	Google Play	NEGATIVE	0.9994447827339172	Other
6526	3	real super up	5	2025-04-04	Google Play	POSITIVE	0.9998282194137572	Other
6527	3	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	2025-04-04	Google Play	NEGATIVE	0.99936181306839	Other
6528	3	why dashen bank workers hidden my ATM Card 🏧?it's a big problem to me	5	2025-04-04	Google Play	NEGATIVE	0.999297022819519	Other
6529	3	tanku	5	2025-04-04	Google Play	NEGATIVE	0.9159650802612304	Other
6530	3	why does it ask me for both pin and opt even the opt is touch let alone both	2	2025-04-02	Google Play	NEGATIVE	0.9958769083023072	Other
6531	3	it is best app easy to use	5	2025-04-01	Google Play	POSITIVE	0.9864110350608826	Other
6532	3	It is very easy to use and powerful application.	3	2025-04-01	Google Play	POSITIVE	0.9997655749320984	Other
6533	3	this apps have a good feature but but some features like developer mode turn off irritate user	3	2025-04-01	Google Play	NEGATIVE	0.997230589389801	Other
6534	3	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	2025-03-31	Google Play	POSITIVE	0.9897825717926024	Account Access Issues;Transaction Performance
6535	3	wallahi very fantastic Bank	5	2025-03-31	Google Play	POSITIVE	0.999818742275238	Other
6536	3	Waw, It's amazing app. thank you Dashen Bank.	5	2025-03-31	Google Play	POSITIVE	0.99986732006073	Other
6537	3	I’ve been using the Dashen Bank Super App for a while now, and it’s been a game-changer. The app is super fast and reliable—I’ve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	2025-03-28	Google Play	POSITIVE	0.9992021918296814	Transaction Performance;User Interface;Customer Support
6538	3	Very good app that like it too. B/c it is very fast and easy to use.	5	2025-03-26	Google Play	POSITIVE	0.9998027682304382	Other
6539	3	best experiences	5	2025-03-26	Google Play	POSITIVE	0.9992781281471252	Other
6540	3	too slow to use.	1	2025-03-26	Google Play	NEGATIVE	0.9997276663780212	Transaction Performance
6541	3	the worst app in the market only good ui	1	2025-03-22	Google Play	NEGATIVE	0.9997721314430236	User Interface
6542	3	በጣም ቅልል ያለ አፕ በርቱልን ለአጠቃቀም ምቹ	5	2025-03-22	Google Play	NEGATIVE	0.9200406670570374	Other
6543	3	thanks for all digital transaction	5	2025-03-21	Google Play	POSITIVE	0.9994550347328186	Transaction Performance
6544	3	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	2025-03-20	Google Play	NEGATIVE	0.9997400641441344	Transaction Performance;Reliability;Customer Support
6545	3	it's Be Come Busy &not working good	1	2025-03-20	Google Play	NEGATIVE	0.999382257461548	Other
6546	3	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isn’t performing as expected. I hope this can be addressed soon to improve the user experience. One star 🌟 for now.	1	2025-03-19	Google Play	NEGATIVE	0.9980534315109252	Other
6547	3	best ever digital banking sector essay for understanding ,smart and convince for using	5	2025-03-19	Google Play	POSITIVE	0.9997392296791076	Other
6548	3	good and latest	5	2025-03-18	Google Play	POSITIVE	0.9998561143875122	Other
6549	3	The best App of all	5	2025-03-17	Google Play	POSITIVE	0.9998633861541748	Other
6550	3	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	2025-03-14	Google Play	NEGATIVE	0.9997894167900084	Transaction Performance;User Interface;Reliability
6551	3	Naiycapp	5	2025-03-14	Google Play	POSITIVE	0.8075184226036072	Other
6553	3	Hey great	5	2025-03-12	Google Play	POSITIVE	0.999745786190033	Other
6554	3	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	2025-03-12	Google Play	POSITIVE	0.9984980821609496	Other
6555	3	The app is good but it ask update every week so tiring	2	2025-03-11	Google Play	NEGATIVE	0.9951795339584352	Other
6556	3	It good and easy to use	5	2025-03-11	Google Play	POSITIVE	0.9998750686645508	Other
6557	3	በጣም አሪፍ መተግበሪያ ነው ። አመሠግናለሁ ።	5	2025-03-10	Google Play	NEGATIVE	0.9200406670570374	Other
6558	3	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	2025-03-10	Google Play	POSITIVE	0.9655694961547852	Transaction Performance
6559	3	Wow Excellent app	5	2025-03-08	Google Play	POSITIVE	0.9998443126678468	Other
6560	3	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	2025-03-08	Google Play	NEGATIVE	0.9983522891998292	Transaction Performance
6561	3	Add the option to send money to any telebirr account like amole does.	3	2025-03-08	Google Play	NEGATIVE	0.995681881904602	Other
6562	3	no one dashen yichlal	5	2025-03-07	Google Play	NEGATIVE	0.9842472076416016	Other
6563	3	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	2025-03-06	Google Play	POSITIVE	0.9998522996902466	Other
6564	3	The speed is too slow. Need some improvements.	2	2025-03-06	Google Play	NEGATIVE	0.9997935891151428	Transaction Performance
6565	3	I wish dark mode feature is add as an option but it's good app	5	2025-02-27	Google Play	POSITIVE	0.9998013377189636	Other
6566	3	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-02-26	Google Play	POSITIVE	0.9995073080062866	Transaction Performance;User Interface
6567	3	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	2025-02-26	Google Play	POSITIVE	0.9977291226387024	Transaction Performance;User Interface
6568	3	ከጰነጨየጠ	2	2025-02-26	Google Play	NEGATIVE	0.697056770324707	Other
6569	3	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	2025-02-24	Google Play	NEGATIVE	0.9960646033287048	Transaction Performance
6570	3	አፕልኬሽኑ አሪፍ ሆኖ ሳለ ቴሌብር ወደራስ ብቻ ለምን ሆነ እንደ ድሮው ለሰውም መላክ ቢቻል	4	2025-02-22	Google Play	NEGATIVE	0.9528433680534364	Other
6571	3	No good	1	2025-02-22	Google Play	NEGATIVE	0.9996987581253052	Other
6572	3	best platform... Please avoid otp	5	2025-02-21	Google Play	POSITIVE	0.9228947758674622	Other
6573	3	Super smart app.	5	2025-02-18	Google Play	POSITIVE	0.9997984766960144	Other
6574	3	best 👍👍	5	2025-02-16	Google Play	POSITIVE	0.9997019171714784	Other
6575	3	I don't know what happens but the application is not send verification pass code you should fix that	1	2025-02-16	Google Play	NEGATIVE	0.9973721504211426	Other
6576	3	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	2025-02-14	Google Play	NEGATIVE	0.9974337220191956	Other
6577	3	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	2025-02-14	Google Play	POSITIVE	0.9937819838523864	Other
6578	3	Amazing and user friendly supper app and looking forward the additional features	5	2025-02-14	Google Play	POSITIVE	0.9998486042022704	User Interface
6579	3	it's amazing app i have seen ever	5	2025-02-13	Google Play	POSITIVE	0.9998574256896972	Other
6580	3	One star deducted for not to able to transfer to telebirr.	4	2025-02-13	Google Play	NEGATIVE	0.9903808236122132	Transaction Performance
6581	3	ጥሩ ነው ግን በደንብ ሊሸሻል ይገባል	4	2025-02-13	Google Play	NEGATIVE	0.904695212841034	Other
6582	3	ፍጥነቱ በጣም አሪፍ ነው! እና ቀለል ያለ ነው ! ነገር ግን ተጨማሪ ወደ ቴሌብር ኤጀንት መላኪያ አፕ ቢካተትበት ጥሩ ነው::	4	2025-02-12	Google Play	NEGATIVE	0.932810604572296	Other
6583	3	Keep up the good work and pleas add water and electric utility payment	5	2025-02-12	Google Play	POSITIVE	0.9986761212348938	Transaction Performance
6584	3	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	2025-02-11	Google Play	NEGATIVE	0.9995891451835632	Transaction Performance
6585	3	Simple, Fast and Easy ⭐⭐⭐🎉	4	2025-02-10	Google Play	POSITIVE	0.9996811151504515	Other
6586	3	የሚገርም aplication ነው, ነገር ግን ብር ትራንስፈር ሲደረግ ያለ ፒን መሆኑ risk አለው ሁሉ ጊዜ የ ትራንስፈር መደምደሚያ ፒን መሆን አለበት!!!!!!!!!!!!:: አሱ ቢስተካከል 5 star አስከዛው ግን 4 ሰጥቻለው::	4	2025-02-09	Google Play	NEGATIVE	0.8565719723701477	Other
6587	3	Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki	5	2025-02-07	Google Play	NEGATIVE	0.9961472749710084	Other
6588	3	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	2025-02-07	Google Play	POSITIVE	0.99981027841568	Transaction Performance
6589	3	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	2025-02-06	Google Play	POSITIVE	0.9998507499694824	Other
6590	3	Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	Google Play	NEGATIVE	0.985221803188324	Other
6591	3	Good app, bad security	3	2025-02-06	Google Play	POSITIVE	0.989300549030304	Other
6592	3	On Transaction page only show sent Transaction. Try to include received transaction.	4	2025-02-06	Google Play	NEGATIVE	0.9956958293914796	Transaction Performance
6593	3	Wonderful Application 😍	5	2025-02-05	Google Play	POSITIVE	0.9998589754104614	Other
6594	3	አሁን ገና አንድ እርምጃ ቀደማችው	5	2025-02-04	Google Play	NEGATIVE	0.8832130432128906	Other
6595	3	I am so thankful for having this best app Dashen one step ahead	5	2025-02-04	Google Play	POSITIVE	0.999471127986908	Other
6596	3	Not good this app	1	2025-02-04	Google Play	NEGATIVE	0.9997790455818176	Other
6597	3	Excellent app ever but it needs improvement on speed and transaction lists	1	2025-02-03	Google Play	NEGATIVE	0.990936815738678	Transaction Performance
6598	3	It does not work functional ,	1	2025-02-02	Google Play	NEGATIVE	0.9997901320457458	Other
6599	3	all of dashen bank customers use the application it is good to use	5	2025-02-01	Google Play	POSITIVE	0.9958037734031676	Other
6600	3	Gret experience	5	2025-02-01	Google Play	NEGATIVE	0.7600311040878296	Other
6601	3	All good we need more	3	2025-01-31	Google Play	POSITIVE	0.9996538162231444	Other
6602	3	Dashen super app is easy to use, fast and robust	5	2025-01-31	Google Play	POSITIVE	0.9997517466545104	Other
6603	3	it was amazing app.....thank you dashen bank....	5	2025-01-30	Google Play	POSITIVE	0.9998608827590942	Other
6604	3	Dashen bank super app for easy life.	5	2025-01-30	Google Play	POSITIVE	0.7723072171211243	Other
6605	3	Excellent UI/UX and beyond Banking services👍👍	5	2025-01-30	Google Play	POSITIVE	0.9995208978652954	User Interface
6606	3	Send to oher bank የሚለዉ ዉስጥ ገብተን ወደ addisinternational bank ለመላክ አይሰራም ሁለተኛ ደግሞ ወደ cbe birr ለመላክ account number ይጠይቃል ሞባይል ነበር ነዉ መጠየቅ ያለበት ይመስለኛል	2	2025-01-29	Google Play	NEGATIVE	0.9945861101150512	Other
6607	3	Just Wow	5	2025-01-29	Google Play	POSITIVE	0.999775230884552	Other
6608	3	mobile banking to the next level	5	2025-01-28	Google Play	POSITIVE	0.9409880042076112	Other
6609	3	The first 3 star review is me	3	2025-01-25	Google Play	POSITIVE	0.9967767596244812	Other
6610	3	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	2025-01-24	Google Play	POSITIVE	0.9998725652694702	User Interface
6611	3	V good ❗️	5	2025-01-24	Google Play	POSITIVE	0.9993855953216552	Other
6612	3	This app is literally the best thing ever The chat banking is so easy just text and it’s done Super smooth, fast, and honestly a life saverIf you haven’t downloaded it yet you’re missing out big time	5	2025-01-23	Google Play	POSITIVE	0.9862456321716307	Other
6613	3	I only see white page	2	2025-01-23	Google Play	NEGATIVE	0.9910238981246948	Other
6614	3	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone 💯 👌👍	5	2025-01-22	Google Play	POSITIVE	0.9994206428527832	Other
6615	3	Amizing Application 😍	5	2025-01-22	Google Play	NEGATIVE	0.9905142784118652	Other
6616	3	Fastest and easy to use	5	2025-01-22	Google Play	POSITIVE	0.9997114539146424	Other
6617	3	ስም ብቻ 😏	2	2025-01-21	Google Play	NEGATIVE	0.8337255716323853	Other
6618	3	Exellent app with exellent banking system and exellent bank ever	5	2025-01-21	Google Play	NEGATIVE	0.9579959511756896	Other
6619	3	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	2025-01-20	Google Play	POSITIVE	0.9711759686470032	Transaction Performance
6620	3	Needs some improvement	5	2025-01-20	Google Play	NEGATIVE	0.998008668422699	Other
6621	3	Amazing super app	5	2025-01-19	Google Play	POSITIVE	0.9998658895492554	Other
6622	3	I hope it will be better than amole	5	2025-01-18	Google Play	POSITIVE	0.9969701766967772	Other
6623	3	Wly Super App ilove it ❤️ 😍 💖 💕	5	2025-01-18	Google Play	NEGATIVE	0.946361482143402	Other
6624	3	Dashen yichalal. Ewnetem one step a head	5	2025-01-17	Google Play	NEGATIVE	0.983262538909912	Other
6625	3	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	2025-01-17	Google Play	POSITIVE	0.9967933297157288	Account Access Issues
6626	3	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	2025-01-17	Google Play	POSITIVE	0.99988055229187	Other
6627	3	“Life-changing!” I can’t imagine going back to traditional banking after using this app. It’s so convenient.	5	2025-01-17	Google Play	POSITIVE	0.9968047142028807	Other
6628	3	Pro max	5	2025-01-17	Google Play	POSITIVE	0.9984601736068726	Other
6629	3	The most good app and easy	5	2025-01-16	Google Play	POSITIVE	0.9998631477355956	Other
6630	3	Excellent and user friendly App. Excellence is what makes you always one step ahead. Dashen Bank, Always One Step Ahead !!	5	2025-01-16	Google Play	POSITIVE	0.9998682737350464	User Interface
6631	3	Proud to be dashen family . Shout out to the serial entrepreneur 👏	5	2025-01-16	Google Play	POSITIVE	0.9998549222946168	Other
6632	3	First ATM in East africa ⭐️⭐️⭐️⭐️⭐️	5	2025-01-16	Google Play	POSITIVE	0.9874703288078308	Other
6633	3	Best app.	5	2025-01-16	Google Play	POSITIVE	0.999774158000946	Other
6634	3	Better Move to catch the competition up👍	5	2025-01-16	Google Play	POSITIVE	0.9914565682411194	Other
6635	3	Great job my home, my bank.	5	2025-01-16	Google Play	POSITIVE	0.9998712539672852	Other
6636	3	Always one step ahead! What a masterpiece.	5	2025-01-16	Google Play	POSITIVE	0.9998708963394164	Other
6637	3	Great App Well done Dashen Bank	5	2025-01-15	Google Play	POSITIVE	0.9997735619544984	Other
6638	3	Great!	5	2025-01-15	Google Play	POSITIVE	0.9998692274093628	Other
6639	3	I love it but it has bugs during confirmation of password! So, please make it functional	5	2025-01-15	Google Play	POSITIVE	0.98050457239151	Account Access Issues;Reliability
6640	3	Always one step forward	5	2025-01-15	Google Play	POSITIVE	0.999639630317688	Other
6641	3	It's great! But it will be advanced if you include a caption that allow customers to transfer to Telebirr account. Dashen Bank, "ኩሉ ግዜ፡ ሓደ ስጕሚ ቀዳሚ።" (Always one step ahead!)	4	2025-01-15	Google Play	POSITIVE	0.9995723366737366	Transaction Performance
6642	3	Small size with vast features and functionalities.	5	2025-01-15	Google Play	POSITIVE	0.9981461763381958	Other
6643	3	Amazing app 👏 👌 Dashen bank one step a head	5	2025-01-15	Google Play	POSITIVE	0.9995114803314208	Other
6644	3	It has a great application features from the beginning. I'm glad to use it even I haven't used it yet because I haven't activated my account yet. But it's simple, comprehensive, full of information, and fast. በርቱ ዳሸኖች: The super app has impressed me more than I expected.	5	2025-01-15	Google Play	POSITIVE	0.999612033367157	Other
6645	3	Dashen Bank Always One Step Ahead!	5	2025-01-15	Google Play	POSITIVE	0.9996882677078248	Other
6646	3	U can't create account	1	2025-01-15	Google Play	NEGATIVE	0.9984429478645324	Other
6647	3	Really super app... so seamless and with a nice user interface .. we are proud of you dashen bank ...	5	2025-01-15	Google Play	POSITIVE	0.9998613595962524	User Interface
6648	3	We will see it	2	2025-01-15	Google Play	POSITIVE	0.9998630285263062	Other
6649	3	Always one step a head!	5	2025-01-15	Google Play	POSITIVE	0.9981322884559632	Other
6650	3	A lightweight,catchy and smooth app	5	2025-01-15	Google Play	POSITIVE	0.998709201812744	Other
6651	3	Very impressive interface with best security feature and user friendly app.	5	2025-01-15	Google Play	POSITIVE	0.9997988343238832	User Interface
6652	3	It is so far so good it has a unique features than telebirr good job Dashen	5	2025-01-15	Google Play	POSITIVE	0.9998282194137572	Other
6653	3	Yea , it's a good idea to make it with the bank name, it will help for the bank easily to find the application, and customers can easily downloed and use the product. I wish all the best for Dashen bank initiative.	5	2025-01-15	Google Play	POSITIVE	0.7550317645072937	Customer Support
6654	3	This is My Bank!	5	2025-01-15	Google Play	POSITIVE	0.9968095421791076	Other
6655	3	Truly, db => AlwaysOneStepAhead !!	5	2025-01-14	Google Play	NEGATIVE	0.9989049434661864	Other
6656	3	ALWAYS ONE STEP AHEAD	5	2025-01-14	Google Play	POSITIVE	0.9997699856758118	Other
6657	3	Well developed	5	2025-01-14	Google Play	POSITIVE	0.9998576641082764	Other
6658	3	oh nice!!! i wish it's very nice app	5	2025-01-14	Google Play	POSITIVE	0.9996349811553956	Other
6659	3	Really the app looks like amazing. I can't wait to activate in the morning.	5	2025-01-14	Google Play	POSITIVE	0.9997010827064514	Other
6660	3	Applause 👏 Dashen Bank. One of the best super app inorder to pay easily and securely. One step a head.	5	2025-01-14	Google Play	POSITIVE	0.9996860027313232	Other
6661	3	Wow Dashen Super App 🚀🚀	5	2025-01-14	Google Play	POSITIVE	0.9978638291358948	Other
6662	3	All in One	5	2025-01-14	Google Play	POSITIVE	0.9988051652908324	Other
6663	3	The best Banking app I have ever seen	5	2025-01-14	Google Play	POSITIVE	0.9997634291648864	Other
6664	3	It looks good and simple to use	5	2025-01-14	Google Play	POSITIVE	0.9998189806938172	Other
6665	3	App That makes Difference!	5	2025-01-14	Google Play	POSITIVE	0.9998338222503662	Other
6666	3	Faster and userfriendly	5	2025-01-14	Google Play	POSITIVE	0.9199286103248596	Other
6667	3	Waw Great and innovated,user friendly, always one step ahead	5	2025-01-13	Google Play	POSITIVE	0.999778687953949	User Interface
6668	3	It's Best waww 🙏	5	2025-01-13	Google Play	POSITIVE	0.999744474887848	Other
6669	3	Always one step ahead	5	2025-01-13	Google Play	POSITIVE	0.9997699856758118	Other
6670	3	Like Me, I Hope It Works Better Than Before.	5	2025-01-11	Google Play	POSITIVE	0.99872225522995	Other
\.


--
-- Name: banks_bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_bank_id_seq', 3, true);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 6670, true);


--
-- Name: banks banks_bank_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_bank_name_key UNIQUE (bank_name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (bank_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(bank_id);


--
-- PostgreSQL database dump complete
--


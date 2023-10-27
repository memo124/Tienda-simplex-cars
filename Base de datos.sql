--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(50),
    apellido_cliente character varying(50),
    correo_cliente character varying(50),
    usuario_cliente character varying(50),
    contrasena_cliente character varying(200),
    id_estado_cliente integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: detalle_factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_factura (
    id_detalle_factura integer NOT NULL,
    id_factura integer,
    precio_comprados numeric(10,2),
    cantidad_comprados integer,
    id_productos integer
);


ALTER TABLE public.detalle_factura OWNER TO postgres;

--
-- Name: detalle_factura_id_detalle_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_factura_id_detalle_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_factura_id_detalle_factura_seq OWNER TO postgres;

--
-- Name: detalle_factura_id_detalle_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_factura_id_detalle_factura_seq OWNED BY public.detalle_factura.id_detalle_factura;


--
-- Name: estado_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_cliente (
    id_estado_cliente integer NOT NULL,
    estado_cliente character varying(50)
);


ALTER TABLE public.estado_cliente OWNER TO postgres;

--
-- Name: estado_cliente_id_estado_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_cliente_id_estado_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_cliente_id_estado_cliente_seq OWNER TO postgres;

--
-- Name: estado_cliente_id_estado_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_cliente_id_estado_cliente_seq OWNED BY public.estado_cliente.id_estado_cliente;


--
-- Name: estado_factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_factura (
    id_estado_factura integer NOT NULL,
    estado_factura character varying(100)
);


ALTER TABLE public.estado_factura OWNER TO postgres;

--
-- Name: estado_factura_id_estado_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_factura_id_estado_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_factura_id_estado_factura_seq OWNER TO postgres;

--
-- Name: estado_factura_id_estado_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_factura_id_estado_factura_seq OWNED BY public.estado_factura.id_estado_factura;


--
-- Name: estado_productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_productos (
    id_estado_producto integer NOT NULL,
    estado_producto character varying(50)
);


ALTER TABLE public.estado_productos OWNER TO postgres;

--
-- Name: estado_productos_id_estado_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_productos_id_estado_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_productos_id_estado_producto_seq OWNER TO postgres;

--
-- Name: estado_productos_id_estado_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_productos_id_estado_producto_seq OWNED BY public.estado_productos.id_estado_producto;


--
-- Name: estado_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_usuario (
    id_estado_usuario integer NOT NULL,
    estado_usuario character varying(50)
);


ALTER TABLE public.estado_usuario OWNER TO postgres;

--
-- Name: estado_usuario_id_estado_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_usuario_id_estado_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_usuario_id_estado_usuario_seq OWNER TO postgres;

--
-- Name: estado_usuario_id_estado_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_usuario_id_estado_usuario_seq OWNED BY public.estado_usuario.id_estado_usuario;


--
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura (
    id_factura_cliente integer NOT NULL,
    id_cliente integer,
    id_estado_factura integer,
    total_factura numeric(10,2),
    fecha_factura character varying(150),
    tipo_pago character varying(50),
    direccion character varying(200)
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- Name: factura_id_factura_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factura_id_factura_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.factura_id_factura_cliente_seq OWNER TO postgres;

--
-- Name: factura_id_factura_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factura_id_factura_cliente_seq OWNED BY public.factura.id_factura_cliente;


--
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id_marcas integer NOT NULL,
    marcas character varying(50),
    imagen_marca character varying(100)
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- Name: marcas_id_marcas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_marcas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marcas_id_marcas_seq OWNER TO postgres;

--
-- Name: marcas_id_marcas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_marcas_seq OWNED BY public.marcas.id_marcas;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_productos integer NOT NULL,
    nombre_producto character varying(50),
    precio numeric(10,2),
    cantidad_producto integer,
    imagen character varying(100),
    id_estado_producto integer,
    id_marcas integer,
    id_tipo_producto integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: productos_id_productos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_productos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_productos_seq OWNER TO postgres;

--
-- Name: productos_id_productos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_productos_seq OWNED BY public.productos.id_productos;


--
-- Name: resena; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resena (
    id_resena integer NOT NULL,
    comentario character varying(100),
    clasificacion numeric(10,0),
    estado_comentario character varying(30),
    id_detalle_factura integer
);


ALTER TABLE public.resena OWNER TO postgres;

--
-- Name: resena_id_resena_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resena_id_resena_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.resena_id_resena_seq OWNER TO postgres;

--
-- Name: resena_id_resena_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resena_id_resena_seq OWNED BY public.resena.id_resena;


--
-- Name: tipo_productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_productos (
    id_tipo_producto integer NOT NULL,
    tipo_producto character varying(50),
    promocion integer
);


ALTER TABLE public.tipo_productos OWNER TO postgres;

--
-- Name: tipo_productos_id_tipo_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_productos_id_tipo_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_productos_id_tipo_producto_seq OWNER TO postgres;

--
-- Name: tipo_productos_id_tipo_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_productos_id_tipo_producto_seq OWNED BY public.tipo_productos.id_tipo_producto;


--
-- Name: tipo_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_usuario (
    id_tipo_usuario integer NOT NULL,
    tipo_usuario character varying(50)
);


ALTER TABLE public.tipo_usuario OWNER TO postgres;

--
-- Name: tipo_usuario_id_tipo_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_usuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_usuario_id_tipo_usuario_seq OWNER TO postgres;

--
-- Name: tipo_usuario_id_tipo_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_usuario_id_tipo_usuario_seq OWNED BY public.tipo_usuario.id_tipo_usuario;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(50),
    apellido_usuario character varying(50),
    correo character varying(100),
    usuario character varying(50),
    contrasena_usuario character varying(200),
    id_estado_usuario integer,
    id_tipo_usuario integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: detalle_factura id_detalle_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura ALTER COLUMN id_detalle_factura SET DEFAULT nextval('public.detalle_factura_id_detalle_factura_seq'::regclass);


--
-- Name: estado_cliente id_estado_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_cliente ALTER COLUMN id_estado_cliente SET DEFAULT nextval('public.estado_cliente_id_estado_cliente_seq'::regclass);


--
-- Name: estado_factura id_estado_factura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_factura ALTER COLUMN id_estado_factura SET DEFAULT nextval('public.estado_factura_id_estado_factura_seq'::regclass);


--
-- Name: estado_productos id_estado_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_productos ALTER COLUMN id_estado_producto SET DEFAULT nextval('public.estado_productos_id_estado_producto_seq'::regclass);


--
-- Name: estado_usuario id_estado_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_usuario ALTER COLUMN id_estado_usuario SET DEFAULT nextval('public.estado_usuario_id_estado_usuario_seq'::regclass);


--
-- Name: factura id_factura_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura ALTER COLUMN id_factura_cliente SET DEFAULT nextval('public.factura_id_factura_cliente_seq'::regclass);


--
-- Name: marcas id_marcas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id_marcas SET DEFAULT nextval('public.marcas_id_marcas_seq'::regclass);


--
-- Name: productos id_productos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_productos SET DEFAULT nextval('public.productos_id_productos_seq'::regclass);


--
-- Name: resena id_resena; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resena ALTER COLUMN id_resena SET DEFAULT nextval('public.resena_id_resena_seq'::regclass);


--
-- Name: tipo_productos id_tipo_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_productos ALTER COLUMN id_tipo_producto SET DEFAULT nextval('public.tipo_productos_id_tipo_producto_seq'::regclass);


--
-- Name: tipo_usuario id_tipo_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuario_id_tipo_usuario_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nombre_cliente, apellido_cliente, correo_cliente, usuario_cliente, contrasena_cliente, id_estado_cliente) FROM stdin;
1	Carlos	Marroquin	marro@gmail.com	marro	marroquin123	1
2	Carlos	Miranda	Miranda@gmail.com	miranda	miranda23	2
3	Herbert	Choto	choto@gmail.com	chotito	herbert123	2
4	Miguel	Carranza	Carranza@gmail.com	Carranza15	Miguelito	1
5	Cecilia	Romero	ceci@gmail.com	Cecilia	Romero159	1
6	Alberto	Minero	Alberto@gmail.com	Albertito	Minero	1
7	Dagoberto	Huezo	Huezo@gmail.com	Huezo	Dagobeto	2
8	Ana	Alfaro	AlfaroAna@gmail.com	Anita	Alfaro	2
9	Nathaly	Sorto	Nathy@gmail.com	Nathy	Sorto789	2
10	Carlos	Solorsano	Carlos@gmail.com	Solorsano	545641hola	2
11	Jose	Herrera	Josesito@gmail.com	Jose022	Joseherrera	2
12	Alejandra	Bonilla	Bonilla@gmail.com	Aleuwu	Bonilla202	2
13	Alejandro	Castillo	Alejandro@gmail.com	Castillo45	aleBonilla	2
14	Guillermo	Gonzalez	Memo@gmail,com	Memito	Gonzalez125	1
15	Katherine	Minero	Kathy@gmail.com	Kathita	Minero12	1
16	Orlando	Cisneros	orlandocisneros23@gmail.com	Orcis23	jodertio	3
17	Josue	Reyes	josureyes@gmail.com	josuyes12	lajurawey	3
18	Herbert	Ramírez	Herbertrez@gmail.com	Herbertmirez	mandingo	2
19	Nacho	Vidal	nachovida@gmail.com	nachovidaL	soplanucas	1
20	Elsa	Broso	Elsa_Broso@gmail.com	Elsab	cipoton	1
21	Adalberto	Minero	Adalberto@gmail.com	Adalbertito	comunistasdeshit	3
22	Donald	Trompas	Dtrompas@gmail.com	Misiles24	peleardilla	3
23	Nayic	Pelele	Nalele@gmail.com	Nayic13	golondrinawey	2
24	Nathaly	Majano	NathyMajano@gmail.com	NathyJano	oraleprro	2
25	Jorge	Garcia	Jorcia503@gmail.com	JorgeGarcia	viejolin503	2
26	Jose	Rios	Josesitorios@gmail.com	Joserios022	Joserios	3
27	Alejandra	Bonilla Aguillon	Bonillaguillon@gmail.com	Aleboni	Bonillaguilon202	1
28	Alejandro	Carrillo	Alejandrocarri@gmail.com	AleCarrillo45	alecarrillo	2
29	Armando	Guerra	ArmandoGuerra@gmail,com	ArmaGuerra	culic4g4do23	3
30	Katherine	Alfaro	KathyAlfa@gmail.com	Kathitalfa	alfaro123	3
31	memo	memo	memo123@gmail.com	memo1230	$2y$10$oImuOVpPw/FeANeJPDo0POV5ODht26obl5v4rplFZg.wVgtLYK4Ca	2
\.


--
-- Data for Name: detalle_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_factura (id_detalle_factura, id_factura, precio_comprados, cantidad_comprados, id_productos) FROM stdin;
1	1	11.11	1	1
2	2	22.22	2	2
3	3	33.33	3	3
4	4	44.44	4	4
5	5	55.55	5	5
6	1	11.11	2	1
7	1	22.22	2	2
8	2	33.33	2	1
9	2	44.44	2	2
10	3	55.55	2	1
11	3	66.66	2	2
12	4	77.77	2	1
13	4	88.88	2	2
14	5	99.99	2	1
15	5	100.00	2	2
16	6	111.11	2	1
17	6	122.22	2	2
18	7	133.33	2	1
19	7	144.44	2	2
20	8	155.55	2	1
21	8	166.66	2	2
22	9	177.77	2	1
23	9	188.88	2	2
24	10	199.99	2	1
25	10	200.00	2	2
26	11	211.11	2	1
27	11	222.22	2	2
28	12	233.33	2	1
29	12	244.44	2	2
30	13	255.55	2	1
31	13	266.66	2	2
32	14	277.77	2	1
33	14	288.88	2	2
34	15	299.99	2	1
35	15	300.00	2	2
36	16	311.11	2	1
37	16	322.22	2	2
38	17	233.33	2	1
39	17	244.44	2	2
40	18	255.55	2	1
41	18	266.66	2	2
42	19	277.77	2	1
43	19	288.88	2	2
44	20	299.99	2	1
45	20	300.00	2	2
46	1	11.11	3	1
47	1	22.22	3	2
48	1	22.22	3	3
49	2	33.33	3	1
50	2	44.44	3	2
51	2	44.44	3	3
52	3	55.55	3	1
53	3	66.66	3	2
54	3	66.66	3	3
55	4	77.77	3	1
56	4	88.88	3	2
57	4	77.77	3	3
58	5	99.99	3	1
59	5	100.00	3	2
60	5	100.00	3	3
61	6	111.11	3	1
62	6	122.22	3	2
63	6	122.22	3	3
64	7	133.33	3	1
65	7	144.44	3	2
66	7	144.44	3	3
67	8	155.55	3	1
68	8	166.66	3	2
69	8	166.66	3	3
70	9	177.77	3	1
71	9	188.88	3	2
72	9	188.88	3	3
73	10	199.99	3	1
74	10	200.00	3	2
75	10	199.99	3	3
76	11	211.11	3	1
77	11	222.22	3	2
78	11	222.22	3	3
79	12	233.33	3	1
80	12	244.44	3	2
81	12	244.44	3	3
82	13	255.55	3	1
83	13	266.66	3	2
84	13	266.66	3	3
85	14	277.77	3	1
86	14	288.88	3	2
87	14	288.88	3	3
88	15	299.99	3	1
89	15	300.00	3	2
90	15	300.00	3	3
91	16	311.11	3	1
92	16	322.22	3	2
93	16	311.11	3	3
94	17	233.33	3	1
95	17	244.44	3	2
96	17	244.44	3	3
97	18	255.55	3	1
98	18	266.66	3	2
99	18	266.66	3	3
100	19	277.77	3	1
101	19	288.88	3	2
102	19	277.77	3	3
103	20	299.99	3	1
104	20	300.00	3	2
105	20	299.99	3	3
106	1	11.11	4	1
107	1	22.22	4	2
108	1	22.22	4	3
109	1	22.22	4	4
110	2	33.33	4	1
111	2	44.44	4	2
112	2	44.44	4	3
113	2	44.44	4	4
114	3	55.55	4	1
115	3	66.66	4	2
116	3	66.66	4	3
117	3	66.66	4	4
118	4	77.77	4	1
119	4	88.88	4	2
120	4	88.88	4	3
121	4	77.77	4	4
122	5	99.99	4	1
123	5	100.00	4	2
124	5	100.00	4	3
125	5	100.00	4	4
126	6	111.11	4	1
127	6	122.22	4	2
128	6	122.22	4	3
129	6	122.22	4	4
130	7	133.33	4	1
131	7	144.44	4	2
132	7	144.44	4	3
133	7	144.44	4	4
134	8	155.55	4	1
135	8	166.66	4	2
136	8	166.66	4	3
137	8	166.66	4	4
138	9	177.77	4	1
139	9	188.88	4	2
140	9	188.88	4	3
141	9	188.88	4	4
142	10	199.99	4	1
143	10	200.00	4	2
144	10	199.99	4	3
145	10	200.00	4	4
146	11	211.11	4	1
147	11	222.22	4	2
148	11	222.22	4	3
149	11	222.22	4	4
150	12	233.33	4	1
151	12	244.44	4	2
152	12	244.44	4	3
153	12	244.44	4	4
154	13	255.55	4	1
155	13	266.66	4	2
156	13	266.66	4	3
157	13	266.66	4	4
158	14	277.77	4	1
159	14	288.88	4	2
160	14	288.88	4	3
161	14	288.88	4	4
162	15	299.99	4	1
163	15	300.00	4	2
164	15	300.00	4	3
165	15	300.00	4	4
166	16	311.11	4	1
167	16	322.22	4	2
168	16	311.11	4	3
169	16	311.11	4	4
170	17	233.33	4	1
171	17	244.44	4	2
172	17	244.44	4	3
173	17	244.44	4	4
174	18	255.55	4	1
175	18	266.66	4	2
176	18	266.66	4	3
177	18	266.66	4	4
178	19	277.77	4	1
179	19	288.88	4	2
180	19	277.77	4	3
181	19	277.77	4	4
182	20	299.99	4	1
183	20	300.00	4	2
184	20	299.99	4	3
185	20	299.99	4	4
186	1	11.11	5	1
187	1	22.22	5	2
188	1	22.22	5	3
189	1	22.22	5	4
190	1	22.22	5	5
191	2	33.33	5	1
192	2	44.44	5	2
193	2	44.44	5	3
194	2	44.44	5	4
195	2	44.44	5	5
196	3	55.55	5	1
197	3	66.66	5	2
198	3	66.66	5	3
199	3	66.66	5	4
200	3	66.66	5	5
201	4	77.77	5	1
202	4	88.88	5	2
203	4	88.88	5	3
204	4	77.77	5	4
205	4	77.77	5	5
206	5	99.99	5	1
207	5	100.00	5	2
208	5	100.00	5	3
209	5	100.00	5	4
210	5	100.00	5	5
211	6	111.11	5	1
212	6	122.22	5	2
213	6	122.22	5	3
214	6	122.22	5	4
215	6	122.22	5	5
216	7	133.33	5	1
217	7	144.44	5	2
218	7	144.44	5	3
219	7	144.44	5	4
220	7	144.44	5	5
221	8	155.55	5	1
222	8	166.66	5	2
223	8	166.66	5	3
224	8	166.66	5	4
225	8	166.66	5	5
226	9	177.77	5	1
227	9	188.88	5	2
228	9	188.88	5	3
229	9	188.88	5	4
230	9	188.88	5	5
231	10	199.99	5	1
232	10	200.00	5	2
233	10	199.99	5	3
234	10	200.00	5	4
235	10	200.00	5	5
236	11	211.11	5	1
237	11	222.22	5	2
238	11	222.22	5	3
239	11	222.22	5	4
240	11	222.22	5	5
241	12	233.33	5	1
242	12	244.44	5	2
243	12	244.44	5	3
244	12	244.44	5	4
245	12	244.44	5	5
246	13	255.55	5	1
247	13	266.66	5	2
248	13	266.66	5	3
249	13	266.66	5	4
250	13	266.66	5	5
251	14	277.77	5	1
252	14	288.88	5	2
253	14	288.88	5	3
254	14	288.88	5	4
255	14	288.88	5	5
256	15	299.99	5	1
257	15	300.00	5	2
258	15	300.00	5	3
259	15	300.00	5	4
260	15	300.00	5	5
261	16	311.11	5	1
262	16	322.22	5	2
263	16	311.11	5	3
264	16	311.11	5	4
265	16	311.11	5	5
266	17	233.33	5	1
267	17	244.44	5	2
268	17	244.44	5	3
269	17	244.44	5	4
270	17	244.44	5	5
271	18	255.55	5	1
272	18	266.66	5	2
273	18	266.66	5	3
274	18	266.66	5	4
275	18	266.66	5	5
276	19	277.77	5	1
277	19	288.88	5	2
278	19	277.77	5	3
279	19	277.77	5	4
280	19	277.77	5	5
281	20	299.99	5	1
282	20	300.00	5	2
283	20	299.99	5	3
284	20	299.99	5	4
285	20	299.99	5	5
287	47	11.00	1	23
288	47	11.00	1	11
290	48	11.00	1	23
\.


--
-- Data for Name: estado_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_cliente (id_estado_cliente, estado_cliente) FROM stdin;
1	Activo
2	Inactivo
3	Descontinuado
4	En uso
\.


--
-- Data for Name: estado_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_factura (id_estado_factura, estado_factura) FROM stdin;
1	Pendiente
2	Finalizada
3	En envío
4	Entregada
5	Descartada
\.


--
-- Data for Name: estado_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_productos (id_estado_producto, estado_producto) FROM stdin;
1	Exitencia
2	Agotado
3	En espera
4	Descontinuado
\.


--
-- Data for Name: estado_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_usuario (id_estado_usuario, estado_usuario) FROM stdin;
1	Activo
2	Inactivo
3	Descontinuado
4	En uso
\.


--
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura (id_factura_cliente, id_cliente, id_estado_factura, total_factura, fecha_factura, tipo_pago, direccion) FROM stdin;
1	1	1	11.11	01/01/2020	efectivo	Bicho cerote vení
2	1	2	11.12	01/02/2020	efectivo	Por donde se ponen los bichos
3	1	3	11.13	01/03/2020	efectivo	Bicho cerote vení
4	2	4	22.21	02/01/2020	tarjeta de crédito	Culero que se le quema el arroz
5	2	5	22.22	02/02/2020	tarjeta de crédito	Gran pan con chumpe
6	2	5	22.23	02/03/2020	tarjeta de crédito	Deje de pendejo joven
7	3	4	33.31	03/01/2020	efectivo	Deje de mariconadas
8	3	3	33.32	03/02/2020	efectivo	Roberto el que te deja el...
9	3	3	33.33	03/03/2020	efectivo	Dense verga pues majes
10	4	1	44.41	04/01/2020	tarjeta de crédito	¿Qué decis cerote?
11	4	1	44.42	04/02/2020	tarjeta de crédito	Decimelo en la cara pues
12	4	5	44.43	04/03/2020	tarjeta de crédito	Como dijo schafik: ¡come mierda!
13	5	2	55.51	05/01/2020	efectivo	Entren la ropa cerotes, viene el agua
14	5	2	55.52	05/02/2020	efectivo	A la puta, mucha tarea
15	5	2	55.53	05/03/2020	efectivo	Vaya vaya corranse un pupitre
16	6	3	66.61	06/01/2020	tarjeta de crédito	Vaya ese grupito de alla atras se me separa
17	6	1	66.62	06/02/2020	tarjeta de crédito	Deme su número de carnet
18	6	2	66.63	06/03/2020	tarjeta de crédito	Vaya jovenes, levanten la mano, voy a pasar asistencia
19	7	2	77.71	07/01/2020	efectivo	Pedime 2 de queso
20	7	3	77.72	07/02/2020	efectivo	Llename la botella porfa
21	7	4	77.73	07/03/2020	efectivo	Ah puya si es el toque para tercer ciclo
22	8	5	88.81	08/01/2020	tarjeta de crédito	Hey maje ya viste la nota
23	8	5	88.82	08/02/2020	tarjeta de crédito	Deme su número de carnet, le voy a poner llegada tarde
24	8	5	88.83	08/03/2020	tarjeta de crédito	Hey va pues maje
25	9	2	99.91	09/01/2020	efectivo	¿Quién se está cagando?
26	9	3	99.92	09/02/2020	efectivo	¿Hey maje corre, ya van a tocar?
27	9	4	99.93	09/03/2020	efectivo	¿Puedo ir a sacar unas copias a esto?
28	10	5	100.01	10/01/2020	tarjeta de crédito	Ponele llave a la puerta
29	10	1	100.02	10/02/2020	tarjeta de crédito	Apaga la luz porfa
30	10	2	100.03	10/03/2020	tarjeta de crédito	Ay le das esto a...
31	11	3	111.11	11/01/2020	efectivo	Terceros años adelante
32	11	2	111.12	11/02/2020	efectivo	Jovenes de terceros años...
33	11	4	111.13	11/03/2020	efectivo	Maje corre van a cerrar la puerta
34	12	5	122.21	12/01/2020	tarjeta de crédito	Hey ya vino el micro
35	12	4	122.22	12/02/2020	tarjeta de crédito	Ya tocaron, ¿podemos salir?
36	12	5	122.23	12/03/2020	tarjeta de crédito	Ya tocaron, ¿Salimos profe?
37	13	3	133.31	13/01/2020	efectivo	Vaya jovenes ya estan las notas ingresadas en el sistema
38	13	3	133.32	13/02/2020	efectivo	Jovenes revisen sus notas
39	13	2	133.33	13/03/2020	efectivo	Jovenes mañana se cierra el perfil de...
40	14	2	144.41	14/01/2020	tarjeta de crédito	Tienen de lunes hasta viernes a las 11:59 pm
41	14	4	144.42	14/02/2020	tarjeta de crédito	Vaya presten atención al video
42	14	5	144.43	14/03/2020	tarjeta de crédito	Cierren sus máquinas
43	15	4	155.51	15/01/2020	efectivo	Me presta al joven...
44	15	3	155.52	15/02/2020	efectivo	Buenos dias vengo de parte de la comisión de...
45	15	2	155.53	15/03/2020	efectivo	Gracias y pasen una bonita mañana
46	31	2	11.00	Martes, 24 de Octubre de 2023	Tarjeta de crédito	sisaddsfsfsfdsdsdfsf 
47	31	2	22.00	Miércoles, 25 de Octubre de 2023	En efectivo	asdasdfasddfgdfgdfgdf
48	31	1	\N	\N	\N	\N
\.


--
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id_marcas, marcas, imagen_marca) FROM stdin;
1	Xiaomi	accesorios_carros4.jpg
2	Huawei	accesorios_carros4.jpg
3	Cutequeen	memecito.png
4	HOTOR	memecito.png
5	High Road	memecito.png
6	Super repuestos	memecito.png
7	Grupo Q	memecito.png
8	Interesting car	memecito.png
9	Nonda	memecito.png
10	Bosynoy	memecito.png
11	Bestrix	memecito.png
12	Invisible Glass	memecito.png
13	Staont	memecito.png
14	Tech Tools	memecito.png
15	Perisphere And Trylon Games	memecito.png
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_productos, nombre_producto, precio, cantidad_producto, imagen, id_estado_producto, id_marcas, id_tipo_producto) FROM stdin;
2	Cargador inalambrico	12.50	5	accesorios_carros4.jpg	1	2	3
3	Cargador inalambrico con almohadilla adhesiva	12.50	5	accesorios_carros4.jpg	2	2	3
4	Depositor de cenizas	12.50	5	accesorios_carros4.jpg	2	2	3
5	Luces leds	12.50	5	accesorios_carros4.jpg	2	2	3
6	Tira luces leds	12.50	5	accesorios_carros4.jpg	2	2	3
7	Calentador de tazas	12.50	5	accesorios_carros4.jpg	2	2	3
8	Arrancador de motor	12.50	5	accesorios_carros4.jpg	2	2	3
9	stylus stringer	12.50	5	accesorios_carros4.jpg	2	2	3
10	Cargador inalambrico	12.50	5	accesorios_carros4.jpg	2	2	3
11	Garmin dash car	12.50	5	accesorios_carros4.jpg	1	2	3
12	Handpresso	12.50	5	accesorios_carros4.jpg	2	2	3
13	Router con datos moviles	12.50	5	accesorios_carros4.jpg	2	2	3
14	Bomba de aire	12.50	5	accesorios_carros4.jpg	2	2	3
15	Advertencia de leds	12.50	5	accesorios_carros4.jpg	2	2	3
16	Calentador de ventilador para parabrisas	12.50	5	accesorios_carros4.jpg	2	2	3
17	Bomba de transeferencia de aceite y diesel	12.50	5	accesorios_carros4.jpg	2	2	3
18	Receptor bluetooth	12.50	5	accesorios_carros4.jpg	3	2	3
19	Antideslisante para los neumaticos	12.50	5	accesorios_carros4.jpg	3	1	3
20	Purificador de aire	12.50	5	accesorios_carros4.jpg	2	2	3
21	Bomba de transeferencia de aceite y diesel	12.50	5	accesorios_carros4.jpg	2	2	3
22	Medidor de presion de neumatico	12.50	5	accesorios_carros4.jpg	2	2	3
23	Termometro de ventosa	12.50	5	accesorios_carros4.jpg	1	1	3
24	Ventilador recargable	45.60	20	accesorios_carros4.jpg	4	7	4
25	Aromatizador de baterias	18.75	25	accesorios_carros4.jpg	2	6	5
26	Stickers para parabrisas	20.39	30	accesorios_carros4.jpg	1	15	6
27	Cenizero con encededor	35.75	50	accesorios_carros4.jpg	3	9	7
28	Cama plegable para niño	43.62	15	accesorios_carros4.jpg	2	14	9
29	Mesa plegable	50.50	10	accesorios_carros4.jpg	2	13	9
30	Cenicero con cargador de celular	60.00	40	accesorios_carros4.jpg	3	11	7
31	Stickers brillantes en la oscuridad	45.60	38	accesorios_carros4.jpg	1	9	6
32	Portavasos con cenizero	45.60	45	accesorios_carros4.jpg	4	8	7
33	Ventilador recargable con reloj	50.00	35	accesorios_carros4.jpg	3	10	4
1	Almohadilla Adhesiva	12.50	5	653b357d3bdfe.png	2	2	3
\.


--
-- Data for Name: resena; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resena (id_resena, comentario, clasificacion, estado_comentario, id_detalle_factura) FROM stdin;
1	es un buen producto chavales	5	Activo	1
2	es un mal producto chavales	1	Inactivo	2
3	a tomar por locu con este artefacto	2	Activo	3
4	lo recomiendo para ciegos porque no veran que mal producto es :v	3	Inactivo	4
5	Mira que cipote... y es todo para ti.	4	Activo	5
6	El mozote	5	Activo	1
7	China tuvo la culpa	1	Inactivo	2
8	Apu se va de los simpsons	2	Activo	3
9	Nunca te olvidaremos nuegado	3	Inactivo	4
10	Que viva el coronavirus	4	Activo	5
11	El 9/11 fue un montaje	5	Activo	1
12	Como diria mi gato: guaf	1	Inactivo	2
13	Qué bonitas piernas... ¿A qué hora abren?	2	Activo	3
14	Miren nada más, don comedia	3	Inactivo	4
15	Mátame si no te sirvo, pero primero pruébame.	4	Activo	5
16	Paco flores no murió	5	Activo	1
17	Bonitos pantalones, quedarían muy bien en el suelo de mi dormitorio.	1	Inactivo	2
18	El médico me prohibió levantar cosas pesadas.. ¿Me ayudas a hacer pipí?	2	Activo	3
19	Si 2+2=4 ¿porque ella no me ama?	3	Inactivo	4
20	¿Te importa si compartimos el taxi hacia mi casa?	4	Activo	5
21	chua dijo el bebé	5	Activo	1
22	Los ogros son como las cebollas...	1	Inactivo	2
23	¿Cómo se dice prostituta en japonés?Sinochingo nocomo.	2	Activo	3
24	- ¿Cómo se llama la madre del topo?.- Topota madre.	3	Inactivo	4
25	No es lo mismo un metro de encaje negro que que un negro te encaje un metro.	4	Activo	5
26	Ya regreso niños iré a comprar cigarros	5	Activo	1
27	¿Que le dice una foca a su madre? -I love you, mother foca	1	Inactivo	2
28	Devuelvan lo robado	2	Activo	3
29	¿Como se dice diarrea en africano?, Avunda lakaka	3	Inactivo	4
30	Masacraste a mi familia mal parido ijopu	4	Activo	5
\.


--
-- Data for Name: tipo_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_productos (id_tipo_producto, tipo_producto, promocion) FROM stdin;
1	Cargadores para automoviles	15
2	Cafeteras moviles	10
3	Almohadilla adhesiva	12
4	Ventiladores	23
5	Aromatizantes	10
6	Decorativos	20
7	Cenizeros	15
8	Cojines	10
9	Linternas	10
10	plegables	0
\.


--
-- Data for Name: tipo_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_usuario (id_tipo_usuario, tipo_usuario) FROM stdin;
1	SuperAdministrador
2	Administrador
3	Empleado
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nombre_usuario, apellido_usuario, correo, usuario, contrasena_usuario, id_estado_usuario, id_tipo_usuario) FROM stdin;
2	Alicia	Carmen	202005212@gmail.com	AC2020	20205648	2	1
3	Eric	Dominguez	20201212@gmail.com	ED2020	20205821	2	1
4	Willian	Cortez	2020112@gmail.com	WC202323	20207484	1	2
5	Jhansi	Aguilar	212112@gmail.com	JA202212	20204951	2	2
6	Guillermo	Peréz	212232@gmail.com	GP202124	20201234	1	3
7	Douglas Elian	Cortez Salmeron	21223BLA@gmail.com	Douglascortez	decssced	2	3
8	Guillermo andres	Minero Alfaro	212232LE@gmail.com	guillermoalfaro	gamaamag	1	3
9	Bryan Eliseo	De la Cruz Amaya	212232LIK@gmail.com	bryancruzito	becaaceb	2	3
10	Wilmer David	Carrillo Ortega	212232COCK@gmail.com	wilmercarrillo	wdcoocdw	1	3
11	Juan Jose	Blanco Reyes	212232w@gmail.com	juanreyes	jjbrrbjj	2	3
12	Giovani	Herrera	212232x@gmail.com	GH2020	20209423	2	1
13	Alicia	Guido	212232m@gmail.com	AG2020	20204912	3	3
14	Eric	Cuellar	Maricoxv2@gmail.com	EC2020	2020296	2	3
15	Willian	Cortez	Maricos2@gmail.com	WC2020	20201295	3	2
16	Jhansi	Aguilar	Maricos123@gmail.com	JA2020	20204222	3	3
17	Guillermo	Peréz	Maricos321@gmail.com	GP2020	20201111	1	1
18	Douglas Eduardo	Carrillo Salvador	Maricos007@gmail.com	DouglasCarrillo	DECSDECS	2	2
19	Guillermo josue	Martínez Aguillón	Maricos001@gmail.com	guillermoaguillon	GAMAGAMA	2	1
20	Bryan Elias	Cruz Anaya	Maricos002@gmail.com	bryancruz	BEBECACA	1	2
21	William David	Carrillo Orellana	Maricos003@gmail.com	wilmercarrillo13	WDCOWDCO	1	2
22	Julio Jeremias	Benitez Romero	Maricos004@gmail.com	julioromero	JJBJJJBJ	1	3
23	Alma Marcela	Gozo	Maricos005@gmail.com	AM2020	20200325	2	3
24	Ester	Mosobicho	Maricos006@gmail.com	EM2020	20204229	3	3
25	Omar	Icón	Maricos008@gmail.com	OI2020	20201231	1	1
26	Casimiro	Lateta	Maricos009@gmail.com	CL2020	20204239	2	2
27	Lucila	Tanga	Maricos010@gmail.com	LT2020	20204289	1	2
28	Debora Dora	De Cabezas	Maricos012@gmail.com	DC2020	20204271	2	1
29	JORGE	NITALES	Maricos018@gmail.com	JN2020	20201247	2	1
30	Elsa	Porico	Maricos013@gmail.com	EP2020	20204829	3	1
1	Carlos	Herrera	20200523@gmail.com	CH202021	$2y$10$JdjAju.2nXuB3hwCLjqiWuSFKP7eq5RXtwTIzawXY875QpxfYNPBu	2	1
31	Guillermo	Minero	mineromemo429@gmail.com	iaminero	$2y$10$H5a7foZeHyEcyEAtc3WtSely7Eiljq0keT0R4XEeba5xdxOQrEZ8q	1	2
32	Oscar	Minero	oscarminero@gmail.com	oaminero	$2y$10$hIc4YIdjkba9WoMmLS2kWeVCyE0HzRGlolVVr2n5yAp2qmXHZDUn6	1	1
33	Cristian	Peña	cristianpena@gmail.com	chvlpena	$2y$10$TjJUuWhpizJnbtgWKO0uIeTSwefZ10DUuUJHy5SdhzrHZi9SITOJa	1	1
\.


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 31, true);


--
-- Name: detalle_factura_id_detalle_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_factura_id_detalle_factura_seq', 290, true);


--
-- Name: estado_cliente_id_estado_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_cliente_id_estado_cliente_seq', 4, true);


--
-- Name: estado_factura_id_estado_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_factura_id_estado_factura_seq', 5, true);


--
-- Name: estado_productos_id_estado_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_productos_id_estado_producto_seq', 4, true);


--
-- Name: estado_usuario_id_estado_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_usuario_id_estado_usuario_seq', 5, true);


--
-- Name: factura_id_factura_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_id_factura_cliente_seq', 48, true);


--
-- Name: marcas_id_marcas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_marcas_seq', 16, true);


--
-- Name: productos_id_productos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_productos_seq', 33, true);


--
-- Name: resena_id_resena_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resena_id_resena_seq', 30, true);


--
-- Name: tipo_productos_id_tipo_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_productos_id_tipo_producto_seq', 10, true);


--
-- Name: tipo_usuario_id_tipo_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_usuario_seq', 3, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 33, true);


--
-- Name: cliente cliente_correo_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_correo_cliente_key UNIQUE (correo_cliente);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: cliente cliente_usuario_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_usuario_cliente_key UNIQUE (usuario_cliente);


--
-- Name: detalle_factura detalle_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle_factura);


--
-- Name: estado_cliente estado_cliente_estado_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_cliente
    ADD CONSTRAINT estado_cliente_estado_cliente_key UNIQUE (estado_cliente);


--
-- Name: estado_cliente estado_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_cliente
    ADD CONSTRAINT estado_cliente_pkey PRIMARY KEY (id_estado_cliente);


--
-- Name: estado_factura estado_factura_estado_factura_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_factura
    ADD CONSTRAINT estado_factura_estado_factura_key UNIQUE (estado_factura);


--
-- Name: estado_factura estado_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_factura
    ADD CONSTRAINT estado_factura_pkey PRIMARY KEY (id_estado_factura);


--
-- Name: estado_productos estado_productos_estado_producto_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_productos
    ADD CONSTRAINT estado_productos_estado_producto_key UNIQUE (estado_producto);


--
-- Name: estado_productos estado_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_productos
    ADD CONSTRAINT estado_productos_pkey PRIMARY KEY (id_estado_producto);


--
-- Name: estado_usuario estado_usuario_estado_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_usuario
    ADD CONSTRAINT estado_usuario_estado_usuario_key UNIQUE (estado_usuario);


--
-- Name: estado_usuario estado_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_usuario
    ADD CONSTRAINT estado_usuario_pkey PRIMARY KEY (id_estado_usuario);


--
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura_cliente);


--
-- Name: marcas marcas_marcas_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_marcas_key UNIQUE (marcas);


--
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id_marcas);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_productos);


--
-- Name: resena resena_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resena
    ADD CONSTRAINT resena_pkey PRIMARY KEY (id_resena);


--
-- Name: tipo_productos tipo_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_productos
    ADD CONSTRAINT tipo_productos_pkey PRIMARY KEY (id_tipo_producto);


--
-- Name: tipo_productos tipo_productos_tipo_producto_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_productos
    ADD CONSTRAINT tipo_productos_tipo_producto_key UNIQUE (tipo_producto);


--
-- Name: tipo_usuario tipo_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_usuario);


--
-- Name: tipo_usuario tipo_usuario_tipo_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_tipo_usuario_key UNIQUE (tipo_usuario);


--
-- Name: usuario usuario_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_correo_key UNIQUE (correo);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: usuario usuario_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_usuario_key UNIQUE (usuario);


--
-- Name: cliente cliente_id_estado_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_id_estado_cliente_fkey FOREIGN KEY (id_estado_cliente) REFERENCES public.estado_cliente(id_estado_cliente);


--
-- Name: detalle_factura detalle_factura_id_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura_cliente);


--
-- Name: detalle_factura detalle_factura_id_productos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_productos_fkey FOREIGN KEY (id_productos) REFERENCES public.productos(id_productos);


--
-- Name: factura factura_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: factura factura_id_estado_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_estado_factura_fkey FOREIGN KEY (id_estado_factura) REFERENCES public.estado_factura(id_estado_factura);


--
-- Name: productos productos_id_estado_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_estado_producto_fkey FOREIGN KEY (id_estado_producto) REFERENCES public.estado_productos(id_estado_producto);


--
-- Name: productos productos_id_marcas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_marcas_fkey FOREIGN KEY (id_marcas) REFERENCES public.marcas(id_marcas);


--
-- Name: productos productos_id_tipo_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_tipo_producto_fkey FOREIGN KEY (id_tipo_producto) REFERENCES public.tipo_productos(id_tipo_producto);


--
-- Name: resena resena_id_detalle_factura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resena
    ADD CONSTRAINT resena_id_detalle_factura_fkey FOREIGN KEY (id_detalle_factura) REFERENCES public.detalle_factura(id_detalle_factura);


--
-- Name: usuario usuario_id_estado_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_estado_usuario_fkey FOREIGN KEY (id_estado_usuario) REFERENCES public.estado_usuario(id_estado_usuario);


--
-- Name: usuario usuario_id_tipo_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipo_usuario(id_tipo_usuario);


--
-- PostgreSQL database dump complete
--


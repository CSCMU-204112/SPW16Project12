--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: labtop; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE labtop (
    manufacturer character varying(20),
    productid character varying(15) NOT NULL,
    processor text,
    ram text,
    hard_disk text,
    graphics_processing_unit text,
    describe text,
    stock integer,
    price integer
);


ALTER TABLE public.labtop OWNER TO postgres;

--
-- Name: user_data; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_data (
    email character varying(50) NOT NULL,
    password text,
    firstname text,
    lastname text,
    tel text,
    address text,
    verify boolean,
    productid character varying(15)
);


ALTER TABLE public.user_data OWNER TO postgres;

--
-- Data for Name: labtop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY labtop (manufacturer, productid, processor, ram, hard_disk, graphics_processing_unit, describe, stock, price) FROM stdin;
ACER	10001	Intel Core i5-5200U (2.20GHz Turbo Boost up to 2.70GHz) 3MB L3 Cache	4 GB DDR3	1 TB 5400 RPM	nVidia GeForce GT 820M	\N	10	499
ACER	10002	Intel Core i5-3317U (1.70GHz Turbo Boost up to 2.60GHz) 3MB L3 Cache	4 GB DDR3	256GB SSD	Intel HD Graphics 4000	\N	7	499
ACER	10003	Intel Core i7-4500U (1.80GHz Turbo Boost up to 3.00GHz) 4MB L3 Cache	8 GB DDR3	1 TB 5400 RPM	nVidia GeForce GT 750M	\N	4	499
APPLE	20001	Intel Core i7 Quad-core 2.5GHz Turbo Boost 3.7GHz	DDR3L 1600MHz 16GB	512GB	Intel Iris Pro Graphics	\N	8	599
APPLE	20002	Intel Core i7 Quad-core 2.2GHz Turbo Boost 3.4GHz	DDR3L 1600MHz 16GB	256GB	Intel Iris Pro Graphics	\N	4	549
APPLE	20003	Intel Core i7 Quad-core 2.5GHz Turbo Boost 3.7GHz	DDR3L 1600MHz 16GB	256GB	Intel Iris Pro Graphics	\N	5	579
ASUS	30001	Intel Atom Z3775 (1.46 - 2.39 GHz, 2M L2Cache)	2 GB DDR3	Disk500 GB 5400 RPM + 32 GB SSD	Intel HD Graphics	\N	6	399
ASUS	30002	Intel Core i7-5500U (2.40 GHz, 4MB L3 Cache, up to 3.00 GHz)	8 GB DDR3L	Disk256 GB SSD	Intel HD Graphics	\N	4	439
ASUS	30003	Intel Core i7-6700HQ (2.60 GHz, 6 MB L3 Cache, up to 3.50 GHz)	4 GB DDR4	Disk1 TB 7200 RPM + 128 GB	NVIDIA GeForce GTX 950M	\N	0	499
DELL	40001	Intel Core i5-4210U (1.70GHz Turbo Boost up to 2.70GHz) 3MB L3 Cache	4 GB DDR3	500 GB 5400 RPM	nVidia GeForce GT 740M	\N	5	429
DELL	40002	Intel Core i5-6200U 2.30 GHz with Intel Turbo Boost Technology up to 2.80 GHz	8GB LPDDR3 1866 MHz	128GB SSD	Intel HD Graphics 520	\N	2	389
DELL	40003	Intel Core i7-4712HQ (2.30GHz Turbo Boost up to 3.30GHz) 6MB L3 Cache	16 GB DDR3	1 TB 5400 RPM + 32 GB SSD	nVidia GeForce GT 750M	\N	1	419
HP	50001	Intel Core i5-5200U (2.20GHz Turbo Boost up to 2.70GHz) 3MB L3 Cache	4 GB DDR3	1 TB 5400 RPM + 8 GB SSD	nVidia GeForce GT 840M	\N	4	459
HP	50002	Intel Core i7-6700HQ (2.60GHz Turbo Boost up to 3.50GHz) 6MB L3 Cache	8 GB DDR3	1 TB 5400 RPM + 128 GB SSD	nVidia GeForce GTX 950M	\N	5	499
HP	50003	Intel Celeron N2840 (2.16GHz, 1MB L3 Cache)	2 GB DDR3	32 GB	Intel HD Graphics	\N	2	199
LENOVO	60001	Intel Core i7-3630QM (2.40GHz Turbo Boost up to 3.40GHz) 6MB L3 Cache	8 GB DDR3	1 TB 5400 RPM	nVidia GeForce GT 650M	\N	4	399
LENOVO	60002	Intel Core i7-3632M (2.20GHz Turbo Boost up to 3.20GHz) 6MB L3 Cache	4 GB DDR3	1 TB 5400 RPM	nVidia GeForce GT 640M	\N	4	419
LENOVO	60003	Intel Core i7-5500U (2.40GHz Turbo Boost up to 3.00GHz) 4MB L3 Cache	8 GB DDR3	1 TB 5400 RPM	AMD Radeon R9 M375	\N	4	459
MICROSOFT	70001	Intel Core i5-6300U (2.4 to 3.0 GHz)	4GB	SSD : 128GB	Intel HD Graphics 520	\N	2	399
MICROSOFT	70002	Intel Core i5-6300U (2.4 to 3.0 GHz)	8GB	SSD : 256GB	Intel HD Graphics 520	\N	1	449
SAMSUNG	80001	Intel Core i5-3317U (1.70 GHz, 3 MB L3 Cache, up to 2.60 GHz)	4 GB DDR3	500 GB 5400 RPM + 24 GB SSD	Intel HD Graphics 4000	\N	3	400
SAMSUNG	80002	Intel Core i3 3120M 2.5GHz	4 GB DDR3	500GB 5400 PRM	nVidia GeForce GT 710M	\N	0	439
SAMSUNG	80003	Core i5 2467M 1.60GHz	4 GB DDR3	SSD: 128GB	Intel HD Graphics 3000	\N	0	379
SONY	90001	Core i3 380M 2.53GHz	4 GB DDR3	320GB	ATI Mobility Radeon HD5470	\N	2	389
SONY	90002	Core i7 2620M 2.70GHz	4 GB DDR3	500GB 7200 RPM	AMD Radeon HD 6470M	\N	0	429
SONY	90003	Core i3 2310M 2.10GHz	6 GB DDR3	500GB 5400 RPM	AMD Radeon HD 6470M	\N	1	399
TOSHIBA	11001	Core i7 740QM 1.73GHz	4 GB DDR3	640GB	nVidia GeForce GT330M	\N	4	349
TOSHIBA	11002	Core i5 3210M (2.50 GHz up to 3.10 GHz)	4 GB DDR3	640GB	AMD Radeon HD 7670M	\N	2	399
TOSHIBA	11003	Core i7 3632QM (2.20GHz up to 3.20GHz)	4 GB DDR3	750GB	AMD Radeon HD 7670M	\N	0	449
\.


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_data (email, password, firstname, lastname, tel, address, verify, productid) FROM stdin;
wollraphong@gmail.com	10321032	wollraphong	teeradetpitak	0852715963	in this world	t	\N
\.


--
-- Name: labtop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY labtop
    ADD CONSTRAINT labtop_pkey PRIMARY KEY (productid);


--
-- Name: user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (email);


--
-- Name: user_data_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_data
    ADD CONSTRAINT user_data_productid_fkey FOREIGN KEY (productid) REFERENCES labtop(productid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


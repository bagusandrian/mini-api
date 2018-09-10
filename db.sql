--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: mini_api
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO mini_api;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: public; Owner: mini_api
--

CREATE TABLE products (
    name text NOT NULL,
    price numeric NOT NULL,
    tax_code_id integer NOT NULL,
    id bigint DEFAULT nextval('products_id_seq'::regclass) NOT NULL
);


ALTER TABLE products OWNER TO mini_api;

--
-- Name: tax_code_id_seq; Type: SEQUENCE; Schema: public; Owner: mini_api
--

CREATE SEQUENCE tax_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tax_code_id_seq OWNER TO mini_api;

--
-- Name: tax_code; Type: TABLE; Schema: public; Owner: mini_api
--

CREATE TABLE tax_code (
    id integer DEFAULT nextval('tax_code_id_seq'::regclass) NOT NULL,
    type text NOT NULL
);


ALTER TABLE tax_code OWNER TO mini_api;

--
-- Name: transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: mini_api
--

CREATE SEQUENCE transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transaction_id_seq OWNER TO mini_api;

--
-- Name: transaction; Type: TABLE; Schema: public; Owner: mini_api
--

CREATE TABLE transaction (
    id bigint DEFAULT nextval('transaction_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    transaction_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE transaction OWNER TO mini_api;

--
-- Name: transaction_item_id_seq; Type: SEQUENCE; Schema: public; Owner: mini_api
--

CREATE SEQUENCE transaction_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transaction_item_id_seq OWNER TO mini_api;

--
-- Name: transaction_item; Type: TABLE; Schema: public; Owner: mini_api
--

CREATE TABLE transaction_item (
    id bigint DEFAULT nextval('transaction_item_id_seq'::regclass) NOT NULL,
    transaction_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer DEFAULT 0 NOT NULL
);


ALTER TABLE transaction_item OWNER TO mini_api;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: mini_api
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO mini_api;

--
-- Name: users; Type: TABLE; Schema: public; Owner: mini_api
--

CREATE TABLE users (
    id bigint DEFAULT nextval('users_id_seq'::regclass) NOT NULL,
    name text NOT NULL
);


ALTER TABLE users OWNER TO mini_api;

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: mini_api
--

INSERT INTO products VALUES ('Big Mac', 1000, 1, 8);
INSERT INTO products VALUES ('Lucky Stretch', 1000, 2, 7);
INSERT INTO products VALUES ('Movie', 150, 3, 9);
INSERT INTO products VALUES ('product new', 50, 3, 10);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mini_api
--

SELECT pg_catalog.setval('products_id_seq', 10, true);


--
-- Data for Name: tax_code; Type: TABLE DATA; Schema: public; Owner: mini_api
--

INSERT INTO tax_code VALUES (1, 'food');
INSERT INTO tax_code VALUES (2, 'tobacco');
INSERT INTO tax_code VALUES (3, 'entertainment');


--
-- Name: tax_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mini_api
--

SELECT pg_catalog.setval('tax_code_id_seq', 3, true);


--
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: mini_api
--

INSERT INTO transaction VALUES (2, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (3, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (4, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (5, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (6, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (7, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (8, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (9, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (10, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (11, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (12, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (13, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (14, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (15, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (16, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (17, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (18, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (19, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (20, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (21, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (22, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (23, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (24, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (25, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (26, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (27, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (28, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (29, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (30, 1, '2018-09-10 00:00:00');
INSERT INTO transaction VALUES (31, 1, '2018-09-10 22:52:50.796346');


--
-- Name: transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mini_api
--

SELECT pg_catalog.setval('transaction_id_seq', 31, true);


--
-- Data for Name: transaction_item; Type: TABLE DATA; Schema: public; Owner: mini_api
--

INSERT INTO transaction_item VALUES (2, 2, 7, 2);
INSERT INTO transaction_item VALUES (3, 2, 8, 1);
INSERT INTO transaction_item VALUES (4, 2, 9, 10);
INSERT INTO transaction_item VALUES (5, 3, 7, 2);
INSERT INTO transaction_item VALUES (6, 3, 8, 1);
INSERT INTO transaction_item VALUES (7, 3, 9, 10);
INSERT INTO transaction_item VALUES (8, 4, 7, 2);
INSERT INTO transaction_item VALUES (9, 4, 8, 1);
INSERT INTO transaction_item VALUES (10, 4, 9, 10);
INSERT INTO transaction_item VALUES (11, 5, 7, 2);
INSERT INTO transaction_item VALUES (12, 5, 8, 1);
INSERT INTO transaction_item VALUES (13, 5, 9, 10);
INSERT INTO transaction_item VALUES (14, 6, 7, 2);
INSERT INTO transaction_item VALUES (15, 6, 8, 1);
INSERT INTO transaction_item VALUES (16, 6, 9, 10);
INSERT INTO transaction_item VALUES (17, 7, 7, 2);
INSERT INTO transaction_item VALUES (18, 7, 8, 1);
INSERT INTO transaction_item VALUES (19, 7, 9, 10);
INSERT INTO transaction_item VALUES (20, 8, 7, 2);
INSERT INTO transaction_item VALUES (21, 8, 8, 1);
INSERT INTO transaction_item VALUES (22, 8, 9, 10);
INSERT INTO transaction_item VALUES (23, 9, 7, 2);
INSERT INTO transaction_item VALUES (24, 9, 8, 1);
INSERT INTO transaction_item VALUES (25, 9, 9, 10);
INSERT INTO transaction_item VALUES (26, 10, 7, 2);
INSERT INTO transaction_item VALUES (27, 10, 8, 1);
INSERT INTO transaction_item VALUES (28, 10, 9, 10);
INSERT INTO transaction_item VALUES (29, 11, 7, 2);
INSERT INTO transaction_item VALUES (30, 11, 8, 1);
INSERT INTO transaction_item VALUES (31, 11, 9, 10);
INSERT INTO transaction_item VALUES (32, 12, 7, 2);
INSERT INTO transaction_item VALUES (33, 12, 8, 1);
INSERT INTO transaction_item VALUES (34, 12, 9, 10);
INSERT INTO transaction_item VALUES (35, 13, 7, 2);
INSERT INTO transaction_item VALUES (36, 13, 8, 1);
INSERT INTO transaction_item VALUES (37, 13, 9, 10);
INSERT INTO transaction_item VALUES (38, 14, 7, 2);
INSERT INTO transaction_item VALUES (39, 14, 8, 1);
INSERT INTO transaction_item VALUES (40, 14, 9, 10);
INSERT INTO transaction_item VALUES (41, 15, 7, 2);
INSERT INTO transaction_item VALUES (42, 15, 8, 1);
INSERT INTO transaction_item VALUES (43, 15, 9, 10);
INSERT INTO transaction_item VALUES (44, 16, 7, 2);
INSERT INTO transaction_item VALUES (45, 16, 8, 1);
INSERT INTO transaction_item VALUES (46, 16, 9, 10);
INSERT INTO transaction_item VALUES (47, 17, 7, 2);
INSERT INTO transaction_item VALUES (48, 17, 8, 1);
INSERT INTO transaction_item VALUES (49, 17, 9, 10);
INSERT INTO transaction_item VALUES (50, 18, 7, 2);
INSERT INTO transaction_item VALUES (51, 18, 8, 1);
INSERT INTO transaction_item VALUES (52, 18, 9, 10);
INSERT INTO transaction_item VALUES (53, 19, 7, 2);
INSERT INTO transaction_item VALUES (54, 19, 8, 1);
INSERT INTO transaction_item VALUES (55, 19, 9, 10);
INSERT INTO transaction_item VALUES (56, 20, 7, 2);
INSERT INTO transaction_item VALUES (57, 20, 8, 1);
INSERT INTO transaction_item VALUES (58, 20, 9, 10);
INSERT INTO transaction_item VALUES (59, 21, 7, 2);
INSERT INTO transaction_item VALUES (60, 21, 8, 1);
INSERT INTO transaction_item VALUES (61, 21, 9, 10);
INSERT INTO transaction_item VALUES (62, 22, 7, 2);
INSERT INTO transaction_item VALUES (63, 22, 8, 1);
INSERT INTO transaction_item VALUES (64, 22, 9, 10);
INSERT INTO transaction_item VALUES (65, 23, 7, 2);
INSERT INTO transaction_item VALUES (66, 23, 8, 1);
INSERT INTO transaction_item VALUES (67, 23, 9, 10);
INSERT INTO transaction_item VALUES (68, 24, 7, 2);
INSERT INTO transaction_item VALUES (69, 24, 8, 1);
INSERT INTO transaction_item VALUES (70, 24, 9, 10);
INSERT INTO transaction_item VALUES (71, 25, 7, 2);
INSERT INTO transaction_item VALUES (72, 25, 8, 1);
INSERT INTO transaction_item VALUES (73, 25, 9, 10);
INSERT INTO transaction_item VALUES (74, 26, 7, 2);
INSERT INTO transaction_item VALUES (75, 26, 8, 1);
INSERT INTO transaction_item VALUES (76, 26, 9, 10);
INSERT INTO transaction_item VALUES (77, 27, 7, 2);
INSERT INTO transaction_item VALUES (78, 27, 8, 1);
INSERT INTO transaction_item VALUES (79, 27, 9, 10);
INSERT INTO transaction_item VALUES (80, 28, 7, 2);
INSERT INTO transaction_item VALUES (81, 28, 8, 1);
INSERT INTO transaction_item VALUES (82, 28, 9, 10);
INSERT INTO transaction_item VALUES (83, 29, 7, 2);
INSERT INTO transaction_item VALUES (84, 29, 8, 1);
INSERT INTO transaction_item VALUES (85, 29, 9, 10);
INSERT INTO transaction_item VALUES (86, 30, 7, 2);
INSERT INTO transaction_item VALUES (87, 30, 8, 1);
INSERT INTO transaction_item VALUES (88, 30, 9, 10);
INSERT INTO transaction_item VALUES (89, 31, 7, 2);
INSERT INTO transaction_item VALUES (90, 31, 8, 1);
INSERT INTO transaction_item VALUES (91, 31, 9, 10);


--
-- Name: transaction_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mini_api
--

SELECT pg_catalog.setval('transaction_item_id_seq', 91, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mini_api
--

INSERT INTO users VALUES (1, 'user_test');
INSERT INTO users VALUES (3, 'test post');
INSERT INTO users VALUES (4, 'test post');
INSERT INTO users VALUES (5, 'test post');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mini_api
--

SELECT pg_catalog.setval('users_id_seq', 5, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: transaction_item transaction_item_pkey; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY transaction_item
    ADD CONSTRAINT transaction_item_pkey PRIMARY KEY (id);


--
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);


--
-- Name: tax_code unique_id; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY tax_code
    ADD CONSTRAINT unique_id PRIMARY KEY (id);


--
-- Name: tax_code unique_type; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY tax_code
    ADD CONSTRAINT unique_type UNIQUE (type);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: transaction_item lnk_products_transaction_item; Type: FK CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY transaction_item
    ADD CONSTRAINT lnk_products_transaction_item FOREIGN KEY (product_id) REFERENCES products(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: products lnk_tax_code_products; Type: FK CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY products
    ADD CONSTRAINT lnk_tax_code_products FOREIGN KEY (tax_code_id) REFERENCES tax_code(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transaction_item lnk_transaction_transaction_item; Type: FK CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY transaction_item
    ADD CONSTRAINT lnk_transaction_transaction_item FOREIGN KEY (transaction_id) REFERENCES transaction(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transaction lnk_users_transaction; Type: FK CONSTRAINT; Schema: public; Owner: mini_api
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT lnk_users_transaction FOREIGN KEY (user_id) REFERENCES users(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


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


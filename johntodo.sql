toc.dat                                                                                             0000600 0004000 0002000 00000006341 14317333744 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           ;            	    z           ebdb    13.7    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16397    ebdb    DATABASE     Y   CREATE DATABASE ebdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE ebdb;
                postgres    false                    0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    3         �            1259    16411 	   godransom    TABLE     4   CREATE TABLE public.godransom (
    message text
);
    DROP TABLE public.godransom;
       public         heap    postgres    false         �            1259    16417    todoJohn    TABLE     i   CREATE TABLE public."todoJohn" (
    todo_id integer NOT NULL,
    description character varying(255)
);
    DROP TABLE public."todoJohn";
       public         heap    postgres    false         �            1259    16420    todo_todo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.todo_todo_id_seq;
       public          postgres    false    201                    0    0    todo_todo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public."todoJohn".todo_id;
          public          postgres    false    202         �           2604    16422    todoJohn todo_id    DEFAULT     r   ALTER TABLE ONLY public."todoJohn" ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);
 A   ALTER TABLE public."todoJohn" ALTER COLUMN todo_id DROP DEFAULT;
       public          postgres    false    202    201                   0    16411 	   godransom 
   TABLE DATA           ,   COPY public.godransom (message) FROM stdin;
    public          postgres    false    200       3847.dat           0    16417    todoJohn 
   TABLE DATA           :   COPY public."todoJohn" (todo_id, description) FROM stdin;
    public          postgres    false    201       3848.dat            0    0    todo_todo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.todo_todo_id_seq', 54, true);
          public          postgres    false    202         �           2606    16424    todoJohn todo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."todoJohn"
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);
 >   ALTER TABLE ONLY public."todoJohn" DROP CONSTRAINT todo_pkey;
       public            postgres    false    201                                                                                                                                                                                                                                                                                                       3847.dat                                                                                            0000600 0004000 0002000 00000001117 14317333744 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        To recover your databases and stop any leaks, visit godransmxdz6jsfoumrecl4b4gaulqwfwbzksjb26dj6tiajug4ll2ad.onion and type in this unique token: 01GEHK2ER9EETBKBGSK36CNYG9 and pay the required amount of Bitcoin to get it back. All of your databases are downloaded and backed up on our servers. If we don't receive payment in the next 15 days, we will sell your database to the highest bidder or use it for our own purposes instead. To access this link, you must use Tor Browser, which is available for https://www.torproject.org/download/ and is available for Windows, Mac, and Linux.
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                 3848.dat                                                                                            0000600 0004000 0002000 00000000315 14317333744 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        32	Linked in
33	Javascript recap
34	React Recap
35	CSS advanced class
36	Typescript class
37	git class
38	AWS Dev Cert
46	React context
47	Pack
48	iPad downloads
54	Press editor training and cleanup 
\.


                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000006347 14317333744 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 14.5

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

DROP DATABASE ebdb;
--
-- Name: ebdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ebdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE ebdb OWNER TO postgres;

\connect ebdb

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
-- Name: godransom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.godransom (
    message text
);


ALTER TABLE public.godransom OWNER TO postgres;

--
-- Name: todoJohn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."todoJohn" (
    todo_id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public."todoJohn" OWNER TO postgres;

--
-- Name: todo_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_todo_id_seq OWNER TO postgres;

--
-- Name: todo_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public."todoJohn".todo_id;


--
-- Name: todoJohn todo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."todoJohn" ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);


--
-- Data for Name: godransom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.godransom (message) FROM stdin;
\.
COPY public.godransom (message) FROM '$$PATH$$/3847.dat';

--
-- Data for Name: todoJohn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."todoJohn" (todo_id, description) FROM stdin;
\.
COPY public."todoJohn" (todo_id, description) FROM '$$PATH$$/3848.dat';

--
-- Name: todo_todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todo_todo_id_seq', 54, true);


--
-- Name: todoJohn todo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."todoJohn"
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
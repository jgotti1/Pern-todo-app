PGDMP     %                     {            railway    13.2    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17471    railway    DATABASE     [   CREATE DATABASE railway WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE railway;
                postgres    false                        3079    16927    timescaledb 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;
    DROP EXTENSION timescaledb;
                   false            �           0    0    EXTENSION timescaledb    COMMENT     i   COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data';
                        false    2            �            1259    17488    todo    TABLE     c   CREATE TABLE public.todo (
    todo_id integer NOT NULL,
    description character varying(255)
);
    DROP TABLE public.todo;
       public         heap    postgres    false            �            1259    17491    todo_todo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.todo_todo_id_seq;
       public          postgres    false    247            �           0    0    todo_todo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public.todo.todo_id;
          public          postgres    false    248            �           2604    17493    todo todo_id    DEFAULT     l   ALTER TABLE ONLY public.todo ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);
 ;   ALTER TABLE public.todo ALTER COLUMN todo_id DROP DEFAULT;
       public          postgres    false    248    247            �           2606    17495    todo todo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    247           
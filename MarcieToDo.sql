PGDMP     
                
    z           ebdb    13.7    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    16397    ebdb    DATABASE     Y   CREATE DATABASE ebdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE ebdb;
                postgres    false            
           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    3            ?            1259    16403    todo    TABLE     c   CREATE TABLE public.todo (
    todo_id integer NOT NULL,
    description character varying(255)
);
    DROP TABLE public.todo;
       public         heap    postgres    false            ?            1259    16406    todo_todo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.todo_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.todo_todo_id_seq;
       public          postgres    false    200                       0    0    todo_todo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.todo_todo_id_seq OWNED BY public.todo.todo_id;
          public          postgres    false    201            }           2604    16408    todo todo_id    DEFAULT     l   ALTER TABLE ONLY public.todo ALTER COLUMN todo_id SET DEFAULT nextval('public.todo_todo_id_seq'::regclass);
 ;   ALTER TABLE public.todo ALTER COLUMN todo_id DROP DEFAULT;
       public          postgres    false    201    200                      0    16403    todo 
   TABLE DATA           4   COPY public.todo (todo_id, description) FROM stdin;
    public          postgres    false    200   8                  0    0    todo_todo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.todo_todo_id_seq', 58, true);
          public          postgres    false    201                       2606    16410    todo todo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (todo_id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    200               ?  x?]TMS?0=K?bO?=?? ?%ӆ??
=?"?u?F?\I??_ߕ???????????????'??
p?DQ??? ʒ???n?4??`???Ƀ0???®??
a?IO??SK,N?G|9\+?y:`?ݫ?S?R?0?B?l???uw]S?Je?@?5????? ???#??Kk<?i??G?`???;????k??[Q???e??$~ϒ??Z??9X:???/Gxz?????^h?Q8e?)?p???f???K$?2e$???&sZ??eW????(j?
H'???t???=?M?d'???!SrǑ??N?H#!!Vug?N(????<?ք??ŷI3??g[Y6?jaB??GG???"????J ?\??MQ-??}vC??F??g?!4a??t??p06@Vi???HI%A???2?J???ī?3d?ѡ:?H_[???{VNP.`?8????8?TҤ???vz?^?}?L?-?绬l(FB?ӌmG??/l%?JB???????qv?4????I$^??QF3f???uQ????fE7?֑[f??z?hD???9:?????M??;3?G?Ѭ?N9?I,?ұ@e??gc?LB???ǖ?pH??$??V.?W?Ģ?D??/????L?ʍ????B??x4炽??]???Nb&*vf\^?~s???:x?     
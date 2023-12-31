PGDMP     )                    {            helpdesk    13.11    13.11     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16402    helpdesk    DATABASE     l   CREATE DATABASE helpdesk WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE helpdesk;
                postgres    false            �            1259    16403 
   login_data    TABLE     �  CREATE TABLE public.login_data (
    login_id character varying(50) NOT NULL,
    name character varying(50),
    username character varying(50),
    password character varying(50),
    email character varying(50),
    phone_no character varying(50),
    profile_image character varying(50),
    designation character varying(10) DEFAULT 'user'::character varying,
    registration_date date DEFAULT CURRENT_DATE NOT NULL,
    isonline boolean DEFAULT false
);
    DROP TABLE public.login_data;
       public         heap    postgres    false            �            1259    16411    question_data    TABLE     �   CREATE TABLE public.question_data (
    q_id character varying(50) NOT NULL,
    question character varying(500),
    answer character varying(500),
    date_added date DEFAULT CURRENT_DATE
);
 !   DROP TABLE public.question_data;
       public         heap    postgres    false            �            1259    16420    support    TABLE     )  CREATE TABLE public.support (
    s_id character varying(50) NOT NULL,
    name character varying(500),
    username character varying(500),
    email character varying(500),
    phone_no character varying(500),
    support_flag character varying(500),
    date_added date DEFAULT CURRENT_DATE
);
    DROP TABLE public.support;
       public         heap    postgres    false            �            1259    16429    support_history    TABLE     Z  CREATE TABLE public.support_history (
    log_id character varying(50) NOT NULL,
    support_user character varying(50),
    req_user character varying(50),
    support_req character varying(50),
    start_time character varying(50),
    end_time character varying(50),
    req_date date DEFAULT CURRENT_DATE,
    status character varying(50)
);
 #   DROP TABLE public.support_history;
       public         heap    postgres    false            �          0    16403 
   login_data 
   TABLE DATA           �   COPY public.login_data (login_id, name, username, password, email, phone_no, profile_image, designation, registration_date, isonline) FROM stdin;
    public          postgres    false    200   �       �          0    16411    question_data 
   TABLE DATA           K   COPY public.question_data (q_id, question, answer, date_added) FROM stdin;
    public          postgres    false    201          �          0    16420    support 
   TABLE DATA           b   COPY public.support (s_id, name, username, email, phone_no, support_flag, date_added) FROM stdin;
    public          postgres    false    202   9       �          0    16429    support_history 
   TABLE DATA           ~   COPY public.support_history (log_id, support_user, req_user, support_req, start_time, end_time, req_date, status) FROM stdin;
    public          postgres    false    203   V       5           2606    16410    login_data login_data_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.login_data
    ADD CONSTRAINT login_data_pkey PRIMARY KEY (login_id);
 D   ALTER TABLE ONLY public.login_data DROP CONSTRAINT login_data_pkey;
       public            postgres    false    200            7           2606    16419     question_data question_data_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.question_data
    ADD CONSTRAINT question_data_pkey PRIMARY KEY (q_id);
 J   ALTER TABLE ONLY public.question_data DROP CONSTRAINT question_data_pkey;
       public            postgres    false    201            ;           2606    16434 $   support_history support_history_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.support_history
    ADD CONSTRAINT support_history_pkey PRIMARY KEY (log_id);
 N   ALTER TABLE ONLY public.support_history DROP CONSTRAINT support_history_pkey;
       public            postgres    false    203            9           2606    16428    support support_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.support
    ADD CONSTRAINT support_pkey PRIMARY KEY (s_id);
 >   ALTER TABLE ONLY public.support DROP CONSTRAINT support_pkey;
       public            postgres    false    202            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
PGDMP                          y            hrms    13.2    13.2 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24922    hrms    DATABASE     a   CREATE DATABASE hrms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hrms;
                postgres    false            �            1259    24938     employers_user    TABLE     �   CREATE TABLE public." employers_user" (
    users_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    website_address character varying(50) NOT NULL,
    telephone character varying(13) NOT NULL
);
 %   DROP TABLE public." employers_user";
       public         heap    postgres    false            �            1259    24966     job position    TABLE     j   CREATE TABLE public." job position" (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 #   DROP TABLE public." job position";
       public         heap    postgres    false            �            1259    24928    calling_users    TABLE     �   CREATE TABLE public.calling_users (
    users_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    identity character varying(11) NOT NULL,
    "birth_year " character varying(4) NOT NULL
);
 !   DROP TABLE public.calling_users;
       public         heap    postgres    false            �            1259    24961    employer_user_verify_staff    TABLE     n   CREATE TABLE public.employer_user_verify_staff (
    id integer NOT NULL,
    employer_id integer NOT NULL
);
 .   DROP TABLE public.employer_user_verify_staff;
       public         heap    postgres    false            �            1259    24933    staff_users    TABLE     �   CREATE TABLE public.staff_users (
    users_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL
);
    DROP TABLE public.staff_users;
       public         heap    postgres    false            �            1259    24923    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(10) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24943    verify_code    TABLE     �   CREATE TABLE public.verify_code (
    id integer NOT NULL,
    verify_code character varying NOT NULL,
    is_confirmed boolean NOT NULL,
    confirmed_date date
);
    DROP TABLE public.verify_code;
       public         heap    postgres    false            �            1259    24956    verify_code_calling    TABLE     f   CREATE TABLE public.verify_code_calling (
    id integer NOT NULL,
    calling_id integer NOT NULL
);
 '   DROP TABLE public.verify_code_calling;
       public         heap    postgres    false            �            1259    24951    verify_code_employer    TABLE     h   CREATE TABLE public.verify_code_employer (
    id integer NOT NULL,
    employer_id integer NOT NULL
);
 (   DROP TABLE public.verify_code_employer;
       public         heap    postgres    false            �          0    24938     employers_user 
   TABLE DATA           _   COPY public." employers_user" (users_id, company_name, website_address, telephone) FROM stdin;
    public          postgres    false    203   �2       �          0    24966     job position 
   TABLE DATA           3   COPY public." job position" (id, name) FROM stdin;
    public          postgres    false    208   �2       �          0    24928    calling_users 
   TABLE DATA           Y   COPY public.calling_users (users_id, name, surname, identity, "birth_year ") FROM stdin;
    public          postgres    false    201   3       �          0    24961    employer_user_verify_staff 
   TABLE DATA           E   COPY public.employer_user_verify_staff (id, employer_id) FROM stdin;
    public          postgres    false    207   (3       �          0    24933    staff_users 
   TABLE DATA           >   COPY public.staff_users (users_id, name, surname) FROM stdin;
    public          postgres    false    202   E3       �          0    24923    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    200   b3       �          0    24943    verify_code 
   TABLE DATA           T   COPY public.verify_code (id, verify_code, is_confirmed, confirmed_date) FROM stdin;
    public          postgres    false    204   3       �          0    24956    verify_code_calling 
   TABLE DATA           =   COPY public.verify_code_calling (id, calling_id) FROM stdin;
    public          postgres    false    206   �3       �          0    24951    verify_code_employer 
   TABLE DATA           ?   COPY public.verify_code_employer (id, employer_id) FROM stdin;
    public          postgres    false    205   �3       H           2606    24942 $    employers_user  employers_user_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public." employers_user"
    ADD CONSTRAINT " employers_user_pkey" PRIMARY KEY (users_id);
 R   ALTER TABLE ONLY public." employers_user" DROP CONSTRAINT " employers_user_pkey";
       public            postgres    false    203            R           2606    24970      job position  job position_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public." job position"
    ADD CONSTRAINT " job position_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public." job position" DROP CONSTRAINT " job position_pkey";
       public            postgres    false    208            D           2606    24932     calling_users calling_users_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.calling_users
    ADD CONSTRAINT calling_users_pkey PRIMARY KEY (users_id);
 J   ALTER TABLE ONLY public.calling_users DROP CONSTRAINT calling_users_pkey;
       public            postgres    false    201            P           2606    24965 :   employer_user_verify_staff employer_user_verify_staff_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.employer_user_verify_staff
    ADD CONSTRAINT employer_user_verify_staff_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employer_user_verify_staff DROP CONSTRAINT employer_user_verify_staff_pkey;
       public            postgres    false    207            F           2606    24937    staff_users staff_users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT staff_users_pkey PRIMARY KEY (users_id);
 F   ALTER TABLE ONLY public.staff_users DROP CONSTRAINT staff_users_pkey;
       public            postgres    false    202            B           2606    24927    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    200            N           2606    24960 ,   verify_code_calling verify_code_calling_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.verify_code_calling
    ADD CONSTRAINT verify_code_calling_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.verify_code_calling DROP CONSTRAINT verify_code_calling_pkey;
       public            postgres    false    206            L           2606    24955 .   verify_code_employer verify_code_employer_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.verify_code_employer
    ADD CONSTRAINT verify_code_employer_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.verify_code_employer DROP CONSTRAINT verify_code_employer_pkey;
       public            postgres    false    205            J           2606    24950    verify_code verify_code_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.verify_code
    ADD CONSTRAINT verify_code_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.verify_code DROP CONSTRAINT verify_code_pkey;
       public            postgres    false    204            U           2606    24981 -    employers_user  employers_user_users_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public." employers_user"
    ADD CONSTRAINT " employers_user_users_id_fkey" FOREIGN KEY (users_id) REFERENCES public.users(id) NOT VALID;
 [   ALTER TABLE ONLY public." employers_user" DROP CONSTRAINT " employers_user_users_id_fkey";
       public          postgres    false    2882    203    200            S           2606    24971 )   calling_users calling_users_users_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calling_users
    ADD CONSTRAINT calling_users_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id) NOT VALID;
 S   ALTER TABLE ONLY public.calling_users DROP CONSTRAINT calling_users_users_id_fkey;
       public          postgres    false    200    201    2882            [           2606    25011 F   employer_user_verify_staff employer_user_verify_staff_employer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employer_user_verify_staff
    ADD CONSTRAINT employer_user_verify_staff_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public." employers_user"(users_id) NOT VALID;
 p   ALTER TABLE ONLY public.employer_user_verify_staff DROP CONSTRAINT employer_user_verify_staff_employer_id_fkey;
       public          postgres    false    207    2888    203            Z           2606    25006 =   employer_user_verify_staff employer_user_verify_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employer_user_verify_staff
    ADD CONSTRAINT employer_user_verify_staff_id_fkey FOREIGN KEY (id) REFERENCES public.verify_code_employer(id) NOT VALID;
 g   ALTER TABLE ONLY public.employer_user_verify_staff DROP CONSTRAINT employer_user_verify_staff_id_fkey;
       public          postgres    false    2892    205    207            T           2606    24976 %   staff_users staff_users_users_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT staff_users_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id) NOT VALID;
 O   ALTER TABLE ONLY public.staff_users DROP CONSTRAINT staff_users_users_id_fkey;
       public          postgres    false    2882    202    200            Y           2606    25001 7   verify_code_calling verify_code_calling_calling_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verify_code_calling
    ADD CONSTRAINT verify_code_calling_calling_id_fkey FOREIGN KEY (calling_id) REFERENCES public.calling_users(users_id) NOT VALID;
 a   ALTER TABLE ONLY public.verify_code_calling DROP CONSTRAINT verify_code_calling_calling_id_fkey;
       public          postgres    false    201    206    2884            X           2606    24996 /   verify_code_calling verify_code_calling_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verify_code_calling
    ADD CONSTRAINT verify_code_calling_id_fkey FOREIGN KEY (id) REFERENCES public.verify_code(id) NOT VALID;
 Y   ALTER TABLE ONLY public.verify_code_calling DROP CONSTRAINT verify_code_calling_id_fkey;
       public          postgres    false    206    204    2890            W           2606    24991 :   verify_code_employer verify_code_employer_employer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verify_code_employer
    ADD CONSTRAINT verify_code_employer_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public." employers_user"(users_id) NOT VALID;
 d   ALTER TABLE ONLY public.verify_code_employer DROP CONSTRAINT verify_code_employer_employer_id_fkey;
       public          postgres    false    2888    205    203            V           2606    24986 1   verify_code_employer verify_code_employer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verify_code_employer
    ADD CONSTRAINT verify_code_employer_id_fkey FOREIGN KEY (id) REFERENCES public.verify_code(id) NOT VALID;
 [   ALTER TABLE ONLY public.verify_code_employer DROP CONSTRAINT verify_code_employer_id_fkey;
       public          postgres    false    204    205    2890            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
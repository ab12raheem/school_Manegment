PGDMP                       
    y            sch    13.3    13.3 1    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17282    sch    DATABASE     g   CREATE DATABASE sch WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE sch;
                postgres    false            �            1259    17288    login    TABLE     �   CREATE TABLE public.login (
    userid character varying NOT NULL,
    password character varying(30),
    role_ integer,
    active integer NOT NULL
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    17294    manager    TABLE     �   CREATE TABLE public.manager (
    "managerID" integer NOT NULL,
    "managerName" character varying,
    email character varying,
    mobile integer,
    career character varying,
    username character varying NOT NULL,
    active integer NOT NULL
);
    DROP TABLE public.manager;
       public         heap    postgres    false            �            1259    17300    manager_managerID_seq    SEQUENCE     �   ALTER TABLE public.manager ALTER COLUMN "managerID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."manager_managerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    201            �            1259    17302 	   managerid    SEQUENCE     t   CREATE SEQUENCE public.managerid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 5000
    CACHE 1;
     DROP SEQUENCE public.managerid;
       public          postgres    false    201            �           0    0 	   managerid    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.managerid OWNED BY public.manager."managerID";
          public          postgres    false    203            �            1259    17304    parent    TABLE     �   CREATE TABLE public.parent (
    parentid integer NOT NULL,
    parentname character varying(30),
    phonenumber integer,
    username character varying NOT NULL,
    active integer NOT NULL
);
    DROP TABLE public.parent;
       public         heap    postgres    false            �            1259    17310    parentID    SEQUENCE     u   CREATE SEQUENCE public."parentID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 5000
    CACHE 1;
 !   DROP SEQUENCE public."parentID";
       public          postgres    false    204            �           0    0    parentID    SEQUENCE OWNED BY     B   ALTER SEQUENCE public."parentID" OWNED BY public.parent.parentid;
          public          postgres    false    205            �            1259    17312    parent_parentid_seq    SEQUENCE     �   ALTER TABLE public.parent ALTER COLUMN parentid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.parent_parentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    17314    student    TABLE     :  CREATE TABLE public.student (
    studentid integer NOT NULL,
    studentname character varying(30),
    class character varying(30),
    age integer,
    gender character varying(30),
    address character varying(30),
    parentid integer,
    username character varying NOT NULL,
    active integer NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    17320 	   studentID    SEQUENCE     v   CREATE SEQUENCE public."studentID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 5000
    CACHE 1;
 "   DROP SEQUENCE public."studentID";
       public          postgres    false    207            �           0    0 	   studentID    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."studentID" OWNED BY public.student.studentid;
          public          postgres    false    208            �            1259    17322    student_studentid_seq    SEQUENCE     �   ALTER TABLE public.student ALTER COLUMN studentid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.student_studentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            �            1259    17332    teacher    TABLE     $  CREATE TABLE public.teacher (
    teacherid integer NOT NULL,
    teachername character varying(30),
    field character varying(30),
    age integer,
    gender character varying(30),
    address character varying(30),
    username character varying NOT NULL,
    active integer NOT NULL
);
    DROP TABLE public.teacher;
       public         heap    postgres    false            �            1259    17338 	   teacherID    SEQUENCE     v   CREATE SEQUENCE public."teacherID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 5000
    CACHE 1;
 "   DROP SEQUENCE public."teacherID";
       public          postgres    false    210            �           0    0 	   teacherID    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."teacherID" OWNED BY public.teacher.teacherid;
          public          postgres    false    211            �            1259    17340    teacher_teacherid_seq    SEQUENCE     �   ALTER TABLE public.teacher ALTER COLUMN teacherid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teacher_teacherid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �          0    17288    login 
   TABLE DATA           @   COPY public.login (userid, password, role_, active) FROM stdin;
    public          postgres    false    200   �6       �          0    17294    manager 
   TABLE DATA           f   COPY public.manager ("managerID", "managerName", email, mobile, career, username, active) FROM stdin;
    public          postgres    false    201   
7       �          0    17304    parent 
   TABLE DATA           U   COPY public.parent (parentid, parentname, phonenumber, username, active) FROM stdin;
    public          postgres    false    204   I7       �          0    17314    student 
   TABLE DATA           r   COPY public.student (studentid, studentname, class, age, gender, address, parentid, username, active) FROM stdin;
    public          postgres    false    207   �7       �          0    17332    teacher 
   TABLE DATA           h   COPY public.teacher (teacherid, teachername, field, age, gender, address, username, active) FROM stdin;
    public          postgres    false    210   �7       �           0    0    manager_managerID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."manager_managerID_seq"', 1, true);
          public          postgres    false    202            �           0    0 	   managerid    SEQUENCE SET     8   SELECT pg_catalog.setval('public.managerid', 1, false);
          public          postgres    false    203            �           0    0    parentID    SEQUENCE SET     9   SELECT pg_catalog.setval('public."parentID"', 1, false);
          public          postgres    false    205            �           0    0    parent_parentid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.parent_parentid_seq', 7, true);
          public          postgres    false    206            �           0    0 	   studentID    SEQUENCE SET     :   SELECT pg_catalog.setval('public."studentID"', 1, false);
          public          postgres    false    208            �           0    0    student_studentid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.student_studentid_seq', 18, true);
          public          postgres    false    209            �           0    0 	   teacherID    SEQUENCE SET     :   SELECT pg_catalog.setval('public."teacherID"', 1, false);
          public          postgres    false    211            �           0    0    teacher_teacherid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.teacher_teacherid_seq', 3, true);
          public          postgres    false    212            F           2606    17345    login login_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    200            H           2606    17347    manager manager_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY ("managerID");
 >   ALTER TABLE ONLY public.manager DROP CONSTRAINT manager_pkey;
       public            postgres    false    201            K           2606    17349    parent parent_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.parent
    ADD CONSTRAINT parent_pkey PRIMARY KEY (parentid);
 <   ALTER TABLE ONLY public.parent DROP CONSTRAINT parent_pkey;
       public            postgres    false    204            N           2606    17351    student student_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (studentid);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    207            Q           2606    17359    teacher teacher_field_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_field_key UNIQUE (field);
 C   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_field_key;
       public            postgres    false    210            S           2606    17361    teacher teacher_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacherid);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    210            I           1259    17362    manager_username_uindex    INDEX     V   CREATE UNIQUE INDEX manager_username_uindex ON public.manager USING btree (username);
 +   DROP INDEX public.manager_username_uindex;
       public            postgres    false    201            L           1259    17363    parent_username_uindex    INDEX     T   CREATE UNIQUE INDEX parent_username_uindex ON public.parent USING btree (username);
 *   DROP INDEX public.parent_username_uindex;
       public            postgres    false    204            O           1259    17364    student_username_uindex    INDEX     V   CREATE UNIQUE INDEX student_username_uindex ON public.student USING btree (username);
 +   DROP INDEX public.student_username_uindex;
       public            postgres    false    207            T           1259    17365    teacher_username_uindex    INDEX     V   CREATE UNIQUE INDEX teacher_username_uindex ON public.teacher USING btree (username);
 +   DROP INDEX public.teacher_username_uindex;
       public            postgres    false    210            U           2606    17366    manager manager_login_userid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_login_userid_fk FOREIGN KEY (username) REFERENCES public.login(userid);
 I   ALTER TABLE ONLY public.manager DROP CONSTRAINT manager_login_userid_fk;
       public          postgres    false    201    2886    200            V           2606    17371    parent parent_login_userid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.parent
    ADD CONSTRAINT parent_login_userid_fk FOREIGN KEY (username) REFERENCES public.login(userid);
 G   ALTER TABLE ONLY public.parent DROP CONSTRAINT parent_login_userid_fk;
       public          postgres    false    204    200    2886            W           2606    17376    student student_login_userid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_login_userid_fk FOREIGN KEY (username) REFERENCES public.login(userid);
 I   ALTER TABLE ONLY public.student DROP CONSTRAINT student_login_userid_fk;
       public          postgres    false    2886    207    200            X           2606    17381    student student_parentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_parentid_fkey FOREIGN KEY (parentid) REFERENCES public.parent(parentid);
 G   ALTER TABLE ONLY public.student DROP CONSTRAINT student_parentid_fkey;
       public          postgres    false    2891    207    204            Y           2606    17391    teacher teacher_login_userid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_login_userid_fk FOREIGN KEY (username) REFERENCES public.login(userid);
 I   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_login_userid_fk;
       public          postgres    false    2886    200    210            �   T   x�KO�,��442615�4�4�*JL�HL��E��RSs�L`b@WbN&������\�`��#�-y��y�f�jb���� B�+      �   /   x�3�LO�,��LNK/K�����4�����M�KLO-�Jr��qqq 9��      �   O   x�3�,OL��4���0��46�p�L8��R�LSC#(��(c�Y�������"`h�5�L��MLA����b���� 6s�      �   E   x�34�,JL�HL�L/JLI5��L��KL�)-�4�Ir�s&�drp�r�&��Ԙ���b���� M�e      �   -   x�3�LLI��L,JL�L�44��M�I��KL�)-�Hr��qqq ,n     
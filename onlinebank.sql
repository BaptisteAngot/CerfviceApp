PGDMP     6        	        
    w         
   onlinebank    12.0    12.0 E    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    24690 
   onlinebank    DATABASE     �   CREATE DATABASE onlinebank WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE onlinebank;
                postgres    false            �            1259    24691 	   ob_compte    TABLE     R  CREATE TABLE public.ob_compte (
    id bigint NOT NULL,
    email character varying NOT NULL,
    motdepasse character varying NOT NULL,
    token character varying(255) NOT NULL,
    created_at date NOT NULL,
    updated_at date,
    role character varying(255) NOT NULL,
    google character varying,
    id_prospect bigint NOT NULL
);
    DROP TABLE public.ob_compte;
       public         heap    postgres    false            �            1259    24697    ob_compte_id_prospect_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_compte_id_prospect_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ob_compte_id_prospect_seq;
       public          postgres    false    202            U           0    0    ob_compte_id_prospect_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ob_compte_id_prospect_seq OWNED BY public.ob_compte.id_prospect;
          public          postgres    false    203            �            1259    24699    ob_compte_id_seq    SEQUENCE     y   CREATE SEQUENCE public.ob_compte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ob_compte_id_seq;
       public          postgres    false    202            V           0    0    ob_compte_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ob_compte_id_seq OWNED BY public.ob_compte.id;
          public          postgres    false    204            �            1259    24701    ob_historique    TABLE     �   CREATE TABLE public.ob_historique (
    id bigint NOT NULL,
    dateappel date,
    resultat_appel boolean,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    id_produit bigint NOT NULL,
    id_compte bigint NOT NULL
);
 !   DROP TABLE public.ob_historique;
       public         heap    postgres    false            �            1259    24704    ob_historique_id_compte_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_historique_id_compte_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ob_historique_id_compte_seq;
       public          postgres    false    205            W           0    0    ob_historique_id_compte_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ob_historique_id_compte_seq OWNED BY public.ob_historique.id_compte;
          public          postgres    false    206            �            1259    24706    ob_historique_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_historique_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ob_historique_id_produit_seq;
       public          postgres    false    205            X           0    0    ob_historique_id_produit_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ob_historique_id_produit_seq OWNED BY public.ob_historique.id_produit;
          public          postgres    false    207            �            1259    24708    ob_historique_id_seq    SEQUENCE     }   CREATE SEQUENCE public.ob_historique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ob_historique_id_seq;
       public          postgres    false    205            Y           0    0    ob_historique_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ob_historique_id_seq OWNED BY public.ob_historique.id;
          public          postgres    false    208            �            1259    24710 
   ob_produit    TABLE     �  CREATE TABLE public.ob_produit (
    nom character varying(255) NOT NULL,
    description character varying(500),
    minage integer,
    maxage integer,
    situationfamiliale character varying,
    situationprofessionnel character varying,
    revenumin integer,
    revenumax character varying,
    depenseregulieremax character varying,
    enfants integer,
    situationlogement character varying,
    minanciennetelogement integer,
    maxanciennetelogement integer,
    minancienneteprofessionnel integer,
    maxancienneteprofessionnel integer,
    id bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    id_historique bigint NOT NULL
);
    DROP TABLE public.ob_produit;
       public         heap    postgres    false            �            1259    24716    ob_produit_id_historique_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_produit_id_historique_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ob_produit_id_historique_seq;
       public          postgres    false    209            Z           0    0    ob_produit_id_historique_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ob_produit_id_historique_seq OWNED BY public.ob_produit.id_historique;
          public          postgres    false    210            �            1259    24718    ob_prospect    TABLE     �  CREATE TABLE public.ob_prospect (
    id bigint NOT NULL,
    nom character varying NOT NULL,
    prenom character varying NOT NULL,
    situationfamiliale character varying NOT NULL,
    revenu integer NOT NULL,
    depensereguliere integer NOT NULL,
    situationprofessionnel character varying NOT NULL,
    telephone character varying NOT NULL,
    enfants integer NOT NULL,
    departement character varying NOT NULL,
    typehabitat character varying NOT NULL,
    situationlogement character varying NOT NULL,
    anciennetelogement integer NOT NULL,
    ancienneteprofessionnel integer NOT NULL,
    bloquepub boolean NOT NULL,
    active boolean NOT NULL,
    created_at date NOT NULL,
    updated_at date,
    age character varying(100) NOT NULL,
    "verifLj" boolean,
    "verifCcp" boolean,
    "verifLa" boolean,
    "verifPel" boolean,
    "verifAv" boolean,
    "verifCe" boolean,
    "verifCc" boolean,
    "verifCi" boolean,
    "verifCa" boolean
);
    DROP TABLE public.ob_prospect;
       public         heap    postgres    false            �            1259    24724    ob_prospect_id_seq    SEQUENCE     {   CREATE SEQUENCE public.ob_prospect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ob_prospect_id_seq;
       public          postgres    false    211            [           0    0    ob_prospect_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ob_prospect_id_seq OWNED BY public.ob_prospect.id;
          public          postgres    false    212            �            1259    24726    ob_prospectproduit    TABLE     �   CREATE TABLE public.ob_prospectproduit (
    id bigint NOT NULL,
    id_prospect bigint NOT NULL,
    id_produit bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
 &   DROP TABLE public.ob_prospectproduit;
       public         heap    postgres    false            �            1259    24729 !   ob_prospectproduit_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ob_prospectproduit_id_produit_seq;
       public          postgres    false    213            \           0    0 !   ob_prospectproduit_id_produit_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ob_prospectproduit_id_produit_seq OWNED BY public.ob_prospectproduit.id_produit;
          public          postgres    false    214            �            1259    24731 "   ob_prospectproduit_id_prospect_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_prospect_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ob_prospectproduit_id_prospect_seq;
       public          postgres    false    213            ]           0    0 "   ob_prospectproduit_id_prospect_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ob_prospectproduit_id_prospect_seq OWNED BY public.ob_prospectproduit.id_prospect;
          public          postgres    false    215            �            1259    24733    ob_prospectproduit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ob_prospectproduit_id_seq;
       public          postgres    false    213            ^           0    0    ob_prospectproduit_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ob_prospectproduit_id_seq OWNED BY public.ob_prospectproduit.id;
          public          postgres    false    216            �            1259    24735    produit_id_seq    SEQUENCE     w   CREATE SEQUENCE public.produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produit_id_seq;
       public          postgres    false    209            _           0    0    produit_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.produit_id_seq OWNED BY public.ob_produit.id;
          public          postgres    false    217            �
           2604    24737    ob_compte id    DEFAULT     l   ALTER TABLE ONLY public.ob_compte ALTER COLUMN id SET DEFAULT nextval('public.ob_compte_id_seq'::regclass);
 ;   ALTER TABLE public.ob_compte ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    202            �
           2604    24738    ob_compte id_prospect    DEFAULT     ~   ALTER TABLE ONLY public.ob_compte ALTER COLUMN id_prospect SET DEFAULT nextval('public.ob_compte_id_prospect_seq'::regclass);
 D   ALTER TABLE public.ob_compte ALTER COLUMN id_prospect DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    24739    ob_historique id    DEFAULT     t   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id SET DEFAULT nextval('public.ob_historique_id_seq'::regclass);
 ?   ALTER TABLE public.ob_historique ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    205            �
           2604    24740    ob_historique id_produit    DEFAULT     �   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id_produit SET DEFAULT nextval('public.ob_historique_id_produit_seq'::regclass);
 G   ALTER TABLE public.ob_historique ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    207    205            �
           2604    24741    ob_historique id_compte    DEFAULT     �   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id_compte SET DEFAULT nextval('public.ob_historique_id_compte_seq'::regclass);
 F   ALTER TABLE public.ob_historique ALTER COLUMN id_compte DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    24742    ob_produit id    DEFAULT     k   ALTER TABLE ONLY public.ob_produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);
 <   ALTER TABLE public.ob_produit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    209            �
           2604    24743    ob_produit id_historique    DEFAULT     �   ALTER TABLE ONLY public.ob_produit ALTER COLUMN id_historique SET DEFAULT nextval('public.ob_produit_id_historique_seq'::regclass);
 G   ALTER TABLE public.ob_produit ALTER COLUMN id_historique DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    24744    ob_prospect id    DEFAULT     p   ALTER TABLE ONLY public.ob_prospect ALTER COLUMN id SET DEFAULT nextval('public.ob_prospect_id_seq'::regclass);
 =   ALTER TABLE public.ob_prospect ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �
           2604    24745    ob_prospectproduit id    DEFAULT     ~   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id SET DEFAULT nextval('public.ob_prospectproduit_id_seq'::regclass);
 D   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    213            �
           2604    24746    ob_prospectproduit id_prospect    DEFAULT     �   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id_prospect SET DEFAULT nextval('public.ob_prospectproduit_id_prospect_seq'::regclass);
 M   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id_prospect DROP DEFAULT;
       public          postgres    false    215    213            �
           2604    24747    ob_prospectproduit id_produit    DEFAULT     �   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id_produit SET DEFAULT nextval('public.ob_prospectproduit_id_produit_seq'::regclass);
 L   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    214    213            ?          0    24691 	   ob_compte 
   TABLE DATA           t   COPY public.ob_compte (id, email, motdepasse, token, created_at, updated_at, role, google, id_prospect) FROM stdin;
    public          postgres    false    202   �Y       B          0    24701    ob_historique 
   TABLE DATA           u   COPY public.ob_historique (id, dateappel, resultat_appel, created_at, updated_at, id_produit, id_compte) FROM stdin;
    public          postgres    false    205   �Z       F          0    24710 
   ob_produit 
   TABLE DATA           J  COPY public.ob_produit (nom, description, minage, maxage, situationfamiliale, situationprofessionnel, revenumin, revenumax, depenseregulieremax, enfants, situationlogement, minanciennetelogement, maxanciennetelogement, minancienneteprofessionnel, maxancienneteprofessionnel, id, created_at, updated_at, id_historique) FROM stdin;
    public          postgres    false    209   �Z       H          0    24718    ob_prospect 
   TABLE DATA             COPY public.ob_prospect (id, nom, prenom, situationfamiliale, revenu, depensereguliere, situationprofessionnel, telephone, enfants, departement, typehabitat, situationlogement, anciennetelogement, ancienneteprofessionnel, bloquepub, active, created_at, updated_at, age, "verifLj", "verifCcp", "verifLa", "verifPel", "verifAv", "verifCe", "verifCc", "verifCi", "verifCa") FROM stdin;
    public          postgres    false    211   [       J          0    24726    ob_prospectproduit 
   TABLE DATA           a   COPY public.ob_prospectproduit (id, id_prospect, id_produit, created_at, updated_at) FROM stdin;
    public          postgres    false    213   �[       `           0    0    ob_compte_id_prospect_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ob_compte_id_prospect_seq', 1, false);
          public          postgres    false    203            a           0    0    ob_compte_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ob_compte_id_seq', 10, true);
          public          postgres    false    204            b           0    0    ob_historique_id_compte_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ob_historique_id_compte_seq', 1, false);
          public          postgres    false    206            c           0    0    ob_historique_id_produit_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ob_historique_id_produit_seq', 1, false);
          public          postgres    false    207            d           0    0    ob_historique_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ob_historique_id_seq', 1, false);
          public          postgres    false    208            e           0    0    ob_produit_id_historique_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ob_produit_id_historique_seq', 1, false);
          public          postgres    false    210            f           0    0    ob_prospect_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ob_prospect_id_seq', 26, true);
          public          postgres    false    212            g           0    0 !   ob_prospectproduit_id_produit_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ob_prospectproduit_id_produit_seq', 1, false);
          public          postgres    false    214            h           0    0 "   ob_prospectproduit_id_prospect_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ob_prospectproduit_id_prospect_seq', 1, false);
          public          postgres    false    215            i           0    0    ob_prospectproduit_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ob_prospectproduit_id_seq', 1, false);
          public          postgres    false    216            j           0    0    produit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produit_id_seq', 1, false);
          public          postgres    false    217            �
           2606    24749    ob_compte ob_compte_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ob_compte
    ADD CONSTRAINT ob_compte_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ob_compte DROP CONSTRAINT ob_compte_pkey;
       public            postgres    false    202            �
           2606    24751     ob_historique ob_historique_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_pkey;
       public            postgres    false    205            �
           2606    24753    ob_produit ob_produit_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ob_produit
    ADD CONSTRAINT ob_produit_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ob_produit DROP CONSTRAINT ob_produit_pkey;
       public            postgres    false    209            �
           2606    24755    ob_prospect ob_prospect_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ob_prospect
    ADD CONSTRAINT ob_prospect_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ob_prospect DROP CONSTRAINT ob_prospect_pkey;
       public            postgres    false    211            �
           2606    24757 *   ob_prospectproduit ob_prospectproduit_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_pkey;
       public            postgres    false    213            �
           2606    24758 $   ob_compte ob_compte_id_prospect_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_compte
    ADD CONSTRAINT ob_compte_id_prospect_fkey FOREIGN KEY (id_prospect) REFERENCES public.ob_prospect(id) NOT VALID;
 N   ALTER TABLE ONLY public.ob_compte DROP CONSTRAINT ob_compte_id_prospect_fkey;
       public          postgres    false    211    202    2744            �
           2606    24763 *   ob_historique ob_historique_id_compte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_id_compte_fkey FOREIGN KEY (id_compte) REFERENCES public.ob_compte(id) NOT VALID;
 T   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_id_compte_fkey;
       public          postgres    false    205    202    2738            �
           2606    24768 +   ob_historique ob_historique_id_produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.ob_produit(id) NOT VALID;
 U   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_id_produit_fkey;
       public          postgres    false    205    2742    209            �
           2606    24773 (   ob_produit ob_produit_id_historique_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_produit
    ADD CONSTRAINT ob_produit_id_historique_fkey FOREIGN KEY (id_historique) REFERENCES public.ob_historique(id) NOT VALID;
 R   ALTER TABLE ONLY public.ob_produit DROP CONSTRAINT ob_produit_id_historique_fkey;
       public          postgres    false    2740    209    205            �
           2606    24778 5   ob_prospectproduit ob_prospectproduit_id_produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.ob_produit(id) NOT VALID;
 _   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_id_produit_fkey;
       public          postgres    false    213    2742    209            �
           2606    24783 6   ob_prospectproduit ob_prospectproduit_id_prospect_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_id_prospect_fkey FOREIGN KEY (id_prospect) REFERENCES public.ob_prospect(id) NOT VALID;
 `   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_id_prospect_fkey;
       public          postgres    false    213    211    2744            ?   6  x��Kr�0  �5��m)a���B䛀i�U�
�'�p�N��S�g�W5�]V?�����y����R�&�z���˕z�p�ěKÇ^�.CG��Gz9ю-���DpJM�v��w�#8Oي�����˨���vB��M#z��e>o�0S�O�H�yOi]wـ|_����J۶މ�+4V4��mT�fD�@җ�p׎��K���Eq7�0�w:m�|�Sz��.*Q.�E=�I�ʖ��5v��N�/�HeH+'yѣE�#Y�>k7��!��<���h�y�*��e��  i�T[�B�oa�f���pu�      B      x������ � �      F      x������ � �      H   _   x�32�t�����JM��LN��LJ,I�,J�4BgN3�4 
�&f��q��'#�K�,�420��54�54���4���t��A<�+F��� Z��      J      x������ � �     
PGDMP     &    ,                {            sjwauvpi     13.9 (Ubuntu 13.9-1.pgdg20.04+1)    15.3 T    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    2627259    sjwauvpi    DATABASE     t   CREATE DATABASE sjwauvpi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE sjwauvpi;
                sjwauvpi    false            ,           0    0    DATABASE sjwauvpi    ACL     ;   REVOKE CONNECT,TEMPORARY ON DATABASE sjwauvpi FROM PUBLIC;
                   sjwauvpi    false    4139                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            -           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    25                        3079    17161 	   btree_gin 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
    DROP EXTENSION btree_gin;
                   false    25            .           0    0    EXTENSION btree_gin    COMMENT     R   COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';
                        false    15                        3079    17702 
   btree_gist 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;
    DROP EXTENSION btree_gist;
                   false    25            /           0    0    EXTENSION btree_gist    COMMENT     T   COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';
                        false    19                        3079    16671    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false    25            0           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    8                        3079    17599    cube 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;
    DROP EXTENSION cube;
                   false    25            1           0    0    EXTENSION cube    COMMENT     E   COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';
                        false    17                        3079    16384    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false    25            2           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    2                        3079    17152    dict_int 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;
    DROP EXTENSION dict_int;
                   false    25            3           0    0    EXTENSION dict_int    COMMENT     Q   COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';
                        false    14                        3079    18325 	   dict_xsyn 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;
    DROP EXTENSION dict_xsyn;
                   false    25            4           0    0    EXTENSION dict_xsyn    COMMENT     e   COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';
                        false    20                        3079    17686    earthdistance 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;
    DROP EXTENSION earthdistance;
                   false    25    17            5           0    0    EXTENSION earthdistance    COMMENT     f   COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';
                        false    18                        3079    16660    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false    25            6           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    7                        3079    17025    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false    25            7           0    0    EXTENSION hstore    COMMENT     S   COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';
                        false    13                        3079    16903    intarray 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;
    DROP EXTENSION intarray;
                   false    25            8           0    0    EXTENSION intarray    COMMENT     g   COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';
                        false    12                        3079    16444    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false    25            9           0    0    EXTENSION ltree    COMMENT     Q   COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';
                        false    4                        3079    18337    pg_stat_statements 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
 #   DROP EXTENSION pg_stat_statements;
                   false    25            :           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    22                        3079    16824    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false    25            ;           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    11            
            3079    16787    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false    25            <           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    10                        3079    17597 
   pgrowlocks 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;
    DROP EXTENSION pgrowlocks;
                   false    25            =           0    0    EXTENSION pgrowlocks    COMMENT     I   COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';
                        false    16                        3079    16629    pgstattuple 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;
    DROP EXTENSION pgstattuple;
                   false    25            >           0    0    EXTENSION pgstattuple    COMMENT     C   COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';
                        false    5                        3079    16639 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false    25            ?           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    6                        3079    18330    unaccent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;
    DROP EXTENSION unaccent;
                   false    25            @           0    0    EXTENSION unaccent    COMMENT     P   COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';
                        false    21            	            3079    16776 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false    25            A           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    9                        3079    16430    xml2 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;
    DROP EXTENSION xml2;
                   false    25            B           0    0    EXTENSION xml2    COMMENT     8   COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';
                        false    3            �           1255    2630958    update_user_balance()    FUNCTION     +  CREATE FUNCTION public.update_user_balance() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN
    IF NEW.deleted = false AND NEW.operation_response = 'approved' THEN
        IF EXISTS (SELECT 1 FROM operation_records WHERE user_id = NEW.user_id AND id > NEW.id AND deleted = false) THEN
            RAISE EXCEPTION 'A non-deleted operation record already exists for the user after the current one. Cannot update balance.';
        END IF;    
		UPDATE users SET balance = balance - NEW.cost WHERE id = NEW.user_id;
    END IF;

    RETURN NEW;
END;$$;
 ,   DROP FUNCTION public.update_user_balance();
       public          sjwauvpi    false    25            �            1259    2630873    operation_records    TABLE     ;  CREATE TABLE public.operation_records (
    id integer NOT NULL,
    operation_id integer NOT NULL,
    user_id integer NOT NULL,
    cost numeric(10,2) NOT NULL,
    operation_response text NOT NULL,
    date timestamp without time zone DEFAULT CURRENT_DATE NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public.operation_records;
       public         heap    sjwauvpi    false    25            �            1259    2630871    operation_records_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operation_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.operation_records_id_seq;
       public          sjwauvpi    false    25    231            C           0    0    operation_records_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.operation_records_id_seq OWNED BY public.operation_records.id;
          public          sjwauvpi    false    230            �            1259    2630021 
   operations    TABLE     u   CREATE TABLE public.operations (
    id integer NOT NULL,
    type text NOT NULL,
    cost numeric(10,2) NOT NULL
);
    DROP TABLE public.operations;
       public         heap    sjwauvpi    false    25            �            1259    2630019    operations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.operations_id_seq;
       public          sjwauvpi    false    229    25            D           0    0    operations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.operations_id_seq OWNED BY public.operations.id;
          public          sjwauvpi    false    228            �            1259    2635279    tokens    TABLE     �   CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token text NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);
    DROP TABLE public.tokens;
       public         heap    sjwauvpi    false    25            �            1259    2635277    tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tokens_id_seq;
       public          sjwauvpi    false    233    25            E           0    0    tokens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;
          public          sjwauvpi    false    232            �            1259    2630010    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    password character varying(72) NOT NULL,
    status character varying(60) DEFAULT 'active'::character varying NOT NULL,
    balance numeric(10,2) DEFAULT 50.00 NOT NULL
);
    DROP TABLE public.users;
       public         heap    sjwauvpi    false    25            �            1259    2630008    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          sjwauvpi    false    227    25            F           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          sjwauvpi    false    226            �           2604    2630876    operation_records id    DEFAULT     |   ALTER TABLE ONLY public.operation_records ALTER COLUMN id SET DEFAULT nextval('public.operation_records_id_seq'::regclass);
 C   ALTER TABLE public.operation_records ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    231    230    231            �           2604    2630024    operations id    DEFAULT     n   ALTER TABLE ONLY public.operations ALTER COLUMN id SET DEFAULT nextval('public.operations_id_seq'::regclass);
 <   ALTER TABLE public.operations ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    228    229    229            �           2604    2635282 	   tokens id    DEFAULT     f   ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);
 8   ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    232    233    233            �           2604    2630013    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    227    226    227            #          0    2630873    operation_records 
   TABLE DATA                 public          sjwauvpi    false    231   �R       !          0    2630021 
   operations 
   TABLE DATA                 public          sjwauvpi    false    229   �R       %          0    2635279    tokens 
   TABLE DATA                 public          sjwauvpi    false    233   �S                 0    2630010    users 
   TABLE DATA                 public          sjwauvpi    false    227   �S       G           0    0    operation_records_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.operation_records_id_seq', 8, true);
          public          sjwauvpi    false    230            H           0    0    operations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.operations_id_seq', 6, true);
          public          sjwauvpi    false    228            I           0    0    tokens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);
          public          sjwauvpi    false    232            J           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          sjwauvpi    false    226            �           2606    2630882 (   operation_records operation_records_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.operation_records
    ADD CONSTRAINT operation_records_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.operation_records DROP CONSTRAINT operation_records_pkey;
       public            sjwauvpi    false    231            �           2606    2630029    operations operations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.operations DROP CONSTRAINT operations_pkey;
       public            sjwauvpi    false    229            �           2606    2630018    users primary_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT primary_key PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT primary_key;
       public            sjwauvpi    false    227            �           2606    2635287    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public            sjwauvpi    false    233            �           2606    2642557    users username_unique_constrain 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_unique_constrain UNIQUE (username);
 I   ALTER TABLE ONLY public.users DROP CONSTRAINT username_unique_constrain;
       public            sjwauvpi    false    227            �           2620    2631089 -   operation_records update_user_balance_trigger    TRIGGER     �   CREATE TRIGGER update_user_balance_trigger AFTER INSERT ON public.operation_records FOR EACH ROW EXECUTE FUNCTION public.update_user_balance();
 F   DROP TRIGGER update_user_balance_trigger ON public.operation_records;
       public          sjwauvpi    false    966    231            K           0    0 8   TRIGGER update_user_balance_trigger ON operation_records    COMMENT     �   COMMENT ON TRIGGER update_user_balance_trigger ON public.operation_records IS 'Updates the current user balance whenever a new operation has been added. 
';
          public          sjwauvpi    false    3994            �           2606    2630888 #   operation_records operation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operation_records
    ADD CONSTRAINT operation_id_fkey FOREIGN KEY (operation_id) REFERENCES public.operations(id) NOT VALID;
 M   ALTER TABLE ONLY public.operation_records DROP CONSTRAINT operation_id_fkey;
       public          sjwauvpi    false    3986    231    229            �           2606    2630883    operation_records user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.operation_records
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.operation_records DROP CONSTRAINT user_id_fkey;
       public          sjwauvpi    false    231    3982    227            �           2606    2635288    tokens user_id_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 =   ALTER TABLE ONLY public.tokens DROP CONSTRAINT user_id_fkey;
       public          sjwauvpi    false    3982    227    233            #   
   x���          !   �   x��ν�0�O�MH:090�L]I��	���߫��=߹�����вj�t��=ӳ4܁V�>Η{Q�]�`��[Ҍe�>'媆6p!`������s��OY�������go�����s#[��C~ڲ���p%��Zg@� Ւ®8�m!�x�      %   
   x���             
   x���         
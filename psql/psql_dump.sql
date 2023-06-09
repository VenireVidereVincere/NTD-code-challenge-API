PGDMP                         {            sjwauvpi     13.9 (Ubuntu 13.9-1.pgdg20.04+1)    15.3 V    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    2627259    sjwauvpi    DATABASE     t   CREATE DATABASE sjwauvpi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE sjwauvpi;
                sjwauvpi    false            .           0    0    DATABASE sjwauvpi    ACL     ;   REVOKE CONNECT,TEMPORARY ON DATABASE sjwauvpi FROM PUBLIC;
                   sjwauvpi    false    4141                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            /           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    25                        3079    17161 	   btree_gin 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
    DROP EXTENSION btree_gin;
                   false    25            0           0    0    EXTENSION btree_gin    COMMENT     R   COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';
                        false    15                        3079    17702 
   btree_gist 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;
    DROP EXTENSION btree_gist;
                   false    25            1           0    0    EXTENSION btree_gist    COMMENT     T   COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';
                        false    19                        3079    16671    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false    25            2           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    8                        3079    17599    cube 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;
    DROP EXTENSION cube;
                   false    25            3           0    0    EXTENSION cube    COMMENT     E   COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';
                        false    17                        3079    16384    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false    25            4           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    2                        3079    17152    dict_int 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;
    DROP EXTENSION dict_int;
                   false    25            5           0    0    EXTENSION dict_int    COMMENT     Q   COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';
                        false    14                        3079    18325 	   dict_xsyn 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;
    DROP EXTENSION dict_xsyn;
                   false    25            6           0    0    EXTENSION dict_xsyn    COMMENT     e   COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';
                        false    20                        3079    17686    earthdistance 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;
    DROP EXTENSION earthdistance;
                   false    25    17            7           0    0    EXTENSION earthdistance    COMMENT     f   COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';
                        false    18                        3079    16660    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false    25            8           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    7                        3079    17025    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false    25            9           0    0    EXTENSION hstore    COMMENT     S   COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';
                        false    13                        3079    16903    intarray 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;
    DROP EXTENSION intarray;
                   false    25            :           0    0    EXTENSION intarray    COMMENT     g   COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';
                        false    12                        3079    16444    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false    25            ;           0    0    EXTENSION ltree    COMMENT     Q   COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';
                        false    4                        3079    18337    pg_stat_statements 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
 #   DROP EXTENSION pg_stat_statements;
                   false    25            <           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    22                        3079    16824    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false    25            =           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    11            
            3079    16787    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false    25            >           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    10                        3079    17597 
   pgrowlocks 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;
    DROP EXTENSION pgrowlocks;
                   false    25            ?           0    0    EXTENSION pgrowlocks    COMMENT     I   COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';
                        false    16                        3079    16629    pgstattuple 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;
    DROP EXTENSION pgstattuple;
                   false    25            @           0    0    EXTENSION pgstattuple    COMMENT     C   COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';
                        false    5                        3079    16639 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false    25            A           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    6                        3079    18330    unaccent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;
    DROP EXTENSION unaccent;
                   false    25            B           0    0    EXTENSION unaccent    COMMENT     P   COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';
                        false    21            	            3079    16776 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false    25            C           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    9                        3079    16430    xml2 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;
    DROP EXTENSION xml2;
                   false    25            D           0    0    EXTENSION xml2    COMMENT     8   COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';
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
       public          sjwauvpi    false    25            �           1255    2680807    update_user_balance_on_delete()    FUNCTION       CREATE FUNCTION public.update_user_balance_on_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN
  IF OLD.deleted = false AND OLD.operation_response = 'approved' THEN
    UPDATE users SET balance = balance + OLD.cost WHERE id = OLD.user_id;
  END IF;
  
  RETURN OLD;
END;$$;
 6   DROP FUNCTION public.update_user_balance_on_delete();
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
       public          sjwauvpi    false    25    231            E           0    0    operation_records_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.operation_records_id_seq OWNED BY public.operation_records.id;
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
       public          sjwauvpi    false    25    229            F           0    0    operations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.operations_id_seq OWNED BY public.operations.id;
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
       public          sjwauvpi    false    233    25            G           0    0    tokens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;
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
       public          sjwauvpi    false    227    25            H           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          sjwauvpi    false    226            �           2604    2630876    operation_records id    DEFAULT     |   ALTER TABLE ONLY public.operation_records ALTER COLUMN id SET DEFAULT nextval('public.operation_records_id_seq'::regclass);
 C   ALTER TABLE public.operation_records ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    231    230    231            �           2604    2630024    operations id    DEFAULT     n   ALTER TABLE ONLY public.operations ALTER COLUMN id SET DEFAULT nextval('public.operations_id_seq'::regclass);
 <   ALTER TABLE public.operations ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    228    229    229            �           2604    2635282 	   tokens id    DEFAULT     f   ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);
 8   ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    233    232    233            �           2604    2630013    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          sjwauvpi    false    226    227    227            %          0    2630873    operation_records 
   TABLE DATA           o   COPY public.operation_records (id, operation_id, user_id, cost, operation_response, date, deleted) FROM stdin;
    public          sjwauvpi    false    231   X       #          0    2630021 
   operations 
   TABLE DATA           4   COPY public.operations (id, type, cost) FROM stdin;
    public          sjwauvpi    false    229   �X       '          0    2635279    tokens 
   TABLE DATA           =   COPY public.tokens (id, user_id, token, deleted) FROM stdin;
    public          sjwauvpi    false    233   qY       !          0    2630010    users 
   TABLE DATA           H   COPY public.users (id, username, password, status, balance) FROM stdin;
    public          sjwauvpi    false    227   4�       I           0    0    operation_records_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.operation_records_id_seq', 58, true);
          public          sjwauvpi    false    230            J           0    0    operations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.operations_id_seq', 6, true);
          public          sjwauvpi    false    228            K           0    0    tokens_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tokens_id_seq', 553, true);
          public          sjwauvpi    false    232            L           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
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
       public            sjwauvpi    false    227            �           2620    2680814 7   operation_records update_user_balance_on_delete_trigger    TRIGGER     �   CREATE TRIGGER update_user_balance_on_delete_trigger AFTER UPDATE OF deleted ON public.operation_records FOR EACH ROW WHEN (((old.deleted = false) AND (new.deleted = true))) EXECUTE FUNCTION public.update_user_balance_on_delete();
 P   DROP TRIGGER update_user_balance_on_delete_trigger ON public.operation_records;
       public          sjwauvpi    false    967    231    231    231            �           2620    2631089 -   operation_records update_user_balance_trigger    TRIGGER     �   CREATE TRIGGER update_user_balance_trigger AFTER INSERT ON public.operation_records FOR EACH ROW EXECUTE FUNCTION public.update_user_balance();
 F   DROP TRIGGER update_user_balance_trigger ON public.operation_records;
       public          sjwauvpi    false    231    966            M           0    0 8   TRIGGER update_user_balance_trigger ON operation_records    COMMENT     �   COMMENT ON TRIGGER update_user_balance_trigger ON public.operation_records IS 'Updates the current user balance whenever a new operation has been added. 
';
          public          sjwauvpi    false    3996            �           2606    2630888 #   operation_records operation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operation_records
    ADD CONSTRAINT operation_id_fkey FOREIGN KEY (operation_id) REFERENCES public.operations(id) NOT VALID;
 M   ALTER TABLE ONLY public.operation_records DROP CONSTRAINT operation_id_fkey;
       public          sjwauvpi    false    229    3987    231            �           2606    2630883    operation_records user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.operation_records
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.operation_records DROP CONSTRAINT user_id_fkey;
       public          sjwauvpi    false    3983    227    231            �           2606    2635288    tokens user_id_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 =   ALTER TABLE ONLY public.tokens DROP CONSTRAINT user_id_fkey;
       public          sjwauvpi    false    227    233    3983            %   �   x���;�0��9h�������X�B��CaI[��ɲ~��H��"��z�/3�C�v��׃[�q��ݖ�����6q��x�
����SJ4K4K2K6���l���얰;�\ۧ0���T���Z�V)ɑ���3��U�٫RެXl�m�����a�Ö�����=4��KC�vK�ѯ�At/��m-�-��n�[��v��0�b�i�      #   k   x�%�[� E��v0�dLHb�(h)��^�s�d�tp�C�:x#��g�
�_������N��G�p������D/9+̭�@(�|���i�{LQ��ζf1��=%'U      '      x��}IӫH�����B3h���<I��&@����׷�U_mZ��J�[��s�ω���n˩�Ť4ʓ�2��r'76��2)�/�̞����^��oh���"��:�uN&��-�2�I���^�VՈV�hf�G�ʔ$��.9��)�x�bY�\�����I�:l�?���`(U��R28�Pz ��*�|b�k��B���RiR��?��\Xx�0|�}(a�(i��|����R��%Ўw��r��}S4��S�uΣ�P�=���x����P�Q�&��QB5��>���E��޻j����\e	'�ϟ����Z�ّc.�Z�݇�R�-p�'�[���k422b��"Sӣ�����S��]���־`>�H@�D�7�Qm�����ݶ�� �g���y�g�vēj�LK��D��%m�M���%��g[.e��z��2�^� 3��f�gs��L(~���y��P�AQ¾SJ6JnW�ჿ^2�?ȫ���.%���wV���J+��(U�dYFa8Ƅ=��c����`�V�\��1Fi[}Ҋ�����8���S�}8��H��!t�޺�Lc/�/�t�e��Rj������~�oT_�M�ӳs�s��	��Д)r�`��]֡�c/'A��	�8�UF�M:��I�j�����v��'ѭ}�*�dTo�R����;�PP?7N�|�0�6n�8�c�/�lÓ��ȃӪ#mv�ޤ��B��E5T%�"z���ַq´�q�O�?ݓ�1!!�蝔W:l/�"؞y�sZ$����	����%�?��-�9!o>IO��<r��(������!�>\���C�s$�k@|�+��?[]�D���xۯEb>i�Z��T���<hl�Q�\ם _�I�6N+�n�7	���k��륒��HŨ2CL�>��|��O��(��i����?Z�j�?K6-`�8�?rh\߽����)\Ir�^�	�����.��r�7N b��؁����q�'��8m��� Ew5�6$�7D��H6)�Kj7�{��~f������������Z��iӂJ�R���C��<ܝ���i�bG��#�x�u���|cOo������������?�q��'{����ә�7�N����p�jql����M�:���r�O������m�v�N.�>�J~A���Q�:�p�C��ßD��!jc=�q�O 9! ���λ�����[�!����b��.�V��s�q�2{�M��~0'�8�ӫ�q�z���MNo�3S�Y)L��0g[�*�޷��?E�7N��	'Xm���*�9��V#���*��a�h��U�"
U��L�=3�Hzm������)���l5
��k�o�99$=W��ѫ�#�T���]%����	V[�o���27^$>�IX�����w��WSr�z��[ӈ���>N�z��>}��}�jpu,�+K0v�b���s$N��RJ!9�fa?�g^wN�z:�� �t������#�F%��YP,̌b������QڮQ��܋Xcf�H��r�O�/9���8rzR^Mẋ��f@F#��r/��Y�̀�fk���H�@r� �t[��6}b:����^�父��.%H�T*E[-��iN��6N�z:��P9n}���b�С$�E���y��B�Q@LЪ��!1���'[>��ݷ�����s��)
�m�.���k�q��x��8齡���؁���������@!r��2��pI���S��Z\~T�t��$_J��B��	Xm�wO�Ӗ�y�����>s��\dY�X;��A����.9s�	K|�-8�ڂ~ק`ӧ�N�[��NNs/Lo�t�׫�ne��BF�:��zP:pޑ�t�B��c�����~ZG�Y�a.�1O���,��vx��v�n	�e[�HPkN��hc�lG��м�Ě�#a����f$�WIG4�6�i�:^��zm�8n����6N[��}}�MK�l49��?�g �����HEzm����`�l� r�6�	Tm�����}O�<�ځI���\�2a�����݆Q�;"c�%]r'[t���X��̍��g����5�㥠ip>�u�i��P�F��o2=B'S9�9�� �D�'�{�-v��
0����,��H�έ�G����]�r�t�F��k���>y�>�t�=y����iu�����u����ș�nYWtZuM�qW[�q"@�ַ5��i���b�!����a-������&^�/��!_c��*��  '
�x�׾�巾��G
�l�]]5��ܫ�Y�<?��Gi�_��3������4ӛ��������`�h�>��"��9c�'�Fͣ�p]c\�iy!�����O �	T���;���6:0]�xM�f��S}5+���~�ء4��or��Ɖ�� 9Q���O���V[���/�*z�������a1��J�Ԃ�m"�
�F���HP:��o����R�9�CwO��G�K|�?)-	6����-]�?�vD��q��(P}&�؁�̯���zw�(%��Ix����]<򀽲r��t��A,b���8	N��q�@����}���}-o�7.t2!_�<���@d�ΪG7V,j��aN5�������q�j��v��c���|����ԋ5�d��L<Ȯ<��B���ҶsN
\��	\m����q�������p�����>��fV,���W��}�v��K���]���`�hP����o���-v�-_Jr�qϸ[R�yDW����{�n�95I����H=o}*�Ar��N���J��'�h"��4�9�0�J�4���j��rwe�J�3������iP:�����qJ௵e����n�C�K��\;�++ï�Z�Qvk�Cs��w��ѻ����}��T�	�k}Op:>�y��)U��S�r��@vۇ�X�j�w4(��	T�2�@�d>��-��u/�����֜��q��[�����ƿ:׉4j
������aZq��	\���J���P��%�W�5)kMȥ�2#s�D�+��xY���hK(�h����)�nq�O�;�����s��)�}��S�P&��� n�������; �֯�=����D�	����9��Ȧ�X��-L�'��)�Gz�~�:(��@uP�������MOG�	W��*�&�>�q���!/L���ꂀ�z��˷-ݕ�k��X�˦��*1���,xw�}Q�*�|���~��D���,�|����\�m_,����2Ji�����
?ŗ�C� _56�+�-7�m�� ���*�>���P��%�c1t�2-ޫ�8Y_��I����zik���s�'���P� ''_y�nx�u�ОV��Љ?�oW�o'\�h����'�bIr��|�PE���=�巢���,��\�63�<��Dc�gS����ŨP��I�*0 I���T_מ���=c.�����H\�bJ��6��;=�N1�d�5�i'�1H
�r~]U�ֶ�b��A�h�V�f0�;��s�g��ټʘK�o;�I��Np�@ݹZ���;�K�K1���ږ8x5Lu�싞߼Uqx�s�b���2���������(�I
�K�ߖ{�ږ{]і� k�Fzk�
�(�(��yR���|x]���-~)P:U��>��m����r��3j�<����M~�HM�Cgc�Ӣ)OM�X;)P:�l��(����E�����Ec�[�كy|./��s.1���,��!��=P���[4�O��@*?��->��EÅ���<ڥqP�x/C��m�r�'���ْmʷ�6������&o��!u�s\�Rw"{��O�m�v��A~����ҩj/Ƞl�`G
��m��;7�7��b�M�/E�\�2��˽�՝���kɆ<w;)`�����.�me��*�����d���Ь���Q�N���sS�:�����e}Ԅ.��aj�M�����ֶ�K��G\�k���HW�+�{���b�L�+���ܚ���������0/7B�����3c�x��.+j"į�w����@I���o�����^9D�AYG�o�W��    ��j�ԝ�˒2G�3��7��5N Ik��퀵�:���?�F�̪�JNG�<&Ǉ�$��qKı���.�"���@I����I�iO�M�d��d������!�V��m�Y%��.��gI[�\�>`�@�e������m;+w��9ec��vZ���B}�Tf<ߨ��&L�*�ޗ-�\�`Ik��<o[����2T���*�)����"2$���c�wGPBRM�vo1���@�e4����ٷ5�\�
�릃	ӣP��n����:S��ÅW�M���&0s��F�vhs��K���Mw4����g��.$�㻞�n=Z5E豈IHR�
�W�ˇ���<ZI׼P���Ø�	����'Mu`J&b����y��uAr��/�>�.�?26b��e�zgK�uJϏ:����Ժ�FV� \S�Ǿ;ʽ4�AY�7R�H�Nj��D�vDE]��I0x���u�����N��LZ��H*3@I�2Rm]�?M�Njk��
�´�^N�9؈0~�����:>/�C�?E�y~F��ڷ�b��w�4,3�;B�V����K}<��4�Q�[�T����=����<@�'PR�|�[N}߶7����rE"h"�O��o�1�'N�G|�&|OPF]��@��&:(��F�$l{>�F��Xa�=�+�݂k��ϳ�Ӊ�oPh���!��à|g@I�2�n��/۷��Z�2����A���:=Wq�%������Tu�l���(Pn]��@Y�v	�|����w���ԶB�K����y/�Kvz�c?�.��܂הR���9�'� I��z��Om���)��^Pu�������C�yQ�n�br,���Ag�������"��s#�[v����B�0)*��jƹ�C|���t<�*J�s�H��o��z�`K�÷�����^��Q���Ul2܎9�޼��C�W�c4f���^�A=t �����uj#��ԣ-fF���t�/�	}�8���E��E����UPvT�� �.?o��zM�4�� �	
�.��1_�������>��Lｳ(�h
-PCG '�l~B�w��8pF�`�	(��6R�÷��Y�Z�����霟����C<����Ml~���hI����'� I�K�/�w#�U^�"�y�A�4F�ϥ#�ў4n���K�G%ҦL�=
(?3XR��ɗU�Fj[u�!z���)�q������ё>�AI��Ha�;8]�=�
L�����H�77ǳ�Ff����u�%?�I�5^Pa�����v���� ʂ��߶W>��������o�Q��z����6�@?T�_�Ie\��:)(*PR�z`��Էs�m��m��5Љ������hg�}"3v����O<)��¾i �y
����/��=|[Ni�+��kl̈�q#�C[�#��ɶ��W�@���(k���t'��竛�#�~r
��t�<��s��_�q���;'����+��@I��[(�F�k����0�ǩK5�A�ć����i���H`w�I��Է�(�%PR�^_ >Pv����}���ޔ�Ƴt�R�̖��;��+jO5�@��/��;�'	 IS�/&��Ծ����v^y���f���S��ݷ�2�\"Lm_��r8%ʞ�~�����:�w�3�3i�/��@N��%�#K�Q�0G��(�o�{��'^��G�Im�S)�Z�3R��s=U���)ɯ�˗X�����_��I@R����}�i�>!k0���#"f=<��NJ�����1�'�Un�}/�{,)p��}���s�+D��� �4=�����ʆu���ɻ���\=�>W��)0:�mp|-3U���s7-��xR�e�{��b�+�+9؝8���'ͨ�ݺ� r[%z��n�z,A� ��Y�#�����۫b��fUM�N�!��I�����H�N�[�W�w:�c��h\�S]���]_�IG���=`��t�71 �����O�=������M�ߍ_��!��YM+;�w˒���k-��� r��#�m�U�׍�4z�Bvnۺ�d����Cc�v��q0�R�@����S�I��)���,�>9�~�Vmw�F�-�0��NS�%%6f�`��kF+��crT�L
����h��6�(NܐI6m����ϼv�L��H���P����a|�?�~�E��'׿��-� �^��s��j�y�z�Q=����H�_�Q@n�= �
���p�)[�U_;ݵY� EL�%�iI��K�y�e	(�I
�)~'�M��	�j���Ƞ<��B�A+�OVyD|3p�i��h��n'J��owg��Tp��Mv�t�Ǵ��{qMF�d�*��F�=��s��V�I�}y|�C����=�X΋t���@&Y^o-��~�J�s�o�Cҿ�u�'�;��ԶhJO��w-J��~eI�Ox뷃�9�#�/�t�Q�`'��%���ߌ�m��PbrY�8���UGB*'��;�O�I��I>ħyX����28���@��O��6*�&��X`�hYl��H�����L)�%���+�㷍Զ���T��z�'rEB1a*�%U�<ǎ���D����>P�()PK��@�>��}��Զ]o?1�ї�9r�gx�[N�Ԡǌ ��g9%�4y�Ț�O�+)��H��a�X��ڙz�R0��)�2:�UJJ�%��#� k_>c�����Qv�<�aE�#��!�OB6p}h%/�|����$3e��P()P92|����H}'��&G��zӰ��D�%�^�3�9��U���N�:���+��L�I�*�R_[o[ɉ�`?�ꠓM8)�nvtչ�͉c2���^�7�]� ���~��H��b��C�9ӄ��_?�/q��e��-�ky�d޼��N
T�J
�N��Wo���FO2����jKJ�4�C�!��[1�ONXDL%����L
T����8{?��H�N�7XB��ɼ��xm!�;G��!�"���BE�k c���%�>��-�����
�"��U�y��a�<��F����'�������$)P]�����H����H�ۧn�Z�~�G�(��Z��0�{G���H��~����ܺ�I�O�����m�\B���D޽IrB|��X#�+�tv%�cǄ��r��K���l{	�a!9Ҵ��m��QMm�v?�m4����'j�컘�\p`Iz��C���z���D��0j�+
Z�W2����(�9�I�a� �>R_}�\e��1%����
֍�2Pf���!z�i\i��h��9d�v= *`R�j�=��-��"�+��.��FGZ��;�g�h�w�@�l?�/��_����]��M�KR<,�%W,�ⴚ?�,��Rn�v���p�K��' �5`R�j�=��-���@^�����j�,?I�W:v4DO�0�i��L
�x�7��m��l�'�(E�-�w�*1�����d҄s�?,%��⾷��( g%PR����C���Xy�V��%��MG{�Y���~���Cx�9DY^W�v�iن�3$��@F�/�p���������e�����;>yZ窅L}�Ѓ�;���ې,���B��.W7��7�i��x�ܰ�D&���S`��ϐ ���GϿh��포�lQ ��^�*�3��x}�X��Yu�r?��k���=N�/���M?q��S�ŕ�ץIE��9G�}8%#��i2S�V���]��T8��dM�S����f�3R[3�L�P��}x8��:��ʋ�o�̝��c<FV6����������}�����J���,�D��
	�*�ŇOa���U��f�{I@J�� u����Rb?��/h�n�V���Nצq�ɫ��7dxj��
Pq�a��$�>
PR�<�{���ښ?<_�ӤсG�X�U��wX�V��>Q#D-dn���% ��S_sj�ꍘ�c�YT��yƝa#*QE�<1Zlzv�޷g`܊��2_�I�?�vk����Zs�PL�T��¸׸���P_Jj ����{C�u	`܊�^i_n����Ȓs6�i^�9�^�i�42A��ѷh����L�    �޺��}_Υ���ΥT,�tQB�
QZB��]�ۈ��Eq|HH��������%0)p�8R`|�����ϥ�i��͖�A7��!G;U�&�}�K%v.�������{{N�k��m#�C�%,�&uL^/�U�8f��8�l)�5�����/`I�q�bI��]K%IH��ԉ��]=��$��{3��ޞ��C��'z]���Z�w�>L_�/9�O���DxSxʙq�s���"Q�;3+}6ΧH:=���V�I	߇T�������]>b��:�x��3���@T⠳&4`A=E�a=����x���c�}1���g�O�;v1�Y��8夔�mG�e���f��n�����N
H;���`���h&O�� =��<���k2baz��ŔY� ��с��ض<1|�?�'O;����<=�m��������#�!3k��wt ��=G5�O��s������5�c���v+CX�%V�QyCc������>J��%B>jpo��=���G��ɷ(�r�r2���s����g�� �� uB*���?K�a%'/�q���-�˨��?�n��o��n�D6�k,���6�7^�œ���cF�a���� ysaC����C�JK��L��i̱N�Uh>�r�-1+m� Ol�5���#�n����\S���^c'y�^mx|�U�ɉ��ʬ�n�&6����i�T�[)���3D� C���t���.��+p�[���@ܙ��l#?�����S��@�a9��wY�g\��.�ԷN�q�uz>o�
�O��N���-����(�������R˭F�4�vtZ���"�'�9��x�Hř��ƽrG#�y�\8,��{�C�����;���-|�:�%R^)�q��Rwt����\=���2a�"q��@|�ۆk��v��j �V�*IZ��L��w�t��['G����{��A���6���dt|}�=9�*	���,)yS�K�c;�q8��}�y9�^��Va��&�Tg�GdA�q��3'�D2���Ѕ� �-E�Ё��=Y7�=�wz՞�k�L
H�}����:�\���]Y�k;�U��rG�G���]�d9��������e�`�;XAz�a�41~G�6������k���a#|K�aO_nh�5�>�g��,�ܚ}]�L��'{�S<�Ы^�U��	ei�2]tª?�_��s2h'�C�6:�������I�pQ��j���:�K�R���!r,�'dk\DfG�6���[�_�O�=�#9wP���^���m��6����4h�X������X?蕇mj�ԗ������q���m]���x���V�Daw;�ƀxFr}G�u�����_��`�GY�%1��/��!K:��3�F�����\;��Kv��O}_~yR�k�Z�}�����"ٗ�t��%��1�|\oG�󿢃��_�����m�����|q�t����%b)mЍ,-�4IiG�Α��T�vt0:��~{S��h�ciǮ�EKA�xcU��`<���Gj�����f�/��f����t$�m�U��ߥ]�S�T�K����A�3��H�7��|��Х4lɕBmVe�.zig"�,�"F9�t��?��+��(�d��_ϸ)@t0/�_������<�������J��0��b@�n�������+a�:��a����m�|��L�H�B�q[��=�X6������L��|,Ȅ�m��d�p�Y�E��u�s%�k�v����<��:0��	��㛩�`b�`�B�ȻD���⪍�g�@��i�w�8gH��L�B��{G]=
�U	:������|�_��uvKiN���~.�A�C��?�1`�j���P����o=���C��|6#])i��|�2z��A����Zt�Owݸ���ÇL��Ӑ��[u2юx"�.�9~���|��|��|O���Œ7�^���?�d-��9*�q���2��Y�F��%�q��=�@�M�w�,�eA+t��т�����6�+G�^;��䛅���Jm~C�6�^eޘz��x}�����_8�`ft�*硪������+�_�O��~+�]ѳ�ȉ��{��g-�fi-�Rξz�������m�}��ھKG�o�|����y8���9��邵�<�3̧V�r~[��(����,ˣ�$]�d��=GTǍz!;�),��:0��	�����'X	�K=O���O�ϒ�o���Ŵ��Ǉ�)�u�}�y{XV����f��a��N��E�C-����e�������Ԇ�V���<}�?�v΂�������B�ڃ:\G��|�.ڴ�w0��F6�yP��Ok ����A�M��򟿧[�|��p�o�\��H��|�}7�J���@������5��颳 ud�����McO�7؏�uʧ���<_������3�Ѿa�)Z���*\�-�#�£���ʩ�i�M��i��~G�6�~&E秇vq\��cX	x]��;G�O����"
6�n�
�����.�:�����Fy/3BA`+���s�9��`<�KL����-یs̸QO����S:��3B�NzDȍ��/>���^���b���-ی#G�%?������О��;<�q�5?q:�oZs�zߟrM�gt ���r~@L�U/%3݊eO{��
:ͼB+�x~
nw��Li����6�5�I��h��~\��
��ι��9�$݉s�|G����1��>��t~�v��gs�?B����9m���A�٠��'���zz���с��O��r~�vȓ�:�:��j�/슙�!H}�-��J���┫�����:0����e{閕��'�qUv�c@J��p|���3���н�{�������L��m}L�^O��'tf�m�\f�m��!sͼ��>���{��y�_�ό�K0j���]��잕�����i�%�^�"��WX ���з�d|�Hq�F>�zoWĽҦ�q��[g���?�Tq�Ϥ�\[�/�g�I&CV��䔓��Ү{�g��=2(�=O�]i^ �/����zZ�f�1C���S�u�!g��+y'k�6���zE��>��b-�o���v_er�b\�5��#������6�ܘZ��ҳ�$�������l�#[�7�3��gkq�����`��.,ˎJ����<�v�b+��|G���. �;�8�f��_$��/���(��)��Y*�b�m��~G6ߑMm
���)ICU� 'i#1�Y��_rL��+|���y_I14X���'��y��&��9���(?����1K��HD<�������-/�y����6��}�>����)E�P���hj�������e7��R�\�gt #����]y�V2��C��|�l
��j| ^�W��憸/��7��Om �|���y'��tf$T-C��'�M4Fs����[�r�����<����@��gt@����?3���bB�ɩZ\��.e)��5ԼE�%�{��=&d5�kցqml��z��&4��FMz�y=�[���!;ZDcz�^���w�`\?�`��8��Ӂ}�y��G]����5��D��n�8���d���q)x� �Wb�� �Ӂ?�O�k��ڶU%O�X%;���������#�A
�9p��~��_�/��E�cD�����.V���n>O~����j���E��w@3�3߷����Q5 ����@%��1h�p�	��\�����6@�y��`�e~�;�
����۫$���O�j��}bQ��o��;����W�(����:���[W)�s�9$�h��}�\D��{��b�\5�|�k$��3h0N�_��<���e�z��Cu���(�^P3�mɗ-Ҁ>��pM�A$wm�w�'�3:����*���ᔱh��G��N$6E����5����$���=���]��I��r��^�v;���q�B��4��NA��)�k;Ӯu`|R?���2[��+qQ����$��˱��N�f�^�0��J����y{���Ű�w�����iA�	��0B��,�:^ �  ^�=MY��6`N�a�c����nj�����z�t{�F��$_$����*�/fG�u���`�J#�ɺ@i�FS҄M�1�I���U��)���A@��N^[|G�6���Ro����"�"gG�2���^�统R�����(Mȸ;:(����x��GDy5�k!�ɫ�R&�;U�7i�Q�����+)�_��]|��l���<���ޚްS�IIۏI_�h��m_�kkG�]���������g�Y&��
$>q�F��(z�WV��IG:�;�.�k	�G��Z$�m�~~{_�����rR	��N���`��hnR�Cih��m��Kk��[���c��{��i�*Ð_x��1鍝i�Qa����m��>��r��� s��+k��2��Ѷ3?��2lWΒ����ip�����2=���7�6t&Ӎ�=a�,�°�j�v7������O`���t_����<����N��g��ȃqim�ۺ�κ�{ħ(�*���;4I�/���?�/���Qn��q0.��	0w�}���}�����Cp\IwAu�%�EDB���k���#�����ָ6��R���Ixqa�7_��`�^��t�~��zy`��O���l�����[Dy	|M�6��7ʁ�~u+���QL����g`n�!��Җ�kf;�m*C_Vv��K*�G�f�*3�m2zL{�A�|��l��T9ru�,)�%-,G�/vo,��E�@(����y0����A)���u�T�}㜱_A�\��\����"~����jơ�3:(�K�;��2ޜ�b�h�6f�}Z��zz��<"-*��#X��{_ơ�+:W��wk*Ք#GZ�d4v±��R�\������e�bC*����:P}�O�`�y#���/pZW8l����5�<�<�=�h�W�U,k��;:(��X����z�]� �Q���Kj\7$��	���0N��J=r�X�@'����T�|�g�z��ɤ��� 5W�����iTH�xh�g9ct���}�;��r�=͑t��KgO��薰LM:�H)q�+VI�֡��q8w����̶K|o�����~|�ly��":����r&m�-�S����wN@ݻ�\����f�UqFu黸1f���L#���U8��&��'�����3�gtpJ��u�$6P���JK�t��Ǉt�oFS��@�g�M8���^��x�w�JV�.����������;0��.�l1 x2���͇��A����6T.��� �Z��׵?����Xh��qޓ3j����;'�N�Bv�/�[G�`u���T(����d��7𲍴�C��`��B^�}���O�`����o�¼t�x<�v��l������o7�I��R����/V0���A?�:�G~{)�=gE���T�ne��k���uT��;�1��-���耴�Gt`q_��w!F���Ipi�1Np�xAB�{�or�=��#�,�|G��Ё���u�w<��9���Τ�>t�9�%�%�ҽ�L��;:0��� �D����۴<;�|�A[�񉞏��$�@�>����A���F+f�f��[G=�z�T�<�JĨ{���+N��Y�{���
yܽ}�U��	0��m��7�zz��0�l���`+,c����6����R���^A�������4�޽�0�ٸx��uS�o���Ec�E�0f0�?$��`~����t~��e����6�j��+��W ��H�\]�way%}��QޫW憾���1cz{��n�ַ�خ-�/!K;�f�EC�1�B��+h0�}�D/����a��0$C�^�G^!r�)�p>0TZ�3�;�gt`�}?��f^���J/	��A�f�V2h���^�꽳�����o�?����~�#q
I�p
=��ԋ����HA�%yE�����aFV�A������ޘ�X�����AMv�gD�S%Bg뭛�=���{0�ȟсi�~*��#Fhiw���T��;y�W�gSI�D݉��\-��,�B���;����.,�Ǘ	w� �v� ��[�
=���nj�����y`9�:�*�g�M`�ؑ~JfJ���a"Fā�o��+��ˑ1�w� ���jk���F�r,^�*�Rb^f�*,}�r�W�gnX����?�偿���q����4�0��`��&���3���FO鑔��:.Ƒ�#:��Au��7��a6�z���d�P9���$�n��1��/��|m/��`���}ۧ��k�"q>'�8!hF��:��{�r���_��c�}���gtP:�M[���WfՑ 2jT����7\�j���޽�|������}�?js̰�N�f-�Y��$�à�G�P�����\mb��`<�?���:m�r���Y��6���҇���م �'��Xx=�x��wo_M�������F����g�{��o\6��,�W�}w�5�V���&z=���A��Ji���ѕ>��2���^PԼ{Ey���ߴ��j�Q?�����P�A9RD�u��Ӻy[IQ���}���p���C��0��o���{[�U�O�AyBD�������rB�ν�ң.a���Pm]#"N�����9���P��с��~�X�,�K/]�P�uc����6�lN�DQ���BK�̋�k(܆��2L��؆*��H,'N{���9�=Dٳ��:�r'�+,(܏���n51��2*�y ���)�4����_E�IO$��a;�~6��#:0�����|F��L�za���"RXB�t}��t�����!��C{��[�}��R��o*�*h䔻!r|�2���$s!�d/y�mг��o6�B6���{Y=����)��v횓,aC	bU�����7l(��(�ʏ�����~�D��)�Zl҆C�S��!CBe�ђ�siM�U�c�Gt`�}�)]�v5�s³�p�^'�G��u�d���©r��p��
�'�'t�;SZQO�Z���i"�	Xƌ31������P�������'tpq�ְ�x����J�xL�5tb�[_�<W]�������\�A���Z�E\�c�N�ݖ!+@:���1%]|�-sb�1D��!YN�A������[���Ov�=_���ֱ!����)�C�ʻ[�K�Gtp:���_���Fẑ��teןg~��B�	2����|��߇ݝ�'��r���*��^nJ.��	%C/+��,5SK�:��ϲ�;�@�eVo���X��Yc�[1��T�{������|&r49�u��A����A���g�� i�dI�kwO����ߢ|R3�iZ9�<)�B�o2����#:���A��͙�;Q�q�館����B�-�_T!��;t�����Pn��A�woí"|.��7�_�����{�)����;O.�u����7�@����Ai���(�AO�r^�T%}���hظ�W���|\/h�q�^aA9�~C�T��o:��=�KS�Kaqy��q+�ݝ�
xPe��1�
���}���J?����_����V�����ZL���n'�y�J�ս�D]*Q�o�wz���:?����`i�K��Ȩ0��Qߏ�~j:!&�	^�!	\)�;J��A��}s�]��a��=�9��oq*��=./7�F#�����_�GtPZ�A�T�p�H� G��XM"�5�%��EꏼQ�gQ� ��n��?�����H��      !   �   x�m�;�0  ���\Z���|$*?�q�R�PZ�U��7q3��MI�rNƼ�)�w�f��E�5���6/;?F7� #`�s2\�v�Z����X�]1�3�nJ�e�$�	�*2������	����r�}� �<@	}�ܫ���z"|&{']��$���@U���<8     
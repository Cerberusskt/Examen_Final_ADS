PGDMP     "                    {            db_producto    15.0    15.0 !                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16419    db_producto    DATABASE     ~   CREATE DATABASE db_producto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_producto;
                postgres    false            �            1259    16440 
   s_producto    SEQUENCE     �   CREATE SEQUENCE public.s_producto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
    CYCLE;
 !   DROP SEQUENCE public.s_producto;
       public          postgres    false            �            1259    16427    tb_categoria    TABLE     e   CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    descripcion_cat text NOT NULL
);
     DROP TABLE public.tb_categoria;
       public         heap    postgres    false            �            1259    16420    tb_producto    TABLE     �   CREATE TABLE public.tb_producto (
    id_pr integer DEFAULT nextval('public.s_producto'::regclass) NOT NULL,
    id_cat integer NOT NULL,
    descripcion_pr text NOT NULL,
    precio_pr numeric NOT NULL,
    cantidad integer NOT NULL
);
    DROP TABLE public.tb_producto;
       public         heap    postgres    false    216            �            1259    16559 
   tb_tarjeta    TABLE     �   CREATE TABLE public.tb_tarjeta (
    id_tarjeta integer NOT NULL,
    num_tarjeta character(16) NOT NULL,
    titular_tarjeta text NOT NULL,
    f_vencimiento_tarjeta text NOT NULL,
    cvv_tarjeta integer NOT NULL
);
    DROP TABLE public.tb_tarjeta;
       public         heap    postgres    false            �            1259    16558    tb_tarjeta_id_tarjeta_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_tarjeta_id_tarjeta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_tarjeta_id_tarjeta_seq;
       public          postgres    false    219            $           0    0    tb_tarjeta_id_tarjeta_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_tarjeta_id_tarjeta_seq OWNED BY public.tb_tarjeta.id_tarjeta;
          public          postgres    false    218            �            1259    16515    tb_usuarios    TABLE     %  CREATE TABLE public.tb_usuarios (
    cedula_pr character(10) NOT NULL,
    nombre_pr text NOT NULL,
    edad_pr character(10) NOT NULL,
    residencia_pr text NOT NULL,
    estado_pr text NOT NULL,
    color_pr text NOT NULL,
    "contraseña_pr" text NOT NULL,
    email_pr text NOT NULL
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false            �            1259    16568    tb_venta    TABLE     �   CREATE TABLE public.tb_venta (
    id_venta integer NOT NULL,
    id_producto integer NOT NULL,
    monto_venta double precision[] NOT NULL,
    cedula_pr text NOT NULL,
    id_tarjeta integer NOT NULL
);
    DROP TABLE public.tb_venta;
       public         heap    postgres    false            �            1259    16567    tb_venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tb_venta_id_venta_seq;
       public          postgres    false    221            %           0    0    tb_venta_id_venta_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tb_venta_id_venta_seq OWNED BY public.tb_venta.id_venta;
          public          postgres    false    220            x           2604    16562    tb_tarjeta id_tarjeta    DEFAULT     ~   ALTER TABLE ONLY public.tb_tarjeta ALTER COLUMN id_tarjeta SET DEFAULT nextval('public.tb_tarjeta_id_tarjeta_seq'::regclass);
 D   ALTER TABLE public.tb_tarjeta ALTER COLUMN id_tarjeta DROP DEFAULT;
       public          postgres    false    219    218    219            y           2604    16571    tb_venta id_venta    DEFAULT     v   ALTER TABLE ONLY public.tb_venta ALTER COLUMN id_venta SET DEFAULT nextval('public.tb_venta_id_venta_seq'::regclass);
 @   ALTER TABLE public.tb_venta ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    221    220    221                      0    16427    tb_categoria 
   TABLE DATA           ?   COPY public.tb_categoria (id_cat, descripcion_cat) FROM stdin;
    public          postgres    false    215   E'                 0    16420    tb_producto 
   TABLE DATA           Y   COPY public.tb_producto (id_pr, id_cat, descripcion_pr, precio_pr, cantidad) FROM stdin;
    public          postgres    false    214   '                 0    16559 
   tb_tarjeta 
   TABLE DATA           r   COPY public.tb_tarjeta (id_tarjeta, num_tarjeta, titular_tarjeta, f_vencimiento_tarjeta, cvv_tarjeta) FROM stdin;
    public          postgres    false    219   ,(                 0    16515    tb_usuarios 
   TABLE DATA           �   COPY public.tb_usuarios (cedula_pr, nombre_pr, edad_pr, residencia_pr, estado_pr, color_pr, "contraseña_pr", email_pr) FROM stdin;
    public          postgres    false    217   I(                 0    16568    tb_venta 
   TABLE DATA           ]   COPY public.tb_venta (id_venta, id_producto, monto_venta, cedula_pr, id_tarjeta) FROM stdin;
    public          postgres    false    221   �)       &           0    0 
   s_producto    SEQUENCE SET     9   SELECT pg_catalog.setval('public.s_producto', 1, false);
          public          postgres    false    216            '           0    0    tb_tarjeta_id_tarjeta_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_tarjeta_id_tarjeta_seq', 1, false);
          public          postgres    false    218            (           0    0    tb_venta_id_venta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tb_venta_id_venta_seq', 1, false);
          public          postgres    false    220            }           2606    16433    tb_categoria tb_categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT tb_categoria_pkey PRIMARY KEY (id_cat);
 H   ALTER TABLE ONLY public.tb_categoria DROP CONSTRAINT tb_categoria_pkey;
       public            postgres    false    215            {           2606    16426    tb_producto tb_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_pkey PRIMARY KEY (id_pr);
 F   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT tb_producto_pkey;
       public            postgres    false    214            �           2606    16566    tb_tarjeta tb_tarjeta_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_tarjeta
    ADD CONSTRAINT tb_tarjeta_pkey PRIMARY KEY (id_tarjeta);
 D   ALTER TABLE ONLY public.tb_tarjeta DROP CONSTRAINT tb_tarjeta_pkey;
       public            postgres    false    219                       2606    16537    tb_usuarios tb_usuarios_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_pkey PRIMARY KEY (cedula_pr);
 F   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_pkey;
       public            postgres    false    217            �           2606    16575    tb_venta tb_venta_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_venta
    ADD CONSTRAINT tb_venta_pkey PRIMARY KEY (id_venta);
 @   ALTER TABLE ONLY public.tb_venta DROP CONSTRAINT tb_venta_pkey;
       public            postgres    false    221            �           2606    16434 #   tb_producto tb_producto_id_cat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT tb_producto_id_cat_fkey FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat) NOT VALID;
 M   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT tb_producto_id_cat_fkey;
       public          postgres    false    214    3197    215            �           2606    16576     tb_venta tb_venta_cedula_pr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_venta
    ADD CONSTRAINT tb_venta_cedula_pr_fkey FOREIGN KEY (cedula_pr) REFERENCES public.tb_usuarios(cedula_pr) NOT VALID;
 J   ALTER TABLE ONLY public.tb_venta DROP CONSTRAINT tb_venta_cedula_pr_fkey;
       public          postgres    false    217    221    3199            �           2606    16581 "   tb_venta tb_venta_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_venta
    ADD CONSTRAINT tb_venta_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.tb_producto(id_pr) NOT VALID;
 L   ALTER TABLE ONLY public.tb_venta DROP CONSTRAINT tb_venta_id_producto_fkey;
       public          postgres    false    214    221    3195            �           2606    16586 !   tb_venta tb_venta_id_tarjeta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_venta
    ADD CONSTRAINT tb_venta_id_tarjeta_fkey FOREIGN KEY (id_tarjeta) REFERENCES public.tb_tarjeta(id_tarjeta) NOT VALID;
 K   ALTER TABLE ONLY public.tb_venta DROP CONSTRAINT tb_venta_id_tarjeta_fkey;
       public          postgres    false    219    221    3201               *   x�3�tLNN-�/��/�2�-NL��2��+M-������ ��	�         �   x�]���0Dϳ_�/ ݖ�=��#�
5�BIA��%1�x�y3;S���-.AuQ��.&0[���q���a��
�yX�0�ۘ����)�a�I�9L�[9�Ē\��R�����9G�)V����>G�;������}��X�<eA!#�QS�f�3&            x������ � �         9  x�u�=o�0���WD��3�`K��]�v1�j�F�Dʿ��&!Q��|���3�]���� o>D=h��34h�b��0Dw���	���5y�ی>����88�&�0�01h1}<gIaDp�jb��1����Ŗ����dȒ"T����b>�Cn͘�:[�R�^����3 } ^5��JZ^�z�w�R	T~Ƥ�P���C�f?2�94*�6F��L�JRhupk���b��ڭxi�S����s�M��bcju�5��l�b�)����^�_������*�8�0���Ц���V�%/�: y�b��R��Uln�3ϲ��o�            x������ � �     
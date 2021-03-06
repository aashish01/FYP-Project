PGDMP     :                    x         	   FYP_Final    12.2    12.2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20524 	   FYP_Final    DATABASE     �   CREATE DATABASE "FYP_Final" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "FYP_Final";
                postgres    false            �            1259    20652    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    20650    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    219            �           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    218            �            1259    20662    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    20660     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    221            �           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    220            �            1259    20556 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    20554    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    20566    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    20564    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    20548    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    20546    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    20574 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    20584    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    20582    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    20572    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    20592    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    20590 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    20722    core_address    TABLE     k  CREATE TABLE public.core_address (
    id integer NOT NULL,
    street_address character varying(100) NOT NULL,
    apartment_address character varying(100) NOT NULL,
    country character varying(2) NOT NULL,
    zip character varying(100) NOT NULL,
    address_type character varying(1) NOT NULL,
    "default" boolean NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.core_address;
       public         heap    postgres    false            �            1259    20720    core_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_address_id_seq;
       public          postgres    false    225            �           0    0    core_address_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_address_id_seq OWNED BY public.core_address.id;
          public          postgres    false    224            �            1259    20730    core_coupon    TABLE     �   CREATE TABLE public.core_coupon (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    amount double precision NOT NULL
);
    DROP TABLE public.core_coupon;
       public         heap    postgres    false            �            1259    20728    core_coupon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_coupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_coupon_id_seq;
       public          postgres    false    227            �           0    0    core_coupon_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.core_coupon_id_seq OWNED BY public.core_coupon.id;
          public          postgres    false    226            �            1259    20738 	   core_item    TABLE     �  CREATE TABLE public.core_item (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    price double precision NOT NULL,
    discount_price double precision,
    category character varying(2) NOT NULL,
    label character varying(1) NOT NULL,
    availabily character varying(1),
    slug character varying(50),
    description text NOT NULL,
    image character varying(100) NOT NULL
);
    DROP TABLE public.core_item;
       public         heap    postgres    false            �            1259    20736    core_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_item_id_seq;
       public          postgres    false    229            �           0    0    core_item_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_item_id_seq OWNED BY public.core_item.id;
          public          postgres    false    228            �            1259    20749 
   core_order    TABLE       CREATE TABLE public.core_order (
    id integer NOT NULL,
    ref_code character varying(20),
    ordered boolean NOT NULL,
    start_date timestamp with time zone NOT NULL,
    ordered_date timestamp with time zone NOT NULL,
    being_received boolean NOT NULL,
    received boolean NOT NULL,
    refund_requested boolean NOT NULL,
    refund_granted boolean NOT NULL,
    billing_address_id integer,
    coupon_id integer,
    payment_id integer,
    shipping_address_id integer,
    user_id integer NOT NULL
);
    DROP TABLE public.core_order;
       public         heap    postgres    false            �            1259    20747    core_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_order_id_seq;
       public          postgres    false    231            �           0    0    core_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_order_id_seq OWNED BY public.core_order.id;
          public          postgres    false    230            �            1259    20805    core_order_items    TABLE     �   CREATE TABLE public.core_order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    orderitem_id integer NOT NULL
);
 $   DROP TABLE public.core_order_items;
       public         heap    postgres    false            �            1259    20803    core_order_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_order_items_id_seq;
       public          postgres    false    243            �           0    0    core_order_items_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.core_order_items_id_seq OWNED BY public.core_order_items.id;
          public          postgres    false    242            �            1259    20797    core_orderitem    TABLE     �   CREATE TABLE public.core_orderitem (
    id integer NOT NULL,
    quantity integer NOT NULL,
    ordered boolean NOT NULL,
    item_id integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.core_orderitem;
       public         heap    postgres    false            �            1259    20795    core_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_orderitem_id_seq;
       public          postgres    false    241            �           0    0    core_orderitem_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.core_orderitem_id_seq OWNED BY public.core_orderitem.id;
          public          postgres    false    240            �            1259    20789    core_payment    TABLE     �   CREATE TABLE public.core_payment (
    id integer NOT NULL,
    stripe_charge_id character varying(50) NOT NULL,
    amount double precision NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    user_id integer
);
     DROP TABLE public.core_payment;
       public         heap    postgres    false            �            1259    20787    core_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_payment_id_seq;
       public          postgres    false    239            �           0    0    core_payment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_payment_id_seq OWNED BY public.core_payment.id;
          public          postgres    false    238            �            1259    20757 	   core_post    TABLE     �   CREATE TABLE public.core_post (
    id integer NOT NULL,
    title1 character varying(120) NOT NULL,
    title2 character varying(100),
    description text NOT NULL,
    image character varying(100) NOT NULL
);
    DROP TABLE public.core_post;
       public         heap    postgres    false            �            1259    20755    core_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_post_id_seq;
       public          postgres    false    233            �           0    0    core_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_post_id_seq OWNED BY public.core_post.id;
          public          postgres    false    232            �            1259    20778    core_refund    TABLE     �   CREATE TABLE public.core_refund (
    id integer NOT NULL,
    reason text NOT NULL,
    accepted boolean NOT NULL,
    email character varying(254) NOT NULL,
    order_id integer NOT NULL
);
    DROP TABLE public.core_refund;
       public         heap    postgres    false            �            1259    20776    core_refund_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_refund_id_seq;
       public          postgres    false    237            �           0    0    core_refund_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.core_refund_id_seq OWNED BY public.core_refund.id;
          public          postgres    false    236            �            1259    20768    core_userprofile    TABLE     �   CREATE TABLE public.core_userprofile (
    id integer NOT NULL,
    one_click_purchasing boolean NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.core_userprofile;
       public         heap    postgres    false            �            1259    20766    core_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_userprofile_id_seq;
       public          postgres    false    235            �           0    0    core_userprofile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.core_userprofile_id_seq OWNED BY public.core_userprofile.id;
          public          postgres    false    234            �            1259    20689    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    20687    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            �            1259    20538    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    20536    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    20527    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    20525    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    20927    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    20939    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    20937    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    246            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    245            �            1259    20950    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    20948 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    248            �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    247            �            1259    20961    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    20959    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    250            �           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    249            �            1259    20969    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            �            1259    20967 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    252            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    251            �            1259    20977    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    20975     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    254            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    253            +           2604    20655    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ,           2604    20665    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            &           2604    20559    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            '           2604    20569    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            %           2604    20551    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            (           2604    20577    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            )           2604    20587    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            *           2604    20595    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            /           2604    20725    core_address id    DEFAULT     r   ALTER TABLE ONLY public.core_address ALTER COLUMN id SET DEFAULT nextval('public.core_address_id_seq'::regclass);
 >   ALTER TABLE public.core_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            0           2604    20733    core_coupon id    DEFAULT     p   ALTER TABLE ONLY public.core_coupon ALTER COLUMN id SET DEFAULT nextval('public.core_coupon_id_seq'::regclass);
 =   ALTER TABLE public.core_coupon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            1           2604    20741    core_item id    DEFAULT     l   ALTER TABLE ONLY public.core_item ALTER COLUMN id SET DEFAULT nextval('public.core_item_id_seq'::regclass);
 ;   ALTER TABLE public.core_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            2           2604    20752    core_order id    DEFAULT     n   ALTER TABLE ONLY public.core_order ALTER COLUMN id SET DEFAULT nextval('public.core_order_id_seq'::regclass);
 <   ALTER TABLE public.core_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            8           2604    20808    core_order_items id    DEFAULT     z   ALTER TABLE ONLY public.core_order_items ALTER COLUMN id SET DEFAULT nextval('public.core_order_items_id_seq'::regclass);
 B   ALTER TABLE public.core_order_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            7           2604    20800    core_orderitem id    DEFAULT     v   ALTER TABLE ONLY public.core_orderitem ALTER COLUMN id SET DEFAULT nextval('public.core_orderitem_id_seq'::regclass);
 @   ALTER TABLE public.core_orderitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            6           2604    20792    core_payment id    DEFAULT     r   ALTER TABLE ONLY public.core_payment ALTER COLUMN id SET DEFAULT nextval('public.core_payment_id_seq'::regclass);
 >   ALTER TABLE public.core_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            3           2604    20760    core_post id    DEFAULT     l   ALTER TABLE ONLY public.core_post ALTER COLUMN id SET DEFAULT nextval('public.core_post_id_seq'::regclass);
 ;   ALTER TABLE public.core_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            5           2604    20781    core_refund id    DEFAULT     p   ALTER TABLE ONLY public.core_refund ALTER COLUMN id SET DEFAULT nextval('public.core_refund_id_seq'::regclass);
 =   ALTER TABLE public.core_refund ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            4           2604    20771    core_userprofile id    DEFAULT     z   ALTER TABLE ONLY public.core_userprofile ALTER COLUMN id SET DEFAULT nextval('public.core_userprofile_id_seq'::regclass);
 B   ALTER TABLE public.core_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            -           2604    20692    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            $           2604    20541    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            #           2604    20530    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            9           2604    20942    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            :           2604    20953    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            ;           2604    20964    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            <           2604    20972     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            =           2604    20980    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            c          0    20652    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    219   �k      e          0    20662    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    221   �k      Y          0    20556 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �k      [          0    20566    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   l      W          0    20548    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   /l      ]          0    20574 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   qo      _          0    20584    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �p      a          0    20592    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   q      i          0    20722    core_address 
   TABLE DATA           }   COPY public.core_address (id, street_address, apartment_address, country, zip, address_type, "default", user_id) FROM stdin;
    public          postgres    false    225   ,q      k          0    20730    core_coupon 
   TABLE DATA           7   COPY public.core_coupon (id, code, amount) FROM stdin;
    public          postgres    false    227   �q      m          0    20738 	   core_item 
   TABLE DATA           |   COPY public.core_item (id, title, price, discount_price, category, label, availabily, slug, description, image) FROM stdin;
    public          postgres    false    229   �q      o          0    20749 
   core_order 
   TABLE DATA           �   COPY public.core_order (id, ref_code, ordered, start_date, ordered_date, being_received, received, refund_requested, refund_granted, billing_address_id, coupon_id, payment_id, shipping_address_id, user_id) FROM stdin;
    public          postgres    false    231   Ps      {          0    20805    core_order_items 
   TABLE DATA           F   COPY public.core_order_items (id, order_id, orderitem_id) FROM stdin;
    public          postgres    false    243   St      y          0    20797    core_orderitem 
   TABLE DATA           Q   COPY public.core_orderitem (id, quantity, ordered, item_id, user_id) FROM stdin;
    public          postgres    false    241   �t      w          0    20789    core_payment 
   TABLE DATA           Z   COPY public.core_payment (id, stripe_charge_id, amount, "timestamp", user_id) FROM stdin;
    public          postgres    false    239   �t      q          0    20757 	   core_post 
   TABLE DATA           K   COPY public.core_post (id, title1, title2, description, image) FROM stdin;
    public          postgres    false    233   �u      u          0    20778    core_refund 
   TABLE DATA           L   COPY public.core_refund (id, reason, accepted, email, order_id) FROM stdin;
    public          postgres    false    237   v      s          0    20768    core_userprofile 
   TABLE DATA           M   COPY public.core_userprofile (id, one_click_purchasing, user_id) FROM stdin;
    public          postgres    false    235   +v      g          0    20689    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   Hv      U          0    20538    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �{      S          0    20527    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �|      |          0    20927    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    244   	      ~          0    20939    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    246   ��      �          0    20950    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    248   ��      �          0    20961    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    250   т      �          0    20969    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    252   �      �          0    20977    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    254   �      �           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);
          public          postgres    false    218            �           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    core_address_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_address_id_seq', 10, true);
          public          postgres    false    224            �           0    0    core_coupon_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_coupon_id_seq', 1, false);
          public          postgres    false    226            �           0    0    core_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.core_item_id_seq', 17, true);
          public          postgres    false    228            �           0    0    core_order_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.core_order_id_seq', 5, true);
          public          postgres    false    230            �           0    0    core_order_items_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.core_order_items_id_seq', 7, true);
          public          postgres    false    242            �           0    0    core_orderitem_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_orderitem_id_seq', 7, true);
          public          postgres    false    240            �           0    0    core_payment_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_payment_id_seq', 4, true);
          public          postgres    false    238            �           0    0    core_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_post_id_seq', 1, true);
          public          postgres    false    232            �           0    0    core_refund_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_refund_id_seq', 1, false);
          public          postgres    false    236            �           0    0    core_userprofile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.core_userprofile_id_seq', 1, false);
          public          postgres    false    234            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 71, true);
          public          postgres    false    222            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    202            �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    245            �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    247            �           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    249            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    251            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    253            g           2606    20685 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    219            i           2606    20657 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    219            n           2606    20669 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    221            p           2606    20667 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    221            K           2606    20718    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            P           2606    20608 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            S           2606    20571 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            M           2606    20561    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            F           2606    20599 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            H           2606    20553 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            [           2606    20589 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            ^           2606    20623 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            U           2606    20579    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            a           2606    20597 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            d           2606    20637 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            X           2606    20712     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            v           2606    20727    core_address core_address_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_address
    ADD CONSTRAINT core_address_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_address DROP CONSTRAINT core_address_pkey;
       public            postgres    false    225            y           2606    20735    core_coupon core_coupon_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.core_coupon
    ADD CONSTRAINT core_coupon_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_coupon DROP CONSTRAINT core_coupon_pkey;
       public            postgres    false    227            {           2606    20746    core_item core_item_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_item
    ADD CONSTRAINT core_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_item DROP CONSTRAINT core_item_pkey;
       public            postgres    false    229            �           2606    20876 E   core_order_items core_order_items_order_id_orderitem_id_f9cea05f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_order_id_orderitem_id_f9cea05f_uniq UNIQUE (order_id, orderitem_id);
 o   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_order_id_orderitem_id_f9cea05f_uniq;
       public            postgres    false    243    243            �           2606    20810 &   core_order_items core_order_items_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_pkey;
       public            postgres    false    243            �           2606    20754    core_order core_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_pkey;
       public            postgres    false    231            �           2606    20802 "   core_orderitem core_orderitem_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_pkey;
       public            postgres    false    241            �           2606    20794    core_payment core_payment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_payment DROP CONSTRAINT core_payment_pkey;
       public            postgres    false    239            �           2606    20765    core_post core_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_post
    ADD CONSTRAINT core_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_post DROP CONSTRAINT core_post_pkey;
       public            postgres    false    233            �           2606    20786    core_refund core_refund_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.core_refund
    ADD CONSTRAINT core_refund_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_refund DROP CONSTRAINT core_refund_pkey;
       public            postgres    false    237            �           2606    20773 &   core_userprofile core_userprofile_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.core_userprofile
    ADD CONSTRAINT core_userprofile_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_userprofile DROP CONSTRAINT core_userprofile_pkey;
       public            postgres    false    235            �           2606    20775 -   core_userprofile core_userprofile_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.core_userprofile
    ADD CONSTRAINT core_userprofile_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.core_userprofile DROP CONSTRAINT core_userprofile_user_id_key;
       public            postgres    false    235            s           2606    20698 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223            A           2606    20545 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            C           2606    20543 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            ?           2606    20535 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    20934 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    244            �           2606    20946 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    246            �           2606    20944    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    246            �           2606    20958 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    248            �           2606    20989 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    248    248            �           2606    20997 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    252    252            �           2606    20966 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    250            �           2606    20974 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    252            �           2606    20987 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    254    254            �           2606    20985 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    254            e           1259    20686 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    219            j           1259    20676 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    219            k           1259    20683 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    221            l           1259    20682 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    221            I           1259    20719    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            N           1259    20619 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            Q           1259    20620 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            D           1259    20605 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            Y           1259    20635 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            \           1259    20634 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            _           1259    20649 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            b           1259    20648 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            V           1259    20713     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            w           1259    20831    core_address_user_id_7681a39c    INDEX     Y   CREATE INDEX core_address_user_id_7681a39c ON public.core_address USING btree (user_id);
 1   DROP INDEX public.core_address_user_id_7681a39c;
       public            postgres    false    225            |           1259    20832    core_item_slug_07f502d0    INDEX     M   CREATE INDEX core_item_slug_07f502d0 ON public.core_item USING btree (slug);
 +   DROP INDEX public.core_item_slug_07f502d0;
       public            postgres    false    229            }           1259    20833    core_item_slug_07f502d0_like    INDEX     f   CREATE INDEX core_item_slug_07f502d0_like ON public.core_item USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.core_item_slug_07f502d0_like;
       public            postgres    false    229            ~           1259    20844 &   core_order_billing_address_id_b33cde99    INDEX     k   CREATE INDEX core_order_billing_address_id_b33cde99 ON public.core_order USING btree (billing_address_id);
 :   DROP INDEX public.core_order_billing_address_id_b33cde99;
       public            postgres    false    231                       1259    20845    core_order_coupon_id_bade53ba    INDEX     Y   CREATE INDEX core_order_coupon_id_bade53ba ON public.core_order USING btree (coupon_id);
 1   DROP INDEX public.core_order_coupon_id_bade53ba;
       public            postgres    false    231            �           1259    20887 "   core_order_items_order_id_c5dde6c1    INDEX     c   CREATE INDEX core_order_items_order_id_c5dde6c1 ON public.core_order_items USING btree (order_id);
 6   DROP INDEX public.core_order_items_order_id_c5dde6c1;
       public            postgres    false    243            �           1259    20888 &   core_order_items_orderitem_id_e44f86b6    INDEX     k   CREATE INDEX core_order_items_orderitem_id_e44f86b6 ON public.core_order_items USING btree (orderitem_id);
 :   DROP INDEX public.core_order_items_orderitem_id_e44f86b6;
       public            postgres    false    243            �           1259    20889    core_order_payment_id_e5a26a3c    INDEX     [   CREATE INDEX core_order_payment_id_e5a26a3c ON public.core_order USING btree (payment_id);
 2   DROP INDEX public.core_order_payment_id_e5a26a3c;
       public            postgres    false    231            �           1259    20890 '   core_order_shipping_address_id_8c054f15    INDEX     m   CREATE INDEX core_order_shipping_address_id_8c054f15 ON public.core_order USING btree (shipping_address_id);
 ;   DROP INDEX public.core_order_shipping_address_id_8c054f15;
       public            postgres    false    231            �           1259    20891    core_order_user_id_b03bbffd    INDEX     U   CREATE INDEX core_order_user_id_b03bbffd ON public.core_order USING btree (user_id);
 /   DROP INDEX public.core_order_user_id_b03bbffd;
       public            postgres    false    231            �           1259    20873    core_orderitem_item_id_3b7d0c2e    INDEX     ]   CREATE INDEX core_orderitem_item_id_3b7d0c2e ON public.core_orderitem USING btree (item_id);
 3   DROP INDEX public.core_orderitem_item_id_3b7d0c2e;
       public            postgres    false    241            �           1259    20874    core_orderitem_user_id_323fe695    INDEX     ]   CREATE INDEX core_orderitem_user_id_323fe695 ON public.core_orderitem USING btree (user_id);
 3   DROP INDEX public.core_orderitem_user_id_323fe695;
       public            postgres    false    241            �           1259    20862    core_payment_user_id_274e164a    INDEX     Y   CREATE INDEX core_payment_user_id_274e164a ON public.core_payment USING btree (user_id);
 1   DROP INDEX public.core_payment_user_id_274e164a;
       public            postgres    false    239            �           1259    20856    core_refund_order_id_7fe621fa    INDEX     Y   CREATE INDEX core_refund_order_id_7fe621fa ON public.core_refund USING btree (order_id);
 1   DROP INDEX public.core_refund_order_id_7fe621fa;
       public            postgres    false    237            q           1259    20709 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            t           1259    20710 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            �           1259    20936 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    244            �           1259    20935 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    244            �           1259    20947     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    246            �           1259    20995 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    248            �           1259    21009 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    252            �           1259    21008 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    252            �           1259    21020 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    254            �           1259    21021 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    254            �           2606    20670 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    2901    213    219            �           2606    20677 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    221    219    2921            �           2606    20614 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2888    211    207            �           2606    20609 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2893            �           2606    20600 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2883    205            �           2606    20629 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2893            �           2606    20624 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2901            �           2606    20643 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2888    207            �           2606    20638 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    2901    217            �           2606    20826 :   core_address core_address_user_id_7681a39c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_address
    ADD CONSTRAINT core_address_user_id_7681a39c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_address DROP CONSTRAINT core_address_user_id_7681a39c_fk_auth_user_id;
       public          postgres    false    2901    213    225            �           2606    20834 D   core_order core_order_billing_address_id_b33cde99_fk_core_address_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_billing_address_id_b33cde99_fk_core_address_id FOREIGN KEY (billing_address_id) REFERENCES public.core_address(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_billing_address_id_b33cde99_fk_core_address_id;
       public          postgres    false    231    225    2934            �           2606    20839 :   core_order core_order_coupon_id_bade53ba_fk_core_coupon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_coupon_id_bade53ba_fk_core_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.core_coupon(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_coupon_id_bade53ba_fk_core_coupon_id;
       public          postgres    false    231    2937    227            �           2606    20877 D   core_order_items core_order_items_order_id_c5dde6c1_fk_core_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_order_id_c5dde6c1_fk_core_order_id FOREIGN KEY (order_id) REFERENCES public.core_order(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_order_id_c5dde6c1_fk_core_order_id;
       public          postgres    false    231    2946    243            �           2606    20882 L   core_order_items core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id FOREIGN KEY (orderitem_id) REFERENCES public.core_orderitem(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id;
       public          postgres    false    241    2963    243            �           2606    20811 <   core_order core_order_payment_id_e5a26a3c_fk_core_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_payment_id_e5a26a3c_fk_core_payment_id FOREIGN KEY (payment_id) REFERENCES public.core_payment(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_payment_id_e5a26a3c_fk_core_payment_id;
       public          postgres    false    2959    239    231            �           2606    20816 E   core_order core_order_shipping_address_id_8c054f15_fk_core_address_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_shipping_address_id_8c054f15_fk_core_address_id FOREIGN KEY (shipping_address_id) REFERENCES public.core_address(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_shipping_address_id_8c054f15_fk_core_address_id;
       public          postgres    false    2934    225    231            �           2606    20821 6   core_order core_order_user_id_b03bbffd_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_user_id_b03bbffd_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_user_id_b03bbffd_fk_auth_user_id;
       public          postgres    false    2901    213    231            �           2606    20863 >   core_orderitem core_orderitem_item_id_3b7d0c2e_fk_core_item_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_item_id_3b7d0c2e_fk_core_item_id FOREIGN KEY (item_id) REFERENCES public.core_item(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_item_id_3b7d0c2e_fk_core_item_id;
       public          postgres    false    229    241    2939            �           2606    20868 >   core_orderitem core_orderitem_user_id_323fe695_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_user_id_323fe695_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_user_id_323fe695_fk_auth_user_id;
       public          postgres    false    213    241    2901            �           2606    20857 :   core_payment core_payment_user_id_274e164a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_user_id_274e164a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_payment DROP CONSTRAINT core_payment_user_id_274e164a_fk_auth_user_id;
       public          postgres    false    239    2901    213            �           2606    20851 :   core_refund core_refund_order_id_7fe621fa_fk_core_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_refund
    ADD CONSTRAINT core_refund_order_id_7fe621fa_fk_core_order_id FOREIGN KEY (order_id) REFERENCES public.core_order(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_refund DROP CONSTRAINT core_refund_order_id_7fe621fa_fk_core_order_id;
       public          postgres    false    237    2946    231            �           2606    20846 B   core_userprofile core_userprofile_user_id_5141ad90_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_userprofile
    ADD CONSTRAINT core_userprofile_user_id_5141ad90_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_userprofile DROP CONSTRAINT core_userprofile_user_id_5141ad90_fk_auth_user_id;
       public          postgres    false    2901    235    213            �           2606    20699 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    223    2883            �           2606    20704 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    223    2901            �           2606    21010 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    248    2981    254            �           2606    21015 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    2986    250    254            �           2606    21003 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    2979    246    252            �           2606    20998 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    2986    252    250            �           2606    20990 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public          postgres    false    213    2901    248            c   6   x�3��+00624704�t�H-J�II���IMO�KM)��+�L�,�4����� ;�      e      x������ � �      Y      x������ � �      [      x������ � �      W   2  x�}�ݎ� ���)�	�%�{�רTE3�6�L%�V���`�Ts�;�898�}�/��v�/�?ۗq&��1m���8zE��5�7��q���?����8�P���~{L�>-���O�N�S �l/�)�
v`����{�.?�幚³uo�\Z'_�8�)!d����$ \�r�<w���G��?����rwhs:ޛ�ak\����e>�W�_�7-8��8c� �0R���U��O���,h��X�]��j�id+�wf�g�T�#{Yg\e���O�7=�	��R��d �i� D�i7�EN���=>m����є�U�K�<i��v� �Z!�^��Z�u�>|�i{�G|��\���us���b��=WTheYZە�J.P����:��\��s>L��@P`�&m�Z��H��"�ogQ
�5�����S%�z�����լ�m��U���(��W��j��9W�%��(h_Tr9��>�*QL٦{]+U]$�_W�bU��W�T�IB�C�Vtxĥ.l�A@TC���@pd7s� (p����5~���8���qF�Q���f�����[f�XA�;4�T���m��1-�$T�%�< щFK�?�rW-�-��3�N5Q� 1�g2C�-�	0A�ⶶ����X|�����r���ofD�K�>F�x�UNi��\�m���޸!_�h��*�%-.GY�r[
�e)D�K<_�2�I���s���l���M�J2S�.Q"�̀�Dp�����L��C���WyP���S�\���"ۂ�O��"����C#�gR��s�3,��p��r �㛵��\~�      ]   q  x�m�]O�@���Wp�;���9ә��D�(Q�.�&fJ�-�� �t���dq�5�����>`l�<��u�*���ڕ�z~����a��V���^�e���`5�1����V�9ʨ]�oo���/��vq{n zF�c=`.8."�e��.���Pj��v�m]�F}b�#���c���]8}z��8�>X٣�r�<�]�������dڔ�nԮh�e���2��R�s��������N�Fu9���$e|p��7UD˪(t�������tns8B�i���`߯��Xe<��C��-��� ��Y�������4k�WU�j�ˀ  <B�����/�R�]TM]TUN�U��3P�c��"����E�'1M�7�N��      _      x������ � �      a      x������ � �      i   p   x�3��u�pr�r������41130��L�4�2B�uw�sq��A(s+3&�b�	q��r���'&�*d��r�0�9%�F\f�8�����cI�i������ }ZU�      k      x������ � �      m   w  x�]�QO�0���~E����Q�G#F�M@c����
e�n�௷ݦAr�����{.����q4R���6`�<]\���S �w�T�ŹB��T v��=|�����X����t����R1�a���
ƚ؇��x���Ld���8���q%e�.��M�p�	�T����JЙ#|����`TmX�q4����-���!���M-A�;��/}rr�q8�8��7�h�z���G��%�Ȋ�V�5ʚ8J��`&��j�p���/��#��Ȅ֞�`	�V�9�0�y��if�k,�ۻ0jN@�QV��gW�'�v��@��T��M��߫�{JV"D�\��jB�9ہ;.��m,b�kY�~ �      o   �   x���KN�0�s���<���	�Iӆ�i��\�X�XBȳ����m�;��6�׻^����#��j���р�I��@�u���S�Sj=�ԡ����0�yXkV%��X���
|k�5r�h������q�^8�WbM�(&��K�
m0#+4�5vKG%�t~屛Ǜ�7�x��n�q�>)�Eq��Kl�n����&..�|�{C��ؒZ#�^c9|_�m��S\횪�>��qy      {   ,   x�Ĺ  �������e�P� �MZ$eS�C3���.�hk�      y   7   x�3�4�,�4�4�2�M�LN# Hr�B�����7�2�0M��=... _�	�      w   �   x�U�]A���O�^�sΜ33;whY%/E�Pb�E�%ɧGd�����A��ہ��᤹����S[L;��b Pp5t�l$g���P�,
5}�c�+%�6K�3���<	�8���b����:Uʠ���w�)�mA�F���9�(���\f��R�p;`+�)����!�H�@`@��̍��H[Bd      q   a   x�3��H,(�T�K-W�LM,�4207��M�T��,)8e�+@&�(x�W*��+T�)�%�f�@�݊2S�R�9�R��+��
�ҹb���� ��!0      u      x������ � �      s      x������ � �      g   O  x��X�o�F~V�
�/��p��ފ[�Űf���XM���a;����(;�mJ���@������H$�Q?׎�R����c@�ӔYJ ���ϋq�K�O����������y����x����|y� ��%���(��y@���M�X��~Z���@F �Έ�w��$C+!�ZE2����j��V*�s�!����*z�X�b�cI_��X��-`X��2�E���,1��M>��@�ޗ�d��oG�jR��5�A�[�tP���:%/��8_���4�}q�6_�6:��H�u& ��Z��G�@k�v���챔Hʌ�XC�[���"};���O9Ok���~��~(�W�r�*g���Q����x=��̧��n�ߟ?��{�2�
��ŝ\],�rZN�������î�Jw�T��m*�����@���I#8� 哿f��7�t����ܵ�U6Fg��O�H����U���kڇ���TR�"�ݓ�o-&��ͯ�r��1Y-z9	��d���r��je�ɟ��|�^<_�[���6�E�Ct����������A:0��
�A�:���L���$�H�uIjnr�f/�JS�wE��M�mcQP-Y߇��I_|��I~YN�w�K�K� Xk�^��o��j�<��jv;]�����|U\����p��7���#�
�7f�T0��
������G:�빁�w���N�	�+�� $��5P,�Ȁd+���ͼ�Ow������PF��NO�Ѯ�Eqw�Q-�#K��+�[VW��=���jm�כ`�N��[[iU�����U��J�P��:F�������)��m<�nZ�8��ص����GNK}h�����E#��f9>���vY僧�O��K���5�$i�\.Эn��Sh���݊}d���r��i�Ui%��-���SƏ��c`�	�R�{JQZ�Tn#�����N(J+����$F��I���et�Un,���(��Aw\/ؽ��ldc&;�T4_��V��;7Zp��$�l
$�W�ܠ ����X����$/�� �-!y�������.������]�
P2θ�r�� �K���>���OB_-LB��\0���9����z��>����O���螈k;'��w�v�%�ͣ�o�7��c�o�k�B���Zo���1�ҸZs����Xm�t۶��=�m|B��:���.z0'�I/���G`z�AZe���G�p���V��уG��ڶU�)�e���}ĵ
}��YJ��E��[�*a㔡k���Ф�U�?7z.a@��3:��I>T�+*c�{wܻ����L��G�u�l �/���ˢ��6s�։���Uggg��Y�      U   �   x�m�ˎ� E��ǌ�4}��lPp:hF��:��Z�ı���ǐ`�;��+�Z���C)A{��2�Za�L����5sy<C�gu�?x��ɶ��IZ��х�y�&��g���խ�Pd
n�%�D��9#_SU��l�6�2�#��ٔy�z�hCG�sQo�ӥS�b����d�9,�t�1�%���wk�;�@onO��D| ���e      S   q  x����n� ���O����y�J#d��m6G�����ji����|gΌiׇ9�9�ϋ[:BE?�������|��9? ����w"��8Ag��z,bRӢa������X&g��:~�t��#N�G7�sM��� :;L~~�X��f�J^U�c8g��'F7�w����041��1�aWL���3�����k�}�B�5�b�������}��N�M�L)��Lm#���xqq�˲�!�|��KQ�JIű�.��P�5��)�$~K�^_e�Kj��8(A�Sq�풶^�|�ulgA)!�* VA2����X��jn�9:g�ދW��z��l
q�
��1D�ܲ��?�e6��@�4��u�)7%TV����!�P���RUh��s��1���6�J��^�[/1||ޤ�m�!��z=�g'��5���  D�t�����o�A"U9- Et�
��0���sS���V�*�7����4\�Q,� V�/�F����@��� ��]6�?�MMI9�nq{W͖D��ٲ[|:�e*��*+�ly�̸��mmm@���-�ϧ=��Ry5�_�^��/7�D��2���7F�A�G�s��˽�uL8�>5q�R����t:�[�      |   n  x���Io�H�s�)|�JQH}��,"j�l9����N�b+v>}��=�>9�B\PI<����īc�:Y1I	����A���)���	��x��ˉ:�E��o`�Ϲ�?���7K����}q�SncY����%yw����5�[�&���8�g��qxtd �8����J�T��������b7y�;?����w.��㣝��^�j��oŏ��s��c:�4P���5���Rc2��+����m��O�����O��|���N:/n��O��?� ��@��l 1!5�嘣� 5	�/���"�!�2hT�\�pR��XO�V����n�1�s�.| �:����<�7u����(����s�6|;X��>r���?�=�����;t���\�d>e���[���|�u�>�T>��{L��J��x��wZ�D��\ÌB~�mE_KF���%e���:�&���jʕ����0�8d:�/�c*|�T�b�c�����+TI�Wڛ�p���D�cr��Je@�C�b\����=O�{M�<Zio�� K˚ h�C_d��*m�t�����2R�Yymް5jo��Ȗf��x]$��vi[���m��ee�g�ӒpϯWڛ��s�-���8��v���*E^D�DA��zUԞ�
��J{��o�0XVW�4���ڵ������+�2$�B�
@�ȕ�-`�
�aD1�.(diX-ֳ΀"���`]=����W�/�.q�4tʍ��G�o�E��.�2dM.�:Yi�@����$X��rz�H_m9L$Ы����DX)V	�U�+���!��j��mA���H����(ک���($�I�_�� �@h݄HCPG�\���������      ~      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
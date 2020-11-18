PGDMP                     
    x            decort_shop_b2b    11.9 (Debian 11.9-0+deb10u1)    13.0 e   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26071    decort_shop_b2b    DATABASE     d   CREATE DATABASE decort_shop_b2b WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_UA.UTF-8';
    DROP DATABASE decort_shop_b2b;
                torsion_prog    false            �            1259    26197    address_country    TABLE     �  CREATE TABLE public.address_country (
    iso_3166_1_a2 character varying(2) NOT NULL,
    iso_3166_1_a3 character varying(3) NOT NULL,
    iso_3166_1_numeric character varying(3) NOT NULL,
    printable_name character varying(128) NOT NULL,
    name character varying(128) NOT NULL,
    display_order smallint NOT NULL,
    is_shipping_country boolean NOT NULL,
    CONSTRAINT address_country_display_order_check CHECK ((display_order >= 0))
);
 #   DROP TABLE public.address_country;
       public            torsion_prog    false            �            1259    26205    address_useraddress    TABLE     �  CREATE TABLE public.address_useraddress (
    id integer NOT NULL,
    title character varying(64) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    line1 character varying(255) NOT NULL,
    line2 character varying(255) NOT NULL,
    line3 character varying(255) NOT NULL,
    line4 character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    postcode character varying(64) NOT NULL,
    search_text text NOT NULL,
    phone_number character varying(128) NOT NULL,
    notes text NOT NULL,
    is_default_for_shipping boolean NOT NULL,
    is_default_for_billing boolean NOT NULL,
    num_orders_as_shipping_address integer NOT NULL,
    hash character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    country_id character varying(2) NOT NULL,
    user_id integer NOT NULL,
    num_orders_as_billing_address integer NOT NULL,
    CONSTRAINT address_useraddress_num_orders_as_billing_address_check CHECK ((num_orders_as_billing_address >= 0)),
    CONSTRAINT address_useraddress_num_orders_as_shipping__4ebf3942_check CHECK ((num_orders_as_shipping_address >= 0))
);
 '   DROP TABLE public.address_useraddress;
       public            torsion_prog    false            �            1259    26203    address_useraddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_useraddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.address_useraddress_id_seq;
       public          torsion_prog    false    214            �           0    0    address_useraddress_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.address_useraddress_id_seq OWNED BY public.address_useraddress.id;
          public          torsion_prog    false    213            �            1259    26527    analytics_productrecord    TABLE       CREATE TABLE public.analytics_productrecord (
    id integer NOT NULL,
    num_views integer NOT NULL,
    num_basket_additions integer NOT NULL,
    num_purchases integer NOT NULL,
    score double precision NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT analytics_productrecord_num_basket_additions_check CHECK ((num_basket_additions >= 0)),
    CONSTRAINT analytics_productrecord_num_purchases_check CHECK ((num_purchases >= 0)),
    CONSTRAINT analytics_productrecord_num_views_check CHECK ((num_views >= 0))
);
 +   DROP TABLE public.analytics_productrecord;
       public            torsion_prog    false            �            1259    26525    analytics_productrecord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analytics_productrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.analytics_productrecord_id_seq;
       public          torsion_prog    false    244            �           0    0    analytics_productrecord_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.analytics_productrecord_id_seq OWNED BY public.analytics_productrecord.id;
          public          torsion_prog    false    243            �            1259    26538    analytics_userproductview    TABLE     �   CREATE TABLE public.analytics_userproductview (
    id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
 -   DROP TABLE public.analytics_userproductview;
       public            torsion_prog    false            �            1259    26536     analytics_userproductview_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analytics_userproductview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.analytics_userproductview_id_seq;
       public          torsion_prog    false    246            �           0    0     analytics_userproductview_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.analytics_userproductview_id_seq OWNED BY public.analytics_userproductview.id;
          public          torsion_prog    false    245            �            1259    26546    analytics_userrecord    TABLE     @  CREATE TABLE public.analytics_userrecord (
    id integer NOT NULL,
    num_product_views integer NOT NULL,
    num_basket_additions integer NOT NULL,
    num_orders integer NOT NULL,
    num_order_lines integer NOT NULL,
    num_order_items integer NOT NULL,
    total_spent numeric(12,2) NOT NULL,
    date_last_order timestamp with time zone,
    user_id integer NOT NULL,
    CONSTRAINT analytics_userrecord_num_basket_additions_check CHECK ((num_basket_additions >= 0)),
    CONSTRAINT analytics_userrecord_num_order_items_check CHECK ((num_order_items >= 0)),
    CONSTRAINT analytics_userrecord_num_order_lines_check CHECK ((num_order_lines >= 0)),
    CONSTRAINT analytics_userrecord_num_orders_check CHECK ((num_orders >= 0)),
    CONSTRAINT analytics_userrecord_num_product_views_check CHECK ((num_product_views >= 0))
);
 (   DROP TABLE public.analytics_userrecord;
       public            torsion_prog    false            �            1259    26544    analytics_userrecord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analytics_userrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.analytics_userrecord_id_seq;
       public          torsion_prog    false    248            �           0    0    analytics_userrecord_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.analytics_userrecord_id_seq OWNED BY public.analytics_userrecord.id;
          public          torsion_prog    false    247            �            1259    26561    analytics_usersearch    TABLE     �   CREATE TABLE public.analytics_usersearch (
    id integer NOT NULL,
    query character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.analytics_usersearch;
       public            torsion_prog    false            �            1259    26559    analytics_usersearch_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analytics_usersearch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.analytics_usersearch_id_seq;
       public          torsion_prog    false    250            �           0    0    analytics_usersearch_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.analytics_usersearch_id_seq OWNED BY public.analytics_usersearch.id;
          public          torsion_prog    false    249            �            1259    26103 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            torsion_prog    false            �            1259    26101    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          torsion_prog    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          torsion_prog    false    202            �            1259    26113    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            torsion_prog    false            �            1259    26111    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          torsion_prog    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          torsion_prog    false    204            �            1259    26095    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            torsion_prog    false            �            1259    26093    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          torsion_prog    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          torsion_prog    false    200            �            1259    26121 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public            torsion_prog    false            �            1259    26131    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            torsion_prog    false            �            1259    26129    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          torsion_prog    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          torsion_prog    false    208            �            1259    26119    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          torsion_prog    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          torsion_prog    false    206            �            1259    26139    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            torsion_prog    false            �            1259    26137 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          torsion_prog    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          torsion_prog    false    210                       1259    26797    basket_basket    TABLE       CREATE TABLE public.basket_basket (
    id integer NOT NULL,
    status character varying(128) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_merged timestamp with time zone,
    date_submitted timestamp with time zone,
    owner_id integer
);
 !   DROP TABLE public.basket_basket;
       public            torsion_prog    false                       1259    26795    basket_basket_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.basket_basket_id_seq;
       public          torsion_prog    false    272            �           0    0    basket_basket_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.basket_basket_id_seq OWNED BY public.basket_basket.id;
          public          torsion_prog    false    271            L           1259    27475    basket_basket_vouchers    TABLE     �   CREATE TABLE public.basket_basket_vouchers (
    id integer NOT NULL,
    basket_id integer NOT NULL,
    voucher_id integer NOT NULL
);
 *   DROP TABLE public.basket_basket_vouchers;
       public            torsion_prog    false            K           1259    27473    basket_basket_vouchers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_basket_vouchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.basket_basket_vouchers_id_seq;
       public          torsion_prog    false    332            �           0    0    basket_basket_vouchers_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.basket_basket_vouchers_id_seq OWNED BY public.basket_basket_vouchers.id;
          public          torsion_prog    false    331                       1259    26805    basket_line    TABLE       CREATE TABLE public.basket_line (
    id integer NOT NULL,
    line_reference character varying(128) NOT NULL,
    quantity integer NOT NULL,
    price_currency character varying(12) NOT NULL,
    price_excl_tax numeric(12,2),
    price_incl_tax numeric(12,2),
    date_created timestamp with time zone NOT NULL,
    basket_id integer NOT NULL,
    product_id integer NOT NULL,
    stockrecord_id integer NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    CONSTRAINT basket_line_quantity_check CHECK ((quantity >= 0))
);
    DROP TABLE public.basket_line;
       public            torsion_prog    false                       1259    26803    basket_line_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.basket_line_id_seq;
       public          torsion_prog    false    274            �           0    0    basket_line_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.basket_line_id_seq OWNED BY public.basket_line.id;
          public          torsion_prog    false    273                       1259    26814    basket_lineattribute    TABLE     �   CREATE TABLE public.basket_lineattribute (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    line_id integer NOT NULL,
    option_id integer NOT NULL
);
 (   DROP TABLE public.basket_lineattribute;
       public            torsion_prog    false                       1259    26812    basket_lineattribute_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_lineattribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.basket_lineattribute_id_seq;
       public          torsion_prog    false    276            �           0    0    basket_lineattribute_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.basket_lineattribute_id_seq OWNED BY public.basket_lineattribute.id;
          public          torsion_prog    false    275            �           1259    28221 (   cashondelivery_cashondeliverytransaction    TABLE     �  CREATE TABLE public.cashondelivery_cashondeliverytransaction (
    id integer NOT NULL,
    order_number character varying(128) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    amount numeric(12,2),
    currency character varying(8),
    reference character varying(100) NOT NULL,
    confirmed boolean NOT NULL,
    date_confirmed timestamp with time zone NOT NULL
);
 <   DROP TABLE public.cashondelivery_cashondeliverytransaction;
       public            torsion_prog    false            �           1259    28219 /   cashondelivery_cashondeliverytransaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cashondelivery_cashondeliverytransaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.cashondelivery_cashondeliverytransaction_id_seq;
       public          torsion_prog    false    389            �           0    0 /   cashondelivery_cashondeliverytransaction_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.cashondelivery_cashondeliverytransaction_id_seq OWNED BY public.cashondelivery_cashondeliverytransaction.id;
          public          torsion_prog    false    388            �            1259    26266    catalogue_attributeoption    TABLE     �   CREATE TABLE public.catalogue_attributeoption (
    id integer NOT NULL,
    option character varying(255) NOT NULL,
    group_id integer NOT NULL
);
 -   DROP TABLE public.catalogue_attributeoption;
       public            torsion_prog    false            �            1259    26264     catalogue_attributeoption_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_attributeoption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.catalogue_attributeoption_id_seq;
       public          torsion_prog    false    218            �           0    0     catalogue_attributeoption_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.catalogue_attributeoption_id_seq OWNED BY public.catalogue_attributeoption.id;
          public          torsion_prog    false    217            �            1259    26274    catalogue_attributeoptiongroup    TABLE     z   CREATE TABLE public.catalogue_attributeoptiongroup (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);
 2   DROP TABLE public.catalogue_attributeoptiongroup;
       public            torsion_prog    false            �            1259    26272 %   catalogue_attributeoptiongroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_attributeoptiongroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.catalogue_attributeoptiongroup_id_seq;
       public          torsion_prog    false    220            �           0    0 %   catalogue_attributeoptiongroup_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.catalogue_attributeoptiongroup_id_seq OWNED BY public.catalogue_attributeoptiongroup.id;
          public          torsion_prog    false    219            �            1259    26282    catalogue_category    TABLE       CREATE TABLE public.catalogue_category (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    image character varying(255),
    slug character varying(255) NOT NULL,
    ancestors_are_public boolean NOT NULL,
    is_public boolean NOT NULL,
    CONSTRAINT catalogue_category_depth_check CHECK ((depth >= 0)),
    CONSTRAINT catalogue_category_numchild_check CHECK ((numchild >= 0))
);
 &   DROP TABLE public.catalogue_category;
       public            torsion_prog    false            �            1259    26280    catalogue_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.catalogue_category_id_seq;
       public          torsion_prog    false    222            �           0    0    catalogue_category_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.catalogue_category_id_seq OWNED BY public.catalogue_category.id;
          public          torsion_prog    false    221            �            1259    26297    catalogue_option    TABLE     �   CREATE TABLE public.catalogue_option (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL,
    type character varying(128) NOT NULL
);
 $   DROP TABLE public.catalogue_option;
       public            torsion_prog    false            �            1259    26295    catalogue_option_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catalogue_option_id_seq;
       public          torsion_prog    false    224            �           0    0    catalogue_option_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catalogue_option_id_seq OWNED BY public.catalogue_option.id;
          public          torsion_prog    false    223            �            1259    26307    catalogue_product    TABLE       CREATE TABLE public.catalogue_product (
    id integer NOT NULL,
    structure character varying(10) NOT NULL,
    upc character varying(64),
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    rating double precision,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    is_discountable boolean NOT NULL,
    parent_id integer,
    product_class_id integer,
    is_public boolean NOT NULL
);
 %   DROP TABLE public.catalogue_product;
       public            torsion_prog    false            �            1259    26305    catalogue_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catalogue_product_id_seq;
       public          torsion_prog    false    226            �           0    0    catalogue_product_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catalogue_product_id_seq OWNED BY public.catalogue_product.id;
          public          torsion_prog    false    225            �            1259    26407 !   catalogue_product_product_options    TABLE     �   CREATE TABLE public.catalogue_product_product_options (
    id integer NOT NULL,
    product_id integer NOT NULL,
    option_id integer NOT NULL
);
 5   DROP TABLE public.catalogue_product_product_options;
       public            torsion_prog    false            �            1259    26405 (   catalogue_product_product_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_product_product_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.catalogue_product_product_options_id_seq;
       public          torsion_prog    false    242            �           0    0 (   catalogue_product_product_options_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.catalogue_product_product_options_id_seq OWNED BY public.catalogue_product_product_options.id;
          public          torsion_prog    false    241            �            1259    26320    catalogue_productattribute    TABLE     #  CREATE TABLE public.catalogue_productattribute (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL,
    type character varying(20) NOT NULL,
    required boolean NOT NULL,
    option_group_id integer,
    product_class_id integer
);
 .   DROP TABLE public.catalogue_productattribute;
       public            torsion_prog    false            �            1259    26318 !   catalogue_productattribute_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productattribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.catalogue_productattribute_id_seq;
       public          torsion_prog    false    228            �           0    0 !   catalogue_productattribute_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.catalogue_productattribute_id_seq OWNED BY public.catalogue_productattribute.id;
          public          torsion_prog    false    227            �            1259    26328    catalogue_productattributevalue    TABLE     r  CREATE TABLE public.catalogue_productattributevalue (
    id integer NOT NULL,
    value_text text,
    value_integer integer,
    value_boolean boolean,
    value_float double precision,
    value_richtext text,
    value_date date,
    value_file character varying(255),
    value_image character varying(255),
    entity_object_id integer,
    attribute_id integer NOT NULL,
    entity_content_type_id integer,
    product_id integer NOT NULL,
    value_option_id integer,
    value_datetime timestamp with time zone,
    CONSTRAINT catalogue_productattributevalue_entity_object_id_check CHECK ((entity_object_id >= 0))
);
 3   DROP TABLE public.catalogue_productattributevalue;
       public            torsion_prog    false            �            1259    26326 &   catalogue_productattributevalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productattributevalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.catalogue_productattributevalue_id_seq;
       public          torsion_prog    false    230            �           0    0 &   catalogue_productattributevalue_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.catalogue_productattributevalue_id_seq OWNED BY public.catalogue_productattributevalue.id;
          public          torsion_prog    false    229            N           1259    27517 2   catalogue_productattributevalue_value_multi_option    TABLE     �   CREATE TABLE public.catalogue_productattributevalue_value_multi_option (
    id integer NOT NULL,
    productattributevalue_id integer NOT NULL,
    attributeoption_id integer NOT NULL
);
 F   DROP TABLE public.catalogue_productattributevalue_value_multi_option;
       public            torsion_prog    false            M           1259    27515 9   catalogue_productattributevalue_value_multi_option_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productattributevalue_value_multi_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.catalogue_productattributevalue_value_multi_option_id_seq;
       public          torsion_prog    false    334            �           0    0 9   catalogue_productattributevalue_value_multi_option_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalogue_productattributevalue_value_multi_option_id_seq OWNED BY public.catalogue_productattributevalue_value_multi_option.id;
          public          torsion_prog    false    333            �            1259    26340    catalogue_productcategory    TABLE     �   CREATE TABLE public.catalogue_productcategory (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer NOT NULL
);
 -   DROP TABLE public.catalogue_productcategory;
       public            torsion_prog    false            �            1259    26338     catalogue_productcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.catalogue_productcategory_id_seq;
       public          torsion_prog    false    232            �           0    0     catalogue_productcategory_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.catalogue_productcategory_id_seq OWNED BY public.catalogue_productcategory.id;
          public          torsion_prog    false    231            �            1259    26348    catalogue_productclass    TABLE     �   CREATE TABLE public.catalogue_productclass (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    slug character varying(128) NOT NULL,
    requires_shipping boolean NOT NULL,
    track_stock boolean NOT NULL
);
 *   DROP TABLE public.catalogue_productclass;
       public            torsion_prog    false            �            1259    26346    catalogue_productclass_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productclass_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalogue_productclass_id_seq;
       public          torsion_prog    false    234            �           0    0    catalogue_productclass_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalogue_productclass_id_seq OWNED BY public.catalogue_productclass.id;
          public          torsion_prog    false    233            �            1259    26358    catalogue_productclass_options    TABLE     �   CREATE TABLE public.catalogue_productclass_options (
    id integer NOT NULL,
    productclass_id integer NOT NULL,
    option_id integer NOT NULL
);
 2   DROP TABLE public.catalogue_productclass_options;
       public            torsion_prog    false            �            1259    26356 %   catalogue_productclass_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productclass_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.catalogue_productclass_options_id_seq;
       public          torsion_prog    false    236            �           0    0 %   catalogue_productclass_options_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.catalogue_productclass_options_id_seq OWNED BY public.catalogue_productclass_options.id;
          public          torsion_prog    false    235            �            1259    26366    catalogue_productimage    TABLE     t  CREATE TABLE public.catalogue_productimage (
    id integer NOT NULL,
    original character varying(255) NOT NULL,
    caption character varying(200) NOT NULL,
    display_order integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT catalogue_productimage_display_order_check CHECK ((display_order >= 0))
);
 *   DROP TABLE public.catalogue_productimage;
       public            torsion_prog    false            �            1259    26364    catalogue_productimage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalogue_productimage_id_seq;
       public          torsion_prog    false    238            �           0    0    catalogue_productimage_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalogue_productimage_id_seq OWNED BY public.catalogue_productimage.id;
          public          torsion_prog    false    237            �            1259    26375    catalogue_productrecommendation    TABLE       CREATE TABLE public.catalogue_productrecommendation (
    id integer NOT NULL,
    ranking smallint NOT NULL,
    primary_id integer NOT NULL,
    recommendation_id integer NOT NULL,
    CONSTRAINT catalogue_productrecommendation_ranking_check CHECK ((ranking >= 0))
);
 3   DROP TABLE public.catalogue_productrecommendation;
       public            torsion_prog    false            �            1259    26373 &   catalogue_productrecommendation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_productrecommendation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.catalogue_productrecommendation_id_seq;
       public          torsion_prog    false    240            �           0    0 &   catalogue_productrecommendation_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.catalogue_productrecommendation_id_seq OWNED BY public.catalogue_productrecommendation.id;
          public          torsion_prog    false    239                       1259    26719 $   communication_communicationeventtype    TABLE     �  CREATE TABLE public.communication_communicationeventtype (
    id integer NOT NULL,
    code character varying(128) NOT NULL,
    name character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    email_subject_template character varying(255),
    email_body_template text,
    email_body_html_template text,
    sms_template character varying(170),
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL
);
 8   DROP TABLE public.communication_communicationeventtype;
       public            torsion_prog    false            
           1259    26732    communication_email    TABLE       CREATE TABLE public.communication_email (
    id integer NOT NULL,
    subject text NOT NULL,
    body_text text NOT NULL,
    body_html text NOT NULL,
    date_sent timestamp with time zone NOT NULL,
    user_id integer,
    email character varying(254)
);
 '   DROP TABLE public.communication_email;
       public            torsion_prog    false                       1259    26743    communication_notification    TABLE     Q  CREATE TABLE public.communication_notification (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    body text NOT NULL,
    location character varying(32) NOT NULL,
    date_sent timestamp with time zone NOT NULL,
    date_read timestamp with time zone,
    recipient_id integer NOT NULL,
    sender_id integer
);
 .   DROP TABLE public.communication_notification;
       public            torsion_prog    false            R           1259    27594    content_category    TABLE     �  CREATE TABLE public.content_category (
    id integer NOT NULL,
    name character varying(300) NOT NULL,
    comment character varying(500),
    url character varying(250) NOT NULL,
    comment_en character varying(500),
    comment_ru character varying(500),
    comment_uk character varying(500),
    name_en character varying(300),
    name_ru character varying(300),
    name_uk character varying(300)
);
 $   DROP TABLE public.content_category;
       public            torsion_prog    false            Q           1259    27592    content_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.content_category_id_seq;
       public          torsion_prog    false    338            �           0    0    content_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.content_category_id_seq OWNED BY public.content_category.id;
          public          torsion_prog    false    337            T           1259    27607    content_content    TABLE     )  CREATE TABLE public.content_content (
    id integer NOT NULL,
    alias character varying(300) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    main_image character varying(100),
    title character varying(500),
    intro_text character varying(1000),
    full_text text,
    meta_tag_title character varying(500),
    meta_tag_description character varying(500),
    meta_tag_keyword character varying(500),
    geo character varying(250),
    category_id_id integer,
    full_text_en text,
    full_text_ru text,
    full_text_uk text,
    intro_text_en character varying(1000),
    intro_text_ru character varying(1000),
    intro_text_uk character varying(1000),
    meta_tag_description_en character varying(500),
    meta_tag_description_ru character varying(500),
    meta_tag_description_uk character varying(500),
    meta_tag_keyword_en character varying(500),
    meta_tag_keyword_ru character varying(500),
    meta_tag_keyword_uk character varying(500),
    meta_tag_title_en character varying(500),
    meta_tag_title_ru character varying(500),
    meta_tag_title_uk character varying(500),
    title_en character varying(500),
    title_ru character varying(500),
    title_uk character varying(500)
);
 #   DROP TABLE public.content_content;
       public            torsion_prog    false            S           1259    27605    content_content_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.content_content_id_seq;
       public          torsion_prog    false    340            �           0    0    content_content_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.content_content_id_seq OWNED BY public.content_content.id;
          public          torsion_prog    false    339            \           1259    27648    content_contentimage    TABLE     �   CREATE TABLE public.content_contentimage (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    description text,
    image character varying(100),
    content_id_id integer
);
 (   DROP TABLE public.content_contentimage;
       public            torsion_prog    false            [           1259    27646    content_contentimage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_contentimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.content_contentimage_id_seq;
       public          torsion_prog    false    348            �           0    0    content_contentimage_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.content_contentimage_id_seq OWNED BY public.content_contentimage.id;
          public          torsion_prog    false    347            Z           1259    27640    content_ratingcontent    TABLE     �   CREATE TABLE public.content_ratingcontent (
    id integer NOT NULL,
    ip character varying(50) NOT NULL,
    content_id integer NOT NULL,
    star_id integer NOT NULL
);
 )   DROP TABLE public.content_ratingcontent;
       public            torsion_prog    false            Y           1259    27638    content_ratingcontent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_ratingcontent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.content_ratingcontent_id_seq;
       public          torsion_prog    false    346            �           0    0    content_ratingcontent_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.content_ratingcontent_id_seq OWNED BY public.content_ratingcontent.id;
          public          torsion_prog    false    345            V           1259    27620    content_ratingstar    TABLE     �   CREATE TABLE public.content_ratingstar (
    id integer NOT NULL,
    value smallint NOT NULL,
    CONSTRAINT content_ratingstar_value_check CHECK ((value >= 0))
);
 &   DROP TABLE public.content_ratingstar;
       public            torsion_prog    false            U           1259    27618    content_ratingstar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_ratingstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.content_ratingstar_id_seq;
       public          torsion_prog    false    342            �           0    0    content_ratingstar_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.content_ratingstar_id_seq OWNED BY public.content_ratingstar.id;
          public          torsion_prog    false    341            X           1259    27629    content_reviewcontent    TABLE     �   CREATE TABLE public.content_reviewcontent (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(250) NOT NULL,
    text text NOT NULL,
    content_id integer NOT NULL,
    parent_id integer
);
 )   DROP TABLE public.content_reviewcontent;
       public            torsion_prog    false            W           1259    27627    content_reviewcontent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_reviewcontent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.content_reviewcontent_id_seq;
       public          torsion_prog    false    344            �           0    0    content_reviewcontent_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.content_reviewcontent_id_seq OWNED BY public.content_reviewcontent.id;
          public          torsion_prog    false    343                       1259    26717 &   customer_communicationeventtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_communicationeventtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_communicationeventtype_id_seq;
       public          torsion_prog    false    264            �           0    0 &   customer_communicationeventtype_id_seq    SEQUENCE OWNED BY     v   ALTER SEQUENCE public.customer_communicationeventtype_id_seq OWNED BY public.communication_communicationeventtype.id;
          public          torsion_prog    false    263            	           1259    26730    customer_email_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customer_email_id_seq;
       public          torsion_prog    false    266            �           0    0    customer_email_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.customer_email_id_seq OWNED BY public.communication_email.id;
          public          torsion_prog    false    265                       1259    26741    customer_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.customer_notification_id_seq;
       public          torsion_prog    false    268            �           0    0    customer_notification_id_seq    SEQUENCE OWNED BY     b   ALTER SEQUENCE public.customer_notification_id_seq OWNED BY public.communication_notification.id;
          public          torsion_prog    false    267                       1259    26754    customer_productalert    TABLE     �  CREATE TABLE public.customer_productalert (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    key character varying(128) NOT NULL,
    status character varying(20) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_confirmed timestamp with time zone,
    date_cancelled timestamp with time zone,
    date_closed timestamp with time zone,
    product_id integer NOT NULL,
    user_id integer
);
 )   DROP TABLE public.customer_productalert;
       public            torsion_prog    false                       1259    26752    customer_productalert_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_productalert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.customer_productalert_id_seq;
       public          torsion_prog    false    270            �           0    0    customer_productalert_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.customer_productalert_id_seq OWNED BY public.customer_productalert.id;
          public          torsion_prog    false    269            �            1259    26242    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public            torsion_prog    false            �            1259    26240    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          torsion_prog    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          torsion_prog    false    215            �            1259    26085    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            torsion_prog    false            �            1259    26083    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          torsion_prog    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          torsion_prog    false    198            ^           1259    27697    django_flatpage    TABLE     4  CREATE TABLE public.django_flatpage (
    id integer NOT NULL,
    url character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    enable_comments boolean NOT NULL,
    template_name character varying(70) NOT NULL,
    registration_required boolean NOT NULL
);
 #   DROP TABLE public.django_flatpage;
       public            torsion_prog    false            ]           1259    27695    django_flatpage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_flatpage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.django_flatpage_id_seq;
       public          torsion_prog    false    350            �           0    0    django_flatpage_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.django_flatpage_id_seq OWNED BY public.django_flatpage.id;
          public          torsion_prog    false    349            `           1259    27708    django_flatpage_sites    TABLE     �   CREATE TABLE public.django_flatpage_sites (
    id integer NOT NULL,
    flatpage_id integer NOT NULL,
    site_id integer NOT NULL
);
 )   DROP TABLE public.django_flatpage_sites;
       public            torsion_prog    false            _           1259    27706    django_flatpage_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_flatpage_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.django_flatpage_sites_id_seq;
       public          torsion_prog    false    352            �           0    0    django_flatpage_sites_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.django_flatpage_sites_id_seq OWNED BY public.django_flatpage_sites.id;
          public          torsion_prog    false    351            �            1259    26074    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            torsion_prog    false            �            1259    26072    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          torsion_prog    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          torsion_prog    false    196            q           1259    27897    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            torsion_prog    false            �            1259    26614    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public            torsion_prog    false            �            1259    26612    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          torsion_prog    false    252            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          torsion_prog    false    251            �           1259    28194    novaposhta_warehouse    TABLE     �  CREATE TABLE public.novaposhta_warehouse (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    address_ru character varying(255),
    title_ru character varying(255),
    address_en character varying(255),
    address_uk character varying(255),
    title_en character varying(255),
    title_uk character varying(255)
);
 (   DROP TABLE public.novaposhta_warehouse;
       public            torsion_prog    false            �           1259    28192    novaposhta_warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.novaposhta_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.novaposhta_warehouse_id_seq;
       public          torsion_prog    false    387            �           0    0    novaposhta_warehouse_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.novaposhta_warehouse_id_seq OWNED BY public.novaposhta_warehouse.id;
          public          torsion_prog    false    386            4           1259    27210    offer_benefit    TABLE     9  CREATE TABLE public.offer_benefit (
    id integer NOT NULL,
    type character varying(128) NOT NULL,
    value numeric(12,2),
    max_affected_items integer,
    proxy_class character varying(255),
    range_id integer,
    CONSTRAINT offer_benefit_max_affected_items_check CHECK ((max_affected_items >= 0))
);
 !   DROP TABLE public.offer_benefit;
       public            torsion_prog    false            3           1259    27208    offer_benefit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_benefit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.offer_benefit_id_seq;
       public          torsion_prog    false    308            �           0    0    offer_benefit_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.offer_benefit_id_seq OWNED BY public.offer_benefit.id;
          public          torsion_prog    false    307            6           1259    27221    offer_condition    TABLE     �   CREATE TABLE public.offer_condition (
    id integer NOT NULL,
    type character varying(128) NOT NULL,
    value numeric(12,2),
    proxy_class character varying(255),
    range_id integer
);
 #   DROP TABLE public.offer_condition;
       public            torsion_prog    false            5           1259    27219    offer_condition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_condition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.offer_condition_id_seq;
       public          torsion_prog    false    310            �           0    0    offer_condition_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.offer_condition_id_seq OWNED BY public.offer_condition.id;
          public          torsion_prog    false    309            8           1259    27231    offer_conditionaloffer    TABLE     G  CREATE TABLE public.offer_conditionaloffer (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    slug character varying(128) NOT NULL,
    description text NOT NULL,
    offer_type character varying(128) NOT NULL,
    status character varying(64) NOT NULL,
    priority integer NOT NULL,
    start_datetime timestamp with time zone,
    end_datetime timestamp with time zone,
    max_global_applications integer,
    max_user_applications integer,
    max_basket_applications integer,
    max_discount numeric(12,2),
    total_discount numeric(12,2) NOT NULL,
    num_applications integer NOT NULL,
    num_orders integer NOT NULL,
    redirect_url character varying(200) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    benefit_id integer NOT NULL,
    condition_id integer NOT NULL,
    exclusive boolean NOT NULL,
    CONSTRAINT offer_conditionaloffer_max_basket_applications_check CHECK ((max_basket_applications >= 0)),
    CONSTRAINT offer_conditionaloffer_max_global_applications_check CHECK ((max_global_applications >= 0)),
    CONSTRAINT offer_conditionaloffer_max_user_applications_check CHECK ((max_user_applications >= 0)),
    CONSTRAINT offer_conditionaloffer_num_applications_check CHECK ((num_applications >= 0)),
    CONSTRAINT offer_conditionaloffer_num_orders_check CHECK ((num_orders >= 0))
);
 *   DROP TABLE public.offer_conditionaloffer;
       public            torsion_prog    false            7           1259    27229    offer_conditionaloffer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_conditionaloffer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.offer_conditionaloffer_id_seq;
       public          torsion_prog    false    312            �           0    0    offer_conditionaloffer_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.offer_conditionaloffer_id_seq OWNED BY public.offer_conditionaloffer.id;
          public          torsion_prog    false    311            :           1259    27251    offer_range    TABLE     X  CREATE TABLE public.offer_range (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    slug character varying(128) NOT NULL,
    description text NOT NULL,
    is_public boolean NOT NULL,
    includes_all_products boolean NOT NULL,
    proxy_class character varying(255),
    date_created timestamp with time zone NOT NULL
);
    DROP TABLE public.offer_range;
       public            torsion_prog    false            <           1259    27268    offer_range_classes    TABLE     �   CREATE TABLE public.offer_range_classes (
    id integer NOT NULL,
    range_id integer NOT NULL,
    productclass_id integer NOT NULL
);
 '   DROP TABLE public.offer_range_classes;
       public            torsion_prog    false            ;           1259    27266    offer_range_classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_range_classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.offer_range_classes_id_seq;
       public          torsion_prog    false    316            �           0    0    offer_range_classes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.offer_range_classes_id_seq OWNED BY public.offer_range_classes.id;
          public          torsion_prog    false    315            >           1259    27276    offer_range_excluded_products    TABLE     �   CREATE TABLE public.offer_range_excluded_products (
    id integer NOT NULL,
    range_id integer NOT NULL,
    product_id integer NOT NULL
);
 1   DROP TABLE public.offer_range_excluded_products;
       public            torsion_prog    false            =           1259    27274 $   offer_range_excluded_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_range_excluded_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.offer_range_excluded_products_id_seq;
       public          torsion_prog    false    318            �           0    0 $   offer_range_excluded_products_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.offer_range_excluded_products_id_seq OWNED BY public.offer_range_excluded_products.id;
          public          torsion_prog    false    317            9           1259    27249    offer_range_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.offer_range_id_seq;
       public          torsion_prog    false    314            �           0    0    offer_range_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.offer_range_id_seq OWNED BY public.offer_range.id;
          public          torsion_prog    false    313            @           1259    27284    offer_range_included_categories    TABLE     �   CREATE TABLE public.offer_range_included_categories (
    id integer NOT NULL,
    range_id integer NOT NULL,
    category_id integer NOT NULL
);
 3   DROP TABLE public.offer_range_included_categories;
       public            torsion_prog    false            ?           1259    27282 &   offer_range_included_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_range_included_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.offer_range_included_categories_id_seq;
       public          torsion_prog    false    320            �           0    0 &   offer_range_included_categories_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.offer_range_included_categories_id_seq OWNED BY public.offer_range_included_categories.id;
          public          torsion_prog    false    319            B           1259    27292    offer_rangeproduct    TABLE     �   CREATE TABLE public.offer_rangeproduct (
    id integer NOT NULL,
    display_order integer NOT NULL,
    product_id integer NOT NULL,
    range_id integer NOT NULL
);
 &   DROP TABLE public.offer_rangeproduct;
       public            torsion_prog    false            A           1259    27290    offer_rangeproduct_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_rangeproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.offer_rangeproduct_id_seq;
       public          torsion_prog    false    322            �           0    0    offer_rangeproduct_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.offer_rangeproduct_id_seq OWNED BY public.offer_rangeproduct.id;
          public          torsion_prog    false    321            D           1259    27300    offer_rangeproductfileupload    TABLE     g  CREATE TABLE public.offer_rangeproductfileupload (
    id integer NOT NULL,
    filepath character varying(255) NOT NULL,
    size integer NOT NULL,
    date_uploaded timestamp with time zone NOT NULL,
    status character varying(32) NOT NULL,
    error_message character varying(255) NOT NULL,
    date_processed timestamp with time zone,
    num_new_skus integer,
    num_unknown_skus integer,
    num_duplicate_skus integer,
    range_id integer NOT NULL,
    uploaded_by_id integer NOT NULL,
    CONSTRAINT offer_rangeproductfileupload_num_duplicate_skus_check CHECK ((num_duplicate_skus >= 0)),
    CONSTRAINT offer_rangeproductfileupload_num_new_skus_check CHECK ((num_new_skus >= 0)),
    CONSTRAINT offer_rangeproductfileupload_num_unknown_skus_check CHECK ((num_unknown_skus >= 0)),
    CONSTRAINT offer_rangeproductfileupload_size_check CHECK ((size >= 0))
);
 0   DROP TABLE public.offer_rangeproductfileupload;
       public            torsion_prog    false            C           1259    27298 #   offer_rangeproductfileupload_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_rangeproductfileupload_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.offer_rangeproductfileupload_id_seq;
       public          torsion_prog    false    324            �           0    0 #   offer_rangeproductfileupload_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.offer_rangeproductfileupload_id_seq OWNED BY public.offer_rangeproductfileupload.id;
          public          torsion_prog    false    323                       1259    26862    order_billingaddress    TABLE        CREATE TABLE public.order_billingaddress (
    id integer NOT NULL,
    title character varying(64) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    line1 character varying(255) NOT NULL,
    line2 character varying(255) NOT NULL,
    line3 character varying(255) NOT NULL,
    line4 character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    postcode character varying(64) NOT NULL,
    search_text text NOT NULL,
    country_id character varying(2) NOT NULL
);
 (   DROP TABLE public.order_billingaddress;
       public            torsion_prog    false                       1259    26860    order_billingaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_billingaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.order_billingaddress_id_seq;
       public          torsion_prog    false    278            �           0    0    order_billingaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.order_billingaddress_id_seq OWNED BY public.order_billingaddress.id;
          public          torsion_prog    false    277                       1259    26873    order_communicationevent    TABLE     �   CREATE TABLE public.order_communicationevent (
    id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    event_type_id integer NOT NULL,
    order_id integer NOT NULL
);
 ,   DROP TABLE public.order_communicationevent;
       public            torsion_prog    false                       1259    26871    order_communicationevent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_communicationevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.order_communicationevent_id_seq;
       public          torsion_prog    false    280            �           0    0    order_communicationevent_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.order_communicationevent_id_seq OWNED BY public.order_communicationevent.id;
          public          torsion_prog    false    279                       1259    26881 
   order_line    TABLE     �  CREATE TABLE public.order_line (
    id integer NOT NULL,
    partner_name character varying(128) NOT NULL,
    partner_sku character varying(128) NOT NULL,
    partner_line_reference character varying(128) NOT NULL,
    partner_line_notes text NOT NULL,
    title character varying(255) NOT NULL,
    upc character varying(128),
    quantity integer NOT NULL,
    line_price_incl_tax numeric(12,2) NOT NULL,
    line_price_excl_tax numeric(12,2) NOT NULL,
    line_price_before_discounts_incl_tax numeric(12,2) NOT NULL,
    line_price_before_discounts_excl_tax numeric(12,2) NOT NULL,
    unit_cost_price numeric(12,2),
    unit_price_incl_tax numeric(12,2),
    unit_price_excl_tax numeric(12,2),
    unit_retail_price numeric(12,2),
    status character varying(255) NOT NULL,
    est_dispatch_date date,
    order_id integer NOT NULL,
    partner_id integer,
    product_id integer,
    stockrecord_id integer,
    CONSTRAINT order_line_quantity_check CHECK ((quantity >= 0))
);
    DROP TABLE public.order_line;
       public            torsion_prog    false                       1259    26879    order_line_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.order_line_id_seq;
       public          torsion_prog    false    282            �           0    0    order_line_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.order_line_id_seq OWNED BY public.order_line.id;
          public          torsion_prog    false    281                       1259    26893    order_lineattribute    TABLE     �   CREATE TABLE public.order_lineattribute (
    id integer NOT NULL,
    type character varying(128) NOT NULL,
    value character varying(255) NOT NULL,
    line_id integer NOT NULL,
    option_id integer
);
 '   DROP TABLE public.order_lineattribute;
       public            torsion_prog    false                       1259    26891    order_lineattribute_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_lineattribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.order_lineattribute_id_seq;
       public          torsion_prog    false    284            �           0    0    order_lineattribute_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.order_lineattribute_id_seq OWNED BY public.order_lineattribute.id;
          public          torsion_prog    false    283                       1259    26901    order_lineprice    TABLE     �  CREATE TABLE public.order_lineprice (
    id integer NOT NULL,
    quantity integer NOT NULL,
    price_incl_tax numeric(12,2) NOT NULL,
    price_excl_tax numeric(12,2) NOT NULL,
    shipping_incl_tax numeric(12,2) NOT NULL,
    shipping_excl_tax numeric(12,2) NOT NULL,
    line_id integer NOT NULL,
    order_id integer NOT NULL,
    CONSTRAINT order_lineprice_quantity_check CHECK ((quantity >= 0))
);
 #   DROP TABLE public.order_lineprice;
       public            torsion_prog    false                       1259    26899    order_lineprice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_lineprice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.order_lineprice_id_seq;
       public          torsion_prog    false    286                        0    0    order_lineprice_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.order_lineprice_id_seq OWNED BY public.order_lineprice.id;
          public          torsion_prog    false    285                        1259    26910    order_order    TABLE     �  CREATE TABLE public.order_order (
    id integer NOT NULL,
    number character varying(128) NOT NULL,
    currency character varying(12) NOT NULL,
    total_incl_tax numeric(12,2) NOT NULL,
    total_excl_tax numeric(12,2) NOT NULL,
    shipping_incl_tax numeric(12,2) NOT NULL,
    shipping_excl_tax numeric(12,2) NOT NULL,
    shipping_method character varying(128) NOT NULL,
    shipping_code character varying(128) NOT NULL,
    status character varying(100) NOT NULL,
    guest_email character varying(254) NOT NULL,
    date_placed timestamp with time zone NOT NULL,
    basket_id integer,
    billing_address_id integer,
    shipping_address_id integer,
    site_id integer,
    user_id integer
);
    DROP TABLE public.order_order;
       public            torsion_prog    false                       1259    26908    order_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_order_id_seq;
       public          torsion_prog    false    288                       0    0    order_order_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_order_id_seq OWNED BY public.order_order.id;
          public          torsion_prog    false    287            "           1259    26923    order_orderdiscount    TABLE     ]  CREATE TABLE public.order_orderdiscount (
    id integer NOT NULL,
    category character varying(64) NOT NULL,
    offer_id integer,
    offer_name character varying(128) NOT NULL,
    voucher_id integer,
    voucher_code character varying(128) NOT NULL,
    frequency integer,
    amount numeric(12,2) NOT NULL,
    message text NOT NULL,
    order_id integer NOT NULL,
    CONSTRAINT order_orderdiscount_frequency_check CHECK ((frequency >= 0)),
    CONSTRAINT order_orderdiscount_offer_id_check CHECK ((offer_id >= 0)),
    CONSTRAINT order_orderdiscount_voucher_id_check CHECK ((voucher_id >= 0))
);
 '   DROP TABLE public.order_orderdiscount;
       public            torsion_prog    false            !           1259    26921    order_orderdiscount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_orderdiscount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.order_orderdiscount_id_seq;
       public          torsion_prog    false    290                       0    0    order_orderdiscount_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.order_orderdiscount_id_seq OWNED BY public.order_orderdiscount.id;
          public          torsion_prog    false    289            $           1259    26937    order_ordernote    TABLE     '  CREATE TABLE public.order_ordernote (
    id integer NOT NULL,
    note_type character varying(128) NOT NULL,
    message text NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    order_id integer NOT NULL,
    user_id integer
);
 #   DROP TABLE public.order_ordernote;
       public            torsion_prog    false            #           1259    26935    order_ordernote_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_ordernote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.order_ordernote_id_seq;
       public          torsion_prog    false    292                       0    0    order_ordernote_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.order_ordernote_id_seq OWNED BY public.order_ordernote.id;
          public          torsion_prog    false    291            P           1259    27563    order_orderstatuschange    TABLE     �   CREATE TABLE public.order_orderstatuschange (
    id integer NOT NULL,
    old_status character varying(100) NOT NULL,
    new_status character varying(100) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    order_id integer NOT NULL
);
 +   DROP TABLE public.order_orderstatuschange;
       public            torsion_prog    false            O           1259    27561    order_orderstatuschange_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_orderstatuschange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.order_orderstatuschange_id_seq;
       public          torsion_prog    false    336                       0    0    order_orderstatuschange_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.order_orderstatuschange_id_seq OWNED BY public.order_orderstatuschange.id;
          public          torsion_prog    false    335            &           1259    26948    order_paymentevent    TABLE     ,  CREATE TABLE public.order_paymentevent (
    id integer NOT NULL,
    amount numeric(12,2) NOT NULL,
    reference character varying(128) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    event_type_id integer NOT NULL,
    order_id integer NOT NULL,
    shipping_event_id integer
);
 &   DROP TABLE public.order_paymentevent;
       public            torsion_prog    false            %           1259    26946    order_paymentevent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_paymentevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.order_paymentevent_id_seq;
       public          torsion_prog    false    294                       0    0    order_paymentevent_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.order_paymentevent_id_seq OWNED BY public.order_paymentevent.id;
          public          torsion_prog    false    293            (           1259    26956    order_paymenteventquantity    TABLE     �   CREATE TABLE public.order_paymenteventquantity (
    id integer NOT NULL,
    quantity integer NOT NULL,
    event_id integer NOT NULL,
    line_id integer NOT NULL,
    CONSTRAINT order_paymenteventquantity_quantity_check CHECK ((quantity >= 0))
);
 .   DROP TABLE public.order_paymenteventquantity;
       public            torsion_prog    false            '           1259    26954 !   order_paymenteventquantity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_paymenteventquantity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.order_paymenteventquantity_id_seq;
       public          torsion_prog    false    296                       0    0 !   order_paymenteventquantity_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.order_paymenteventquantity_id_seq OWNED BY public.order_paymenteventquantity.id;
          public          torsion_prog    false    295            *           1259    26965    order_paymenteventtype    TABLE     �   CREATE TABLE public.order_paymenteventtype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL
);
 *   DROP TABLE public.order_paymenteventtype;
       public            torsion_prog    false            )           1259    26963    order_paymenteventtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_paymenteventtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.order_paymenteventtype_id_seq;
       public          torsion_prog    false    298                       0    0    order_paymenteventtype_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.order_paymenteventtype_id_seq OWNED BY public.order_paymenteventtype.id;
          public          torsion_prog    false    297            ,           1259    26977    order_shippingaddress    TABLE     l  CREATE TABLE public.order_shippingaddress (
    id integer NOT NULL,
    title character varying(64) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    line1 character varying(255) NOT NULL,
    line2 character varying(255) NOT NULL,
    line3 character varying(255) NOT NULL,
    line4 character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    postcode character varying(64) NOT NULL,
    search_text text NOT NULL,
    phone_number character varying(128) NOT NULL,
    notes text NOT NULL,
    country_id character varying(2) NOT NULL
);
 )   DROP TABLE public.order_shippingaddress;
       public            torsion_prog    false            +           1259    26975    order_shippingaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_shippingaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.order_shippingaddress_id_seq;
       public          torsion_prog    false    300                       0    0    order_shippingaddress_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.order_shippingaddress_id_seq OWNED BY public.order_shippingaddress.id;
          public          torsion_prog    false    299            .           1259    26988    order_shippingevent    TABLE     �   CREATE TABLE public.order_shippingevent (
    id integer NOT NULL,
    notes text NOT NULL,
    date_created timestamp with time zone NOT NULL,
    event_type_id integer NOT NULL,
    order_id integer NOT NULL
);
 '   DROP TABLE public.order_shippingevent;
       public            torsion_prog    false            -           1259    26986    order_shippingevent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_shippingevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.order_shippingevent_id_seq;
       public          torsion_prog    false    302            	           0    0    order_shippingevent_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.order_shippingevent_id_seq OWNED BY public.order_shippingevent.id;
          public          torsion_prog    false    301            0           1259    26999    order_shippingeventquantity    TABLE     �   CREATE TABLE public.order_shippingeventquantity (
    id integer NOT NULL,
    quantity integer NOT NULL,
    event_id integer NOT NULL,
    line_id integer NOT NULL,
    CONSTRAINT order_shippingeventquantity_quantity_check CHECK ((quantity >= 0))
);
 /   DROP TABLE public.order_shippingeventquantity;
       public            torsion_prog    false            /           1259    26997 "   order_shippingeventquantity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_shippingeventquantity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.order_shippingeventquantity_id_seq;
       public          torsion_prog    false    304            
           0    0 "   order_shippingeventquantity_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.order_shippingeventquantity_id_seq OWNED BY public.order_shippingeventquantity.id;
          public          torsion_prog    false    303            2           1259    27008    order_shippingeventtype    TABLE     �   CREATE TABLE public.order_shippingeventtype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(128) NOT NULL
);
 +   DROP TABLE public.order_shippingeventtype;
       public            torsion_prog    false            1           1259    27006    order_shippingeventtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_shippingeventtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.order_shippingeventtype_id_seq;
       public          torsion_prog    false    306                       0    0    order_shippingeventtype_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.order_shippingeventtype_id_seq OWNED BY public.order_shippingeventtype.id;
          public          torsion_prog    false    305            b           1259    27745    order_surcharge    TABLE     �   CREATE TABLE public.order_surcharge (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL,
    incl_tax numeric(12,2) NOT NULL,
    excl_tax numeric(12,2) NOT NULL,
    order_id integer NOT NULL
);
 #   DROP TABLE public.order_surcharge;
       public            torsion_prog    false            a           1259    27743    order_surcharge_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_surcharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.order_surcharge_id_seq;
       public          torsion_prog    false    354                       0    0    order_surcharge_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.order_surcharge_id_seq OWNED BY public.order_surcharge.id;
          public          torsion_prog    false    353            d           1259    27759    oscarapi_apikey    TABLE     j   CREATE TABLE public.oscarapi_apikey (
    id integer NOT NULL,
    key character varying(255) NOT NULL
);
 #   DROP TABLE public.oscarapi_apikey;
       public            torsion_prog    false            c           1259    27757    oscarapi_apikey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oscarapi_apikey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.oscarapi_apikey_id_seq;
       public          torsion_prog    false    356                       0    0    oscarapi_apikey_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.oscarapi_apikey_id_seq OWNED BY public.oscarapi_apikey.id;
          public          torsion_prog    false    355            �            1259    26622    partner_partner    TABLE     �   CREATE TABLE public.partner_partner (
    id integer NOT NULL,
    code character varying(128) NOT NULL,
    name character varying(128) NOT NULL
);
 #   DROP TABLE public.partner_partner;
       public            torsion_prog    false            �            1259    26620    partner_partner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.partner_partner_id_seq;
       public          torsion_prog    false    254                       0    0    partner_partner_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.partner_partner_id_seq OWNED BY public.partner_partner.id;
          public          torsion_prog    false    253                        1259    26632    partner_partner_users    TABLE     �   CREATE TABLE public.partner_partner_users (
    id integer NOT NULL,
    partner_id integer NOT NULL,
    user_id integer NOT NULL
);
 )   DROP TABLE public.partner_partner_users;
       public            torsion_prog    false            �            1259    26630    partner_partner_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_partner_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.partner_partner_users_id_seq;
       public          torsion_prog    false    256                       0    0    partner_partner_users_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.partner_partner_users_id_seq OWNED BY public.partner_partner_users.id;
          public          torsion_prog    false    255                       1259    26640    partner_partneraddress    TABLE     C  CREATE TABLE public.partner_partneraddress (
    id integer NOT NULL,
    title character varying(64) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    line1 character varying(255) NOT NULL,
    line2 character varying(255) NOT NULL,
    line3 character varying(255) NOT NULL,
    line4 character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    postcode character varying(64) NOT NULL,
    search_text text NOT NULL,
    country_id character varying(2) NOT NULL,
    partner_id integer NOT NULL
);
 *   DROP TABLE public.partner_partneraddress;
       public            torsion_prog    false                       1259    26638    partner_partneraddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_partneraddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.partner_partneraddress_id_seq;
       public          torsion_prog    false    258                       0    0    partner_partneraddress_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.partner_partneraddress_id_seq OWNED BY public.partner_partneraddress.id;
          public          torsion_prog    false    257                       1259    26651    partner_stockalert    TABLE     _  CREATE TABLE public.partner_stockalert (
    id integer NOT NULL,
    threshold integer NOT NULL,
    status character varying(128) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_closed timestamp with time zone,
    stockrecord_id integer NOT NULL,
    CONSTRAINT partner_stockalert_threshold_check CHECK ((threshold >= 0))
);
 &   DROP TABLE public.partner_stockalert;
       public            torsion_prog    false                       1259    26649    partner_stockalert_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_stockalert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.partner_stockalert_id_seq;
       public          torsion_prog    false    260                       0    0    partner_stockalert_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.partner_stockalert_id_seq OWNED BY public.partner_stockalert.id;
          public          torsion_prog    false    259                       1259    26660    partner_stockrecord    TABLE     �  CREATE TABLE public.partner_stockrecord (
    id integer NOT NULL,
    partner_sku character varying(128) NOT NULL,
    price_currency character varying(12) NOT NULL,
    price_excl_tax numeric(12,2),
    price_retail numeric(12,2),
    cost_price numeric(12,2),
    num_in_stock integer,
    num_allocated integer,
    low_stock_threshold integer,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    partner_id integer NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT partner_stockrecord_low_stock_threshold_check CHECK ((low_stock_threshold >= 0)),
    CONSTRAINT partner_stockrecord_num_in_stock_check CHECK ((num_in_stock >= 0))
);
 '   DROP TABLE public.partner_stockrecord;
       public            torsion_prog    false                       1259    26658    partner_stockrecord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_stockrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.partner_stockrecord_id_seq;
       public          torsion_prog    false    262                       0    0    partner_stockrecord_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.partner_stockrecord_id_seq OWNED BY public.partner_stockrecord.id;
          public          torsion_prog    false    261            f           1259    27783    payment_bankcard    TABLE     :  CREATE TABLE public.payment_bankcard (
    id integer NOT NULL,
    card_type character varying(128) NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(32) NOT NULL,
    expiry_date date NOT NULL,
    partner_reference character varying(255) NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.payment_bankcard;
       public            torsion_prog    false            e           1259    27781    payment_bankcard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_bankcard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.payment_bankcard_id_seq;
       public          torsion_prog    false    358                       0    0    payment_bankcard_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.payment_bankcard_id_seq OWNED BY public.payment_bankcard.id;
          public          torsion_prog    false    357            h           1259    27794    payment_source    TABLE     �  CREATE TABLE public.payment_source (
    id integer NOT NULL,
    currency character varying(12) NOT NULL,
    amount_allocated numeric(12,2) NOT NULL,
    amount_debited numeric(12,2) NOT NULL,
    amount_refunded numeric(12,2) NOT NULL,
    reference character varying(255) NOT NULL,
    label character varying(128) NOT NULL,
    order_id integer NOT NULL,
    source_type_id integer NOT NULL
);
 "   DROP TABLE public.payment_source;
       public            torsion_prog    false            g           1259    27792    payment_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.payment_source_id_seq;
       public          torsion_prog    false    360                       0    0    payment_source_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.payment_source_id_seq OWNED BY public.payment_source.id;
          public          torsion_prog    false    359            j           1259    27802    payment_sourcetype    TABLE     �   CREATE TABLE public.payment_sourcetype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL
);
 &   DROP TABLE public.payment_sourcetype;
       public            torsion_prog    false            i           1259    27800    payment_sourcetype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_sourcetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.payment_sourcetype_id_seq;
       public          torsion_prog    false    362                       0    0    payment_sourcetype_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.payment_sourcetype_id_seq OWNED BY public.payment_sourcetype.id;
          public          torsion_prog    false    361            l           1259    27812    payment_transaction    TABLE     E  CREATE TABLE public.payment_transaction (
    id integer NOT NULL,
    txn_type character varying(128) NOT NULL,
    amount numeric(12,2) NOT NULL,
    reference character varying(128) NOT NULL,
    status character varying(128) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 '   DROP TABLE public.payment_transaction;
       public            torsion_prog    false            k           1259    27810    payment_transaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.payment_transaction_id_seq;
       public          torsion_prog    false    364                       0    0    payment_transaction_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.payment_transaction_id_seq OWNED BY public.payment_transaction.id;
          public          torsion_prog    false    363            n           1259    27846    reviews_productreview    TABLE     �  CREATE TABLE public.reviews_productreview (
    id integer NOT NULL,
    score smallint NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    homepage character varying(200) NOT NULL,
    status smallint NOT NULL,
    total_votes integer NOT NULL,
    delta_votes integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    product_id integer,
    user_id integer
);
 )   DROP TABLE public.reviews_productreview;
       public            torsion_prog    false            m           1259    27844    reviews_productreview_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_productreview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.reviews_productreview_id_seq;
       public          torsion_prog    false    366                       0    0    reviews_productreview_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.reviews_productreview_id_seq OWNED BY public.reviews_productreview.id;
          public          torsion_prog    false    365            p           1259    27857    reviews_vote    TABLE     �   CREATE TABLE public.reviews_vote (
    id integer NOT NULL,
    delta smallint NOT NULL,
    date_created timestamp with time zone NOT NULL,
    review_id integer NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.reviews_vote;
       public            torsion_prog    false            o           1259    27855    reviews_vote_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_vote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reviews_vote_id_seq;
       public          torsion_prog    false    368                       0    0    reviews_vote_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reviews_vote_id_seq OWNED BY public.reviews_vote.id;
          public          torsion_prog    false    367            s           1259    27909    shipping_orderanditemcharges    TABLE     C  CREATE TABLE public.shipping_orderanditemcharges (
    id integer NOT NULL,
    code character varying(128) NOT NULL,
    name character varying(128) NOT NULL,
    description text NOT NULL,
    price_per_order numeric(12,2) NOT NULL,
    price_per_item numeric(12,2) NOT NULL,
    free_shipping_threshold numeric(12,2)
);
 0   DROP TABLE public.shipping_orderanditemcharges;
       public            torsion_prog    false            u           1259    27924 &   shipping_orderanditemcharges_countries    TABLE     �   CREATE TABLE public.shipping_orderanditemcharges_countries (
    id integer NOT NULL,
    orderanditemcharges_id integer NOT NULL,
    country_id character varying(2) NOT NULL
);
 :   DROP TABLE public.shipping_orderanditemcharges_countries;
       public            torsion_prog    false            t           1259    27922 -   shipping_orderanditemcharges_countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_orderanditemcharges_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.shipping_orderanditemcharges_countries_id_seq;
       public          torsion_prog    false    373                       0    0 -   shipping_orderanditemcharges_countries_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.shipping_orderanditemcharges_countries_id_seq OWNED BY public.shipping_orderanditemcharges_countries.id;
          public          torsion_prog    false    372            r           1259    27907 #   shipping_orderanditemcharges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_orderanditemcharges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.shipping_orderanditemcharges_id_seq;
       public          torsion_prog    false    371                       0    0 #   shipping_orderanditemcharges_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.shipping_orderanditemcharges_id_seq OWNED BY public.shipping_orderanditemcharges.id;
          public          torsion_prog    false    370            w           1259    27932    shipping_weightband    TABLE     �   CREATE TABLE public.shipping_weightband (
    id integer NOT NULL,
    upper_limit numeric(12,3) NOT NULL,
    charge numeric(12,2) NOT NULL,
    method_id integer NOT NULL
);
 '   DROP TABLE public.shipping_weightband;
       public            torsion_prog    false            v           1259    27930    shipping_weightband_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_weightband_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.shipping_weightband_id_seq;
       public          torsion_prog    false    375                       0    0    shipping_weightband_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.shipping_weightband_id_seq OWNED BY public.shipping_weightband.id;
          public          torsion_prog    false    374            y           1259    27940    shipping_weightbased    TABLE     �   CREATE TABLE public.shipping_weightbased (
    id integer NOT NULL,
    code character varying(128) NOT NULL,
    name character varying(128) NOT NULL,
    description text NOT NULL,
    default_weight numeric(12,3) NOT NULL
);
 (   DROP TABLE public.shipping_weightbased;
       public            torsion_prog    false            {           1259    27955    shipping_weightbased_countries    TABLE     �   CREATE TABLE public.shipping_weightbased_countries (
    id integer NOT NULL,
    weightbased_id integer NOT NULL,
    country_id character varying(2) NOT NULL
);
 2   DROP TABLE public.shipping_weightbased_countries;
       public            torsion_prog    false            z           1259    27953 %   shipping_weightbased_countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_weightbased_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.shipping_weightbased_countries_id_seq;
       public          torsion_prog    false    379                       0    0 %   shipping_weightbased_countries_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.shipping_weightbased_countries_id_seq OWNED BY public.shipping_weightbased_countries.id;
          public          torsion_prog    false    378            x           1259    27938    shipping_weightbased_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_weightbased_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.shipping_weightbased_id_seq;
       public          torsion_prog    false    377                       0    0    shipping_weightbased_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.shipping_weightbased_id_seq OWNED BY public.shipping_weightbased.id;
          public          torsion_prog    false    376            F           1259    27414    voucher_voucher    TABLE     �  CREATE TABLE public.voucher_voucher (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    code character varying(128) NOT NULL,
    usage character varying(128) NOT NULL,
    start_datetime timestamp with time zone NOT NULL,
    end_datetime timestamp with time zone NOT NULL,
    num_basket_additions integer NOT NULL,
    num_orders integer NOT NULL,
    total_discount numeric(12,2) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    voucher_set_id integer,
    CONSTRAINT voucher_voucher_num_basket_additions_check CHECK ((num_basket_additions >= 0)),
    CONSTRAINT voucher_voucher_num_orders_check CHECK ((num_orders >= 0))
);
 #   DROP TABLE public.voucher_voucher;
       public            torsion_prog    false            E           1259    27412    voucher_voucher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voucher_voucher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.voucher_voucher_id_seq;
       public          torsion_prog    false    326                       0    0    voucher_voucher_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.voucher_voucher_id_seq OWNED BY public.voucher_voucher.id;
          public          torsion_prog    false    325            H           1259    27426    voucher_voucher_offers    TABLE     �   CREATE TABLE public.voucher_voucher_offers (
    id integer NOT NULL,
    voucher_id integer NOT NULL,
    conditionaloffer_id integer NOT NULL
);
 *   DROP TABLE public.voucher_voucher_offers;
       public            torsion_prog    false            G           1259    27424    voucher_voucher_offers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voucher_voucher_offers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.voucher_voucher_offers_id_seq;
       public          torsion_prog    false    328                       0    0    voucher_voucher_offers_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.voucher_voucher_offers_id_seq OWNED BY public.voucher_voucher_offers.id;
          public          torsion_prog    false    327            J           1259    27434    voucher_voucherapplication    TABLE     �   CREATE TABLE public.voucher_voucherapplication (
    id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    order_id integer NOT NULL,
    user_id integer,
    voucher_id integer NOT NULL
);
 .   DROP TABLE public.voucher_voucherapplication;
       public            torsion_prog    false            I           1259    27432 !   voucher_voucherapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voucher_voucherapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.voucher_voucherapplication_id_seq;
       public          torsion_prog    false    330                        0    0 !   voucher_voucherapplication_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.voucher_voucherapplication_id_seq OWNED BY public.voucher_voucherapplication.id;
          public          torsion_prog    false    329            }           1259    28050    voucher_voucherset    TABLE     �  CREATE TABLE public.voucher_voucherset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    count integer NOT NULL,
    code_length integer NOT NULL,
    description text NOT NULL,
    date_created timestamp with time zone NOT NULL,
    start_datetime timestamp with time zone NOT NULL,
    end_datetime timestamp with time zone NOT NULL,
    offer_id integer,
    CONSTRAINT voucher_voucherset_count_69b7878e_check CHECK ((count >= 0))
);
 &   DROP TABLE public.voucher_voucherset;
       public            torsion_prog    false            |           1259    28048    voucher_voucherset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voucher_voucherset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.voucher_voucherset_id_seq;
       public          torsion_prog    false    381            !           0    0    voucher_voucherset_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.voucher_voucherset_id_seq OWNED BY public.voucher_voucherset.id;
          public          torsion_prog    false    380                       1259    28082    wishlists_line    TABLE     
  CREATE TABLE public.wishlists_line (
    id integer NOT NULL,
    quantity integer NOT NULL,
    title character varying(255) NOT NULL,
    product_id integer,
    wishlist_id integer NOT NULL,
    CONSTRAINT wishlists_line_quantity_check CHECK ((quantity >= 0))
);
 "   DROP TABLE public.wishlists_line;
       public            torsion_prog    false            ~           1259    28080    wishlists_line_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlists_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.wishlists_line_id_seq;
       public          torsion_prog    false    383            "           0    0    wishlists_line_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.wishlists_line_id_seq OWNED BY public.wishlists_line.id;
          public          torsion_prog    false    382            �           1259    28091    wishlists_wishlist    TABLE       CREATE TABLE public.wishlists_wishlist (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    key character varying(6) NOT NULL,
    visibility character varying(20) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    owner_id integer NOT NULL
);
 &   DROP TABLE public.wishlists_wishlist;
       public            torsion_prog    false            �           1259    28089    wishlists_wishlist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlists_wishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wishlists_wishlist_id_seq;
       public          torsion_prog    false    385            #           0    0    wishlists_wishlist_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wishlists_wishlist_id_seq OWNED BY public.wishlists_wishlist.id;
          public          torsion_prog    false    384            C           2604    26208    address_useraddress id    DEFAULT     �   ALTER TABLE ONLY public.address_useraddress ALTER COLUMN id SET DEFAULT nextval('public.address_useraddress_id_seq'::regclass);
 E   ALTER TABLE public.address_useraddress ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    214    213    214            Z           2604    26530    analytics_productrecord id    DEFAULT     �   ALTER TABLE ONLY public.analytics_productrecord ALTER COLUMN id SET DEFAULT nextval('public.analytics_productrecord_id_seq'::regclass);
 I   ALTER TABLE public.analytics_productrecord ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    243    244    244            ^           2604    26541    analytics_userproductview id    DEFAULT     �   ALTER TABLE ONLY public.analytics_userproductview ALTER COLUMN id SET DEFAULT nextval('public.analytics_userproductview_id_seq'::regclass);
 K   ALTER TABLE public.analytics_userproductview ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    246    245    246            _           2604    26549    analytics_userrecord id    DEFAULT     �   ALTER TABLE ONLY public.analytics_userrecord ALTER COLUMN id SET DEFAULT nextval('public.analytics_userrecord_id_seq'::regclass);
 F   ALTER TABLE public.analytics_userrecord ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    247    248    248            e           2604    26564    analytics_usersearch id    DEFAULT     �   ALTER TABLE ONLY public.analytics_usersearch ALTER COLUMN id SET DEFAULT nextval('public.analytics_usersearch_id_seq'::regclass);
 F   ALTER TABLE public.analytics_usersearch ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    249    250    250            =           2604    26106    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    203    202    203            >           2604    26116    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    205    204    205            <           2604    26098    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    200    201    201            ?           2604    26124    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    207    206    207            @           2604    26134    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    209    208    209            A           2604    26142    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    211    210    211            s           2604    26800    basket_basket id    DEFAULT     t   ALTER TABLE ONLY public.basket_basket ALTER COLUMN id SET DEFAULT nextval('public.basket_basket_id_seq'::regclass);
 ?   ALTER TABLE public.basket_basket ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    272    271    272            �           2604    27478    basket_basket_vouchers id    DEFAULT     �   ALTER TABLE ONLY public.basket_basket_vouchers ALTER COLUMN id SET DEFAULT nextval('public.basket_basket_vouchers_id_seq'::regclass);
 H   ALTER TABLE public.basket_basket_vouchers ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    331    332    332            t           2604    26808    basket_line id    DEFAULT     p   ALTER TABLE ONLY public.basket_line ALTER COLUMN id SET DEFAULT nextval('public.basket_line_id_seq'::regclass);
 =   ALTER TABLE public.basket_line ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    274    273    274            v           2604    26817    basket_lineattribute id    DEFAULT     �   ALTER TABLE ONLY public.basket_lineattribute ALTER COLUMN id SET DEFAULT nextval('public.basket_lineattribute_id_seq'::regclass);
 F   ALTER TABLE public.basket_lineattribute ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    276    275    276            �           2604    28224 +   cashondelivery_cashondeliverytransaction id    DEFAULT     �   ALTER TABLE ONLY public.cashondelivery_cashondeliverytransaction ALTER COLUMN id SET DEFAULT nextval('public.cashondelivery_cashondeliverytransaction_id_seq'::regclass);
 Z   ALTER TABLE public.cashondelivery_cashondeliverytransaction ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    388    389    389            H           2604    26269    catalogue_attributeoption id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_attributeoption ALTER COLUMN id SET DEFAULT nextval('public.catalogue_attributeoption_id_seq'::regclass);
 K   ALTER TABLE public.catalogue_attributeoption ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    218    217    218            I           2604    26277 !   catalogue_attributeoptiongroup id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_attributeoptiongroup ALTER COLUMN id SET DEFAULT nextval('public.catalogue_attributeoptiongroup_id_seq'::regclass);
 P   ALTER TABLE public.catalogue_attributeoptiongroup ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    219    220    220            J           2604    26285    catalogue_category id    DEFAULT     ~   ALTER TABLE ONLY public.catalogue_category ALTER COLUMN id SET DEFAULT nextval('public.catalogue_category_id_seq'::regclass);
 D   ALTER TABLE public.catalogue_category ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    221    222    222            M           2604    26300    catalogue_option id    DEFAULT     z   ALTER TABLE ONLY public.catalogue_option ALTER COLUMN id SET DEFAULT nextval('public.catalogue_option_id_seq'::regclass);
 B   ALTER TABLE public.catalogue_option ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    224    223    224            N           2604    26310    catalogue_product id    DEFAULT     |   ALTER TABLE ONLY public.catalogue_product ALTER COLUMN id SET DEFAULT nextval('public.catalogue_product_id_seq'::regclass);
 C   ALTER TABLE public.catalogue_product ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    225    226    226            Y           2604    26410 $   catalogue_product_product_options id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_product_product_options ALTER COLUMN id SET DEFAULT nextval('public.catalogue_product_product_options_id_seq'::regclass);
 S   ALTER TABLE public.catalogue_product_product_options ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    241    242    242            O           2604    26323    catalogue_productattribute id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productattribute ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productattribute_id_seq'::regclass);
 L   ALTER TABLE public.catalogue_productattribute ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    228    227    228            P           2604    26331 "   catalogue_productattributevalue id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productattributevalue ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productattributevalue_id_seq'::regclass);
 Q   ALTER TABLE public.catalogue_productattributevalue ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    230    229    230            �           2604    27520 5   catalogue_productattributevalue_value_multi_option id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productattributevalue_value_multi_option_id_seq'::regclass);
 d   ALTER TABLE public.catalogue_productattributevalue_value_multi_option ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    333    334    334            R           2604    26343    catalogue_productcategory id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productcategory ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productcategory_id_seq'::regclass);
 K   ALTER TABLE public.catalogue_productcategory ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    232    231    232            S           2604    26351    catalogue_productclass id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productclass ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productclass_id_seq'::regclass);
 H   ALTER TABLE public.catalogue_productclass ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    234    233    234            T           2604    26361 !   catalogue_productclass_options id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productclass_options ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productclass_options_id_seq'::regclass);
 P   ALTER TABLE public.catalogue_productclass_options ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    235    236    236            U           2604    26369    catalogue_productimage id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productimage ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productimage_id_seq'::regclass);
 H   ALTER TABLE public.catalogue_productimage ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    238    237    238            W           2604    26378 "   catalogue_productrecommendation id    DEFAULT     �   ALTER TABLE ONLY public.catalogue_productrecommendation ALTER COLUMN id SET DEFAULT nextval('public.catalogue_productrecommendation_id_seq'::regclass);
 Q   ALTER TABLE public.catalogue_productrecommendation ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    240    239    240            o           2604    26722 '   communication_communicationeventtype id    DEFAULT     �   ALTER TABLE ONLY public.communication_communicationeventtype ALTER COLUMN id SET DEFAULT nextval('public.customer_communicationeventtype_id_seq'::regclass);
 V   ALTER TABLE public.communication_communicationeventtype ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    264    263    264            p           2604    26735    communication_email id    DEFAULT     {   ALTER TABLE ONLY public.communication_email ALTER COLUMN id SET DEFAULT nextval('public.customer_email_id_seq'::regclass);
 E   ALTER TABLE public.communication_email ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    265    266    266            q           2604    26746    communication_notification id    DEFAULT     �   ALTER TABLE ONLY public.communication_notification ALTER COLUMN id SET DEFAULT nextval('public.customer_notification_id_seq'::regclass);
 L   ALTER TABLE public.communication_notification ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    267    268    268            �           2604    27597    content_category id    DEFAULT     z   ALTER TABLE ONLY public.content_category ALTER COLUMN id SET DEFAULT nextval('public.content_category_id_seq'::regclass);
 B   ALTER TABLE public.content_category ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    338    337    338            �           2604    27610    content_content id    DEFAULT     x   ALTER TABLE ONLY public.content_content ALTER COLUMN id SET DEFAULT nextval('public.content_content_id_seq'::regclass);
 A   ALTER TABLE public.content_content ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    339    340    340            �           2604    27651    content_contentimage id    DEFAULT     �   ALTER TABLE ONLY public.content_contentimage ALTER COLUMN id SET DEFAULT nextval('public.content_contentimage_id_seq'::regclass);
 F   ALTER TABLE public.content_contentimage ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    348    347    348            �           2604    27643    content_ratingcontent id    DEFAULT     �   ALTER TABLE ONLY public.content_ratingcontent ALTER COLUMN id SET DEFAULT nextval('public.content_ratingcontent_id_seq'::regclass);
 G   ALTER TABLE public.content_ratingcontent ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    346    345    346            �           2604    27623    content_ratingstar id    DEFAULT     ~   ALTER TABLE ONLY public.content_ratingstar ALTER COLUMN id SET DEFAULT nextval('public.content_ratingstar_id_seq'::regclass);
 D   ALTER TABLE public.content_ratingstar ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    342    341    342            �           2604    27632    content_reviewcontent id    DEFAULT     �   ALTER TABLE ONLY public.content_reviewcontent ALTER COLUMN id SET DEFAULT nextval('public.content_reviewcontent_id_seq'::regclass);
 G   ALTER TABLE public.content_reviewcontent ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    344    343    344            r           2604    26757    customer_productalert id    DEFAULT     �   ALTER TABLE ONLY public.customer_productalert ALTER COLUMN id SET DEFAULT nextval('public.customer_productalert_id_seq'::regclass);
 G   ALTER TABLE public.customer_productalert ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    270    269    270            F           2604    26245    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    216    215    216            ;           2604    26088    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    198    199    199            �           2604    27700    django_flatpage id    DEFAULT     x   ALTER TABLE ONLY public.django_flatpage ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_id_seq'::regclass);
 A   ALTER TABLE public.django_flatpage ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    349    350    350            �           2604    27711    django_flatpage_sites id    DEFAULT     �   ALTER TABLE ONLY public.django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_sites_id_seq'::regclass);
 G   ALTER TABLE public.django_flatpage_sites ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    351    352    352            :           2604    26077    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    196    197    197            f           2604    26617    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    251    252    252            �           2604    28197    novaposhta_warehouse id    DEFAULT     �   ALTER TABLE ONLY public.novaposhta_warehouse ALTER COLUMN id SET DEFAULT nextval('public.novaposhta_warehouse_id_seq'::regclass);
 F   ALTER TABLE public.novaposhta_warehouse ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    386    387    387            �           2604    27213    offer_benefit id    DEFAULT     t   ALTER TABLE ONLY public.offer_benefit ALTER COLUMN id SET DEFAULT nextval('public.offer_benefit_id_seq'::regclass);
 ?   ALTER TABLE public.offer_benefit ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    308    307    308            �           2604    27224    offer_condition id    DEFAULT     x   ALTER TABLE ONLY public.offer_condition ALTER COLUMN id SET DEFAULT nextval('public.offer_condition_id_seq'::regclass);
 A   ALTER TABLE public.offer_condition ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    310    309    310            �           2604    27234    offer_conditionaloffer id    DEFAULT     �   ALTER TABLE ONLY public.offer_conditionaloffer ALTER COLUMN id SET DEFAULT nextval('public.offer_conditionaloffer_id_seq'::regclass);
 H   ALTER TABLE public.offer_conditionaloffer ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    311    312    312            �           2604    27254    offer_range id    DEFAULT     p   ALTER TABLE ONLY public.offer_range ALTER COLUMN id SET DEFAULT nextval('public.offer_range_id_seq'::regclass);
 =   ALTER TABLE public.offer_range ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    314    313    314            �           2604    27271    offer_range_classes id    DEFAULT     �   ALTER TABLE ONLY public.offer_range_classes ALTER COLUMN id SET DEFAULT nextval('public.offer_range_classes_id_seq'::regclass);
 E   ALTER TABLE public.offer_range_classes ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    315    316    316            �           2604    27279     offer_range_excluded_products id    DEFAULT     �   ALTER TABLE ONLY public.offer_range_excluded_products ALTER COLUMN id SET DEFAULT nextval('public.offer_range_excluded_products_id_seq'::regclass);
 O   ALTER TABLE public.offer_range_excluded_products ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    317    318    318            �           2604    27287 "   offer_range_included_categories id    DEFAULT     �   ALTER TABLE ONLY public.offer_range_included_categories ALTER COLUMN id SET DEFAULT nextval('public.offer_range_included_categories_id_seq'::regclass);
 Q   ALTER TABLE public.offer_range_included_categories ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    320    319    320            �           2604    27295    offer_rangeproduct id    DEFAULT     ~   ALTER TABLE ONLY public.offer_rangeproduct ALTER COLUMN id SET DEFAULT nextval('public.offer_rangeproduct_id_seq'::regclass);
 D   ALTER TABLE public.offer_rangeproduct ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    322    321    322            �           2604    27303    offer_rangeproductfileupload id    DEFAULT     �   ALTER TABLE ONLY public.offer_rangeproductfileupload ALTER COLUMN id SET DEFAULT nextval('public.offer_rangeproductfileupload_id_seq'::regclass);
 N   ALTER TABLE public.offer_rangeproductfileupload ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    323    324    324            w           2604    26865    order_billingaddress id    DEFAULT     �   ALTER TABLE ONLY public.order_billingaddress ALTER COLUMN id SET DEFAULT nextval('public.order_billingaddress_id_seq'::regclass);
 F   ALTER TABLE public.order_billingaddress ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    277    278    278            x           2604    26876    order_communicationevent id    DEFAULT     �   ALTER TABLE ONLY public.order_communicationevent ALTER COLUMN id SET DEFAULT nextval('public.order_communicationevent_id_seq'::regclass);
 J   ALTER TABLE public.order_communicationevent ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    280    279    280            y           2604    26884    order_line id    DEFAULT     n   ALTER TABLE ONLY public.order_line ALTER COLUMN id SET DEFAULT nextval('public.order_line_id_seq'::regclass);
 <   ALTER TABLE public.order_line ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    281    282    282            {           2604    26896    order_lineattribute id    DEFAULT     �   ALTER TABLE ONLY public.order_lineattribute ALTER COLUMN id SET DEFAULT nextval('public.order_lineattribute_id_seq'::regclass);
 E   ALTER TABLE public.order_lineattribute ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    284    283    284            |           2604    26904    order_lineprice id    DEFAULT     x   ALTER TABLE ONLY public.order_lineprice ALTER COLUMN id SET DEFAULT nextval('public.order_lineprice_id_seq'::regclass);
 A   ALTER TABLE public.order_lineprice ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    285    286    286            ~           2604    26913    order_order id    DEFAULT     p   ALTER TABLE ONLY public.order_order ALTER COLUMN id SET DEFAULT nextval('public.order_order_id_seq'::regclass);
 =   ALTER TABLE public.order_order ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    288    287    288                       2604    26926    order_orderdiscount id    DEFAULT     �   ALTER TABLE ONLY public.order_orderdiscount ALTER COLUMN id SET DEFAULT nextval('public.order_orderdiscount_id_seq'::regclass);
 E   ALTER TABLE public.order_orderdiscount ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    290    289    290            �           2604    26940    order_ordernote id    DEFAULT     x   ALTER TABLE ONLY public.order_ordernote ALTER COLUMN id SET DEFAULT nextval('public.order_ordernote_id_seq'::regclass);
 A   ALTER TABLE public.order_ordernote ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    292    291    292            �           2604    27566    order_orderstatuschange id    DEFAULT     �   ALTER TABLE ONLY public.order_orderstatuschange ALTER COLUMN id SET DEFAULT nextval('public.order_orderstatuschange_id_seq'::regclass);
 I   ALTER TABLE public.order_orderstatuschange ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    336    335    336            �           2604    26951    order_paymentevent id    DEFAULT     ~   ALTER TABLE ONLY public.order_paymentevent ALTER COLUMN id SET DEFAULT nextval('public.order_paymentevent_id_seq'::regclass);
 D   ALTER TABLE public.order_paymentevent ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    294    293    294            �           2604    26959    order_paymenteventquantity id    DEFAULT     �   ALTER TABLE ONLY public.order_paymenteventquantity ALTER COLUMN id SET DEFAULT nextval('public.order_paymenteventquantity_id_seq'::regclass);
 L   ALTER TABLE public.order_paymenteventquantity ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    296    295    296            �           2604    26968    order_paymenteventtype id    DEFAULT     �   ALTER TABLE ONLY public.order_paymenteventtype ALTER COLUMN id SET DEFAULT nextval('public.order_paymenteventtype_id_seq'::regclass);
 H   ALTER TABLE public.order_paymenteventtype ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    297    298    298            �           2604    26980    order_shippingaddress id    DEFAULT     �   ALTER TABLE ONLY public.order_shippingaddress ALTER COLUMN id SET DEFAULT nextval('public.order_shippingaddress_id_seq'::regclass);
 G   ALTER TABLE public.order_shippingaddress ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    299    300    300            �           2604    26991    order_shippingevent id    DEFAULT     �   ALTER TABLE ONLY public.order_shippingevent ALTER COLUMN id SET DEFAULT nextval('public.order_shippingevent_id_seq'::regclass);
 E   ALTER TABLE public.order_shippingevent ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    302    301    302            �           2604    27002    order_shippingeventquantity id    DEFAULT     �   ALTER TABLE ONLY public.order_shippingeventquantity ALTER COLUMN id SET DEFAULT nextval('public.order_shippingeventquantity_id_seq'::regclass);
 M   ALTER TABLE public.order_shippingeventquantity ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    304    303    304            �           2604    27011    order_shippingeventtype id    DEFAULT     �   ALTER TABLE ONLY public.order_shippingeventtype ALTER COLUMN id SET DEFAULT nextval('public.order_shippingeventtype_id_seq'::regclass);
 I   ALTER TABLE public.order_shippingeventtype ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    306    305    306            �           2604    27748    order_surcharge id    DEFAULT     x   ALTER TABLE ONLY public.order_surcharge ALTER COLUMN id SET DEFAULT nextval('public.order_surcharge_id_seq'::regclass);
 A   ALTER TABLE public.order_surcharge ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    354    353    354            �           2604    27762    oscarapi_apikey id    DEFAULT     x   ALTER TABLE ONLY public.oscarapi_apikey ALTER COLUMN id SET DEFAULT nextval('public.oscarapi_apikey_id_seq'::regclass);
 A   ALTER TABLE public.oscarapi_apikey ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    355    356    356            g           2604    26625    partner_partner id    DEFAULT     x   ALTER TABLE ONLY public.partner_partner ALTER COLUMN id SET DEFAULT nextval('public.partner_partner_id_seq'::regclass);
 A   ALTER TABLE public.partner_partner ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    253    254    254            h           2604    26635    partner_partner_users id    DEFAULT     �   ALTER TABLE ONLY public.partner_partner_users ALTER COLUMN id SET DEFAULT nextval('public.partner_partner_users_id_seq'::regclass);
 G   ALTER TABLE public.partner_partner_users ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    256    255    256            i           2604    26643    partner_partneraddress id    DEFAULT     �   ALTER TABLE ONLY public.partner_partneraddress ALTER COLUMN id SET DEFAULT nextval('public.partner_partneraddress_id_seq'::regclass);
 H   ALTER TABLE public.partner_partneraddress ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    258    257    258            j           2604    26654    partner_stockalert id    DEFAULT     ~   ALTER TABLE ONLY public.partner_stockalert ALTER COLUMN id SET DEFAULT nextval('public.partner_stockalert_id_seq'::regclass);
 D   ALTER TABLE public.partner_stockalert ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    259    260    260            l           2604    26663    partner_stockrecord id    DEFAULT     �   ALTER TABLE ONLY public.partner_stockrecord ALTER COLUMN id SET DEFAULT nextval('public.partner_stockrecord_id_seq'::regclass);
 E   ALTER TABLE public.partner_stockrecord ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    261    262    262            �           2604    27786    payment_bankcard id    DEFAULT     z   ALTER TABLE ONLY public.payment_bankcard ALTER COLUMN id SET DEFAULT nextval('public.payment_bankcard_id_seq'::regclass);
 B   ALTER TABLE public.payment_bankcard ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    357    358    358            �           2604    27797    payment_source id    DEFAULT     v   ALTER TABLE ONLY public.payment_source ALTER COLUMN id SET DEFAULT nextval('public.payment_source_id_seq'::regclass);
 @   ALTER TABLE public.payment_source ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    360    359    360            �           2604    27805    payment_sourcetype id    DEFAULT     ~   ALTER TABLE ONLY public.payment_sourcetype ALTER COLUMN id SET DEFAULT nextval('public.payment_sourcetype_id_seq'::regclass);
 D   ALTER TABLE public.payment_sourcetype ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    361    362    362            �           2604    27815    payment_transaction id    DEFAULT     �   ALTER TABLE ONLY public.payment_transaction ALTER COLUMN id SET DEFAULT nextval('public.payment_transaction_id_seq'::regclass);
 E   ALTER TABLE public.payment_transaction ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    364    363    364            �           2604    27849    reviews_productreview id    DEFAULT     �   ALTER TABLE ONLY public.reviews_productreview ALTER COLUMN id SET DEFAULT nextval('public.reviews_productreview_id_seq'::regclass);
 G   ALTER TABLE public.reviews_productreview ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    365    366    366            �           2604    27860    reviews_vote id    DEFAULT     r   ALTER TABLE ONLY public.reviews_vote ALTER COLUMN id SET DEFAULT nextval('public.reviews_vote_id_seq'::regclass);
 >   ALTER TABLE public.reviews_vote ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    368    367    368            �           2604    27912    shipping_orderanditemcharges id    DEFAULT     �   ALTER TABLE ONLY public.shipping_orderanditemcharges ALTER COLUMN id SET DEFAULT nextval('public.shipping_orderanditemcharges_id_seq'::regclass);
 N   ALTER TABLE public.shipping_orderanditemcharges ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    370    371    371            �           2604    27927 )   shipping_orderanditemcharges_countries id    DEFAULT     �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries ALTER COLUMN id SET DEFAULT nextval('public.shipping_orderanditemcharges_countries_id_seq'::regclass);
 X   ALTER TABLE public.shipping_orderanditemcharges_countries ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    373    372    373            �           2604    27935    shipping_weightband id    DEFAULT     �   ALTER TABLE ONLY public.shipping_weightband ALTER COLUMN id SET DEFAULT nextval('public.shipping_weightband_id_seq'::regclass);
 E   ALTER TABLE public.shipping_weightband ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    375    374    375            �           2604    27943    shipping_weightbased id    DEFAULT     �   ALTER TABLE ONLY public.shipping_weightbased ALTER COLUMN id SET DEFAULT nextval('public.shipping_weightbased_id_seq'::regclass);
 F   ALTER TABLE public.shipping_weightbased ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    377    376    377            �           2604    27958 !   shipping_weightbased_countries id    DEFAULT     �   ALTER TABLE ONLY public.shipping_weightbased_countries ALTER COLUMN id SET DEFAULT nextval('public.shipping_weightbased_countries_id_seq'::regclass);
 P   ALTER TABLE public.shipping_weightbased_countries ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    379    378    379            �           2604    27417    voucher_voucher id    DEFAULT     x   ALTER TABLE ONLY public.voucher_voucher ALTER COLUMN id SET DEFAULT nextval('public.voucher_voucher_id_seq'::regclass);
 A   ALTER TABLE public.voucher_voucher ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    326    325    326            �           2604    27429    voucher_voucher_offers id    DEFAULT     �   ALTER TABLE ONLY public.voucher_voucher_offers ALTER COLUMN id SET DEFAULT nextval('public.voucher_voucher_offers_id_seq'::regclass);
 H   ALTER TABLE public.voucher_voucher_offers ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    327    328    328            �           2604    27437    voucher_voucherapplication id    DEFAULT     �   ALTER TABLE ONLY public.voucher_voucherapplication ALTER COLUMN id SET DEFAULT nextval('public.voucher_voucherapplication_id_seq'::regclass);
 L   ALTER TABLE public.voucher_voucherapplication ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    330    329    330            �           2604    28053    voucher_voucherset id    DEFAULT     ~   ALTER TABLE ONLY public.voucher_voucherset ALTER COLUMN id SET DEFAULT nextval('public.voucher_voucherset_id_seq'::regclass);
 D   ALTER TABLE public.voucher_voucherset ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    381    380    381            �           2604    28085    wishlists_line id    DEFAULT     v   ALTER TABLE ONLY public.wishlists_line ALTER COLUMN id SET DEFAULT nextval('public.wishlists_line_id_seq'::regclass);
 @   ALTER TABLE public.wishlists_line ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    383    382    383            �           2604    28094    wishlists_wishlist id    DEFAULT     ~   ALTER TABLE ONLY public.wishlists_wishlist ALTER COLUMN id SET DEFAULT nextval('public.wishlists_wishlist_id_seq'::regclass);
 D   ALTER TABLE public.wishlists_wishlist ALTER COLUMN id DROP DEFAULT;
       public          torsion_prog    false    384    385    385                      0    26197    address_country 
   TABLE DATA           �   COPY public.address_country (iso_3166_1_a2, iso_3166_1_a3, iso_3166_1_numeric, printable_name, name, display_order, is_shipping_country) FROM stdin;
    public          torsion_prog    false    212   4�                0    26205    address_useraddress 
   TABLE DATA           7  COPY public.address_useraddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, phone_number, notes, is_default_for_shipping, is_default_for_billing, num_orders_as_shipping_address, hash, date_created, country_id, user_id, num_orders_as_billing_address) FROM stdin;
    public          torsion_prog    false    214   x�      ,          0    26527    analytics_productrecord 
   TABLE DATA           x   COPY public.analytics_productrecord (id, num_views, num_basket_additions, num_purchases, score, product_id) FROM stdin;
    public          torsion_prog    false    244   ��      .          0    26538    analytics_userproductview 
   TABLE DATA           Z   COPY public.analytics_userproductview (id, date_created, product_id, user_id) FROM stdin;
    public          torsion_prog    false    246   ��      0          0    26546    analytics_userrecord 
   TABLE DATA           �   COPY public.analytics_userrecord (id, num_product_views, num_basket_additions, num_orders, num_order_lines, num_order_items, total_spent, date_last_order, user_id) FROM stdin;
    public          torsion_prog    false    248   ς      2          0    26561    analytics_usersearch 
   TABLE DATA           P   COPY public.analytics_usersearch (id, query, date_created, user_id) FROM stdin;
    public          torsion_prog    false    250   �                0    26103 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          torsion_prog    false    203   	�                0    26113    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          torsion_prog    false    205   &�                0    26095    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          torsion_prog    false    201   C�                0    26121 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          torsion_prog    false    207   +�      	          0    26131    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          torsion_prog    false    209   �                0    26139    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          torsion_prog    false    211   	�      H          0    26797    basket_basket 
   TABLE DATA           h   COPY public.basket_basket (id, status, date_created, date_merged, date_submitted, owner_id) FROM stdin;
    public          torsion_prog    false    272   &�      �          0    27475    basket_basket_vouchers 
   TABLE DATA           K   COPY public.basket_basket_vouchers (id, basket_id, voucher_id) FROM stdin;
    public          torsion_prog    false    332   m�      J          0    26805    basket_line 
   TABLE DATA           �   COPY public.basket_line (id, line_reference, quantity, price_currency, price_excl_tax, price_incl_tax, date_created, basket_id, product_id, stockrecord_id, date_updated) FROM stdin;
    public          torsion_prog    false    274   ��      L          0    26814    basket_lineattribute 
   TABLE DATA           M   COPY public.basket_lineattribute (id, value, line_id, option_id) FROM stdin;
    public          torsion_prog    false    276   ��      �          0    28221 (   cashondelivery_cashondeliverytransaction 
   TABLE DATA           �   COPY public.cashondelivery_cashondeliverytransaction (id, order_number, date_created, amount, currency, reference, confirmed, date_confirmed) FROM stdin;
    public          torsion_prog    false    389   ē                0    26266    catalogue_attributeoption 
   TABLE DATA           I   COPY public.catalogue_attributeoption (id, option, group_id) FROM stdin;
    public          torsion_prog    false    218   �                0    26274    catalogue_attributeoptiongroup 
   TABLE DATA           B   COPY public.catalogue_attributeoptiongroup (id, name) FROM stdin;
    public          torsion_prog    false    220   ��                0    26282    catalogue_category 
   TABLE DATA           �   COPY public.catalogue_category (id, path, depth, numchild, name, description, image, slug, ancestors_are_public, is_public) FROM stdin;
    public          torsion_prog    false    222   �                0    26297    catalogue_option 
   TABLE DATA           @   COPY public.catalogue_option (id, name, code, type) FROM stdin;
    public          torsion_prog    false    224   8�                0    26307    catalogue_product 
   TABLE DATA           �   COPY public.catalogue_product (id, structure, upc, title, slug, description, rating, date_created, date_updated, is_discountable, parent_id, product_class_id, is_public) FROM stdin;
    public          torsion_prog    false    226   U�      *          0    26407 !   catalogue_product_product_options 
   TABLE DATA           V   COPY public.catalogue_product_product_options (id, product_id, option_id) FROM stdin;
    public          torsion_prog    false    242   r�                0    26320    catalogue_productattribute 
   TABLE DATA           w   COPY public.catalogue_productattribute (id, name, code, type, required, option_group_id, product_class_id) FROM stdin;
    public          torsion_prog    false    228   ��                0    26328    catalogue_productattributevalue 
   TABLE DATA             COPY public.catalogue_productattributevalue (id, value_text, value_integer, value_boolean, value_float, value_richtext, value_date, value_file, value_image, entity_object_id, attribute_id, entity_content_type_id, product_id, value_option_id, value_datetime) FROM stdin;
    public          torsion_prog    false    230   ��      �          0    27517 2   catalogue_productattributevalue_value_multi_option 
   TABLE DATA           ~   COPY public.catalogue_productattributevalue_value_multi_option (id, productattributevalue_id, attributeoption_id) FROM stdin;
    public          torsion_prog    false    334   ɔ                 0    26340    catalogue_productcategory 
   TABLE DATA           P   COPY public.catalogue_productcategory (id, category_id, product_id) FROM stdin;
    public          torsion_prog    false    232   �      "          0    26348    catalogue_productclass 
   TABLE DATA           `   COPY public.catalogue_productclass (id, name, slug, requires_shipping, track_stock) FROM stdin;
    public          torsion_prog    false    234   �      $          0    26358    catalogue_productclass_options 
   TABLE DATA           X   COPY public.catalogue_productclass_options (id, productclass_id, option_id) FROM stdin;
    public          torsion_prog    false    236    �      &          0    26366    catalogue_productimage 
   TABLE DATA           p   COPY public.catalogue_productimage (id, original, caption, display_order, date_created, product_id) FROM stdin;
    public          torsion_prog    false    238   =�      (          0    26375    catalogue_productrecommendation 
   TABLE DATA           e   COPY public.catalogue_productrecommendation (id, ranking, primary_id, recommendation_id) FROM stdin;
    public          torsion_prog    false    240   Z�      @          0    26719 $   communication_communicationeventtype 
   TABLE DATA           �   COPY public.communication_communicationeventtype (id, code, name, category, email_subject_template, email_body_template, email_body_html_template, sms_template, date_created, date_updated) FROM stdin;
    public          torsion_prog    false    264   w�      B          0    26732    communication_email 
   TABLE DATA           k   COPY public.communication_email (id, subject, body_text, body_html, date_sent, user_id, email) FROM stdin;
    public          torsion_prog    false    266   ��      D          0    26743    communication_notification 
   TABLE DATA           �   COPY public.communication_notification (id, subject, body, location, date_sent, date_read, recipient_id, sender_id) FROM stdin;
    public          torsion_prog    false    268   ��      �          0    27594    content_category 
   TABLE DATA           �   COPY public.content_category (id, name, comment, url, comment_en, comment_ru, comment_uk, name_en, name_ru, name_uk) FROM stdin;
    public          torsion_prog    false    338   Ε      �          0    27607    content_content 
   TABLE DATA           
  COPY public.content_content (id, alias, created_date, updated_date, published, main_image, title, intro_text, full_text, meta_tag_title, meta_tag_description, meta_tag_keyword, geo, category_id_id, full_text_en, full_text_ru, full_text_uk, intro_text_en, intro_text_ru, intro_text_uk, meta_tag_description_en, meta_tag_description_ru, meta_tag_description_uk, meta_tag_keyword_en, meta_tag_keyword_ru, meta_tag_keyword_uk, meta_tag_title_en, meta_tag_title_ru, meta_tag_title_uk, title_en, title_ru, title_uk) FROM stdin;
    public          torsion_prog    false    340   ��      �          0    27648    content_contentimage 
   TABLE DATA           [   COPY public.content_contentimage (id, name, description, image, content_id_id) FROM stdin;
    public          torsion_prog    false    348   H|      �          0    27640    content_ratingcontent 
   TABLE DATA           L   COPY public.content_ratingcontent (id, ip, content_id, star_id) FROM stdin;
    public          torsion_prog    false    346   e|      �          0    27620    content_ratingstar 
   TABLE DATA           7   COPY public.content_ratingstar (id, value) FROM stdin;
    public          torsion_prog    false    342   �|      �          0    27629    content_reviewcontent 
   TABLE DATA           ]   COPY public.content_reviewcontent (id, email, name, text, content_id, parent_id) FROM stdin;
    public          torsion_prog    false    344   �|      F          0    26754    customer_productalert 
   TABLE DATA           �   COPY public.customer_productalert (id, email, key, status, date_created, date_confirmed, date_cancelled, date_closed, product_id, user_id) FROM stdin;
    public          torsion_prog    false    270   �|                0    26242    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          torsion_prog    false    216   �|      �          0    26085    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          torsion_prog    false    199   ��      �          0    27697    django_flatpage 
   TABLE DATA           y   COPY public.django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
    public          torsion_prog    false    350   ؄      �          0    27708    django_flatpage_sites 
   TABLE DATA           I   COPY public.django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
    public          torsion_prog    false    352   ��      �          0    26074    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          torsion_prog    false    197   �      �          0    27897    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          torsion_prog    false    369   <�      4          0    26614    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          torsion_prog    false    252   �      �          0    28194    novaposhta_warehouse 
   TABLE DATA           �   COPY public.novaposhta_warehouse (id, title, address, address_ru, title_ru, address_en, address_uk, title_en, title_uk) FROM stdin;
    public          torsion_prog    false    387   K�      l          0    27210    offer_benefit 
   TABLE DATA           c   COPY public.offer_benefit (id, type, value, max_affected_items, proxy_class, range_id) FROM stdin;
    public          torsion_prog    false    308   h�      n          0    27221    offer_condition 
   TABLE DATA           Q   COPY public.offer_condition (id, type, value, proxy_class, range_id) FROM stdin;
    public          torsion_prog    false    310   ��      p          0    27231    offer_conditionaloffer 
   TABLE DATA           O  COPY public.offer_conditionaloffer (id, name, slug, description, offer_type, status, priority, start_datetime, end_datetime, max_global_applications, max_user_applications, max_basket_applications, max_discount, total_discount, num_applications, num_orders, redirect_url, date_created, benefit_id, condition_id, exclusive) FROM stdin;
    public          torsion_prog    false    312   ��      r          0    27251    offer_range 
   TABLE DATA              COPY public.offer_range (id, name, slug, description, is_public, includes_all_products, proxy_class, date_created) FROM stdin;
    public          torsion_prog    false    314   ��      t          0    27268    offer_range_classes 
   TABLE DATA           L   COPY public.offer_range_classes (id, range_id, productclass_id) FROM stdin;
    public          torsion_prog    false    316   ܏      v          0    27276    offer_range_excluded_products 
   TABLE DATA           Q   COPY public.offer_range_excluded_products (id, range_id, product_id) FROM stdin;
    public          torsion_prog    false    318   ��      x          0    27284    offer_range_included_categories 
   TABLE DATA           T   COPY public.offer_range_included_categories (id, range_id, category_id) FROM stdin;
    public          torsion_prog    false    320   �      z          0    27292    offer_rangeproduct 
   TABLE DATA           U   COPY public.offer_rangeproduct (id, display_order, product_id, range_id) FROM stdin;
    public          torsion_prog    false    322   3�      |          0    27300    offer_rangeproductfileupload 
   TABLE DATA           �   COPY public.offer_rangeproductfileupload (id, filepath, size, date_uploaded, status, error_message, date_processed, num_new_skus, num_unknown_skus, num_duplicate_skus, range_id, uploaded_by_id) FROM stdin;
    public          torsion_prog    false    324   P�      N          0    26862    order_billingaddress 
   TABLE DATA           �   COPY public.order_billingaddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, country_id) FROM stdin;
    public          torsion_prog    false    278   m�      P          0    26873    order_communicationevent 
   TABLE DATA           ]   COPY public.order_communicationevent (id, date_created, event_type_id, order_id) FROM stdin;
    public          torsion_prog    false    280   ��      R          0    26881 
   order_line 
   TABLE DATA           �  COPY public.order_line (id, partner_name, partner_sku, partner_line_reference, partner_line_notes, title, upc, quantity, line_price_incl_tax, line_price_excl_tax, line_price_before_discounts_incl_tax, line_price_before_discounts_excl_tax, unit_cost_price, unit_price_incl_tax, unit_price_excl_tax, unit_retail_price, status, est_dispatch_date, order_id, partner_id, product_id, stockrecord_id) FROM stdin;
    public          torsion_prog    false    282   ��      T          0    26893    order_lineattribute 
   TABLE DATA           R   COPY public.order_lineattribute (id, type, value, line_id, option_id) FROM stdin;
    public          torsion_prog    false    284   Đ      V          0    26901    order_lineprice 
   TABLE DATA           �   COPY public.order_lineprice (id, quantity, price_incl_tax, price_excl_tax, shipping_incl_tax, shipping_excl_tax, line_id, order_id) FROM stdin;
    public          torsion_prog    false    286   �      X          0    26910    order_order 
   TABLE DATA           	  COPY public.order_order (id, number, currency, total_incl_tax, total_excl_tax, shipping_incl_tax, shipping_excl_tax, shipping_method, shipping_code, status, guest_email, date_placed, basket_id, billing_address_id, shipping_address_id, site_id, user_id) FROM stdin;
    public          torsion_prog    false    288   ��      Z          0    26923    order_orderdiscount 
   TABLE DATA           �   COPY public.order_orderdiscount (id, category, offer_id, offer_name, voucher_id, voucher_code, frequency, amount, message, order_id) FROM stdin;
    public          torsion_prog    false    290   �      \          0    26937    order_ordernote 
   TABLE DATA           p   COPY public.order_ordernote (id, note_type, message, date_created, date_updated, order_id, user_id) FROM stdin;
    public          torsion_prog    false    292   8�      �          0    27563    order_orderstatuschange 
   TABLE DATA           e   COPY public.order_orderstatuschange (id, old_status, new_status, date_created, order_id) FROM stdin;
    public          torsion_prog    false    336   U�      ^          0    26948    order_paymentevent 
   TABLE DATA           }   COPY public.order_paymentevent (id, amount, reference, date_created, event_type_id, order_id, shipping_event_id) FROM stdin;
    public          torsion_prog    false    294   r�      `          0    26956    order_paymenteventquantity 
   TABLE DATA           U   COPY public.order_paymenteventquantity (id, quantity, event_id, line_id) FROM stdin;
    public          torsion_prog    false    296   ��      b          0    26965    order_paymenteventtype 
   TABLE DATA           @   COPY public.order_paymenteventtype (id, name, code) FROM stdin;
    public          torsion_prog    false    298   ��      d          0    26977    order_shippingaddress 
   TABLE DATA           �   COPY public.order_shippingaddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, phone_number, notes, country_id) FROM stdin;
    public          torsion_prog    false    300   ɑ      f          0    26988    order_shippingevent 
   TABLE DATA           _   COPY public.order_shippingevent (id, notes, date_created, event_type_id, order_id) FROM stdin;
    public          torsion_prog    false    302   �      h          0    26999    order_shippingeventquantity 
   TABLE DATA           V   COPY public.order_shippingeventquantity (id, quantity, event_id, line_id) FROM stdin;
    public          torsion_prog    false    304   �      j          0    27008    order_shippingeventtype 
   TABLE DATA           A   COPY public.order_shippingeventtype (id, name, code) FROM stdin;
    public          torsion_prog    false    306    �      �          0    27745    order_surcharge 
   TABLE DATA           W   COPY public.order_surcharge (id, name, code, incl_tax, excl_tax, order_id) FROM stdin;
    public          torsion_prog    false    354   =�      �          0    27759    oscarapi_apikey 
   TABLE DATA           2   COPY public.oscarapi_apikey (id, key) FROM stdin;
    public          torsion_prog    false    356   Z�      6          0    26622    partner_partner 
   TABLE DATA           9   COPY public.partner_partner (id, code, name) FROM stdin;
    public          torsion_prog    false    254   w�      8          0    26632    partner_partner_users 
   TABLE DATA           H   COPY public.partner_partner_users (id, partner_id, user_id) FROM stdin;
    public          torsion_prog    false    256   ��      :          0    26640    partner_partneraddress 
   TABLE DATA           �   COPY public.partner_partneraddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, country_id, partner_id) FROM stdin;
    public          torsion_prog    false    258   ��      <          0    26651    partner_stockalert 
   TABLE DATA           n   COPY public.partner_stockalert (id, threshold, status, date_created, date_closed, stockrecord_id) FROM stdin;
    public          torsion_prog    false    260   Β      >          0    26660    partner_stockrecord 
   TABLE DATA           �   COPY public.partner_stockrecord (id, partner_sku, price_currency, price_excl_tax, price_retail, cost_price, num_in_stock, num_allocated, low_stock_threshold, date_created, date_updated, partner_id, product_id) FROM stdin;
    public          torsion_prog    false    262   �      �          0    27783    payment_bankcard 
   TABLE DATA           p   COPY public.payment_bankcard (id, card_type, name, number, expiry_date, partner_reference, user_id) FROM stdin;
    public          torsion_prog    false    358   �      �          0    27794    payment_source 
   TABLE DATA           �   COPY public.payment_source (id, currency, amount_allocated, amount_debited, amount_refunded, reference, label, order_id, source_type_id) FROM stdin;
    public          torsion_prog    false    360   %�      �          0    27802    payment_sourcetype 
   TABLE DATA           <   COPY public.payment_sourcetype (id, name, code) FROM stdin;
    public          torsion_prog    false    362   B�      �          0    27812    payment_transaction 
   TABLE DATA           o   COPY public.payment_transaction (id, txn_type, amount, reference, status, date_created, source_id) FROM stdin;
    public          torsion_prog    false    364   _�      �          0    27846    reviews_productreview 
   TABLE DATA           �   COPY public.reviews_productreview (id, score, title, body, name, email, homepage, status, total_votes, delta_votes, date_created, product_id, user_id) FROM stdin;
    public          torsion_prog    false    366   |�      �          0    27857    reviews_vote 
   TABLE DATA           S   COPY public.reviews_vote (id, delta, date_created, review_id, user_id) FROM stdin;
    public          torsion_prog    false    368   ��      �          0    27909    shipping_orderanditemcharges 
   TABLE DATA           �   COPY public.shipping_orderanditemcharges (id, code, name, description, price_per_order, price_per_item, free_shipping_threshold) FROM stdin;
    public          torsion_prog    false    371   ��      �          0    27924 &   shipping_orderanditemcharges_countries 
   TABLE DATA           h   COPY public.shipping_orderanditemcharges_countries (id, orderanditemcharges_id, country_id) FROM stdin;
    public          torsion_prog    false    373   ӓ      �          0    27932    shipping_weightband 
   TABLE DATA           Q   COPY public.shipping_weightband (id, upper_limit, charge, method_id) FROM stdin;
    public          torsion_prog    false    375   �      �          0    27940    shipping_weightbased 
   TABLE DATA           [   COPY public.shipping_weightbased (id, code, name, description, default_weight) FROM stdin;
    public          torsion_prog    false    377   �      �          0    27955    shipping_weightbased_countries 
   TABLE DATA           X   COPY public.shipping_weightbased_countries (id, weightbased_id, country_id) FROM stdin;
    public          torsion_prog    false    379   *�      ~          0    27414    voucher_voucher 
   TABLE DATA           �   COPY public.voucher_voucher (id, name, code, usage, start_datetime, end_datetime, num_basket_additions, num_orders, total_discount, date_created, voucher_set_id) FROM stdin;
    public          torsion_prog    false    326   G�      �          0    27426    voucher_voucher_offers 
   TABLE DATA           U   COPY public.voucher_voucher_offers (id, voucher_id, conditionaloffer_id) FROM stdin;
    public          torsion_prog    false    328   d�      �          0    27434    voucher_voucherapplication 
   TABLE DATA           e   COPY public.voucher_voucherapplication (id, date_created, order_id, user_id, voucher_id) FROM stdin;
    public          torsion_prog    false    330   ��      �          0    28050    voucher_voucherset 
   TABLE DATA           �   COPY public.voucher_voucherset (id, name, count, code_length, description, date_created, start_datetime, end_datetime, offer_id) FROM stdin;
    public          torsion_prog    false    381   ��      �          0    28082    wishlists_line 
   TABLE DATA           V   COPY public.wishlists_line (id, quantity, title, product_id, wishlist_id) FROM stdin;
    public          torsion_prog    false    383   ��      �          0    28091    wishlists_wishlist 
   TABLE DATA           _   COPY public.wishlists_wishlist (id, name, key, visibility, date_created, owner_id) FROM stdin;
    public          torsion_prog    false    385   ؔ      $           0    0    address_useraddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.address_useraddress_id_seq', 1, false);
          public          torsion_prog    false    213            %           0    0    analytics_productrecord_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.analytics_productrecord_id_seq', 1, false);
          public          torsion_prog    false    243            &           0    0     analytics_userproductview_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.analytics_userproductview_id_seq', 1, false);
          public          torsion_prog    false    245            '           0    0    analytics_userrecord_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.analytics_userrecord_id_seq', 1, false);
          public          torsion_prog    false    247            (           0    0    analytics_usersearch_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.analytics_usersearch_id_seq', 1, false);
          public          torsion_prog    false    249            )           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          torsion_prog    false    202            *           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          torsion_prog    false    204            +           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 373, true);
          public          torsion_prog    false    200            ,           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          torsion_prog    false    208            -           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          torsion_prog    false    206            .           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          torsion_prog    false    210            /           0    0    basket_basket_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.basket_basket_id_seq', 1, true);
          public          torsion_prog    false    271            0           0    0    basket_basket_vouchers_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.basket_basket_vouchers_id_seq', 1, false);
          public          torsion_prog    false    331            1           0    0    basket_line_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.basket_line_id_seq', 1, false);
          public          torsion_prog    false    273            2           0    0    basket_lineattribute_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.basket_lineattribute_id_seq', 1, false);
          public          torsion_prog    false    275            3           0    0 /   cashondelivery_cashondeliverytransaction_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.cashondelivery_cashondeliverytransaction_id_seq', 1, false);
          public          torsion_prog    false    388            4           0    0     catalogue_attributeoption_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.catalogue_attributeoption_id_seq', 1, false);
          public          torsion_prog    false    217            5           0    0 %   catalogue_attributeoptiongroup_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.catalogue_attributeoptiongroup_id_seq', 1, false);
          public          torsion_prog    false    219            6           0    0    catalogue_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.catalogue_category_id_seq', 1, false);
          public          torsion_prog    false    221            7           0    0    catalogue_option_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catalogue_option_id_seq', 1, false);
          public          torsion_prog    false    223            8           0    0    catalogue_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalogue_product_id_seq', 1, false);
          public          torsion_prog    false    225            9           0    0 (   catalogue_product_product_options_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.catalogue_product_product_options_id_seq', 1, false);
          public          torsion_prog    false    241            :           0    0 !   catalogue_productattribute_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.catalogue_productattribute_id_seq', 1, false);
          public          torsion_prog    false    227            ;           0    0 &   catalogue_productattributevalue_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.catalogue_productattributevalue_id_seq', 1, false);
          public          torsion_prog    false    229            <           0    0 9   catalogue_productattributevalue_value_multi_option_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.catalogue_productattributevalue_value_multi_option_id_seq', 1, false);
          public          torsion_prog    false    333            =           0    0     catalogue_productcategory_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.catalogue_productcategory_id_seq', 1, false);
          public          torsion_prog    false    231            >           0    0    catalogue_productclass_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalogue_productclass_id_seq', 1, false);
          public          torsion_prog    false    233            ?           0    0 %   catalogue_productclass_options_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.catalogue_productclass_options_id_seq', 1, false);
          public          torsion_prog    false    235            @           0    0    catalogue_productimage_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalogue_productimage_id_seq', 1, false);
          public          torsion_prog    false    237            A           0    0 &   catalogue_productrecommendation_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.catalogue_productrecommendation_id_seq', 1, false);
          public          torsion_prog    false    239            B           0    0    content_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.content_category_id_seq', 10, true);
          public          torsion_prog    false    337            C           0    0    content_content_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.content_content_id_seq', 27, true);
          public          torsion_prog    false    339            D           0    0    content_contentimage_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.content_contentimage_id_seq', 1, false);
          public          torsion_prog    false    347            E           0    0    content_ratingcontent_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.content_ratingcontent_id_seq', 1, false);
          public          torsion_prog    false    345            F           0    0    content_ratingstar_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.content_ratingstar_id_seq', 1, false);
          public          torsion_prog    false    341            G           0    0    content_reviewcontent_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.content_reviewcontent_id_seq', 1, false);
          public          torsion_prog    false    343            H           0    0 &   customer_communicationeventtype_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_communicationeventtype_id_seq', 1, false);
          public          torsion_prog    false    263            I           0    0    customer_email_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_email_id_seq', 1, false);
          public          torsion_prog    false    265            J           0    0    customer_notification_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.customer_notification_id_seq', 1, false);
          public          torsion_prog    false    267            K           0    0    customer_productalert_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.customer_productalert_id_seq', 1, false);
          public          torsion_prog    false    269            L           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 52, true);
          public          torsion_prog    false    215            M           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 93, true);
          public          torsion_prog    false    198            N           0    0    django_flatpage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_flatpage_id_seq', 1, false);
          public          torsion_prog    false    349            O           0    0    django_flatpage_sites_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.django_flatpage_sites_id_seq', 1, false);
          public          torsion_prog    false    351            P           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 116, true);
          public          torsion_prog    false    196            Q           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          torsion_prog    false    251            R           0    0    novaposhta_warehouse_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.novaposhta_warehouse_id_seq', 1, false);
          public          torsion_prog    false    386            S           0    0    offer_benefit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.offer_benefit_id_seq', 1, false);
          public          torsion_prog    false    307            T           0    0    offer_condition_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.offer_condition_id_seq', 1, false);
          public          torsion_prog    false    309            U           0    0    offer_conditionaloffer_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.offer_conditionaloffer_id_seq', 1, false);
          public          torsion_prog    false    311            V           0    0    offer_range_classes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.offer_range_classes_id_seq', 1, false);
          public          torsion_prog    false    315            W           0    0 $   offer_range_excluded_products_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.offer_range_excluded_products_id_seq', 1, false);
          public          torsion_prog    false    317            X           0    0    offer_range_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.offer_range_id_seq', 1, false);
          public          torsion_prog    false    313            Y           0    0 &   offer_range_included_categories_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.offer_range_included_categories_id_seq', 1, false);
          public          torsion_prog    false    319            Z           0    0    offer_rangeproduct_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.offer_rangeproduct_id_seq', 1, false);
          public          torsion_prog    false    321            [           0    0 #   offer_rangeproductfileupload_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.offer_rangeproductfileupload_id_seq', 1, false);
          public          torsion_prog    false    323            \           0    0    order_billingaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.order_billingaddress_id_seq', 1, false);
          public          torsion_prog    false    277            ]           0    0    order_communicationevent_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.order_communicationevent_id_seq', 1, false);
          public          torsion_prog    false    279            ^           0    0    order_line_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.order_line_id_seq', 1, false);
          public          torsion_prog    false    281            _           0    0    order_lineattribute_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.order_lineattribute_id_seq', 1, false);
          public          torsion_prog    false    283            `           0    0    order_lineprice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.order_lineprice_id_seq', 1, false);
          public          torsion_prog    false    285            a           0    0    order_order_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_order_id_seq', 1, false);
          public          torsion_prog    false    287            b           0    0    order_orderdiscount_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.order_orderdiscount_id_seq', 1, false);
          public          torsion_prog    false    289            c           0    0    order_ordernote_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.order_ordernote_id_seq', 1, false);
          public          torsion_prog    false    291            d           0    0    order_orderstatuschange_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.order_orderstatuschange_id_seq', 1, false);
          public          torsion_prog    false    335            e           0    0    order_paymentevent_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.order_paymentevent_id_seq', 1, false);
          public          torsion_prog    false    293            f           0    0 !   order_paymenteventquantity_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.order_paymenteventquantity_id_seq', 1, false);
          public          torsion_prog    false    295            g           0    0    order_paymenteventtype_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.order_paymenteventtype_id_seq', 1, false);
          public          torsion_prog    false    297            h           0    0    order_shippingaddress_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.order_shippingaddress_id_seq', 1, false);
          public          torsion_prog    false    299            i           0    0    order_shippingevent_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.order_shippingevent_id_seq', 1, false);
          public          torsion_prog    false    301            j           0    0 "   order_shippingeventquantity_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.order_shippingeventquantity_id_seq', 1, false);
          public          torsion_prog    false    303            k           0    0    order_shippingeventtype_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.order_shippingeventtype_id_seq', 1, false);
          public          torsion_prog    false    305            l           0    0    order_surcharge_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.order_surcharge_id_seq', 1, false);
          public          torsion_prog    false    353            m           0    0    oscarapi_apikey_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.oscarapi_apikey_id_seq', 1, false);
          public          torsion_prog    false    355            n           0    0    partner_partner_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.partner_partner_id_seq', 1, false);
          public          torsion_prog    false    253            o           0    0    partner_partner_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.partner_partner_users_id_seq', 1, false);
          public          torsion_prog    false    255            p           0    0    partner_partneraddress_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.partner_partneraddress_id_seq', 1, false);
          public          torsion_prog    false    257            q           0    0    partner_stockalert_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.partner_stockalert_id_seq', 1, false);
          public          torsion_prog    false    259            r           0    0    partner_stockrecord_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.partner_stockrecord_id_seq', 1, false);
          public          torsion_prog    false    261            s           0    0    payment_bankcard_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.payment_bankcard_id_seq', 1, false);
          public          torsion_prog    false    357            t           0    0    payment_source_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.payment_source_id_seq', 1, false);
          public          torsion_prog    false    359            u           0    0    payment_sourcetype_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.payment_sourcetype_id_seq', 1, false);
          public          torsion_prog    false    361            v           0    0    payment_transaction_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.payment_transaction_id_seq', 1, false);
          public          torsion_prog    false    363            w           0    0    reviews_productreview_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.reviews_productreview_id_seq', 1, false);
          public          torsion_prog    false    365            x           0    0    reviews_vote_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reviews_vote_id_seq', 1, false);
          public          torsion_prog    false    367            y           0    0 -   shipping_orderanditemcharges_countries_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.shipping_orderanditemcharges_countries_id_seq', 1, false);
          public          torsion_prog    false    372            z           0    0 #   shipping_orderanditemcharges_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.shipping_orderanditemcharges_id_seq', 1, false);
          public          torsion_prog    false    370            {           0    0    shipping_weightband_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.shipping_weightband_id_seq', 1, false);
          public          torsion_prog    false    374            |           0    0 %   shipping_weightbased_countries_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.shipping_weightbased_countries_id_seq', 1, false);
          public          torsion_prog    false    378            }           0    0    shipping_weightbased_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.shipping_weightbased_id_seq', 1, false);
          public          torsion_prog    false    376            ~           0    0    voucher_voucher_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.voucher_voucher_id_seq', 1, false);
          public          torsion_prog    false    325                       0    0    voucher_voucher_offers_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.voucher_voucher_offers_id_seq', 1, false);
          public          torsion_prog    false    327            �           0    0 !   voucher_voucherapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.voucher_voucherapplication_id_seq', 1, false);
          public          torsion_prog    false    329            �           0    0    voucher_voucherset_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.voucher_voucherset_id_seq', 1, false);
          public          torsion_prog    false    380            �           0    0    wishlists_line_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.wishlists_line_id_seq', 1, false);
          public          torsion_prog    false    382            �           0    0    wishlists_wishlist_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.wishlists_wishlist_id_seq', 1, false);
          public          torsion_prog    false    384            �           2606    26202 $   address_country address_country_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.address_country
    ADD CONSTRAINT address_country_pkey PRIMARY KEY (iso_3166_1_a2);
 N   ALTER TABLE ONLY public.address_country DROP CONSTRAINT address_country_pkey;
       public            torsion_prog    false    212            �           2606    26214 ,   address_useraddress address_useraddress_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.address_useraddress
    ADD CONSTRAINT address_useraddress_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.address_useraddress DROP CONSTRAINT address_useraddress_pkey;
       public            torsion_prog    false    214            �           2606    26216 B   address_useraddress address_useraddress_user_id_hash_9d1738c7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.address_useraddress
    ADD CONSTRAINT address_useraddress_user_id_hash_9d1738c7_uniq UNIQUE (user_id, hash);
 l   ALTER TABLE ONLY public.address_useraddress DROP CONSTRAINT address_useraddress_user_id_hash_9d1738c7_uniq;
       public            torsion_prog    false    214    214            Z           2606    26535 4   analytics_productrecord analytics_productrecord_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.analytics_productrecord
    ADD CONSTRAINT analytics_productrecord_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.analytics_productrecord DROP CONSTRAINT analytics_productrecord_pkey;
       public            torsion_prog    false    244            \           2606    26595 >   analytics_productrecord analytics_productrecord_product_id_key 
   CONSTRAINT        ALTER TABLE ONLY public.analytics_productrecord
    ADD CONSTRAINT analytics_productrecord_product_id_key UNIQUE (product_id);
 h   ALTER TABLE ONLY public.analytics_productrecord DROP CONSTRAINT analytics_productrecord_product_id_key;
       public            torsion_prog    false    244            ^           2606    26543 8   analytics_userproductview analytics_userproductview_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.analytics_userproductview
    ADD CONSTRAINT analytics_userproductview_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.analytics_userproductview DROP CONSTRAINT analytics_userproductview_pkey;
       public            torsion_prog    false    246            e           2606    26556 .   analytics_userrecord analytics_userrecord_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.analytics_userrecord
    ADD CONSTRAINT analytics_userrecord_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.analytics_userrecord DROP CONSTRAINT analytics_userrecord_pkey;
       public            torsion_prog    false    248            g           2606    26558 5   analytics_userrecord analytics_userrecord_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.analytics_userrecord
    ADD CONSTRAINT analytics_userrecord_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.analytics_userrecord DROP CONSTRAINT analytics_userrecord_user_id_key;
       public            torsion_prog    false    248            i           2606    26566 .   analytics_usersearch analytics_usersearch_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.analytics_usersearch
    ADD CONSTRAINT analytics_usersearch_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.analytics_usersearch DROP CONSTRAINT analytics_usersearch_pkey;
       public            torsion_prog    false    250            �           2606    26610    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            torsion_prog    false    203            �           2606    26155 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            torsion_prog    false    205    205            �           2606    26118 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            torsion_prog    false    205            �           2606    26108    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            torsion_prog    false    203            �           2606    26146 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            torsion_prog    false    201    201            �           2606    26100 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            torsion_prog    false    201            �           2606    26136 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            torsion_prog    false    209            �           2606    26170 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            torsion_prog    false    209    209            �           2606    26126    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            torsion_prog    false    207            �           2606    26144 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            torsion_prog    false    211            �           2606    26184 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            torsion_prog    false    211    211            �           2606    26604     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            torsion_prog    false    207            �           2606    26802     basket_basket basket_basket_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.basket_basket
    ADD CONSTRAINT basket_basket_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.basket_basket DROP CONSTRAINT basket_basket_pkey;
       public            torsion_prog    false    272            \           2606    27482 P   basket_basket_vouchers basket_basket_vouchers_basket_id_voucher_id_0731eee2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.basket_basket_vouchers
    ADD CONSTRAINT basket_basket_vouchers_basket_id_voucher_id_0731eee2_uniq UNIQUE (basket_id, voucher_id);
 z   ALTER TABLE ONLY public.basket_basket_vouchers DROP CONSTRAINT basket_basket_vouchers_basket_id_voucher_id_0731eee2_uniq;
       public            torsion_prog    false    332    332            ^           2606    27480 2   basket_basket_vouchers basket_basket_vouchers_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.basket_basket_vouchers
    ADD CONSTRAINT basket_basket_vouchers_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.basket_basket_vouchers DROP CONSTRAINT basket_basket_vouchers_pkey;
       public            torsion_prog    false    332            �           2606    26849 >   basket_line basket_line_basket_id_line_reference_8977e974_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.basket_line
    ADD CONSTRAINT basket_line_basket_id_line_reference_8977e974_uniq UNIQUE (basket_id, line_reference);
 h   ALTER TABLE ONLY public.basket_line DROP CONSTRAINT basket_line_basket_id_line_reference_8977e974_uniq;
       public            torsion_prog    false    274    274            �           2606    26811    basket_line basket_line_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.basket_line
    ADD CONSTRAINT basket_line_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.basket_line DROP CONSTRAINT basket_line_pkey;
       public            torsion_prog    false    274            �           2606    26819 .   basket_lineattribute basket_lineattribute_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.basket_lineattribute
    ADD CONSTRAINT basket_lineattribute_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.basket_lineattribute DROP CONSTRAINT basket_lineattribute_pkey;
       public            torsion_prog    false    276            �           2606    28226 V   cashondelivery_cashondeliverytransaction cashondelivery_cashondeliverytransaction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cashondelivery_cashondeliverytransaction
    ADD CONSTRAINT cashondelivery_cashondeliverytransaction_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.cashondelivery_cashondeliverytransaction DROP CONSTRAINT cashondelivery_cashondeliverytransaction_pkey;
       public            torsion_prog    false    389            �           2606    28228 _   cashondelivery_cashondeliverytransaction cashondelivery_cashondeliverytransaction_reference_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.cashondelivery_cashondeliverytransaction
    ADD CONSTRAINT cashondelivery_cashondeliverytransaction_reference_key UNIQUE (reference);
 �   ALTER TABLE ONLY public.cashondelivery_cashondeliverytransaction DROP CONSTRAINT cashondelivery_cashondeliverytransaction_reference_key;
       public            torsion_prog    false    389                       2606    27514 Q   catalogue_attributeoption catalogue_attributeoption_group_id_option_7a8f6c11_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_attributeoption
    ADD CONSTRAINT catalogue_attributeoption_group_id_option_7a8f6c11_uniq UNIQUE (group_id, option);
 {   ALTER TABLE ONLY public.catalogue_attributeoption DROP CONSTRAINT catalogue_attributeoption_group_id_option_7a8f6c11_uniq;
       public            torsion_prog    false    218    218                       2606    26271 8   catalogue_attributeoption catalogue_attributeoption_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.catalogue_attributeoption
    ADD CONSTRAINT catalogue_attributeoption_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.catalogue_attributeoption DROP CONSTRAINT catalogue_attributeoption_pkey;
       public            torsion_prog    false    218                       2606    26279 B   catalogue_attributeoptiongroup catalogue_attributeoptiongroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_attributeoptiongroup
    ADD CONSTRAINT catalogue_attributeoptiongroup_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.catalogue_attributeoptiongroup DROP CONSTRAINT catalogue_attributeoptiongroup_pkey;
       public            torsion_prog    false    220                       2606    26294 .   catalogue_category catalogue_category_path_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.catalogue_category
    ADD CONSTRAINT catalogue_category_path_key UNIQUE (path);
 X   ALTER TABLE ONLY public.catalogue_category DROP CONSTRAINT catalogue_category_path_key;
       public            torsion_prog    false    222                       2606    26292 *   catalogue_category catalogue_category_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.catalogue_category
    ADD CONSTRAINT catalogue_category_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.catalogue_category DROP CONSTRAINT catalogue_category_pkey;
       public            torsion_prog    false    222                       2606    26304 *   catalogue_option catalogue_option_code_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.catalogue_option
    ADD CONSTRAINT catalogue_option_code_key UNIQUE (code);
 T   ALTER TABLE ONLY public.catalogue_option DROP CONSTRAINT catalogue_option_code_key;
       public            torsion_prog    false    224                       2606    26302 &   catalogue_option catalogue_option_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catalogue_option
    ADD CONSTRAINT catalogue_option_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catalogue_option DROP CONSTRAINT catalogue_option_pkey;
       public            torsion_prog    false    224                       2606    26315 (   catalogue_product catalogue_product_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalogue_product
    ADD CONSTRAINT catalogue_product_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalogue_product DROP CONSTRAINT catalogue_product_pkey;
       public            torsion_prog    false    226            S           2606    26511 ]   catalogue_product_product_options catalogue_product_produc_product_id_option_id_9b3abb31_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product_product_options
    ADD CONSTRAINT catalogue_product_produc_product_id_option_id_9b3abb31_uniq UNIQUE (product_id, option_id);
 �   ALTER TABLE ONLY public.catalogue_product_product_options DROP CONSTRAINT catalogue_product_produc_product_id_option_id_9b3abb31_uniq;
       public            torsion_prog    false    242    242            V           2606    26412 H   catalogue_product_product_options catalogue_product_product_options_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product_product_options
    ADD CONSTRAINT catalogue_product_product_options_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.catalogue_product_product_options DROP CONSTRAINT catalogue_product_product_options_pkey;
       public            torsion_prog    false    242            "           2606    26317 +   catalogue_product catalogue_product_upc_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.catalogue_product
    ADD CONSTRAINT catalogue_product_upc_key UNIQUE (upc);
 U   ALTER TABLE ONLY public.catalogue_product DROP CONSTRAINT catalogue_product_upc_key;
       public            torsion_prog    false    226            *           2606    26389 ^   catalogue_productattributevalue catalogue_productattribu_attribute_id_product_id_1e8e7112_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productattribu_attribute_id_product_id_1e8e7112_uniq UNIQUE (attribute_id, product_id);
 �   ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productattribu_attribute_id_product_id_1e8e7112_uniq;
       public            torsion_prog    false    230    230            a           2606    27529 r   catalogue_productattributevalue_value_multi_option catalogue_productattribu_productattributevalue_id_a1760824_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option
    ADD CONSTRAINT catalogue_productattribu_productattributevalue_id_a1760824_uniq UNIQUE (productattributevalue_id, attributeoption_id);
 �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option DROP CONSTRAINT catalogue_productattribu_productattributevalue_id_a1760824_uniq;
       public            torsion_prog    false    334    334            '           2606    26325 :   catalogue_productattribute catalogue_productattribute_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.catalogue_productattribute
    ADD CONSTRAINT catalogue_productattribute_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.catalogue_productattribute DROP CONSTRAINT catalogue_productattribute_pkey;
       public            torsion_prog    false    228            .           2606    26337 D   catalogue_productattributevalue catalogue_productattributevalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productattributevalue_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productattributevalue_pkey;
       public            torsion_prog    false    230            e           2606    27522 j   catalogue_productattributevalue_value_multi_option catalogue_productattributevalue_value_multi_option_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option
    ADD CONSTRAINT catalogue_productattributevalue_value_multi_option_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option DROP CONSTRAINT catalogue_productattributevalue_value_multi_option_pkey;
       public            torsion_prog    false    334            8           2606    26345 8   catalogue_productcategory catalogue_productcategory_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.catalogue_productcategory
    ADD CONSTRAINT catalogue_productcategory_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.catalogue_productcategory DROP CONSTRAINT catalogue_productcategory_pkey;
       public            torsion_prog    false    232            ;           2606    26387 X   catalogue_productcategory catalogue_productcategory_product_id_category_id_8f0dbfe2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productcategory
    ADD CONSTRAINT catalogue_productcategory_product_id_category_id_8f0dbfe2_uniq UNIQUE (product_id, category_id);
 �   ALTER TABLE ONLY public.catalogue_productcategory DROP CONSTRAINT catalogue_productcategory_product_id_category_id_8f0dbfe2_uniq;
       public            torsion_prog    false    232    232            B           2606    26476 ^   catalogue_productclass_options catalogue_productclass_o_productclass_id_option_i_2266c635_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productclass_options
    ADD CONSTRAINT catalogue_productclass_o_productclass_id_option_i_2266c635_uniq UNIQUE (productclass_id, option_id);
 �   ALTER TABLE ONLY public.catalogue_productclass_options DROP CONSTRAINT catalogue_productclass_o_productclass_id_option_i_2266c635_uniq;
       public            torsion_prog    false    236    236            E           2606    26363 B   catalogue_productclass_options catalogue_productclass_options_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productclass_options
    ADD CONSTRAINT catalogue_productclass_options_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.catalogue_productclass_options DROP CONSTRAINT catalogue_productclass_options_pkey;
       public            torsion_prog    false    236            =           2606    26353 2   catalogue_productclass catalogue_productclass_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalogue_productclass
    ADD CONSTRAINT catalogue_productclass_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalogue_productclass DROP CONSTRAINT catalogue_productclass_pkey;
       public            torsion_prog    false    234            @           2606    26355 6   catalogue_productclass catalogue_productclass_slug_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.catalogue_productclass
    ADD CONSTRAINT catalogue_productclass_slug_key UNIQUE (slug);
 `   ALTER TABLE ONLY public.catalogue_productclass DROP CONSTRAINT catalogue_productclass_slug_key;
       public            torsion_prog    false    234            I           2606    26372 2   catalogue_productimage catalogue_productimage_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalogue_productimage
    ADD CONSTRAINT catalogue_productimage_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalogue_productimage DROP CONSTRAINT catalogue_productimage_pkey;
       public            torsion_prog    false    238            L           2606    26383 _   catalogue_productrecommendation catalogue_productrecomme_primary_id_recommendatio_da1fdf43_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productrecommendation
    ADD CONSTRAINT catalogue_productrecomme_primary_id_recommendatio_da1fdf43_uniq UNIQUE (primary_id, recommendation_id);
 �   ALTER TABLE ONLY public.catalogue_productrecommendation DROP CONSTRAINT catalogue_productrecomme_primary_id_recommendatio_da1fdf43_uniq;
       public            torsion_prog    false    240    240            N           2606    26381 D   catalogue_productrecommendation catalogue_productrecommendation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productrecommendation
    ADD CONSTRAINT catalogue_productrecommendation_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.catalogue_productrecommendation DROP CONSTRAINT catalogue_productrecommendation_pkey;
       public            torsion_prog    false    240            k           2606    27602 &   content_category content_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.content_category
    ADD CONSTRAINT content_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.content_category DROP CONSTRAINT content_category_pkey;
       public            torsion_prog    false    338            n           2606    27604 )   content_category content_category_url_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.content_category
    ADD CONSTRAINT content_category_url_key UNIQUE (url);
 S   ALTER TABLE ONLY public.content_category DROP CONSTRAINT content_category_url_key;
       public            torsion_prog    false    338            q           2606    27617 )   content_content content_content_alias_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_alias_key UNIQUE (alias);
 S   ALTER TABLE ONLY public.content_content DROP CONSTRAINT content_content_alias_key;
       public            torsion_prog    false    340            t           2606    27615 $   content_content content_content_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.content_content DROP CONSTRAINT content_content_pkey;
       public            torsion_prog    false    340            �           2606    27656 .   content_contentimage content_contentimage_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.content_contentimage
    ADD CONSTRAINT content_contentimage_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.content_contentimage DROP CONSTRAINT content_contentimage_pkey;
       public            torsion_prog    false    348            }           2606    27645 0   content_ratingcontent content_ratingcontent_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.content_ratingcontent
    ADD CONSTRAINT content_ratingcontent_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.content_ratingcontent DROP CONSTRAINT content_ratingcontent_pkey;
       public            torsion_prog    false    346            v           2606    27626 *   content_ratingstar content_ratingstar_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.content_ratingstar
    ADD CONSTRAINT content_ratingstar_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.content_ratingstar DROP CONSTRAINT content_ratingstar_pkey;
       public            torsion_prog    false    342            z           2606    27637 0   content_reviewcontent content_reviewcontent_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.content_reviewcontent
    ADD CONSTRAINT content_reviewcontent_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.content_reviewcontent DROP CONSTRAINT content_reviewcontent_pkey;
       public            torsion_prog    false    344            �           2606    26729 M   communication_communicationeventtype customer_communicationeventtype_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.communication_communicationeventtype
    ADD CONSTRAINT customer_communicationeventtype_code_key UNIQUE (code);
 w   ALTER TABLE ONLY public.communication_communicationeventtype DROP CONSTRAINT customer_communicationeventtype_code_key;
       public            torsion_prog    false    264            �           2606    26727 I   communication_communicationeventtype customer_communicationeventtype_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.communication_communicationeventtype
    ADD CONSTRAINT customer_communicationeventtype_pkey PRIMARY KEY (id);
 s   ALTER TABLE ONLY public.communication_communicationeventtype DROP CONSTRAINT customer_communicationeventtype_pkey;
       public            torsion_prog    false    264            �           2606    26740 '   communication_email customer_email_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.communication_email
    ADD CONSTRAINT customer_email_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.communication_email DROP CONSTRAINT customer_email_pkey;
       public            torsion_prog    false    266            �           2606    26751 5   communication_notification customer_notification_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.communication_notification
    ADD CONSTRAINT customer_notification_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.communication_notification DROP CONSTRAINT customer_notification_pkey;
       public            torsion_prog    false    268            �           2606    26759 0   customer_productalert customer_productalert_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.customer_productalert
    ADD CONSTRAINT customer_productalert_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.customer_productalert DROP CONSTRAINT customer_productalert_pkey;
       public            torsion_prog    false    270            �           2606    26251 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            torsion_prog    false    216            �           2606    26092 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            torsion_prog    false    199    199            �           2606    26090 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            torsion_prog    false    199            �           2606    27705 $   django_flatpage django_flatpage_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_flatpage
    ADD CONSTRAINT django_flatpage_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_flatpage DROP CONSTRAINT django_flatpage_pkey;
       public            torsion_prog    false    350            �           2606    27717 M   django_flatpage_sites django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq UNIQUE (flatpage_id, site_id);
 w   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq;
       public            torsion_prog    false    352    352            �           2606    27713 0   django_flatpage_sites django_flatpage_sites_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_pkey;
       public            torsion_prog    false    352            �           2606    26082 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            torsion_prog    false    197            �           2606    27904 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            torsion_prog    false    369            o           2606    28023 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            torsion_prog    false    252            q           2606    26619    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            torsion_prog    false    252            �           2606    28202 .   novaposhta_warehouse novaposhta_warehouse_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.novaposhta_warehouse
    ADD CONSTRAINT novaposhta_warehouse_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.novaposhta_warehouse DROP CONSTRAINT novaposhta_warehouse_pkey;
       public            torsion_prog    false    387                       2606    27216     offer_benefit offer_benefit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.offer_benefit
    ADD CONSTRAINT offer_benefit_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.offer_benefit DROP CONSTRAINT offer_benefit_pkey;
       public            torsion_prog    false    308                       2606    27226 $   offer_condition offer_condition_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.offer_condition
    ADD CONSTRAINT offer_condition_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.offer_condition DROP CONSTRAINT offer_condition_pkey;
       public            torsion_prog    false    310                       2606    27246 6   offer_conditionaloffer offer_conditionaloffer_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.offer_conditionaloffer
    ADD CONSTRAINT offer_conditionaloffer_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.offer_conditionaloffer DROP CONSTRAINT offer_conditionaloffer_name_key;
       public            torsion_prog    false    312                       2606    27244 2   offer_conditionaloffer offer_conditionaloffer_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.offer_conditionaloffer
    ADD CONSTRAINT offer_conditionaloffer_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.offer_conditionaloffer DROP CONSTRAINT offer_conditionaloffer_pkey;
       public            torsion_prog    false    312                       2606    27248 6   offer_conditionaloffer offer_conditionaloffer_slug_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.offer_conditionaloffer
    ADD CONSTRAINT offer_conditionaloffer_slug_key UNIQUE (slug);
 `   ALTER TABLE ONLY public.offer_conditionaloffer DROP CONSTRAINT offer_conditionaloffer_slug_key;
       public            torsion_prog    false    312            +           2606    27273 ,   offer_range_classes offer_range_classes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.offer_range_classes
    ADD CONSTRAINT offer_range_classes_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.offer_range_classes DROP CONSTRAINT offer_range_classes_pkey;
       public            torsion_prog    false    316            /           2606    27345 N   offer_range_classes offer_range_classes_range_id_productclass_id_28eeefae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_classes
    ADD CONSTRAINT offer_range_classes_range_id_productclass_id_28eeefae_uniq UNIQUE (range_id, productclass_id);
 x   ALTER TABLE ONLY public.offer_range_classes DROP CONSTRAINT offer_range_classes_range_id_productclass_id_28eeefae_uniq;
       public            torsion_prog    false    316    316            1           2606    27281 @   offer_range_excluded_products offer_range_excluded_products_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.offer_range_excluded_products
    ADD CONSTRAINT offer_range_excluded_products_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.offer_range_excluded_products DROP CONSTRAINT offer_range_excluded_products_pkey;
       public            torsion_prog    false    318            5           2606    27359 ]   offer_range_excluded_products offer_range_excluded_products_range_id_product_id_eb1cfe87_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_excluded_products
    ADD CONSTRAINT offer_range_excluded_products_range_id_product_id_eb1cfe87_uniq UNIQUE (range_id, product_id);
 �   ALTER TABLE ONLY public.offer_range_excluded_products DROP CONSTRAINT offer_range_excluded_products_range_id_product_id_eb1cfe87_uniq;
       public            torsion_prog    false    318    318            7           2606    27373 [   offer_range_included_categories offer_range_included_cat_range_id_category_id_a661d336_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_included_categories
    ADD CONSTRAINT offer_range_included_cat_range_id_category_id_a661d336_uniq UNIQUE (range_id, category_id);
 �   ALTER TABLE ONLY public.offer_range_included_categories DROP CONSTRAINT offer_range_included_cat_range_id_category_id_a661d336_uniq;
       public            torsion_prog    false    320    320            :           2606    27289 D   offer_range_included_categories offer_range_included_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_included_categories
    ADD CONSTRAINT offer_range_included_categories_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.offer_range_included_categories DROP CONSTRAINT offer_range_included_categories_pkey;
       public            torsion_prog    false    320            !           2606    27261     offer_range offer_range_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.offer_range
    ADD CONSTRAINT offer_range_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.offer_range DROP CONSTRAINT offer_range_name_key;
       public            torsion_prog    false    314            #           2606    27259    offer_range offer_range_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.offer_range
    ADD CONSTRAINT offer_range_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.offer_range DROP CONSTRAINT offer_range_pkey;
       public            torsion_prog    false    314            &           2606    27265 '   offer_range offer_range_proxy_class_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_range
    ADD CONSTRAINT offer_range_proxy_class_key UNIQUE (proxy_class);
 Q   ALTER TABLE ONLY public.offer_range DROP CONSTRAINT offer_range_proxy_class_key;
       public            torsion_prog    false    314            )           2606    27263     offer_range offer_range_slug_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.offer_range
    ADD CONSTRAINT offer_range_slug_key UNIQUE (slug);
 J   ALTER TABLE ONLY public.offer_range DROP CONSTRAINT offer_range_slug_key;
       public            torsion_prog    false    314            =           2606    27297 *   offer_rangeproduct offer_rangeproduct_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.offer_rangeproduct
    ADD CONSTRAINT offer_rangeproduct_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.offer_rangeproduct DROP CONSTRAINT offer_rangeproduct_pkey;
       public            torsion_prog    false    322            A           2606    27314 G   offer_rangeproduct offer_rangeproduct_range_id_product_id_c46b1be8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.offer_rangeproduct
    ADD CONSTRAINT offer_rangeproduct_range_id_product_id_c46b1be8_uniq UNIQUE (range_id, product_id);
 q   ALTER TABLE ONLY public.offer_rangeproduct DROP CONSTRAINT offer_rangeproduct_range_id_product_id_c46b1be8_uniq;
       public            torsion_prog    false    322    322            D           2606    27312 >   offer_rangeproductfileupload offer_rangeproductfileupload_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.offer_rangeproductfileupload
    ADD CONSTRAINT offer_rangeproductfileupload_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.offer_rangeproductfileupload DROP CONSTRAINT offer_rangeproductfileupload_pkey;
       public            torsion_prog    false    324            �           2606    26870 .   order_billingaddress order_billingaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.order_billingaddress
    ADD CONSTRAINT order_billingaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.order_billingaddress DROP CONSTRAINT order_billingaddress_pkey;
       public            torsion_prog    false    278            �           2606    26878 6   order_communicationevent order_communicationevent_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.order_communicationevent
    ADD CONSTRAINT order_communicationevent_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.order_communicationevent DROP CONSTRAINT order_communicationevent_pkey;
       public            torsion_prog    false    280            �           2606    26890    order_line order_line_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT order_line_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_pkey;
       public            torsion_prog    false    282            �           2606    26898 ,   order_lineattribute order_lineattribute_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.order_lineattribute
    ADD CONSTRAINT order_lineattribute_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.order_lineattribute DROP CONSTRAINT order_lineattribute_pkey;
       public            torsion_prog    false    284            �           2606    26907 $   order_lineprice order_lineprice_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.order_lineprice
    ADD CONSTRAINT order_lineprice_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.order_lineprice DROP CONSTRAINT order_lineprice_pkey;
       public            torsion_prog    false    286            �           2606    26920 "   order_order order_order_number_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_number_key UNIQUE (number);
 L   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_number_key;
       public            torsion_prog    false    288            �           2606    26918    order_order order_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_pkey;
       public            torsion_prog    false    288            �           2606    26934 ,   order_orderdiscount order_orderdiscount_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.order_orderdiscount
    ADD CONSTRAINT order_orderdiscount_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.order_orderdiscount DROP CONSTRAINT order_orderdiscount_pkey;
       public            torsion_prog    false    290            �           2606    26945 $   order_ordernote order_ordernote_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.order_ordernote
    ADD CONSTRAINT order_ordernote_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.order_ordernote DROP CONSTRAINT order_ordernote_pkey;
       public            torsion_prog    false    292            i           2606    27568 4   order_orderstatuschange order_orderstatuschange_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.order_orderstatuschange
    ADD CONSTRAINT order_orderstatuschange_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.order_orderstatuschange DROP CONSTRAINT order_orderstatuschange_pkey;
       public            torsion_prog    false    336            �           2606    26953 *   order_paymentevent order_paymentevent_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.order_paymentevent
    ADD CONSTRAINT order_paymentevent_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.order_paymentevent DROP CONSTRAINT order_paymentevent_pkey;
       public            torsion_prog    false    294            �           2606    27031 T   order_paymenteventquantity order_paymenteventquantity_event_id_line_id_765c5209_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_paymenteventquantity
    ADD CONSTRAINT order_paymenteventquantity_event_id_line_id_765c5209_uniq UNIQUE (event_id, line_id);
 ~   ALTER TABLE ONLY public.order_paymenteventquantity DROP CONSTRAINT order_paymenteventquantity_event_id_line_id_765c5209_uniq;
       public            torsion_prog    false    296    296            �           2606    26962 :   order_paymenteventquantity order_paymenteventquantity_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.order_paymenteventquantity
    ADD CONSTRAINT order_paymenteventquantity_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.order_paymenteventquantity DROP CONSTRAINT order_paymenteventquantity_pkey;
       public            torsion_prog    false    296            �           2606    26974 6   order_paymenteventtype order_paymenteventtype_code_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.order_paymenteventtype
    ADD CONSTRAINT order_paymenteventtype_code_key UNIQUE (code);
 `   ALTER TABLE ONLY public.order_paymenteventtype DROP CONSTRAINT order_paymenteventtype_code_key;
       public            torsion_prog    false    298            �           2606    26972 6   order_paymenteventtype order_paymenteventtype_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.order_paymenteventtype
    ADD CONSTRAINT order_paymenteventtype_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.order_paymenteventtype DROP CONSTRAINT order_paymenteventtype_name_key;
       public            torsion_prog    false    298            �           2606    26970 2   order_paymenteventtype order_paymenteventtype_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_paymenteventtype
    ADD CONSTRAINT order_paymenteventtype_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.order_paymenteventtype DROP CONSTRAINT order_paymenteventtype_pkey;
       public            torsion_prog    false    298            �           2606    26985 0   order_shippingaddress order_shippingaddress_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.order_shippingaddress
    ADD CONSTRAINT order_shippingaddress_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.order_shippingaddress DROP CONSTRAINT order_shippingaddress_pkey;
       public            torsion_prog    false    300            �           2606    26996 ,   order_shippingevent order_shippingevent_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.order_shippingevent
    ADD CONSTRAINT order_shippingevent_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.order_shippingevent DROP CONSTRAINT order_shippingevent_pkey;
       public            torsion_prog    false    302                       2606    27019 V   order_shippingeventquantity order_shippingeventquantity_event_id_line_id_91687107_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingeventquantity
    ADD CONSTRAINT order_shippingeventquantity_event_id_line_id_91687107_uniq UNIQUE (event_id, line_id);
 �   ALTER TABLE ONLY public.order_shippingeventquantity DROP CONSTRAINT order_shippingeventquantity_event_id_line_id_91687107_uniq;
       public            torsion_prog    false    304    304                       2606    27005 <   order_shippingeventquantity order_shippingeventquantity_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.order_shippingeventquantity
    ADD CONSTRAINT order_shippingeventquantity_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.order_shippingeventquantity DROP CONSTRAINT order_shippingeventquantity_pkey;
       public            torsion_prog    false    304                       2606    27017 8   order_shippingeventtype order_shippingeventtype_code_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.order_shippingeventtype
    ADD CONSTRAINT order_shippingeventtype_code_key UNIQUE (code);
 b   ALTER TABLE ONLY public.order_shippingeventtype DROP CONSTRAINT order_shippingeventtype_code_key;
       public            torsion_prog    false    306                       2606    27015 8   order_shippingeventtype order_shippingeventtype_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.order_shippingeventtype
    ADD CONSTRAINT order_shippingeventtype_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.order_shippingeventtype DROP CONSTRAINT order_shippingeventtype_name_key;
       public            torsion_prog    false    306                       2606    27013 4   order_shippingeventtype order_shippingeventtype_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.order_shippingeventtype
    ADD CONSTRAINT order_shippingeventtype_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.order_shippingeventtype DROP CONSTRAINT order_shippingeventtype_pkey;
       public            torsion_prog    false    306            �           2606    27750 $   order_surcharge order_surcharge_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.order_surcharge
    ADD CONSTRAINT order_surcharge_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.order_surcharge DROP CONSTRAINT order_surcharge_pkey;
       public            torsion_prog    false    354            �           2606    27766 '   oscarapi_apikey oscarapi_apikey_key_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.oscarapi_apikey
    ADD CONSTRAINT oscarapi_apikey_key_key UNIQUE (key);
 Q   ALTER TABLE ONLY public.oscarapi_apikey DROP CONSTRAINT oscarapi_apikey_key_key;
       public            torsion_prog    false    356            �           2606    27764 $   oscarapi_apikey oscarapi_apikey_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.oscarapi_apikey
    ADD CONSTRAINT oscarapi_apikey_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.oscarapi_apikey DROP CONSTRAINT oscarapi_apikey_pkey;
       public            torsion_prog    false    356            t           2606    26629 (   partner_partner partner_partner_code_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT partner_partner_code_key UNIQUE (code);
 R   ALTER TABLE ONLY public.partner_partner DROP CONSTRAINT partner_partner_code_key;
       public            torsion_prog    false    254            x           2606    26627 $   partner_partner partner_partner_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT partner_partner_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.partner_partner DROP CONSTRAINT partner_partner_pkey;
       public            torsion_prog    false    254            {           2606    26677 L   partner_partner_users partner_partner_users_partner_id_user_id_9e5c0517_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.partner_partner_users
    ADD CONSTRAINT partner_partner_users_partner_id_user_id_9e5c0517_uniq UNIQUE (partner_id, user_id);
 v   ALTER TABLE ONLY public.partner_partner_users DROP CONSTRAINT partner_partner_users_partner_id_user_id_9e5c0517_uniq;
       public            torsion_prog    false    256    256            }           2606    26637 0   partner_partner_users partner_partner_users_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.partner_partner_users
    ADD CONSTRAINT partner_partner_users_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.partner_partner_users DROP CONSTRAINT partner_partner_users_pkey;
       public            torsion_prog    false    256            �           2606    26648 2   partner_partneraddress partner_partneraddress_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.partner_partneraddress
    ADD CONSTRAINT partner_partneraddress_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.partner_partneraddress DROP CONSTRAINT partner_partneraddress_pkey;
       public            torsion_prog    false    258            �           2606    26657 *   partner_stockalert partner_stockalert_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.partner_stockalert
    ADD CONSTRAINT partner_stockalert_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.partner_stockalert DROP CONSTRAINT partner_stockalert_pkey;
       public            torsion_prog    false    260            �           2606    26669 L   partner_stockrecord partner_stockrecord_partner_id_partner_sku_8441e010_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.partner_stockrecord
    ADD CONSTRAINT partner_stockrecord_partner_id_partner_sku_8441e010_uniq UNIQUE (partner_id, partner_sku);
 v   ALTER TABLE ONLY public.partner_stockrecord DROP CONSTRAINT partner_stockrecord_partner_id_partner_sku_8441e010_uniq;
       public            torsion_prog    false    262    262            �           2606    26667 ,   partner_stockrecord partner_stockrecord_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.partner_stockrecord
    ADD CONSTRAINT partner_stockrecord_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.partner_stockrecord DROP CONSTRAINT partner_stockrecord_pkey;
       public            torsion_prog    false    262            �           2606    27791 &   payment_bankcard payment_bankcard_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.payment_bankcard
    ADD CONSTRAINT payment_bankcard_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.payment_bankcard DROP CONSTRAINT payment_bankcard_pkey;
       public            torsion_prog    false    358            �           2606    27799 "   payment_source payment_source_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.payment_source
    ADD CONSTRAINT payment_source_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.payment_source DROP CONSTRAINT payment_source_pkey;
       public            torsion_prog    false    360            �           2606    27809 .   payment_sourcetype payment_sourcetype_code_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.payment_sourcetype
    ADD CONSTRAINT payment_sourcetype_code_key UNIQUE (code);
 X   ALTER TABLE ONLY public.payment_sourcetype DROP CONSTRAINT payment_sourcetype_code_key;
       public            torsion_prog    false    362            �           2606    27807 *   payment_sourcetype payment_sourcetype_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.payment_sourcetype
    ADD CONSTRAINT payment_sourcetype_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.payment_sourcetype DROP CONSTRAINT payment_sourcetype_pkey;
       public            torsion_prog    false    362            �           2606    27817 ,   payment_transaction payment_transaction_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.payment_transaction DROP CONSTRAINT payment_transaction_pkey;
       public            torsion_prog    false    364            �           2606    27854 0   reviews_productreview reviews_productreview_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.reviews_productreview
    ADD CONSTRAINT reviews_productreview_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.reviews_productreview DROP CONSTRAINT reviews_productreview_pkey;
       public            torsion_prog    false    366            �           2606    27866 L   reviews_productreview reviews_productreview_product_id_user_id_c4fdc4cd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.reviews_productreview
    ADD CONSTRAINT reviews_productreview_product_id_user_id_c4fdc4cd_uniq UNIQUE (product_id, user_id);
 v   ALTER TABLE ONLY public.reviews_productreview DROP CONSTRAINT reviews_productreview_product_id_user_id_c4fdc4cd_uniq;
       public            torsion_prog    false    366    366            �           2606    27862    reviews_vote reviews_vote_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reviews_vote
    ADD CONSTRAINT reviews_vote_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reviews_vote DROP CONSTRAINT reviews_vote_pkey;
       public            torsion_prog    false    368            �           2606    27864 9   reviews_vote reviews_vote_user_id_review_id_bb858939_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.reviews_vote
    ADD CONSTRAINT reviews_vote_user_id_review_id_bb858939_uniq UNIQUE (user_id, review_id);
 c   ALTER TABLE ONLY public.reviews_vote DROP CONSTRAINT reviews_vote_user_id_review_id_bb858939_uniq;
       public            torsion_prog    false    368    368            �           2606    27969 f   shipping_orderanditemcharges_countries shipping_orderanditemcha_orderanditemcharges_id_c_9f0c9c8f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries
    ADD CONSTRAINT shipping_orderanditemcha_orderanditemcharges_id_c_9f0c9c8f_uniq UNIQUE (orderanditemcharges_id, country_id);
 �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries DROP CONSTRAINT shipping_orderanditemcha_orderanditemcharges_id_c_9f0c9c8f_uniq;
       public            torsion_prog    false    373    373            �           2606    27919 B   shipping_orderanditemcharges shipping_orderanditemcharges_code_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.shipping_orderanditemcharges
    ADD CONSTRAINT shipping_orderanditemcharges_code_key UNIQUE (code);
 l   ALTER TABLE ONLY public.shipping_orderanditemcharges DROP CONSTRAINT shipping_orderanditemcharges_code_key;
       public            torsion_prog    false    371            �           2606    27929 R   shipping_orderanditemcharges_countries shipping_orderanditemcharges_countries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries
    ADD CONSTRAINT shipping_orderanditemcharges_countries_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries DROP CONSTRAINT shipping_orderanditemcharges_countries_pkey;
       public            torsion_prog    false    373            �           2606    27921 B   shipping_orderanditemcharges shipping_orderanditemcharges_name_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.shipping_orderanditemcharges
    ADD CONSTRAINT shipping_orderanditemcharges_name_key UNIQUE (name);
 l   ALTER TABLE ONLY public.shipping_orderanditemcharges DROP CONSTRAINT shipping_orderanditemcharges_name_key;
       public            torsion_prog    false    371            �           2606    27917 >   shipping_orderanditemcharges shipping_orderanditemcharges_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.shipping_orderanditemcharges
    ADD CONSTRAINT shipping_orderanditemcharges_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.shipping_orderanditemcharges DROP CONSTRAINT shipping_orderanditemcharges_pkey;
       public            torsion_prog    false    371            �           2606    27937 ,   shipping_weightband shipping_weightband_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.shipping_weightband
    ADD CONSTRAINT shipping_weightband_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.shipping_weightband DROP CONSTRAINT shipping_weightband_pkey;
       public            torsion_prog    false    375            �           2606    27950 2   shipping_weightbased shipping_weightbased_code_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.shipping_weightbased
    ADD CONSTRAINT shipping_weightbased_code_key UNIQUE (code);
 \   ALTER TABLE ONLY public.shipping_weightbased DROP CONSTRAINT shipping_weightbased_code_key;
       public            torsion_prog    false    377            �           2606    27986 ^   shipping_weightbased_countries shipping_weightbased_cou_weightbased_id_country_i_de8c5e42_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_weightbased_countries
    ADD CONSTRAINT shipping_weightbased_cou_weightbased_id_country_i_de8c5e42_uniq UNIQUE (weightbased_id, country_id);
 �   ALTER TABLE ONLY public.shipping_weightbased_countries DROP CONSTRAINT shipping_weightbased_cou_weightbased_id_country_i_de8c5e42_uniq;
       public            torsion_prog    false    379    379            �           2606    27960 B   shipping_weightbased_countries shipping_weightbased_countries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_weightbased_countries
    ADD CONSTRAINT shipping_weightbased_countries_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.shipping_weightbased_countries DROP CONSTRAINT shipping_weightbased_countries_pkey;
       public            torsion_prog    false    379            �           2606    27952 2   shipping_weightbased shipping_weightbased_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.shipping_weightbased
    ADD CONSTRAINT shipping_weightbased_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.shipping_weightbased DROP CONSTRAINT shipping_weightbased_name_key;
       public            torsion_prog    false    377            �           2606    27948 .   shipping_weightbased shipping_weightbased_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.shipping_weightbased
    ADD CONSTRAINT shipping_weightbased_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.shipping_weightbased DROP CONSTRAINT shipping_weightbased_pkey;
       public            torsion_prog    false    377            I           2606    27423 (   voucher_voucher voucher_voucher_code_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.voucher_voucher
    ADD CONSTRAINT voucher_voucher_code_key UNIQUE (code);
 R   ALTER TABLE ONLY public.voucher_voucher DROP CONSTRAINT voucher_voucher_code_key;
       public            torsion_prog    false    326            Q           2606    27431 2   voucher_voucher_offers voucher_voucher_offers_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.voucher_voucher_offers
    ADD CONSTRAINT voucher_voucher_offers_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.voucher_voucher_offers DROP CONSTRAINT voucher_voucher_offers_pkey;
       public            torsion_prog    false    328            T           2606    27442 T   voucher_voucher_offers voucher_voucher_offers_voucher_id_conditionalof_01628a7f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucher_offers
    ADD CONSTRAINT voucher_voucher_offers_voucher_id_conditionalof_01628a7f_uniq UNIQUE (voucher_id, conditionaloffer_id);
 ~   ALTER TABLE ONLY public.voucher_voucher_offers DROP CONSTRAINT voucher_voucher_offers_voucher_id_conditionalof_01628a7f_uniq;
       public            torsion_prog    false    328    328            L           2606    27421 $   voucher_voucher voucher_voucher_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.voucher_voucher
    ADD CONSTRAINT voucher_voucher_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.voucher_voucher DROP CONSTRAINT voucher_voucher_pkey;
       public            torsion_prog    false    326            W           2606    27439 :   voucher_voucherapplication voucher_voucherapplication_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.voucher_voucherapplication
    ADD CONSTRAINT voucher_voucherapplication_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.voucher_voucherapplication DROP CONSTRAINT voucher_voucherapplication_pkey;
       public            torsion_prog    false    330            �           2606    28060 2   voucher_voucherset voucher_voucherset_offer_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.voucher_voucherset
    ADD CONSTRAINT voucher_voucherset_offer_id_key UNIQUE (offer_id);
 \   ALTER TABLE ONLY public.voucher_voucherset DROP CONSTRAINT voucher_voucherset_offer_id_key;
       public            torsion_prog    false    381            �           2606    28058 *   voucher_voucherset voucher_voucherset_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.voucher_voucherset
    ADD CONSTRAINT voucher_voucherset_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.voucher_voucherset DROP CONSTRAINT voucher_voucherset_pkey;
       public            torsion_prog    false    381            �           2606    28088 "   wishlists_line wishlists_line_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.wishlists_line
    ADD CONSTRAINT wishlists_line_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.wishlists_line DROP CONSTRAINT wishlists_line_pkey;
       public            torsion_prog    false    383            �           2606    28105 B   wishlists_line wishlists_line_wishlist_id_product_id_78f04673_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wishlists_line
    ADD CONSTRAINT wishlists_line_wishlist_id_product_id_78f04673_uniq UNIQUE (wishlist_id, product_id);
 l   ALTER TABLE ONLY public.wishlists_line DROP CONSTRAINT wishlists_line_wishlist_id_product_id_78f04673_uniq;
       public            torsion_prog    false    383    383            �           2606    28098 -   wishlists_wishlist wishlists_wishlist_key_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.wishlists_wishlist
    ADD CONSTRAINT wishlists_wishlist_key_key UNIQUE (key);
 W   ALTER TABLE ONLY public.wishlists_wishlist DROP CONSTRAINT wishlists_wishlist_key_key;
       public            torsion_prog    false    385            �           2606    28096 *   wishlists_wishlist wishlists_wishlist_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wishlists_wishlist
    ADD CONSTRAINT wishlists_wishlist_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wishlists_wishlist DROP CONSTRAINT wishlists_wishlist_pkey;
       public            torsion_prog    false    385            �           1259    26218 &   address_country_display_order_dc88cde8    INDEX     k   CREATE INDEX address_country_display_order_dc88cde8 ON public.address_country USING btree (display_order);
 :   DROP INDEX public.address_country_display_order_dc88cde8;
       public            torsion_prog    false    212            �           1259    26219 ,   address_country_is_shipping_country_f7b6c461    INDEX     w   CREATE INDEX address_country_is_shipping_country_f7b6c461 ON public.address_country USING btree (is_shipping_country);
 @   DROP INDEX public.address_country_is_shipping_country_f7b6c461;
       public            torsion_prog    false    212            �           1259    26217 +   address_country_iso_3166_1_a2_f395eed0_like    INDEX     �   CREATE INDEX address_country_iso_3166_1_a2_f395eed0_like ON public.address_country USING btree (iso_3166_1_a2 varchar_pattern_ops);
 ?   DROP INDEX public.address_country_iso_3166_1_a2_f395eed0_like;
       public            torsion_prog    false    212            �           1259    26238 '   address_country_printable_name_450b016c    INDEX     m   CREATE INDEX address_country_printable_name_450b016c ON public.address_country USING btree (printable_name);
 ;   DROP INDEX public.address_country_printable_name_450b016c;
       public            torsion_prog    false    212            �           1259    26239 ,   address_country_printable_name_450b016c_like    INDEX     �   CREATE INDEX address_country_printable_name_450b016c_like ON public.address_country USING btree (printable_name varchar_pattern_ops);
 @   DROP INDEX public.address_country_printable_name_450b016c_like;
       public            torsion_prog    false    212            �           1259    26232 '   address_useraddress_country_id_fa26a249    INDEX     m   CREATE INDEX address_useraddress_country_id_fa26a249 ON public.address_useraddress USING btree (country_id);
 ;   DROP INDEX public.address_useraddress_country_id_fa26a249;
       public            torsion_prog    false    214            �           1259    26233 ,   address_useraddress_country_id_fa26a249_like    INDEX     �   CREATE INDEX address_useraddress_country_id_fa26a249_like ON public.address_useraddress USING btree (country_id varchar_pattern_ops);
 @   DROP INDEX public.address_useraddress_country_id_fa26a249_like;
       public            torsion_prog    false    214            �           1259    26230 !   address_useraddress_hash_e0a6b290    INDEX     a   CREATE INDEX address_useraddress_hash_e0a6b290 ON public.address_useraddress USING btree (hash);
 5   DROP INDEX public.address_useraddress_hash_e0a6b290;
       public            torsion_prog    false    214            �           1259    26231 &   address_useraddress_hash_e0a6b290_like    INDEX     z   CREATE INDEX address_useraddress_hash_e0a6b290_like ON public.address_useraddress USING btree (hash varchar_pattern_ops);
 :   DROP INDEX public.address_useraddress_hash_e0a6b290_like;
       public            torsion_prog    false    214            �           1259    26234 $   address_useraddress_user_id_6edf0244    INDEX     g   CREATE INDEX address_useraddress_user_id_6edf0244 ON public.address_useraddress USING btree (user_id);
 8   DROP INDEX public.address_useraddress_user_id_6edf0244;
       public            torsion_prog    false    214            X           1259    26567 .   analytics_productrecord_num_purchases_405301a0    INDEX     {   CREATE INDEX analytics_productrecord_num_purchases_405301a0 ON public.analytics_productrecord USING btree (num_purchases);
 B   DROP INDEX public.analytics_productrecord_num_purchases_405301a0;
       public            torsion_prog    false    244            _           1259    26601 -   analytics_userproductview_product_id_a55b87ad    INDEX     y   CREATE INDEX analytics_userproductview_product_id_a55b87ad ON public.analytics_userproductview USING btree (product_id);
 A   DROP INDEX public.analytics_userproductview_product_id_a55b87ad;
       public            torsion_prog    false    246            `           1259    26602 *   analytics_userproductview_user_id_5e49a8b1    INDEX     s   CREATE INDEX analytics_userproductview_user_id_5e49a8b1 ON public.analytics_userproductview USING btree (user_id);
 >   DROP INDEX public.analytics_userproductview_user_id_5e49a8b1;
       public            torsion_prog    false    246            a           1259    26575 -   analytics_userrecord_num_order_items_fb2a8304    INDEX     y   CREATE INDEX analytics_userrecord_num_order_items_fb2a8304 ON public.analytics_userrecord USING btree (num_order_items);
 A   DROP INDEX public.analytics_userrecord_num_order_items_fb2a8304;
       public            torsion_prog    false    248            b           1259    26574 -   analytics_userrecord_num_order_lines_97cc087f    INDEX     y   CREATE INDEX analytics_userrecord_num_order_lines_97cc087f ON public.analytics_userrecord USING btree (num_order_lines);
 A   DROP INDEX public.analytics_userrecord_num_order_lines_97cc087f;
       public            torsion_prog    false    248            c           1259    26573 (   analytics_userrecord_num_orders_b352ffd1    INDEX     o   CREATE INDEX analytics_userrecord_num_orders_b352ffd1 ON public.analytics_userrecord USING btree (num_orders);
 <   DROP INDEX public.analytics_userrecord_num_orders_b352ffd1;
       public            torsion_prog    false    248            j           1259    26581 #   analytics_usersearch_query_ad36478b    INDEX     e   CREATE INDEX analytics_usersearch_query_ad36478b ON public.analytics_usersearch USING btree (query);
 7   DROP INDEX public.analytics_usersearch_query_ad36478b;
       public            torsion_prog    false    250            k           1259    26582 (   analytics_usersearch_query_ad36478b_like    INDEX     ~   CREATE INDEX analytics_usersearch_query_ad36478b_like ON public.analytics_usersearch USING btree (query varchar_pattern_ops);
 <   DROP INDEX public.analytics_usersearch_query_ad36478b_like;
       public            torsion_prog    false    250            l           1259    26583 %   analytics_usersearch_user_id_1775992d    INDEX     i   CREATE INDEX analytics_usersearch_user_id_1775992d ON public.analytics_usersearch USING btree (user_id);
 9   DROP INDEX public.analytics_usersearch_user_id_1775992d;
       public            torsion_prog    false    250            �           1259    26611    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            torsion_prog    false    203            �           1259    26166 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            torsion_prog    false    205            �           1259    26167 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            torsion_prog    false    205            �           1259    26152 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            torsion_prog    false    201            �           1259    26182 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            torsion_prog    false    209            �           1259    26181 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            torsion_prog    false    209            �           1259    26196 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            torsion_prog    false    211            �           1259    26195 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            torsion_prog    false    211            �           1259    26605     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            torsion_prog    false    207            �           1259    26859    basket_basket_owner_id_3a018de5    INDEX     ]   CREATE INDEX basket_basket_owner_id_3a018de5 ON public.basket_basket USING btree (owner_id);
 3   DROP INDEX public.basket_basket_owner_id_3a018de5;
       public            torsion_prog    false    272            Z           1259    27493 )   basket_basket_vouchers_basket_id_f857c2f8    INDEX     q   CREATE INDEX basket_basket_vouchers_basket_id_f857c2f8 ON public.basket_basket_vouchers USING btree (basket_id);
 =   DROP INDEX public.basket_basket_vouchers_basket_id_f857c2f8;
       public            torsion_prog    false    332            _           1259    27494 *   basket_basket_vouchers_voucher_id_c2b66981    INDEX     s   CREATE INDEX basket_basket_vouchers_voucher_id_c2b66981 ON public.basket_basket_vouchers USING btree (voucher_id);
 >   DROP INDEX public.basket_basket_vouchers_voucher_id_c2b66981;
       public            torsion_prog    false    332            �           1259    26856    basket_line_basket_id_b615c905    INDEX     [   CREATE INDEX basket_line_basket_id_b615c905 ON public.basket_line USING btree (basket_id);
 2   DROP INDEX public.basket_line_basket_id_b615c905;
       public            torsion_prog    false    274            �           1259    27505 !   basket_line_date_created_eb0dfb1b    INDEX     a   CREATE INDEX basket_line_date_created_eb0dfb1b ON public.basket_line USING btree (date_created);
 5   DROP INDEX public.basket_line_date_created_eb0dfb1b;
       public            torsion_prog    false    274            �           1259    27507 !   basket_line_date_updated_a74d069d    INDEX     a   CREATE INDEX basket_line_date_updated_a74d069d ON public.basket_line USING btree (date_updated);
 5   DROP INDEX public.basket_line_date_updated_a74d069d;
       public            torsion_prog    false    274            �           1259    26820 #   basket_line_line_reference_08e91113    INDEX     e   CREATE INDEX basket_line_line_reference_08e91113 ON public.basket_line USING btree (line_reference);
 7   DROP INDEX public.basket_line_line_reference_08e91113;
       public            torsion_prog    false    274            �           1259    26821 (   basket_line_line_reference_08e91113_like    INDEX     ~   CREATE INDEX basket_line_line_reference_08e91113_like ON public.basket_line USING btree (line_reference varchar_pattern_ops);
 <   DROP INDEX public.basket_line_line_reference_08e91113_like;
       public            torsion_prog    false    274            �           1259    26857    basket_line_product_id_303d743e    INDEX     ]   CREATE INDEX basket_line_product_id_303d743e ON public.basket_line USING btree (product_id);
 3   DROP INDEX public.basket_line_product_id_303d743e;
       public            torsion_prog    false    274            �           1259    26858 #   basket_line_stockrecord_id_7039d8a4    INDEX     e   CREATE INDEX basket_line_stockrecord_id_7039d8a4 ON public.basket_line USING btree (stockrecord_id);
 7   DROP INDEX public.basket_line_stockrecord_id_7039d8a4;
       public            torsion_prog    false    274            �           1259    26827 %   basket_lineattribute_line_id_c41e0cdf    INDEX     i   CREATE INDEX basket_lineattribute_line_id_c41e0cdf ON public.basket_lineattribute USING btree (line_id);
 9   DROP INDEX public.basket_lineattribute_line_id_c41e0cdf;
       public            torsion_prog    false    276            �           1259    26855 '   basket_lineattribute_option_id_9387a3f7    INDEX     m   CREATE INDEX basket_lineattribute_option_id_9387a3f7 ON public.basket_lineattribute USING btree (option_id);
 ;   DROP INDEX public.basket_lineattribute_option_id_9387a3f7;
       public            torsion_prog    false    276            �           1259    28229 0   cashondelivery_cashondel_reference_06c27c00_like    INDEX     �   CREATE INDEX cashondelivery_cashondel_reference_06c27c00_like ON public.cashondelivery_cashondeliverytransaction USING btree (reference varchar_pattern_ops);
 D   DROP INDEX public.cashondelivery_cashondel_reference_06c27c00_like;
       public            torsion_prog    false    389                        1259    26524 +   catalogue_attributeoption_group_id_3d4a5e24    INDEX     u   CREATE INDEX catalogue_attributeoption_group_id_3d4a5e24 ON public.catalogue_attributeoption USING btree (group_id);
 ?   DROP INDEX public.catalogue_attributeoption_group_id_3d4a5e24;
       public            torsion_prog    false    218                       1259    27559 0   catalogue_category_ancestors_are_public_d088d0db    INDEX        CREATE INDEX catalogue_category_ancestors_are_public_d088d0db ON public.catalogue_category USING btree (ancestors_are_public);
 D   DROP INDEX public.catalogue_category_ancestors_are_public_d088d0db;
       public            torsion_prog    false    222                       1259    27560 %   catalogue_category_is_public_ab0536be    INDEX     i   CREATE INDEX catalogue_category_is_public_ab0536be ON public.catalogue_category USING btree (is_public);
 9   DROP INDEX public.catalogue_category_is_public_ab0536be;
       public            torsion_prog    false    222            	           1259    26419     catalogue_category_name_1f342ac2    INDEX     _   CREATE INDEX catalogue_category_name_1f342ac2 ON public.catalogue_category USING btree (name);
 4   DROP INDEX public.catalogue_category_name_1f342ac2;
       public            torsion_prog    false    222            
           1259    26420 %   catalogue_category_name_1f342ac2_like    INDEX     x   CREATE INDEX catalogue_category_name_1f342ac2_like ON public.catalogue_category USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.catalogue_category_name_1f342ac2_like;
       public            torsion_prog    false    222                       1259    26418 %   catalogue_category_path_1c5b79c2_like    INDEX     x   CREATE INDEX catalogue_category_path_1c5b79c2_like ON public.catalogue_category USING btree (path varchar_pattern_ops);
 9   DROP INDEX public.catalogue_category_path_1c5b79c2_like;
       public            torsion_prog    false    222                       1259    26421     catalogue_category_slug_9635febd    INDEX     _   CREATE INDEX catalogue_category_slug_9635febd ON public.catalogue_category USING btree (slug);
 4   DROP INDEX public.catalogue_category_slug_9635febd;
       public            torsion_prog    false    222                       1259    26422 %   catalogue_category_slug_9635febd_like    INDEX     x   CREATE INDEX catalogue_category_slug_9635febd_like ON public.catalogue_category USING btree (slug varchar_pattern_ops);
 9   DROP INDEX public.catalogue_category_slug_9635febd_like;
       public            torsion_prog    false    222                       1259    26425 #   catalogue_option_code_0697b920_like    INDEX     t   CREATE INDEX catalogue_option_code_0697b920_like ON public.catalogue_option USING btree (code varchar_pattern_ops);
 7   DROP INDEX public.catalogue_option_code_0697b920_like;
       public            torsion_prog    false    224                       1259    27547 '   catalogue_product_date_created_d66f485a    INDEX     m   CREATE INDEX catalogue_product_date_created_d66f485a ON public.catalogue_product USING btree (date_created);
 ;   DROP INDEX public.catalogue_product_date_created_d66f485a;
       public            torsion_prog    false    226                       1259    26429 '   catalogue_product_date_updated_d3a1785d    INDEX     m   CREATE INDEX catalogue_product_date_updated_d3a1785d ON public.catalogue_product USING btree (date_updated);
 ;   DROP INDEX public.catalogue_product_date_updated_d3a1785d;
       public            torsion_prog    false    226                       1259    27558 $   catalogue_product_is_public_1cf798c5    INDEX     g   CREATE INDEX catalogue_product_is_public_1cf798c5 ON public.catalogue_product USING btree (is_public);
 8   DROP INDEX public.catalogue_product_is_public_1cf798c5;
       public            torsion_prog    false    226                       1259    26508 $   catalogue_product_parent_id_9bfd2382    INDEX     g   CREATE INDEX catalogue_product_parent_id_9bfd2382 ON public.catalogue_product USING btree (parent_id);
 8   DROP INDEX public.catalogue_product_parent_id_9bfd2382;
       public            torsion_prog    false    226                       1259    26509 +   catalogue_product_product_class_id_0c6c5b54    INDEX     u   CREATE INDEX catalogue_product_product_class_id_0c6c5b54 ON public.catalogue_product USING btree (product_class_id);
 ?   DROP INDEX public.catalogue_product_product_class_id_0c6c5b54;
       public            torsion_prog    false    226            T           1259    26523 4   catalogue_product_product_options_option_id_ff470e13    INDEX     �   CREATE INDEX catalogue_product_product_options_option_id_ff470e13 ON public.catalogue_product_product_options USING btree (option_id);
 H   DROP INDEX public.catalogue_product_product_options_option_id_ff470e13;
       public            torsion_prog    false    242            W           1259    26522 5   catalogue_product_product_options_product_id_ad2b46bd    INDEX     �   CREATE INDEX catalogue_product_product_options_product_id_ad2b46bd ON public.catalogue_product_product_options USING btree (product_id);
 I   DROP INDEX public.catalogue_product_product_options_product_id_ad2b46bd;
       public            torsion_prog    false    242                       1259    26427    catalogue_product_slug_c8e2e2b9    INDEX     ]   CREATE INDEX catalogue_product_slug_c8e2e2b9 ON public.catalogue_product USING btree (slug);
 3   DROP INDEX public.catalogue_product_slug_c8e2e2b9;
       public            torsion_prog    false    226                       1259    26428 $   catalogue_product_slug_c8e2e2b9_like    INDEX     v   CREATE INDEX catalogue_product_slug_c8e2e2b9_like ON public.catalogue_product USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.catalogue_product_slug_c8e2e2b9_like;
       public            torsion_prog    false    226                        1259    26426 #   catalogue_product_upc_91f72b90_like    INDEX     t   CREATE INDEX catalogue_product_upc_91f72b90_like ON public.catalogue_product USING btree (upc varchar_pattern_ops);
 7   DROP INDEX public.catalogue_product_upc_91f72b90_like;
       public            torsion_prog    false    226            b           1259    27541 6   catalogue_productattribute_attributeoption_id_962b600b    INDEX     �   CREATE INDEX catalogue_productattribute_attributeoption_id_962b600b ON public.catalogue_productattributevalue_value_multi_option USING btree (attributeoption_id);
 J   DROP INDEX public.catalogue_productattribute_attributeoption_id_962b600b;
       public            torsion_prog    false    334            #           1259    26435 (   catalogue_productattribute_code_9ffea293    INDEX     o   CREATE INDEX catalogue_productattribute_code_9ffea293 ON public.catalogue_productattribute USING btree (code);
 <   DROP INDEX public.catalogue_productattribute_code_9ffea293;
       public            torsion_prog    false    228            $           1259    26436 -   catalogue_productattribute_code_9ffea293_like    INDEX     �   CREATE INDEX catalogue_productattribute_code_9ffea293_like ON public.catalogue_productattribute USING btree (code varchar_pattern_ops);
 A   DROP INDEX public.catalogue_productattribute_code_9ffea293_like;
       public            torsion_prog    false    228            %           1259    26437 3   catalogue_productattribute_option_group_id_6b422dc2    INDEX     �   CREATE INDEX catalogue_productattribute_option_group_id_6b422dc2 ON public.catalogue_productattribute USING btree (option_group_id);
 G   DROP INDEX public.catalogue_productattribute_option_group_id_6b422dc2;
       public            torsion_prog    false    228            (           1259    26507 4   catalogue_productattribute_product_class_id_7af808ec    INDEX     �   CREATE INDEX catalogue_productattribute_product_class_id_7af808ec ON public.catalogue_productattribute USING btree (product_class_id);
 H   DROP INDEX public.catalogue_productattribute_product_class_id_7af808ec;
       public            torsion_prog    false    228            c           1259    27540 <   catalogue_productattribute_productattributevalue_id_9c7c031e    INDEX     �   CREATE INDEX catalogue_productattribute_productattributevalue_id_9c7c031e ON public.catalogue_productattributevalue_value_multi_option USING btree (productattributevalue_id);
 P   DROP INDEX public.catalogue_productattribute_productattributevalue_id_9c7c031e;
       public            torsion_prog    false    334            +           1259    26458 5   catalogue_productattributevalue_attribute_id_0287c1e7    INDEX     �   CREATE INDEX catalogue_productattributevalue_attribute_id_0287c1e7 ON public.catalogue_productattributevalue USING btree (attribute_id);
 I   DROP INDEX public.catalogue_productattributevalue_attribute_id_0287c1e7;
       public            torsion_prog    false    230            ,           1259    26459 ?   catalogue_productattributevalue_entity_content_type_id_f7186ab5    INDEX     �   CREATE INDEX catalogue_productattributevalue_entity_content_type_id_f7186ab5 ON public.catalogue_productattributevalue USING btree (entity_content_type_id);
 S   DROP INDEX public.catalogue_productattributevalue_entity_content_type_id_f7186ab5;
       public            torsion_prog    false    230            /           1259    26460 3   catalogue_productattributevalue_product_id_a03cd90e    INDEX     �   CREATE INDEX catalogue_productattributevalue_product_id_a03cd90e ON public.catalogue_productattributevalue USING btree (product_id);
 G   DROP INDEX public.catalogue_productattributevalue_product_id_a03cd90e;
       public            torsion_prog    false    230            0           1259    27551 6   catalogue_productattributevalue_value_boolean_c5b0d66a    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_boolean_c5b0d66a ON public.catalogue_productattributevalue USING btree (value_boolean);
 J   DROP INDEX public.catalogue_productattributevalue_value_boolean_c5b0d66a;
       public            torsion_prog    false    230            1           1259    27552 3   catalogue_productattributevalue_value_date_d18775c1    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_date_d18775c1 ON public.catalogue_productattributevalue USING btree (value_date);
 G   DROP INDEX public.catalogue_productattributevalue_value_date_d18775c1;
       public            torsion_prog    false    230            2           1259    27553 7   catalogue_productattributevalue_value_datetime_b474ac38    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_datetime_b474ac38 ON public.catalogue_productattributevalue USING btree (value_datetime);
 K   DROP INDEX public.catalogue_productattributevalue_value_datetime_b474ac38;
       public            torsion_prog    false    230            3           1259    27554 4   catalogue_productattributevalue_value_float_5ef8d3db    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_float_5ef8d3db ON public.catalogue_productattributevalue USING btree (value_float);
 H   DROP INDEX public.catalogue_productattributevalue_value_float_5ef8d3db;
       public            torsion_prog    false    230            4           1259    27555 6   catalogue_productattributevalue_value_integer_55fbb7d6    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_integer_55fbb7d6 ON public.catalogue_productattributevalue USING btree (value_integer);
 J   DROP INDEX public.catalogue_productattributevalue_value_integer_55fbb7d6;
       public            torsion_prog    false    230            5           1259    26461 8   catalogue_productattributevalue_value_option_id_21026066    INDEX     �   CREATE INDEX catalogue_productattributevalue_value_option_id_21026066 ON public.catalogue_productattributevalue USING btree (value_option_id);
 L   DROP INDEX public.catalogue_productattributevalue_value_option_id_21026066;
       public            torsion_prog    false    230            6           1259    26472 .   catalogue_productcategory_category_id_176db535    INDEX     {   CREATE INDEX catalogue_productcategory_category_id_176db535 ON public.catalogue_productcategory USING btree (category_id);
 B   DROP INDEX public.catalogue_productcategory_category_id_176db535;
       public            torsion_prog    false    232            9           1259    26473 -   catalogue_productcategory_product_id_846a4061    INDEX     y   CREATE INDEX catalogue_productcategory_product_id_846a4061 ON public.catalogue_productcategory USING btree (product_id);
 A   DROP INDEX public.catalogue_productcategory_product_id_846a4061;
       public            torsion_prog    false    232            C           1259    26488 1   catalogue_productclass_options_option_id_b099542c    INDEX     �   CREATE INDEX catalogue_productclass_options_option_id_b099542c ON public.catalogue_productclass_options USING btree (option_id);
 E   DROP INDEX public.catalogue_productclass_options_option_id_b099542c;
       public            torsion_prog    false    236            F           1259    26487 7   catalogue_productclass_options_productclass_id_732df4c8    INDEX     �   CREATE INDEX catalogue_productclass_options_productclass_id_732df4c8 ON public.catalogue_productclass_options USING btree (productclass_id);
 K   DROP INDEX public.catalogue_productclass_options_productclass_id_732df4c8;
       public            torsion_prog    false    236            >           1259    26474 )   catalogue_productclass_slug_270c6b2b_like    INDEX     �   CREATE INDEX catalogue_productclass_slug_270c6b2b_like ON public.catalogue_productclass USING btree (slug varchar_pattern_ops);
 =   DROP INDEX public.catalogue_productclass_slug_270c6b2b_like;
       public            torsion_prog    false    234            G           1259    27548 -   catalogue_productimage_display_order_9fa741ac    INDEX     y   CREATE INDEX catalogue_productimage_display_order_9fa741ac ON public.catalogue_productimage USING btree (display_order);
 A   DROP INDEX public.catalogue_productimage_display_order_9fa741ac;
       public            torsion_prog    false    238            J           1259    26494 *   catalogue_productimage_product_id_49474fe8    INDEX     s   CREATE INDEX catalogue_productimage_product_id_49474fe8 ON public.catalogue_productimage USING btree (product_id);
 >   DROP INDEX public.catalogue_productimage_product_id_49474fe8;
       public            torsion_prog    false    238            O           1259    26505 3   catalogue_productrecommendation_primary_id_6e51a55c    INDEX     �   CREATE INDEX catalogue_productrecommendation_primary_id_6e51a55c ON public.catalogue_productrecommendation USING btree (primary_id);
 G   DROP INDEX public.catalogue_productrecommendation_primary_id_6e51a55c;
       public            torsion_prog    false    240            P           1259    27549 0   catalogue_productrecommendation_ranking_e7a0f7fd    INDEX        CREATE INDEX catalogue_productrecommendation_ranking_e7a0f7fd ON public.catalogue_productrecommendation USING btree (ranking);
 D   DROP INDEX public.catalogue_productrecommendation_ranking_e7a0f7fd;
       public            torsion_prog    false    240            Q           1259    26506 :   catalogue_productrecommendation_recommendation_id_daf8ae95    INDEX     �   CREATE INDEX catalogue_productrecommendation_recommendation_id_daf8ae95 ON public.catalogue_productrecommendation USING btree (recommendation_id);
 N   DROP INDEX public.catalogue_productrecommendation_recommendation_id_daf8ae95;
       public            torsion_prog    false    240            l           1259    27657 "   content_category_url_f1ef25f5_like    INDEX     r   CREATE INDEX content_category_url_f1ef25f5_like ON public.content_category USING btree (url varchar_pattern_ops);
 6   DROP INDEX public.content_category_url_f1ef25f5_like;
       public            torsion_prog    false    338            o           1259    27663 #   content_content_alias_13b49817_like    INDEX     t   CREATE INDEX content_content_alias_13b49817_like ON public.content_content USING btree (alias varchar_pattern_ops);
 7   DROP INDEX public.content_content_alias_13b49817_like;
       public            torsion_prog    false    340            r           1259    27664 '   content_content_category_id_id_cb631ab4    INDEX     m   CREATE INDEX content_content_category_id_id_cb631ab4 ON public.content_content USING btree (category_id_id);
 ;   DROP INDEX public.content_content_category_id_id_cb631ab4;
       public            torsion_prog    false    340                       1259    27694 +   content_contentimage_content_id_id_4059c94d    INDEX     u   CREATE INDEX content_contentimage_content_id_id_4059c94d ON public.content_contentimage USING btree (content_id_id);
 ?   DROP INDEX public.content_contentimage_content_id_id_4059c94d;
       public            torsion_prog    false    348            {           1259    27687 )   content_ratingcontent_content_id_a957ba84    INDEX     q   CREATE INDEX content_ratingcontent_content_id_a957ba84 ON public.content_ratingcontent USING btree (content_id);
 =   DROP INDEX public.content_ratingcontent_content_id_a957ba84;
       public            torsion_prog    false    346            ~           1259    27688 &   content_ratingcontent_star_id_7f47e585    INDEX     k   CREATE INDEX content_ratingcontent_star_id_7f47e585 ON public.content_ratingcontent USING btree (star_id);
 :   DROP INDEX public.content_ratingcontent_star_id_7f47e585;
       public            torsion_prog    false    346            w           1259    27675 )   content_reviewcontent_content_id_9d5ea797    INDEX     q   CREATE INDEX content_reviewcontent_content_id_9d5ea797 ON public.content_reviewcontent USING btree (content_id);
 =   DROP INDEX public.content_reviewcontent_content_id_9d5ea797;
       public            torsion_prog    false    344            x           1259    27676 (   content_reviewcontent_parent_id_7a1eb628    INDEX     o   CREATE INDEX content_reviewcontent_parent_id_7a1eb628 ON public.content_reviewcontent USING btree (parent_id);
 <   DROP INDEX public.content_reviewcontent_parent_id_7a1eb628;
       public            torsion_prog    false    344            �           1259    26760 2   customer_communicationeventtype_code_984beacb_like    INDEX     �   CREATE INDEX customer_communicationeventtype_code_984beacb_like ON public.communication_communicationeventtype USING btree (code varchar_pattern_ops);
 F   DROP INDEX public.customer_communicationeventtype_code_984beacb_like;
       public            torsion_prog    false    264            �           1259    26766    customer_email_user_id_a69ad588    INDEX     b   CREATE INDEX customer_email_user_id_a69ad588 ON public.communication_email USING btree (user_id);
 3   DROP INDEX public.customer_email_user_id_a69ad588;
       public            torsion_prog    false    266            �           1259    27586 (   customer_notification_date_sent_9b6baeda    INDEX     t   CREATE INDEX customer_notification_date_sent_9b6baeda ON public.communication_notification USING btree (date_sent);
 <   DROP INDEX public.customer_notification_date_sent_9b6baeda;
       public            torsion_prog    false    268            �           1259    26777 +   customer_notification_recipient_id_d99de5c8    INDEX     z   CREATE INDEX customer_notification_recipient_id_d99de5c8 ON public.communication_notification USING btree (recipient_id);
 ?   DROP INDEX public.customer_notification_recipient_id_d99de5c8;
       public            torsion_prog    false    268            �           1259    26778 (   customer_notification_sender_id_affa1632    INDEX     t   CREATE INDEX customer_notification_sender_id_affa1632 ON public.communication_notification USING btree (sender_id);
 <   DROP INDEX public.customer_notification_sender_id_affa1632;
       public            torsion_prog    false    268            �           1259    27580 $   customer_productalert_email_e5f35f45    INDEX     g   CREATE INDEX customer_productalert_email_e5f35f45 ON public.customer_productalert USING btree (email);
 8   DROP INDEX public.customer_productalert_email_e5f35f45;
       public            torsion_prog    false    270            �           1259    27579 )   customer_productalert_email_e5f35f45_like    INDEX     �   CREATE INDEX customer_productalert_email_e5f35f45_like ON public.customer_productalert USING btree (email varchar_pattern_ops);
 =   DROP INDEX public.customer_productalert_email_e5f35f45_like;
       public            torsion_prog    false    270            �           1259    26791 "   customer_productalert_key_a26f3bdc    INDEX     c   CREATE INDEX customer_productalert_key_a26f3bdc ON public.customer_productalert USING btree (key);
 6   DROP INDEX public.customer_productalert_key_a26f3bdc;
       public            torsion_prog    false    270            �           1259    26792 '   customer_productalert_key_a26f3bdc_like    INDEX     |   CREATE INDEX customer_productalert_key_a26f3bdc_like ON public.customer_productalert USING btree (key varchar_pattern_ops);
 ;   DROP INDEX public.customer_productalert_key_a26f3bdc_like;
       public            torsion_prog    false    270            �           1259    26793 )   customer_productalert_product_id_7e529a41    INDEX     q   CREATE INDEX customer_productalert_product_id_7e529a41 ON public.customer_productalert USING btree (product_id);
 =   DROP INDEX public.customer_productalert_product_id_7e529a41;
       public            torsion_prog    false    270            �           1259    26794 &   customer_productalert_user_id_677ad6d6    INDEX     k   CREATE INDEX customer_productalert_user_id_677ad6d6 ON public.customer_productalert USING btree (user_id);
 :   DROP INDEX public.customer_productalert_user_id_677ad6d6;
       public            torsion_prog    false    270            �           1259    26262 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            torsion_prog    false    216            �           1259    26263 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            torsion_prog    false    216            �           1259    27728 *   django_flatpage_sites_flatpage_id_078bbc8b    INDEX     s   CREATE INDEX django_flatpage_sites_flatpage_id_078bbc8b ON public.django_flatpage_sites USING btree (flatpage_id);
 >   DROP INDEX public.django_flatpage_sites_flatpage_id_078bbc8b;
       public            torsion_prog    false    352            �           1259    27729 &   django_flatpage_sites_site_id_bfd8ea84    INDEX     k   CREATE INDEX django_flatpage_sites_site_id_bfd8ea84 ON public.django_flatpage_sites USING btree (site_id);
 :   DROP INDEX public.django_flatpage_sites_site_id_bfd8ea84;
       public            torsion_prog    false    352            �           1259    27714    django_flatpage_url_41612362    INDEX     W   CREATE INDEX django_flatpage_url_41612362 ON public.django_flatpage USING btree (url);
 0   DROP INDEX public.django_flatpage_url_41612362;
       public            torsion_prog    false    350            �           1259    27715 !   django_flatpage_url_41612362_like    INDEX     p   CREATE INDEX django_flatpage_url_41612362_like ON public.django_flatpage USING btree (url varchar_pattern_ops);
 5   DROP INDEX public.django_flatpage_url_41612362_like;
       public            torsion_prog    false    350            �           1259    27906 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            torsion_prog    false    369            �           1259    27905 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            torsion_prog    false    369            m           1259    28024     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            torsion_prog    false    252            �           1259    28205 %   novaposhta_warehouse_address_3d72893f    INDEX     i   CREATE INDEX novaposhta_warehouse_address_3d72893f ON public.novaposhta_warehouse USING btree (address);
 9   DROP INDEX public.novaposhta_warehouse_address_3d72893f;
       public            torsion_prog    false    387            �           1259    28206 *   novaposhta_warehouse_address_3d72893f_like    INDEX     �   CREATE INDEX novaposhta_warehouse_address_3d72893f_like ON public.novaposhta_warehouse USING btree (address varchar_pattern_ops);
 >   DROP INDEX public.novaposhta_warehouse_address_3d72893f_like;
       public            torsion_prog    false    387            �           1259    28211 (   novaposhta_warehouse_address_en_9261a2e7    INDEX     o   CREATE INDEX novaposhta_warehouse_address_en_9261a2e7 ON public.novaposhta_warehouse USING btree (address_en);
 <   DROP INDEX public.novaposhta_warehouse_address_en_9261a2e7;
       public            torsion_prog    false    387            �           1259    28212 -   novaposhta_warehouse_address_en_9261a2e7_like    INDEX     �   CREATE INDEX novaposhta_warehouse_address_en_9261a2e7_like ON public.novaposhta_warehouse USING btree (address_en varchar_pattern_ops);
 A   DROP INDEX public.novaposhta_warehouse_address_en_9261a2e7_like;
       public            torsion_prog    false    387            �           1259    28207 (   novaposhta_warehouse_address_ru_f8f6d396    INDEX     o   CREATE INDEX novaposhta_warehouse_address_ru_f8f6d396 ON public.novaposhta_warehouse USING btree (address_ru);
 <   DROP INDEX public.novaposhta_warehouse_address_ru_f8f6d396;
       public            torsion_prog    false    387            �           1259    28208 -   novaposhta_warehouse_address_ru_f8f6d396_like    INDEX     �   CREATE INDEX novaposhta_warehouse_address_ru_f8f6d396_like ON public.novaposhta_warehouse USING btree (address_ru varchar_pattern_ops);
 A   DROP INDEX public.novaposhta_warehouse_address_ru_f8f6d396_like;
       public            torsion_prog    false    387            �           1259    28213 (   novaposhta_warehouse_address_uk_43dc2688    INDEX     o   CREATE INDEX novaposhta_warehouse_address_uk_43dc2688 ON public.novaposhta_warehouse USING btree (address_uk);
 <   DROP INDEX public.novaposhta_warehouse_address_uk_43dc2688;
       public            torsion_prog    false    387            �           1259    28214 -   novaposhta_warehouse_address_uk_43dc2688_like    INDEX     �   CREATE INDEX novaposhta_warehouse_address_uk_43dc2688_like ON public.novaposhta_warehouse USING btree (address_uk varchar_pattern_ops);
 A   DROP INDEX public.novaposhta_warehouse_address_uk_43dc2688_like;
       public            torsion_prog    false    387            �           1259    28203 #   novaposhta_warehouse_title_c087ab1a    INDEX     e   CREATE INDEX novaposhta_warehouse_title_c087ab1a ON public.novaposhta_warehouse USING btree (title);
 7   DROP INDEX public.novaposhta_warehouse_title_c087ab1a;
       public            torsion_prog    false    387            �           1259    28204 (   novaposhta_warehouse_title_c087ab1a_like    INDEX     ~   CREATE INDEX novaposhta_warehouse_title_c087ab1a_like ON public.novaposhta_warehouse USING btree (title varchar_pattern_ops);
 <   DROP INDEX public.novaposhta_warehouse_title_c087ab1a_like;
       public            torsion_prog    false    387            �           1259    28215 &   novaposhta_warehouse_title_en_cc470546    INDEX     k   CREATE INDEX novaposhta_warehouse_title_en_cc470546 ON public.novaposhta_warehouse USING btree (title_en);
 :   DROP INDEX public.novaposhta_warehouse_title_en_cc470546;
       public            torsion_prog    false    387            �           1259    28216 +   novaposhta_warehouse_title_en_cc470546_like    INDEX     �   CREATE INDEX novaposhta_warehouse_title_en_cc470546_like ON public.novaposhta_warehouse USING btree (title_en varchar_pattern_ops);
 ?   DROP INDEX public.novaposhta_warehouse_title_en_cc470546_like;
       public            torsion_prog    false    387            �           1259    28209 &   novaposhta_warehouse_title_ru_540bc670    INDEX     k   CREATE INDEX novaposhta_warehouse_title_ru_540bc670 ON public.novaposhta_warehouse USING btree (title_ru);
 :   DROP INDEX public.novaposhta_warehouse_title_ru_540bc670;
       public            torsion_prog    false    387            �           1259    28210 +   novaposhta_warehouse_title_ru_540bc670_like    INDEX     �   CREATE INDEX novaposhta_warehouse_title_ru_540bc670_like ON public.novaposhta_warehouse USING btree (title_ru varchar_pattern_ops);
 ?   DROP INDEX public.novaposhta_warehouse_title_ru_540bc670_like;
       public            torsion_prog    false    387            �           1259    28217 &   novaposhta_warehouse_title_uk_a631ccc2    INDEX     k   CREATE INDEX novaposhta_warehouse_title_uk_a631ccc2 ON public.novaposhta_warehouse USING btree (title_uk);
 :   DROP INDEX public.novaposhta_warehouse_title_uk_a631ccc2;
       public            torsion_prog    false    387            �           1259    28218 +   novaposhta_warehouse_title_uk_a631ccc2_like    INDEX     �   CREATE INDEX novaposhta_warehouse_title_uk_a631ccc2_like ON public.novaposhta_warehouse USING btree (title_uk varchar_pattern_ops);
 ?   DROP INDEX public.novaposhta_warehouse_title_uk_a631ccc2_like;
       public            torsion_prog    false    387                       1259    27411    offer_benefit_range_id_ab19c5ab    INDEX     ]   CREATE INDEX offer_benefit_range_id_ab19c5ab ON public.offer_benefit USING btree (range_id);
 3   DROP INDEX public.offer_benefit_range_id_ab19c5ab;
       public            torsion_prog    false    308                       1259    27410 !   offer_condition_range_id_b023a2aa    INDEX     a   CREATE INDEX offer_condition_range_id_b023a2aa ON public.offer_condition USING btree (range_id);
 5   DROP INDEX public.offer_condition_range_id_b023a2aa;
       public            torsion_prog    false    310                       1259    27339 *   offer_conditionaloffer_benefit_id_f43f68b5    INDEX     s   CREATE INDEX offer_conditionaloffer_benefit_id_f43f68b5 ON public.offer_conditionaloffer USING btree (benefit_id);
 >   DROP INDEX public.offer_conditionaloffer_benefit_id_f43f68b5;
       public            torsion_prog    false    312                       1259    27340 ,   offer_conditionaloffer_condition_id_e6baa945    INDEX     w   CREATE INDEX offer_conditionaloffer_condition_id_e6baa945 ON public.offer_conditionaloffer USING btree (condition_id);
 @   DROP INDEX public.offer_conditionaloffer_condition_id_e6baa945;
       public            torsion_prog    false    312                       1259    27337 )   offer_conditionaloffer_name_340601c2_like    INDEX     �   CREATE INDEX offer_conditionaloffer_name_340601c2_like ON public.offer_conditionaloffer USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.offer_conditionaloffer_name_340601c2_like;
       public            torsion_prog    false    312                       1259    27741 (   offer_conditionaloffer_priority_4c2fc582    INDEX     o   CREATE INDEX offer_conditionaloffer_priority_4c2fc582 ON public.offer_conditionaloffer USING btree (priority);
 <   DROP INDEX public.offer_conditionaloffer_priority_4c2fc582;
       public            torsion_prog    false    312                       1259    27338 )   offer_conditionaloffer_slug_e4649c01_like    INDEX     �   CREATE INDEX offer_conditionaloffer_slug_e4649c01_like ON public.offer_conditionaloffer USING btree (slug varchar_pattern_ops);
 =   DROP INDEX public.offer_conditionaloffer_slug_e4649c01_like;
       public            torsion_prog    false    312            ,           1259    27357 ,   offer_range_classes_productclass_id_6f6de46d    INDEX     w   CREATE INDEX offer_range_classes_productclass_id_6f6de46d ON public.offer_range_classes USING btree (productclass_id);
 @   DROP INDEX public.offer_range_classes_productclass_id_6f6de46d;
       public            torsion_prog    false    316            -           1259    27356 %   offer_range_classes_range_id_7d3e573e    INDEX     i   CREATE INDEX offer_range_classes_range_id_7d3e573e ON public.offer_range_classes USING btree (range_id);
 9   DROP INDEX public.offer_range_classes_range_id_7d3e573e;
       public            torsion_prog    false    316            2           1259    27371 1   offer_range_excluded_products_product_id_78c49bfc    INDEX     �   CREATE INDEX offer_range_excluded_products_product_id_78c49bfc ON public.offer_range_excluded_products USING btree (product_id);
 E   DROP INDEX public.offer_range_excluded_products_product_id_78c49bfc;
       public            torsion_prog    false    318            3           1259    27370 /   offer_range_excluded_products_range_id_cce4a032    INDEX     }   CREATE INDEX offer_range_excluded_products_range_id_cce4a032 ON public.offer_range_excluded_products USING btree (range_id);
 C   DROP INDEX public.offer_range_excluded_products_range_id_cce4a032;
       public            torsion_prog    false    318            8           1259    27385 4   offer_range_included_categories_category_id_c61569a5    INDEX     �   CREATE INDEX offer_range_included_categories_category_id_c61569a5 ON public.offer_range_included_categories USING btree (category_id);
 H   DROP INDEX public.offer_range_included_categories_category_id_c61569a5;
       public            torsion_prog    false    320            ;           1259    27384 1   offer_range_included_categories_range_id_1b616138    INDEX     �   CREATE INDEX offer_range_included_categories_range_id_1b616138 ON public.offer_range_included_categories USING btree (range_id);
 E   DROP INDEX public.offer_range_included_categories_range_id_1b616138;
       public            torsion_prog    false    320                       1259    27341    offer_range_name_c72a602f_like    INDEX     j   CREATE INDEX offer_range_name_c72a602f_like ON public.offer_range USING btree (name varchar_pattern_ops);
 2   DROP INDEX public.offer_range_name_c72a602f_like;
       public            torsion_prog    false    314            $           1259    27343 %   offer_range_proxy_class_3c9917c6_like    INDEX     x   CREATE INDEX offer_range_proxy_class_3c9917c6_like ON public.offer_range USING btree (proxy_class varchar_pattern_ops);
 9   DROP INDEX public.offer_range_proxy_class_3c9917c6_like;
       public            torsion_prog    false    314            '           1259    27342    offer_range_slug_ce39e53b_like    INDEX     j   CREATE INDEX offer_range_slug_ce39e53b_like ON public.offer_range USING btree (slug varchar_pattern_ops);
 2   DROP INDEX public.offer_range_slug_ce39e53b_like;
       public            torsion_prog    false    314            >           1259    27396 &   offer_rangeproduct_product_id_723b3ea3    INDEX     k   CREATE INDEX offer_rangeproduct_product_id_723b3ea3 ON public.offer_rangeproduct USING btree (product_id);
 :   DROP INDEX public.offer_rangeproduct_product_id_723b3ea3;
       public            torsion_prog    false    322            ?           1259    27397 $   offer_rangeproduct_range_id_ee358495    INDEX     g   CREATE INDEX offer_rangeproduct_range_id_ee358495 ON public.offer_rangeproduct USING btree (range_id);
 8   DROP INDEX public.offer_rangeproduct_range_id_ee358495;
       public            torsion_prog    false    322            B           1259    27742 3   offer_rangeproductfileupload_date_uploaded_f0a4f9ae    INDEX     �   CREATE INDEX offer_rangeproductfileupload_date_uploaded_f0a4f9ae ON public.offer_rangeproductfileupload USING btree (date_uploaded);
 G   DROP INDEX public.offer_rangeproductfileupload_date_uploaded_f0a4f9ae;
       public            torsion_prog    false    324            E           1259    27408 .   offer_rangeproductfileupload_range_id_c055ebf8    INDEX     {   CREATE INDEX offer_rangeproductfileupload_range_id_c055ebf8 ON public.offer_rangeproductfileupload USING btree (range_id);
 B   DROP INDEX public.offer_rangeproductfileupload_range_id_c055ebf8;
       public            torsion_prog    false    324            F           1259    27409 4   offer_rangeproductfileupload_uploaded_by_id_c01a3250    INDEX     �   CREATE INDEX offer_rangeproductfileupload_uploaded_by_id_c01a3250 ON public.offer_rangeproductfileupload USING btree (uploaded_by_id);
 H   DROP INDEX public.offer_rangeproductfileupload_uploaded_by_id_c01a3250;
       public            torsion_prog    false    324            �           1259    27097 (   order_billingaddress_country_id_17f57dca    INDEX     o   CREATE INDEX order_billingaddress_country_id_17f57dca ON public.order_billingaddress USING btree (country_id);
 <   DROP INDEX public.order_billingaddress_country_id_17f57dca;
       public            torsion_prog    false    278            �           1259    27098 -   order_billingaddress_country_id_17f57dca_like    INDEX     �   CREATE INDEX order_billingaddress_country_id_17f57dca_like ON public.order_billingaddress USING btree (country_id varchar_pattern_ops);
 A   DROP INDEX public.order_billingaddress_country_id_17f57dca_like;
       public            torsion_prog    false    278            �           1259    27575 .   order_communicationevent_date_created_ce404d62    INDEX     {   CREATE INDEX order_communicationevent_date_created_ce404d62 ON public.order_communicationevent USING btree (date_created);
 B   DROP INDEX public.order_communicationevent_date_created_ce404d62;
       public            torsion_prog    false    280            �           1259    27104 /   order_communicationevent_event_type_id_4bc9ee29    INDEX     }   CREATE INDEX order_communicationevent_event_type_id_4bc9ee29 ON public.order_communicationevent USING btree (event_type_id);
 C   DROP INDEX public.order_communicationevent_event_type_id_4bc9ee29;
       public            torsion_prog    false    280            �           1259    27207 *   order_communicationevent_order_id_94e784ac    INDEX     s   CREATE INDEX order_communicationevent_order_id_94e784ac ON public.order_communicationevent USING btree (order_id);
 >   DROP INDEX public.order_communicationevent_order_id_94e784ac;
       public            torsion_prog    false    280            �           1259    27203    order_line_order_id_b9148391    INDEX     W   CREATE INDEX order_line_order_id_b9148391 ON public.order_line USING btree (order_id);
 0   DROP INDEX public.order_line_order_id_b9148391;
       public            torsion_prog    false    282            �           1259    27204    order_line_partner_id_258a2fb9    INDEX     [   CREATE INDEX order_line_partner_id_258a2fb9 ON public.order_line USING btree (partner_id);
 2   DROP INDEX public.order_line_partner_id_258a2fb9;
       public            torsion_prog    false    282            �           1259    27205    order_line_product_id_e620902d    INDEX     [   CREATE INDEX order_line_product_id_e620902d ON public.order_line USING btree (product_id);
 2   DROP INDEX public.order_line_product_id_e620902d;
       public            torsion_prog    false    282            �           1259    27206 "   order_line_stockrecord_id_1d65aff5    INDEX     c   CREATE INDEX order_line_stockrecord_id_1d65aff5 ON public.order_line USING btree (stockrecord_id);
 6   DROP INDEX public.order_line_stockrecord_id_1d65aff5;
       public            torsion_prog    false    282            �           1259    27115 $   order_lineattribute_line_id_adf6dd87    INDEX     g   CREATE INDEX order_lineattribute_line_id_adf6dd87 ON public.order_lineattribute USING btree (line_id);
 8   DROP INDEX public.order_lineattribute_line_id_adf6dd87;
       public            torsion_prog    false    284            �           1259    27116 &   order_lineattribute_option_id_b54d597c    INDEX     k   CREATE INDEX order_lineattribute_option_id_b54d597c ON public.order_lineattribute USING btree (option_id);
 :   DROP INDEX public.order_lineattribute_option_id_b54d597c;
       public            torsion_prog    false    284            �           1259    27122     order_lineprice_line_id_2de52446    INDEX     _   CREATE INDEX order_lineprice_line_id_2de52446 ON public.order_lineprice USING btree (line_id);
 4   DROP INDEX public.order_lineprice_line_id_2de52446;
       public            torsion_prog    false    286            �           1259    27202 !   order_lineprice_order_id_66792e56    INDEX     a   CREATE INDEX order_lineprice_order_id_66792e56 ON public.order_lineprice USING btree (order_id);
 5   DROP INDEX public.order_lineprice_order_id_66792e56;
       public            torsion_prog    false    286            �           1259    27135    order_order_basket_id_8b0acbb2    INDEX     [   CREATE INDEX order_order_basket_id_8b0acbb2 ON public.order_order USING btree (basket_id);
 2   DROP INDEX public.order_order_basket_id_8b0acbb2;
       public            torsion_prog    false    288            �           1259    27136 '   order_order_billing_address_id_8fe537cf    INDEX     m   CREATE INDEX order_order_billing_address_id_8fe537cf ON public.order_order USING btree (billing_address_id);
 ;   DROP INDEX public.order_order_billing_address_id_8fe537cf;
       public            torsion_prog    false    288            �           1259    27134     order_order_date_placed_506a9365    INDEX     _   CREATE INDEX order_order_date_placed_506a9365 ON public.order_order USING btree (date_placed);
 4   DROP INDEX public.order_order_date_placed_506a9365;
       public            torsion_prog    false    288            �           1259    27133     order_order_number_49f06f1b_like    INDEX     n   CREATE INDEX order_order_number_49f06f1b_like ON public.order_order USING btree (number varchar_pattern_ops);
 4   DROP INDEX public.order_order_number_49f06f1b_like;
       public            torsion_prog    false    288            �           1259    27199 (   order_order_shipping_address_id_57e64931    INDEX     o   CREATE INDEX order_order_shipping_address_id_57e64931 ON public.order_order USING btree (shipping_address_id);
 <   DROP INDEX public.order_order_shipping_address_id_57e64931;
       public            torsion_prog    false    288            �           1259    27200    order_order_site_id_e27f3526    INDEX     W   CREATE INDEX order_order_site_id_e27f3526 ON public.order_order USING btree (site_id);
 0   DROP INDEX public.order_order_site_id_e27f3526;
       public            torsion_prog    false    288            �           1259    27201    order_order_user_id_7cf9bc2b    INDEX     W   CREATE INDEX order_order_user_id_7cf9bc2b ON public.order_order USING btree (user_id);
 0   DROP INDEX public.order_order_user_id_7cf9bc2b;
       public            torsion_prog    false    288            �           1259    27142 '   order_orderdiscount_offer_name_706d6119    INDEX     m   CREATE INDEX order_orderdiscount_offer_name_706d6119 ON public.order_orderdiscount USING btree (offer_name);
 ;   DROP INDEX public.order_orderdiscount_offer_name_706d6119;
       public            torsion_prog    false    290            �           1259    27143 ,   order_orderdiscount_offer_name_706d6119_like    INDEX     �   CREATE INDEX order_orderdiscount_offer_name_706d6119_like ON public.order_orderdiscount USING btree (offer_name varchar_pattern_ops);
 @   DROP INDEX public.order_orderdiscount_offer_name_706d6119_like;
       public            torsion_prog    false    290            �           1259    27146 %   order_orderdiscount_order_id_bc91e123    INDEX     i   CREATE INDEX order_orderdiscount_order_id_bc91e123 ON public.order_orderdiscount USING btree (order_id);
 9   DROP INDEX public.order_orderdiscount_order_id_bc91e123;
       public            torsion_prog    false    290            �           1259    27144 )   order_orderdiscount_voucher_code_6ee4f360    INDEX     q   CREATE INDEX order_orderdiscount_voucher_code_6ee4f360 ON public.order_orderdiscount USING btree (voucher_code);
 =   DROP INDEX public.order_orderdiscount_voucher_code_6ee4f360;
       public            torsion_prog    false    290            �           1259    27145 .   order_orderdiscount_voucher_code_6ee4f360_like    INDEX     �   CREATE INDEX order_orderdiscount_voucher_code_6ee4f360_like ON public.order_orderdiscount USING btree (voucher_code varchar_pattern_ops);
 B   DROP INDEX public.order_orderdiscount_voucher_code_6ee4f360_like;
       public            torsion_prog    false    290            �           1259    27157 !   order_ordernote_order_id_7d97583d    INDEX     a   CREATE INDEX order_ordernote_order_id_7d97583d ON public.order_ordernote USING btree (order_id);
 5   DROP INDEX public.order_ordernote_order_id_7d97583d;
       public            torsion_prog    false    292            �           1259    27158     order_ordernote_user_id_48d7a672    INDEX     _   CREATE INDEX order_ordernote_user_id_48d7a672 ON public.order_ordernote USING btree (user_id);
 4   DROP INDEX public.order_ordernote_user_id_48d7a672;
       public            torsion_prog    false    292            f           1259    27576 -   order_orderstatuschange_date_created_a5107b93    INDEX     y   CREATE INDEX order_orderstatuschange_date_created_a5107b93 ON public.order_orderstatuschange USING btree (date_created);
 A   DROP INDEX public.order_orderstatuschange_date_created_a5107b93;
       public            torsion_prog    false    336            g           1259    27574 )   order_orderstatuschange_order_id_43efdbe5    INDEX     q   CREATE INDEX order_orderstatuschange_order_id_43efdbe5 ON public.order_orderstatuschange USING btree (order_id);
 =   DROP INDEX public.order_orderstatuschange_order_id_43efdbe5;
       public            torsion_prog    false    336            �           1259    27577 (   order_paymentevent_date_created_05d8c079    INDEX     o   CREATE INDEX order_paymentevent_date_created_05d8c079 ON public.order_paymentevent USING btree (date_created);
 <   DROP INDEX public.order_paymentevent_date_created_05d8c079;
       public            torsion_prog    false    294            �           1259    27196 )   order_paymentevent_event_type_id_568c7161    INDEX     q   CREATE INDEX order_paymentevent_event_type_id_568c7161 ON public.order_paymentevent USING btree (event_type_id);
 =   DROP INDEX public.order_paymentevent_event_type_id_568c7161;
       public            torsion_prog    false    294            �           1259    27197 $   order_paymentevent_order_id_395b3e82    INDEX     g   CREATE INDEX order_paymentevent_order_id_395b3e82 ON public.order_paymentevent USING btree (order_id);
 8   DROP INDEX public.order_paymentevent_order_id_395b3e82;
       public            torsion_prog    false    294            �           1259    27198 -   order_paymentevent_shipping_event_id_213dcfb8    INDEX     y   CREATE INDEX order_paymentevent_shipping_event_id_213dcfb8 ON public.order_paymentevent USING btree (shipping_event_id);
 A   DROP INDEX public.order_paymentevent_shipping_event_id_213dcfb8;
       public            torsion_prog    false    294            �           1259    27169 ,   order_paymenteventquantity_event_id_a540165a    INDEX     w   CREATE INDEX order_paymenteventquantity_event_id_a540165a ON public.order_paymenteventquantity USING btree (event_id);
 @   DROP INDEX public.order_paymenteventquantity_event_id_a540165a;
       public            torsion_prog    false    296            �           1259    27170 +   order_paymenteventquantity_line_id_df44b021    INDEX     u   CREATE INDEX order_paymenteventquantity_line_id_df44b021 ON public.order_paymenteventquantity USING btree (line_id);
 ?   DROP INDEX public.order_paymenteventquantity_line_id_df44b021;
       public            torsion_prog    false    296            �           1259    27172 )   order_paymenteventtype_code_19e3e888_like    INDEX     �   CREATE INDEX order_paymenteventtype_code_19e3e888_like ON public.order_paymenteventtype USING btree (code varchar_pattern_ops);
 =   DROP INDEX public.order_paymenteventtype_code_19e3e888_like;
       public            torsion_prog    false    298            �           1259    27171 )   order_paymenteventtype_name_e4bcca28_like    INDEX     �   CREATE INDEX order_paymenteventtype_name_e4bcca28_like ON public.order_paymenteventtype USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.order_paymenteventtype_name_e4bcca28_like;
       public            torsion_prog    false    298            �           1259    27178 )   order_shippingaddress_country_id_29abf9a0    INDEX     q   CREATE INDEX order_shippingaddress_country_id_29abf9a0 ON public.order_shippingaddress USING btree (country_id);
 =   DROP INDEX public.order_shippingaddress_country_id_29abf9a0;
       public            torsion_prog    false    300            �           1259    27179 .   order_shippingaddress_country_id_29abf9a0_like    INDEX     �   CREATE INDEX order_shippingaddress_country_id_29abf9a0_like ON public.order_shippingaddress USING btree (country_id varchar_pattern_ops);
 B   DROP INDEX public.order_shippingaddress_country_id_29abf9a0_like;
       public            torsion_prog    false    300            �           1259    27578 )   order_shippingevent_date_created_74c4a6fa    INDEX     q   CREATE INDEX order_shippingevent_date_created_74c4a6fa ON public.order_shippingevent USING btree (date_created);
 =   DROP INDEX public.order_shippingevent_date_created_74c4a6fa;
       public            torsion_prog    false    302            �           1259    27194 *   order_shippingevent_event_type_id_9f1efb20    INDEX     s   CREATE INDEX order_shippingevent_event_type_id_9f1efb20 ON public.order_shippingevent USING btree (event_type_id);
 >   DROP INDEX public.order_shippingevent_event_type_id_9f1efb20;
       public            torsion_prog    false    302            �           1259    27195 %   order_shippingevent_order_id_8c031fb6    INDEX     i   CREATE INDEX order_shippingevent_order_id_8c031fb6 ON public.order_shippingevent USING btree (order_id);
 9   DROP INDEX public.order_shippingevent_order_id_8c031fb6;
       public            torsion_prog    false    302                        1259    27190 -   order_shippingeventquantity_event_id_1c7fb9c7    INDEX     y   CREATE INDEX order_shippingeventquantity_event_id_1c7fb9c7 ON public.order_shippingeventquantity USING btree (event_id);
 A   DROP INDEX public.order_shippingeventquantity_event_id_1c7fb9c7;
       public            torsion_prog    false    304                       1259    27191 ,   order_shippingeventquantity_line_id_3b089ee0    INDEX     w   CREATE INDEX order_shippingeventquantity_line_id_3b089ee0 ON public.order_shippingeventquantity USING btree (line_id);
 @   DROP INDEX public.order_shippingeventquantity_line_id_3b089ee0;
       public            torsion_prog    false    304                       1259    27193 *   order_shippingeventtype_code_db3854de_like    INDEX     �   CREATE INDEX order_shippingeventtype_code_db3854de_like ON public.order_shippingeventtype USING btree (code varchar_pattern_ops);
 >   DROP INDEX public.order_shippingeventtype_code_db3854de_like;
       public            torsion_prog    false    306            	           1259    27192 *   order_shippingeventtype_name_6d9a48a2_like    INDEX     �   CREATE INDEX order_shippingeventtype_name_6d9a48a2_like ON public.order_shippingeventtype USING btree (name varchar_pattern_ops);
 >   DROP INDEX public.order_shippingeventtype_name_6d9a48a2_like;
       public            torsion_prog    false    306            �           1259    27756 !   order_surcharge_order_id_5c0a94f5    INDEX     a   CREATE INDEX order_surcharge_order_id_5c0a94f5 ON public.order_surcharge USING btree (order_id);
 5   DROP INDEX public.order_surcharge_order_id_5c0a94f5;
       public            torsion_prog    false    354            �           1259    27767 !   oscarapi_apikey_key_0481646b_like    INDEX     p   CREATE INDEX oscarapi_apikey_key_0481646b_like ON public.oscarapi_apikey USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.oscarapi_apikey_key_0481646b_like;
       public            torsion_prog    false    356            r           1259    26675 "   partner_partner_code_13d0debd_like    INDEX     r   CREATE INDEX partner_partner_code_13d0debd_like ON public.partner_partner USING btree (code varchar_pattern_ops);
 6   DROP INDEX public.partner_partner_code_13d0debd_like;
       public            torsion_prog    false    254            u           1259    27778    partner_partner_name_caa0c2ee    INDEX     Y   CREATE INDEX partner_partner_name_caa0c2ee ON public.partner_partner USING btree (name);
 1   DROP INDEX public.partner_partner_name_caa0c2ee;
       public            torsion_prog    false    254            v           1259    27779 "   partner_partner_name_caa0c2ee_like    INDEX     r   CREATE INDEX partner_partner_name_caa0c2ee_like ON public.partner_partner USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.partner_partner_name_caa0c2ee_like;
       public            torsion_prog    false    254            y           1259    26688 )   partner_partner_users_partner_id_1883dfd9    INDEX     q   CREATE INDEX partner_partner_users_partner_id_1883dfd9 ON public.partner_partner_users USING btree (partner_id);
 =   DROP INDEX public.partner_partner_users_partner_id_1883dfd9;
       public            torsion_prog    false    256            ~           1259    26689 &   partner_partner_users_user_id_d75d6e40    INDEX     k   CREATE INDEX partner_partner_users_user_id_d75d6e40 ON public.partner_partner_users USING btree (user_id);
 :   DROP INDEX public.partner_partner_users_user_id_d75d6e40;
       public            torsion_prog    false    256                       1259    26700 *   partner_partneraddress_country_id_02c4f979    INDEX     s   CREATE INDEX partner_partneraddress_country_id_02c4f979 ON public.partner_partneraddress USING btree (country_id);
 >   DROP INDEX public.partner_partneraddress_country_id_02c4f979;
       public            torsion_prog    false    258            �           1259    26701 /   partner_partneraddress_country_id_02c4f979_like    INDEX     �   CREATE INDEX partner_partneraddress_country_id_02c4f979_like ON public.partner_partneraddress USING btree (country_id varchar_pattern_ops);
 C   DROP INDEX public.partner_partneraddress_country_id_02c4f979_like;
       public            torsion_prog    false    258            �           1259    26702 *   partner_partneraddress_partner_id_59551b0a    INDEX     s   CREATE INDEX partner_partneraddress_partner_id_59551b0a ON public.partner_partneraddress USING btree (partner_id);
 >   DROP INDEX public.partner_partneraddress_partner_id_59551b0a;
       public            torsion_prog    false    258            �           1259    27780 (   partner_stockalert_date_created_832cf043    INDEX     o   CREATE INDEX partner_stockalert_date_created_832cf043 ON public.partner_stockalert USING btree (date_created);
 <   DROP INDEX public.partner_stockalert_date_created_832cf043;
       public            torsion_prog    false    260            �           1259    26716 *   partner_stockalert_stockrecord_id_68ad503a    INDEX     s   CREATE INDEX partner_stockalert_stockrecord_id_68ad503a ON public.partner_stockalert USING btree (stockrecord_id);
 >   DROP INDEX public.partner_stockalert_stockrecord_id_68ad503a;
       public            torsion_prog    false    260            �           1259    26713 )   partner_stockrecord_date_updated_e6ae5f14    INDEX     q   CREATE INDEX partner_stockrecord_date_updated_e6ae5f14 ON public.partner_stockrecord USING btree (date_updated);
 =   DROP INDEX public.partner_stockrecord_date_updated_e6ae5f14;
       public            torsion_prog    false    262            �           1259    26714 '   partner_stockrecord_partner_id_4155a586    INDEX     m   CREATE INDEX partner_stockrecord_partner_id_4155a586 ON public.partner_stockrecord USING btree (partner_id);
 ;   DROP INDEX public.partner_stockrecord_partner_id_4155a586;
       public            torsion_prog    false    262            �           1259    26715 '   partner_stockrecord_product_id_62fd9e45    INDEX     m   CREATE INDEX partner_stockrecord_product_id_62fd9e45 ON public.partner_stockrecord USING btree (product_id);
 ;   DROP INDEX public.partner_stockrecord_product_id_62fd9e45;
       public            torsion_prog    false    262            �           1259    27828 !   payment_bankcard_user_id_08e1d04c    INDEX     a   CREATE INDEX payment_bankcard_user_id_08e1d04c ON public.payment_bankcard USING btree (user_id);
 5   DROP INDEX public.payment_bankcard_user_id_08e1d04c;
       public            torsion_prog    false    358            �           1259    27834     payment_source_order_id_6b7f2215    INDEX     _   CREATE INDEX payment_source_order_id_6b7f2215 ON public.payment_source USING btree (order_id);
 4   DROP INDEX public.payment_source_order_id_6b7f2215;
       public            torsion_prog    false    360            �           1259    27842 &   payment_source_source_type_id_700828fe    INDEX     k   CREATE INDEX payment_source_source_type_id_700828fe ON public.payment_source USING btree (source_type_id);
 :   DROP INDEX public.payment_source_source_type_id_700828fe;
       public            torsion_prog    false    360            �           1259    27835 %   payment_sourcetype_code_e479088c_like    INDEX     x   CREATE INDEX payment_sourcetype_code_e479088c_like ON public.payment_sourcetype USING btree (code varchar_pattern_ops);
 9   DROP INDEX public.payment_sourcetype_code_e479088c_like;
       public            torsion_prog    false    362            �           1259    27843 )   payment_transaction_date_created_f887f6bc    INDEX     q   CREATE INDEX payment_transaction_date_created_f887f6bc ON public.payment_transaction USING btree (date_created);
 =   DROP INDEX public.payment_transaction_date_created_f887f6bc;
       public            torsion_prog    false    364            �           1259    27841 &   payment_transaction_source_id_c5ac31e8    INDEX     k   CREATE INDEX payment_transaction_source_id_c5ac31e8 ON public.payment_transaction USING btree (source_id);
 :   DROP INDEX public.payment_transaction_source_id_c5ac31e8;
       public            torsion_prog    false    364            �           1259    27877 *   reviews_productreview_delta_votes_bd8ffc87    INDEX     s   CREATE INDEX reviews_productreview_delta_votes_bd8ffc87 ON public.reviews_productreview USING btree (delta_votes);
 >   DROP INDEX public.reviews_productreview_delta_votes_bd8ffc87;
       public            torsion_prog    false    366            �           1259    27878 )   reviews_productreview_product_id_52e52a32    INDEX     q   CREATE INDEX reviews_productreview_product_id_52e52a32 ON public.reviews_productreview USING btree (product_id);
 =   DROP INDEX public.reviews_productreview_product_id_52e52a32;
       public            torsion_prog    false    366            �           1259    27879 &   reviews_productreview_user_id_8acb5ddd    INDEX     k   CREATE INDEX reviews_productreview_user_id_8acb5ddd ON public.reviews_productreview USING btree (user_id);
 :   DROP INDEX public.reviews_productreview_user_id_8acb5ddd;
       public            torsion_prog    false    366            �           1259    27890    reviews_vote_review_id_371b2d8d    INDEX     ]   CREATE INDEX reviews_vote_review_id_371b2d8d ON public.reviews_vote USING btree (review_id);
 3   DROP INDEX public.reviews_vote_review_id_371b2d8d;
       public            torsion_prog    false    368            �           1259    27891    reviews_vote_user_id_5fb87b53    INDEX     Y   CREATE INDEX reviews_vote_user_id_5fb87b53 ON public.reviews_vote USING btree (user_id);
 1   DROP INDEX public.reviews_vote_user_id_5fb87b53;
       public            torsion_prog    false    368            �           1259    27980 :   shipping_orderanditemcharg_orderanditemcharges_id_bf5bfee9    INDEX     �   CREATE INDEX shipping_orderanditemcharg_orderanditemcharges_id_bf5bfee9 ON public.shipping_orderanditemcharges_countries USING btree (orderanditemcharges_id);
 N   DROP INDEX public.shipping_orderanditemcharg_orderanditemcharges_id_bf5bfee9;
       public            torsion_prog    false    373            �           1259    27966 /   shipping_orderanditemcharges_code_cbeb9206_like    INDEX     �   CREATE INDEX shipping_orderanditemcharges_code_cbeb9206_like ON public.shipping_orderanditemcharges USING btree (code varchar_pattern_ops);
 C   DROP INDEX public.shipping_orderanditemcharges_code_cbeb9206_like;
       public            torsion_prog    false    371            �           1259    27981 :   shipping_orderanditemcharges_countries_country_id_30387f2e    INDEX     �   CREATE INDEX shipping_orderanditemcharges_countries_country_id_30387f2e ON public.shipping_orderanditemcharges_countries USING btree (country_id);
 N   DROP INDEX public.shipping_orderanditemcharges_countries_country_id_30387f2e;
       public            torsion_prog    false    373            �           1259    27982 ?   shipping_orderanditemcharges_countries_country_id_30387f2e_like    INDEX     �   CREATE INDEX shipping_orderanditemcharges_countries_country_id_30387f2e_like ON public.shipping_orderanditemcharges_countries USING btree (country_id varchar_pattern_ops);
 S   DROP INDEX public.shipping_orderanditemcharges_countries_country_id_30387f2e_like;
       public            torsion_prog    false    373            �           1259    27967 /   shipping_orderanditemcharges_name_c575f5bc_like    INDEX     �   CREATE INDEX shipping_orderanditemcharges_name_c575f5bc_like ON public.shipping_orderanditemcharges USING btree (name varchar_pattern_ops);
 C   DROP INDEX public.shipping_orderanditemcharges_name_c575f5bc_like;
       public            torsion_prog    false    371            �           1259    28000 &   shipping_weightband_method_id_b699a1ba    INDEX     k   CREATE INDEX shipping_weightband_method_id_b699a1ba ON public.shipping_weightband USING btree (method_id);
 :   DROP INDEX public.shipping_weightband_method_id_b699a1ba;
       public            torsion_prog    false    375            �           1259    28021 (   shipping_weightband_upper_limit_9edc5097    INDEX     o   CREATE INDEX shipping_weightband_upper_limit_9edc5097 ON public.shipping_weightband USING btree (upper_limit);
 <   DROP INDEX public.shipping_weightband_upper_limit_9edc5097;
       public            torsion_prog    false    375            �           1259    27983 '   shipping_weightbased_code_abff8e3d_like    INDEX     |   CREATE INDEX shipping_weightbased_code_abff8e3d_like ON public.shipping_weightbased USING btree (code varchar_pattern_ops);
 ;   DROP INDEX public.shipping_weightbased_code_abff8e3d_like;
       public            torsion_prog    false    377            �           1259    27998 2   shipping_weightbased_countries_country_id_06117384    INDEX     �   CREATE INDEX shipping_weightbased_countries_country_id_06117384 ON public.shipping_weightbased_countries USING btree (country_id);
 F   DROP INDEX public.shipping_weightbased_countries_country_id_06117384;
       public            torsion_prog    false    379            �           1259    27999 7   shipping_weightbased_countries_country_id_06117384_like    INDEX     �   CREATE INDEX shipping_weightbased_countries_country_id_06117384_like ON public.shipping_weightbased_countries USING btree (country_id varchar_pattern_ops);
 K   DROP INDEX public.shipping_weightbased_countries_country_id_06117384_like;
       public            torsion_prog    false    379            �           1259    27997 6   shipping_weightbased_countries_weightbased_id_93e3132f    INDEX     �   CREATE INDEX shipping_weightbased_countries_weightbased_id_93e3132f ON public.shipping_weightbased_countries USING btree (weightbased_id);
 J   DROP INDEX public.shipping_weightbased_countries_weightbased_id_93e3132f;
       public            torsion_prog    false    379            �           1259    27984 '   shipping_weightbased_name_ff8fabb8_like    INDEX     |   CREATE INDEX shipping_weightbased_name_ff8fabb8_like ON public.shipping_weightbased USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.shipping_weightbased_name_ff8fabb8_like;
       public            torsion_prog    false    377            G           1259    27440 "   voucher_voucher_code_43d30a18_like    INDEX     r   CREATE INDEX voucher_voucher_code_43d30a18_like ON public.voucher_voucher USING btree (code varchar_pattern_ops);
 6   DROP INDEX public.voucher_voucher_code_43d30a18_like;
       public            torsion_prog    false    326            J           1259    28078 %   voucher_voucher_end_datetime_db182297    INDEX     i   CREATE INDEX voucher_voucher_end_datetime_db182297 ON public.voucher_voucher USING btree (end_datetime);
 9   DROP INDEX public.voucher_voucher_end_datetime_db182297;
       public            torsion_prog    false    326            O           1259    27454 3   voucher_voucher_offers_conditionaloffer_id_f9682bfb    INDEX     �   CREATE INDEX voucher_voucher_offers_conditionaloffer_id_f9682bfb ON public.voucher_voucher_offers USING btree (conditionaloffer_id);
 G   DROP INDEX public.voucher_voucher_offers_conditionaloffer_id_f9682bfb;
       public            torsion_prog    false    328            R           1259    27453 *   voucher_voucher_offers_voucher_id_7f9c575d    INDEX     s   CREATE INDEX voucher_voucher_offers_voucher_id_7f9c575d ON public.voucher_voucher_offers USING btree (voucher_id);
 >   DROP INDEX public.voucher_voucher_offers_voucher_id_7f9c575d;
       public            torsion_prog    false    328            M           1259    28079 '   voucher_voucher_start_datetime_bfb7df84    INDEX     m   CREATE INDEX voucher_voucher_start_datetime_bfb7df84 ON public.voucher_voucher USING btree (start_datetime);
 ;   DROP INDEX public.voucher_voucher_start_datetime_bfb7df84;
       public            torsion_prog    false    326            N           1259    28071 '   voucher_voucher_voucher_set_id_17b96a54    INDEX     m   CREATE INDEX voucher_voucher_voucher_set_id_17b96a54 ON public.voucher_voucher USING btree (voucher_set_id);
 ;   DROP INDEX public.voucher_voucher_voucher_set_id_17b96a54;
       public            torsion_prog    false    326            U           1259    27470 ,   voucher_voucherapplication_order_id_30248a05    INDEX     w   CREATE INDEX voucher_voucherapplication_order_id_30248a05 ON public.voucher_voucherapplication USING btree (order_id);
 @   DROP INDEX public.voucher_voucherapplication_order_id_30248a05;
       public            torsion_prog    false    330            X           1259    27471 +   voucher_voucherapplication_user_id_df53a393    INDEX     u   CREATE INDEX voucher_voucherapplication_user_id_df53a393 ON public.voucher_voucherapplication USING btree (user_id);
 ?   DROP INDEX public.voucher_voucherapplication_user_id_df53a393;
       public            torsion_prog    false    330            Y           1259    27472 .   voucher_voucherapplication_voucher_id_5204edb7    INDEX     {   CREATE INDEX voucher_voucherapplication_voucher_id_5204edb7 ON public.voucher_voucherapplication USING btree (voucher_id);
 B   DROP INDEX public.voucher_voucherapplication_voucher_id_5204edb7;
       public            torsion_prog    false    330            �           1259    28111 "   wishlists_line_product_id_9d6d9b37    INDEX     c   CREATE INDEX wishlists_line_product_id_9d6d9b37 ON public.wishlists_line USING btree (product_id);
 6   DROP INDEX public.wishlists_line_product_id_9d6d9b37;
       public            torsion_prog    false    383            �           1259    28119 #   wishlists_line_wishlist_id_4cffe302    INDEX     e   CREATE INDEX wishlists_line_wishlist_id_4cffe302 ON public.wishlists_line USING btree (wishlist_id);
 7   DROP INDEX public.wishlists_line_wishlist_id_4cffe302;
       public            torsion_prog    false    383            �           1259    28120 (   wishlists_wishlist_date_created_c05d5e7f    INDEX     o   CREATE INDEX wishlists_wishlist_date_created_c05d5e7f ON public.wishlists_wishlist USING btree (date_created);
 <   DROP INDEX public.wishlists_wishlist_date_created_c05d5e7f;
       public            torsion_prog    false    385            �           1259    28117 $   wishlists_wishlist_key_88d419b8_like    INDEX     v   CREATE INDEX wishlists_wishlist_key_88d419b8_like ON public.wishlists_wishlist USING btree (key varchar_pattern_ops);
 8   DROP INDEX public.wishlists_wishlist_key_88d419b8_like;
       public            torsion_prog    false    385            �           1259    28118 $   wishlists_wishlist_owner_id_d5464c62    INDEX     g   CREATE INDEX wishlists_wishlist_owner_id_d5464c62 ON public.wishlists_wishlist USING btree (owner_id);
 8   DROP INDEX public.wishlists_wishlist_owner_id_d5464c62;
       public            torsion_prog    false    385                       2606    26220 H   address_useraddress address_useraddress_country_id_fa26a249_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.address_useraddress
    ADD CONSTRAINT address_useraddress_country_id_fa26a249_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.address_useraddress DROP CONSTRAINT address_useraddress_country_id_fa26a249_fk_address_c;
       public          torsion_prog    false    212    3568    214                       2606    26225 H   address_useraddress address_useraddress_user_id_6edf0244_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.address_useraddress
    ADD CONSTRAINT address_useraddress_user_id_6edf0244_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.address_useraddress DROP CONSTRAINT address_useraddress_user_id_6edf0244_fk_auth_user_id;
       public          torsion_prog    false    3548    214    207                       2606    26596 M   analytics_productrecord analytics_productrec_product_id_dad3a871_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.analytics_productrecord
    ADD CONSTRAINT analytics_productrec_product_id_dad3a871_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.analytics_productrecord DROP CONSTRAINT analytics_productrec_product_id_dad3a871_fk_catalogue;
       public          torsion_prog    false    226    244    3612                       2606    26584 O   analytics_userproductview analytics_userproduc_product_id_a55b87ad_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.analytics_userproductview
    ADD CONSTRAINT analytics_userproduc_product_id_a55b87ad_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.analytics_userproductview DROP CONSTRAINT analytics_userproduc_product_id_a55b87ad_fk_catalogue;
       public          torsion_prog    false    246    3612    226                       2606    26589 T   analytics_userproductview analytics_userproductview_user_id_5e49a8b1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.analytics_userproductview
    ADD CONSTRAINT analytics_userproductview_user_id_5e49a8b1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.analytics_userproductview DROP CONSTRAINT analytics_userproductview_user_id_5e49a8b1_fk_auth_user_id;
       public          torsion_prog    false    246    3548    207                       2606    26568 J   analytics_userrecord analytics_userrecord_user_id_702cff4c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.analytics_userrecord
    ADD CONSTRAINT analytics_userrecord_user_id_702cff4c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.analytics_userrecord DROP CONSTRAINT analytics_userrecord_user_id_702cff4c_fk_auth_user_id;
       public          torsion_prog    false    248    207    3548                        2606    26576 J   analytics_usersearch analytics_usersearch_user_id_1775992d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.analytics_usersearch
    ADD CONSTRAINT analytics_usersearch_user_id_1775992d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.analytics_usersearch DROP CONSTRAINT analytics_usersearch_user_id_1775992d_fk_auth_user_id;
       public          torsion_prog    false    250    3548    207                       2606    26161 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          torsion_prog    false    201    205    3535                        2606    26156 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          torsion_prog    false    3540    203    205            �           2606    26147 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          torsion_prog    false    3530    201    199                       2606    26176 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          torsion_prog    false    203    3540    209                       2606    26171 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          torsion_prog    false    209    3548    207                       2606    26190 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          torsion_prog    false    201    3535    211                       2606    26185 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          torsion_prog    false    211    3548    207            -           2606    26850 =   basket_basket basket_basket_owner_id_3a018de5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_basket
    ADD CONSTRAINT basket_basket_owner_id_3a018de5_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.basket_basket DROP CONSTRAINT basket_basket_owner_id_3a018de5_fk_auth_user_id;
       public          torsion_prog    false    272    207    3548            d           2606    27495 L   basket_basket_vouchers basket_basket_vouche_voucher_id_c2b66981_fk_voucher_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_basket_vouchers
    ADD CONSTRAINT basket_basket_vouche_voucher_id_c2b66981_fk_voucher_v FOREIGN KEY (voucher_id) REFERENCES public.voucher_voucher(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.basket_basket_vouchers DROP CONSTRAINT basket_basket_vouche_voucher_id_c2b66981_fk_voucher_v;
       public          torsion_prog    false    332    326    3916            e           2606    27500 T   basket_basket_vouchers basket_basket_vouchers_basket_id_f857c2f8_fk_basket_basket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_basket_vouchers
    ADD CONSTRAINT basket_basket_vouchers_basket_id_f857c2f8_fk_basket_basket_id FOREIGN KEY (basket_id) REFERENCES public.basket_basket(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.basket_basket_vouchers DROP CONSTRAINT basket_basket_vouchers_basket_id_f857c2f8_fk_basket_basket_id;
       public          torsion_prog    false    272    332    3750            .           2606    26833 >   basket_line basket_line_basket_id_b615c905_fk_basket_basket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_line
    ADD CONSTRAINT basket_line_basket_id_b615c905_fk_basket_basket_id FOREIGN KEY (basket_id) REFERENCES public.basket_basket(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.basket_line DROP CONSTRAINT basket_line_basket_id_b615c905_fk_basket_basket_id;
       public          torsion_prog    false    274    272    3750            /           2606    26838 C   basket_line basket_line_product_id_303d743e_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_line
    ADD CONSTRAINT basket_line_product_id_303d743e_fk_catalogue_product_id FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.basket_line DROP CONSTRAINT basket_line_product_id_303d743e_fk_catalogue_product_id;
       public          torsion_prog    false    274    226    3612            0           2606    26843 I   basket_line basket_line_stockrecord_id_7039d8a4_fk_partner_stockrecord_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_line
    ADD CONSTRAINT basket_line_stockrecord_id_7039d8a4_fk_partner_stockrecord_id FOREIGN KEY (stockrecord_id) REFERENCES public.partner_stockrecord(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.basket_line DROP CONSTRAINT basket_line_stockrecord_id_7039d8a4_fk_partner_stockrecord_id;
       public          torsion_prog    false    274    262    3725            1           2606    26822 L   basket_lineattribute basket_lineattribute_line_id_c41e0cdf_fk_basket_line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_lineattribute
    ADD CONSTRAINT basket_lineattribute_line_id_c41e0cdf_fk_basket_line_id FOREIGN KEY (line_id) REFERENCES public.basket_line(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.basket_lineattribute DROP CONSTRAINT basket_lineattribute_line_id_c41e0cdf_fk_basket_line_id;
       public          torsion_prog    false    276    274    3759            2           2606    26828 S   basket_lineattribute basket_lineattribute_option_id_9387a3f7_fk_catalogue_option_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_lineattribute
    ADD CONSTRAINT basket_lineattribute_option_id_9387a3f7_fk_catalogue_option_id FOREIGN KEY (option_id) REFERENCES public.catalogue_option(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.basket_lineattribute DROP CONSTRAINT basket_lineattribute_option_id_9387a3f7_fk_catalogue_option_id;
       public          torsion_prog    false    276    224    3606            
           2606    26413 M   catalogue_attributeoption catalogue_attributeo_group_id_3d4a5e24_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_attributeoption
    ADD CONSTRAINT catalogue_attributeo_group_id_3d4a5e24_fk_catalogue FOREIGN KEY (group_id) REFERENCES public.catalogue_attributeoptiongroup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.catalogue_attributeoption DROP CONSTRAINT catalogue_attributeo_group_id_3d4a5e24_fk_catalogue;
       public          torsion_prog    false    3590    218    220                       2606    26395 N   catalogue_product catalogue_product_parent_id_9bfd2382_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product
    ADD CONSTRAINT catalogue_product_parent_id_9bfd2382_fk_catalogue_product_id FOREIGN KEY (parent_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.catalogue_product DROP CONSTRAINT catalogue_product_parent_id_9bfd2382_fk_catalogue_product_id;
       public          torsion_prog    false    3612    226    226                       2606    26517 V   catalogue_product_product_options catalogue_product_pr_option_id_ff470e13_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product_product_options
    ADD CONSTRAINT catalogue_product_pr_option_id_ff470e13_fk_catalogue FOREIGN KEY (option_id) REFERENCES public.catalogue_option(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_product_product_options DROP CONSTRAINT catalogue_product_pr_option_id_ff470e13_fk_catalogue;
       public          torsion_prog    false    3606    242    224                       2606    26512 W   catalogue_product_product_options catalogue_product_pr_product_id_ad2b46bd_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product_product_options
    ADD CONSTRAINT catalogue_product_pr_product_id_ad2b46bd_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_product_product_options DROP CONSTRAINT catalogue_product_pr_product_id_ad2b46bd_fk_catalogue;
       public          torsion_prog    false    3612    242    226                       2606    27508 J   catalogue_product catalogue_product_product_class_id_0c6c5b54_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_product
    ADD CONSTRAINT catalogue_product_product_class_id_0c6c5b54_fk_catalogue FOREIGN KEY (product_class_id) REFERENCES public.catalogue_productclass(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.catalogue_product DROP CONSTRAINT catalogue_product_product_class_id_0c6c5b54_fk_catalogue;
       public          torsion_prog    false    226    3645    234                       2606    26438 W   catalogue_productattributevalue catalogue_productatt_attribute_id_0287c1e7_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productatt_attribute_id_0287c1e7_fk_catalogue FOREIGN KEY (attribute_id) REFERENCES public.catalogue_productattribute(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productatt_attribute_id_0287c1e7_fk_catalogue;
       public          torsion_prog    false    228    3623    230            g           2606    27535 p   catalogue_productattributevalue_value_multi_option catalogue_productatt_attributeoption_id_962b600b_fk_catalogue    FK CONSTRAINT       ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option
    ADD CONSTRAINT catalogue_productatt_attributeoption_id_962b600b_fk_catalogue FOREIGN KEY (attributeoption_id) REFERENCES public.catalogue_attributeoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option DROP CONSTRAINT catalogue_productatt_attributeoption_id_962b600b_fk_catalogue;
       public          torsion_prog    false    218    334    3588                       2606    26443 _   catalogue_productattributevalue catalogue_productatt_entity_content_type__f7186ab5_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productatt_entity_content_type__f7186ab5_fk_django_co FOREIGN KEY (entity_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productatt_entity_content_type__f7186ab5_fk_django_co;
       public          torsion_prog    false    230    199    3530                       2606    27542 U   catalogue_productattribute catalogue_productatt_option_group_id_6b422dc2_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattribute
    ADD CONSTRAINT catalogue_productatt_option_group_id_6b422dc2_fk_catalogue FOREIGN KEY (option_group_id) REFERENCES public.catalogue_attributeoptiongroup(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.catalogue_productattribute DROP CONSTRAINT catalogue_productatt_option_group_id_6b422dc2_fk_catalogue;
       public          torsion_prog    false    228    3590    220                       2606    26390 V   catalogue_productattribute catalogue_productatt_product_class_id_7af808ec_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattribute
    ADD CONSTRAINT catalogue_productatt_product_class_id_7af808ec_fk_catalogue FOREIGN KEY (product_class_id) REFERENCES public.catalogue_productclass(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattribute DROP CONSTRAINT catalogue_productatt_product_class_id_7af808ec_fk_catalogue;
       public          torsion_prog    false    234    3645    228                       2606    26448 U   catalogue_productattributevalue catalogue_productatt_product_id_a03cd90e_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productatt_product_id_a03cd90e_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productatt_product_id_a03cd90e_fk_catalogue;
       public          torsion_prog    false    226    230    3612            f           2606    27530 r   catalogue_productattributevalue_value_multi_option catalogue_productatt_productattributevalu_9c7c031e_fk_catalogue    FK CONSTRAINT       ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option
    ADD CONSTRAINT catalogue_productatt_productattributevalu_9c7c031e_fk_catalogue FOREIGN KEY (productattributevalue_id) REFERENCES public.catalogue_productattributevalue(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattributevalue_value_multi_option DROP CONSTRAINT catalogue_productatt_productattributevalu_9c7c031e_fk_catalogue;
       public          torsion_prog    false    230    3630    334                       2606    26453 Z   catalogue_productattributevalue catalogue_productatt_value_option_id_21026066_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productattributevalue
    ADD CONSTRAINT catalogue_productatt_value_option_id_21026066_fk_catalogue FOREIGN KEY (value_option_id) REFERENCES public.catalogue_attributeoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productattributevalue DROP CONSTRAINT catalogue_productatt_value_option_id_21026066_fk_catalogue;
       public          torsion_prog    false    3588    230    218                       2606    26462 P   catalogue_productcategory catalogue_productcat_category_id_176db535_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productcategory
    ADD CONSTRAINT catalogue_productcat_category_id_176db535_fk_catalogue FOREIGN KEY (category_id) REFERENCES public.catalogue_category(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.catalogue_productcategory DROP CONSTRAINT catalogue_productcat_category_id_176db535_fk_catalogue;
       public          torsion_prog    false    3599    222    232                       2606    26467 O   catalogue_productcategory catalogue_productcat_product_id_846a4061_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productcategory
    ADD CONSTRAINT catalogue_productcat_product_id_846a4061_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.catalogue_productcategory DROP CONSTRAINT catalogue_productcat_product_id_846a4061_fk_catalogue;
       public          torsion_prog    false    3612    226    232                       2606    26482 S   catalogue_productclass_options catalogue_productcla_option_id_b099542c_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productclass_options
    ADD CONSTRAINT catalogue_productcla_option_id_b099542c_fk_catalogue FOREIGN KEY (option_id) REFERENCES public.catalogue_option(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.catalogue_productclass_options DROP CONSTRAINT catalogue_productcla_option_id_b099542c_fk_catalogue;
       public          torsion_prog    false    236    224    3606                       2606    26477 Y   catalogue_productclass_options catalogue_productcla_productclass_id_732df4c8_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productclass_options
    ADD CONSTRAINT catalogue_productcla_productclass_id_732df4c8_fk_catalogue FOREIGN KEY (productclass_id) REFERENCES public.catalogue_productclass(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productclass_options DROP CONSTRAINT catalogue_productcla_productclass_id_732df4c8_fk_catalogue;
       public          torsion_prog    false    236    234    3645                       2606    26489 L   catalogue_productimage catalogue_productima_product_id_49474fe8_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productimage
    ADD CONSTRAINT catalogue_productima_product_id_49474fe8_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.catalogue_productimage DROP CONSTRAINT catalogue_productima_product_id_49474fe8_fk_catalogue;
       public          torsion_prog    false    3612    238    226                       2606    26495 U   catalogue_productrecommendation catalogue_productrec_primary_id_6e51a55c_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productrecommendation
    ADD CONSTRAINT catalogue_productrec_primary_id_6e51a55c_fk_catalogue FOREIGN KEY (primary_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.catalogue_productrecommendation DROP CONSTRAINT catalogue_productrec_primary_id_6e51a55c_fk_catalogue;
       public          torsion_prog    false    3612    226    240                       2606    26500 \   catalogue_productrecommendation catalogue_productrec_recommendation_id_daf8ae95_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalogue_productrecommendation
    ADD CONSTRAINT catalogue_productrec_recommendation_id_daf8ae95_fk_catalogue FOREIGN KEY (recommendation_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalogue_productrecommendation DROP CONSTRAINT catalogue_productrec_recommendation_id_daf8ae95_fk_catalogue;
       public          torsion_prog    false    240    226    3612            i           2606    27658 N   content_content content_content_category_id_id_cb631ab4_fk_content_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_content
    ADD CONSTRAINT content_content_category_id_id_cb631ab4_fk_content_category_id FOREIGN KEY (category_id_id) REFERENCES public.content_category(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.content_content DROP CONSTRAINT content_content_category_id_id_cb631ab4_fk_content_category_id;
       public          torsion_prog    false    338    3947    340            n           2606    27689 M   content_contentimage content_contentimage_content_id_id_4059c94d_fk_content_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_contentimage
    ADD CONSTRAINT content_contentimage_content_id_id_4059c94d_fk_content_c FOREIGN KEY (content_id_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.content_contentimage DROP CONSTRAINT content_contentimage_content_id_id_4059c94d_fk_content_c;
       public          torsion_prog    false    340    3956    348            l           2606    27677 U   content_ratingcontent content_ratingcontent_content_id_a957ba84_fk_content_content_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_ratingcontent
    ADD CONSTRAINT content_ratingcontent_content_id_a957ba84_fk_content_content_id FOREIGN KEY (content_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.content_ratingcontent DROP CONSTRAINT content_ratingcontent_content_id_a957ba84_fk_content_content_id;
       public          torsion_prog    false    3956    340    346            m           2606    27682 U   content_ratingcontent content_ratingcontent_star_id_7f47e585_fk_content_ratingstar_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_ratingcontent
    ADD CONSTRAINT content_ratingcontent_star_id_7f47e585_fk_content_ratingstar_id FOREIGN KEY (star_id) REFERENCES public.content_ratingstar(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.content_ratingcontent DROP CONSTRAINT content_ratingcontent_star_id_7f47e585_fk_content_ratingstar_id;
       public          torsion_prog    false    342    3958    346            k           2606    27670 J   content_reviewcontent content_reviewconten_parent_id_7a1eb628_fk_content_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_reviewcontent
    ADD CONSTRAINT content_reviewconten_parent_id_7a1eb628_fk_content_r FOREIGN KEY (parent_id) REFERENCES public.content_reviewcontent(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.content_reviewcontent DROP CONSTRAINT content_reviewconten_parent_id_7a1eb628_fk_content_r;
       public          torsion_prog    false    3962    344    344            j           2606    27665 U   content_reviewcontent content_reviewcontent_content_id_9d5ea797_fk_content_content_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_reviewcontent
    ADD CONSTRAINT content_reviewcontent_content_id_9d5ea797_fk_content_content_id FOREIGN KEY (content_id) REFERENCES public.content_content(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.content_reviewcontent DROP CONSTRAINT content_reviewcontent_content_id_9d5ea797_fk_content_content_id;
       public          torsion_prog    false    340    3956    344            (           2606    27581 C   communication_email customer_email_user_id_a69ad588_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.communication_email
    ADD CONSTRAINT customer_email_user_id_a69ad588_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.communication_email DROP CONSTRAINT customer_email_user_id_a69ad588_fk_auth_user_id;
       public          torsion_prog    false    3548    266    207            )           2606    26767 V   communication_notification customer_notification_recipient_id_d99de5c8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.communication_notification
    ADD CONSTRAINT customer_notification_recipient_id_d99de5c8_fk_auth_user_id FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.communication_notification DROP CONSTRAINT customer_notification_recipient_id_d99de5c8_fk_auth_user_id;
       public          torsion_prog    false    268    207    3548            *           2606    26772 S   communication_notification customer_notification_sender_id_affa1632_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.communication_notification
    ADD CONSTRAINT customer_notification_sender_id_affa1632_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.communication_notification DROP CONSTRAINT customer_notification_sender_id_affa1632_fk_auth_user_id;
       public          torsion_prog    false    3548    268    207            +           2606    26779 K   customer_productalert customer_productaler_product_id_7e529a41_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_productalert
    ADD CONSTRAINT customer_productaler_product_id_7e529a41_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.customer_productalert DROP CONSTRAINT customer_productaler_product_id_7e529a41_fk_catalogue;
       public          torsion_prog    false    226    3612    270            ,           2606    26784 L   customer_productalert customer_productalert_user_id_677ad6d6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_productalert
    ADD CONSTRAINT customer_productalert_user_id_677ad6d6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.customer_productalert DROP CONSTRAINT customer_productalert_user_id_677ad6d6_fk_auth_user_id;
       public          torsion_prog    false    3548    207    270                       2606    26252 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          torsion_prog    false    3530    199    216            	           2606    26257 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          torsion_prog    false    3548    216    207            o           2606    27718 L   django_flatpage_sites django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl FOREIGN KEY (flatpage_id) REFERENCES public.django_flatpage(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl;
       public          torsion_prog    false    3971    350    352            p           2606    27723 N   django_flatpage_sites django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id;
       public          torsion_prog    false    3697    352    252            P           2606    27320 ?   offer_benefit offer_benefit_range_id_ab19c5ab_fk_offer_range_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_benefit
    ADD CONSTRAINT offer_benefit_range_id_ab19c5ab_fk_offer_range_id FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.offer_benefit DROP CONSTRAINT offer_benefit_range_id_ab19c5ab_fk_offer_range_id;
       public          torsion_prog    false    3875    308    314            Q           2606    27315 C   offer_condition offer_condition_range_id_b023a2aa_fk_offer_range_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_condition
    ADD CONSTRAINT offer_condition_range_id_b023a2aa_fk_offer_range_id FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.offer_condition DROP CONSTRAINT offer_condition_range_id_b023a2aa_fk_offer_range_id;
       public          torsion_prog    false    310    3875    314            S           2606    27735 N   offer_conditionaloffer offer_conditionaloff_condition_id_e6baa945_fk_offer_con    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_conditionaloffer
    ADD CONSTRAINT offer_conditionaloff_condition_id_e6baa945_fk_offer_con FOREIGN KEY (condition_id) REFERENCES public.offer_condition(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.offer_conditionaloffer DROP CONSTRAINT offer_conditionaloff_condition_id_e6baa945_fk_offer_con;
       public          torsion_prog    false    312    3858    310            R           2606    27730 U   offer_conditionaloffer offer_conditionaloffer_benefit_id_f43f68b5_fk_offer_benefit_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_conditionaloffer
    ADD CONSTRAINT offer_conditionaloffer_benefit_id_f43f68b5_fk_offer_benefit_id FOREIGN KEY (benefit_id) REFERENCES public.offer_benefit(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.offer_conditionaloffer DROP CONSTRAINT offer_conditionaloffer_benefit_id_f43f68b5_fk_offer_benefit_id;
       public          torsion_prog    false    308    312    3855            U           2606    27351 M   offer_range_classes offer_range_classes_productclass_id_6f6de46d_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_classes
    ADD CONSTRAINT offer_range_classes_productclass_id_6f6de46d_fk_catalogue FOREIGN KEY (productclass_id) REFERENCES public.catalogue_productclass(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.offer_range_classes DROP CONSTRAINT offer_range_classes_productclass_id_6f6de46d_fk_catalogue;
       public          torsion_prog    false    3645    316    234            T           2606    27346 K   offer_range_classes offer_range_classes_range_id_7d3e573e_fk_offer_range_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_classes
    ADD CONSTRAINT offer_range_classes_range_id_7d3e573e_fk_offer_range_id FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.offer_range_classes DROP CONSTRAINT offer_range_classes_range_id_7d3e573e_fk_offer_range_id;
       public          torsion_prog    false    3875    316    314            W           2606    27365 S   offer_range_excluded_products offer_range_excluded_product_id_78c49bfc_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_excluded_products
    ADD CONSTRAINT offer_range_excluded_product_id_78c49bfc_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.offer_range_excluded_products DROP CONSTRAINT offer_range_excluded_product_id_78c49bfc_fk_catalogue;
       public          torsion_prog    false    318    3612    226            V           2606    27360 Q   offer_range_excluded_products offer_range_excluded_range_id_cce4a032_fk_offer_ran    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_excluded_products
    ADD CONSTRAINT offer_range_excluded_range_id_cce4a032_fk_offer_ran FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.offer_range_excluded_products DROP CONSTRAINT offer_range_excluded_range_id_cce4a032_fk_offer_ran;
       public          torsion_prog    false    314    3875    318            Y           2606    27379 V   offer_range_included_categories offer_range_included_category_id_c61569a5_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_included_categories
    ADD CONSTRAINT offer_range_included_category_id_c61569a5_fk_catalogue FOREIGN KEY (category_id) REFERENCES public.catalogue_category(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.offer_range_included_categories DROP CONSTRAINT offer_range_included_category_id_c61569a5_fk_catalogue;
       public          torsion_prog    false    320    3599    222            X           2606    27374 S   offer_range_included_categories offer_range_included_range_id_1b616138_fk_offer_ran    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_range_included_categories
    ADD CONSTRAINT offer_range_included_range_id_1b616138_fk_offer_ran FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.offer_range_included_categories DROP CONSTRAINT offer_range_included_range_id_1b616138_fk_offer_ran;
       public          torsion_prog    false    3875    314    320            Z           2606    27386 Q   offer_rangeproduct offer_rangeproduct_product_id_723b3ea3_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_rangeproduct
    ADD CONSTRAINT offer_rangeproduct_product_id_723b3ea3_fk_catalogue_product_id FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.offer_rangeproduct DROP CONSTRAINT offer_rangeproduct_product_id_723b3ea3_fk_catalogue_product_id;
       public          torsion_prog    false    322    3612    226            [           2606    27391 I   offer_rangeproduct offer_rangeproduct_range_id_ee358495_fk_offer_range_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_rangeproduct
    ADD CONSTRAINT offer_rangeproduct_range_id_ee358495_fk_offer_range_id FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.offer_rangeproduct DROP CONSTRAINT offer_rangeproduct_range_id_ee358495_fk_offer_range_id;
       public          torsion_prog    false    322    3875    314            \           2606    27398 P   offer_rangeproductfileupload offer_rangeproductfi_range_id_c055ebf8_fk_offer_ran    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_rangeproductfileupload
    ADD CONSTRAINT offer_rangeproductfi_range_id_c055ebf8_fk_offer_ran FOREIGN KEY (range_id) REFERENCES public.offer_range(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.offer_rangeproductfileupload DROP CONSTRAINT offer_rangeproductfi_range_id_c055ebf8_fk_offer_ran;
       public          torsion_prog    false    324    314    3875            ]           2606    27403 V   offer_rangeproductfileupload offer_rangeproductfi_uploaded_by_id_c01a3250_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer_rangeproductfileupload
    ADD CONSTRAINT offer_rangeproductfi_uploaded_by_id_c01a3250_fk_auth_user FOREIGN KEY (uploaded_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.offer_rangeproductfileupload DROP CONSTRAINT offer_rangeproductfi_uploaded_by_id_c01a3250_fk_auth_user;
       public          torsion_prog    false    3548    324    207            3           2606    27092 J   order_billingaddress order_billingaddress_country_id_17f57dca_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_billingaddress
    ADD CONSTRAINT order_billingaddress_country_id_17f57dca_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.order_billingaddress DROP CONSTRAINT order_billingaddress_country_id_17f57dca_fk_address_c;
       public          torsion_prog    false    3568    212    278            5           2606    27587 Q   order_communicationevent order_communicatione_event_type_id_4bc9ee29_fk_customer_    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_communicationevent
    ADD CONSTRAINT order_communicatione_event_type_id_4bc9ee29_fk_customer_ FOREIGN KEY (event_type_id) REFERENCES public.communication_communicationeventtype(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.order_communicationevent DROP CONSTRAINT order_communicatione_event_type_id_4bc9ee29_fk_customer_;
       public          torsion_prog    false    3731    264    280            4           2606    27087 U   order_communicationevent order_communicationevent_order_id_94e784ac_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_communicationevent
    ADD CONSTRAINT order_communicationevent_order_id_94e784ac_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.order_communicationevent DROP CONSTRAINT order_communicationevent_order_id_94e784ac_fk_order_order_id;
       public          torsion_prog    false    280    3796    288            6           2606    27067 9   order_line order_line_order_id_b9148391_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT order_line_order_id_b9148391_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_order_id_b9148391_fk_order_order_id;
       public          torsion_prog    false    288    282    3796            7           2606    27072 ?   order_line order_line_partner_id_258a2fb9_fk_partner_partner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT order_line_partner_id_258a2fb9_fk_partner_partner_id FOREIGN KEY (partner_id) REFERENCES public.partner_partner(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_partner_id_258a2fb9_fk_partner_partner_id;
       public          torsion_prog    false    254    3704    282            8           2606    27077 A   order_line order_line_product_id_e620902d_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT order_line_product_id_e620902d_fk_catalogue_product_id FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_product_id_e620902d_fk_catalogue_product_id;
       public          torsion_prog    false    3612    282    226            9           2606    27082 G   order_line order_line_stockrecord_id_1d65aff5_fk_partner_stockrecord_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT order_line_stockrecord_id_1d65aff5_fk_partner_stockrecord_id FOREIGN KEY (stockrecord_id) REFERENCES public.partner_stockrecord(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_stockrecord_id_1d65aff5_fk_partner_stockrecord_id;
       public          torsion_prog    false    262    3725    282            :           2606    27105 I   order_lineattribute order_lineattribute_line_id_adf6dd87_fk_order_line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_lineattribute
    ADD CONSTRAINT order_lineattribute_line_id_adf6dd87_fk_order_line_id FOREIGN KEY (line_id) REFERENCES public.order_line(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.order_lineattribute DROP CONSTRAINT order_lineattribute_line_id_adf6dd87_fk_order_line_id;
       public          torsion_prog    false    3778    282    284            ;           2606    27110 Q   order_lineattribute order_lineattribute_option_id_b54d597c_fk_catalogue_option_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_lineattribute
    ADD CONSTRAINT order_lineattribute_option_id_b54d597c_fk_catalogue_option_id FOREIGN KEY (option_id) REFERENCES public.catalogue_option(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.order_lineattribute DROP CONSTRAINT order_lineattribute_option_id_b54d597c_fk_catalogue_option_id;
       public          torsion_prog    false    224    284    3606            =           2606    27117 A   order_lineprice order_lineprice_line_id_2de52446_fk_order_line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_lineprice
    ADD CONSTRAINT order_lineprice_line_id_2de52446_fk_order_line_id FOREIGN KEY (line_id) REFERENCES public.order_line(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.order_lineprice DROP CONSTRAINT order_lineprice_line_id_2de52446_fk_order_line_id;
       public          torsion_prog    false    282    3778    286            <           2606    27062 C   order_lineprice order_lineprice_order_id_66792e56_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_lineprice
    ADD CONSTRAINT order_lineprice_order_id_66792e56_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.order_lineprice DROP CONSTRAINT order_lineprice_order_id_66792e56_fk_order_order_id;
       public          torsion_prog    false    3796    286    288            A           2606    27123 >   order_order order_order_basket_id_8b0acbb2_fk_basket_basket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_basket_id_8b0acbb2_fk_basket_basket_id FOREIGN KEY (basket_id) REFERENCES public.basket_basket(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_basket_id_8b0acbb2_fk_basket_basket_id;
       public          torsion_prog    false    272    288    3750            B           2606    27128 @   order_order order_order_billing_address_id_8fe537cf_fk_order_bil    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_billing_address_id_8fe537cf_fk_order_bil FOREIGN KEY (billing_address_id) REFERENCES public.order_billingaddress(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_billing_address_id_8fe537cf_fk_order_bil;
       public          torsion_prog    false    3769    278    288            ?           2606    27047 A   order_order order_order_shipping_address_id_57e64931_fk_order_shi    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_shipping_address_id_57e64931_fk_order_shi FOREIGN KEY (shipping_address_id) REFERENCES public.order_shippingaddress(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_shipping_address_id_57e64931_fk_order_shi;
       public          torsion_prog    false    288    3834    300            @           2606    27052 :   order_order order_order_site_id_e27f3526_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_site_id_e27f3526_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_site_id_e27f3526_fk_django_site_id;
       public          torsion_prog    false    3697    252    288            >           2606    27057 8   order_order order_order_user_id_7cf9bc2b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_user_id_7cf9bc2b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.order_order DROP CONSTRAINT order_order_user_id_7cf9bc2b_fk_auth_user_id;
       public          torsion_prog    false    288    207    3548            C           2606    27137 K   order_orderdiscount order_orderdiscount_order_id_bc91e123_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_orderdiscount
    ADD CONSTRAINT order_orderdiscount_order_id_bc91e123_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.order_orderdiscount DROP CONSTRAINT order_orderdiscount_order_id_bc91e123_fk_order_order_id;
       public          torsion_prog    false    3796    290    288            D           2606    27147 C   order_ordernote order_ordernote_order_id_7d97583d_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_ordernote
    ADD CONSTRAINT order_ordernote_order_id_7d97583d_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.order_ordernote DROP CONSTRAINT order_ordernote_order_id_7d97583d_fk_order_order_id;
       public          torsion_prog    false    292    288    3796            E           2606    27152 @   order_ordernote order_ordernote_user_id_48d7a672_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_ordernote
    ADD CONSTRAINT order_ordernote_user_id_48d7a672_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.order_ordernote DROP CONSTRAINT order_ordernote_user_id_48d7a672_fk_auth_user_id;
       public          torsion_prog    false    207    292    3548            h           2606    27569 S   order_orderstatuschange order_orderstatuschange_order_id_43efdbe5_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_orderstatuschange
    ADD CONSTRAINT order_orderstatuschange_order_id_43efdbe5_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.order_orderstatuschange DROP CONSTRAINT order_orderstatuschange_order_id_43efdbe5_fk_order_order_id;
       public          torsion_prog    false    288    336    3796            F           2606    27032 I   order_paymentevent order_paymentevent_event_type_id_568c7161_fk_order_pay    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_paymentevent
    ADD CONSTRAINT order_paymentevent_event_type_id_568c7161_fk_order_pay FOREIGN KEY (event_type_id) REFERENCES public.order_paymenteventtype(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.order_paymentevent DROP CONSTRAINT order_paymentevent_event_type_id_568c7161_fk_order_pay;
       public          torsion_prog    false    3830    298    294            G           2606    27037 I   order_paymentevent order_paymentevent_order_id_395b3e82_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_paymentevent
    ADD CONSTRAINT order_paymentevent_order_id_395b3e82_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.order_paymentevent DROP CONSTRAINT order_paymentevent_order_id_395b3e82_fk_order_order_id;
       public          torsion_prog    false    288    294    3796            H           2606    27042 M   order_paymentevent order_paymentevent_shipping_event_id_213dcfb8_fk_order_shi    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_paymentevent
    ADD CONSTRAINT order_paymentevent_shipping_event_id_213dcfb8_fk_order_shi FOREIGN KEY (shipping_event_id) REFERENCES public.order_shippingevent(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.order_paymentevent DROP CONSTRAINT order_paymentevent_shipping_event_id_213dcfb8_fk_order_shi;
       public          torsion_prog    false    294    302    3839            I           2606    27159 N   order_paymenteventquantity order_paymenteventqu_event_id_a540165a_fk_order_pay    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_paymenteventquantity
    ADD CONSTRAINT order_paymenteventqu_event_id_a540165a_fk_order_pay FOREIGN KEY (event_id) REFERENCES public.order_paymentevent(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.order_paymenteventquantity DROP CONSTRAINT order_paymenteventqu_event_id_a540165a_fk_order_pay;
       public          torsion_prog    false    296    3815    294            J           2606    27164 W   order_paymenteventquantity order_paymenteventquantity_line_id_df44b021_fk_order_line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_paymenteventquantity
    ADD CONSTRAINT order_paymenteventquantity_line_id_df44b021_fk_order_line_id FOREIGN KEY (line_id) REFERENCES public.order_line(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.order_paymenteventquantity DROP CONSTRAINT order_paymenteventquantity_line_id_df44b021_fk_order_line_id;
       public          torsion_prog    false    296    3778    282            K           2606    27173 K   order_shippingaddress order_shippingaddres_country_id_29abf9a0_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingaddress
    ADD CONSTRAINT order_shippingaddres_country_id_29abf9a0_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.order_shippingaddress DROP CONSTRAINT order_shippingaddres_country_id_29abf9a0_fk_address_c;
       public          torsion_prog    false    300    212    3568            L           2606    27020 K   order_shippingevent order_shippingevent_event_type_id_9f1efb20_fk_order_shi    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingevent
    ADD CONSTRAINT order_shippingevent_event_type_id_9f1efb20_fk_order_shi FOREIGN KEY (event_type_id) REFERENCES public.order_shippingeventtype(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.order_shippingevent DROP CONSTRAINT order_shippingevent_event_type_id_9f1efb20_fk_order_shi;
       public          torsion_prog    false    306    302    3853            M           2606    27025 K   order_shippingevent order_shippingevent_order_id_8c031fb6_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingevent
    ADD CONSTRAINT order_shippingevent_order_id_8c031fb6_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.order_shippingevent DROP CONSTRAINT order_shippingevent_order_id_8c031fb6_fk_order_order_id;
       public          torsion_prog    false    302    3796    288            N           2606    27180 O   order_shippingeventquantity order_shippingeventq_event_id_1c7fb9c7_fk_order_shi    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingeventquantity
    ADD CONSTRAINT order_shippingeventq_event_id_1c7fb9c7_fk_order_shi FOREIGN KEY (event_id) REFERENCES public.order_shippingevent(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.order_shippingeventquantity DROP CONSTRAINT order_shippingeventq_event_id_1c7fb9c7_fk_order_shi;
       public          torsion_prog    false    304    3839    302            O           2606    27185 Y   order_shippingeventquantity order_shippingeventquantity_line_id_3b089ee0_fk_order_line_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_shippingeventquantity
    ADD CONSTRAINT order_shippingeventquantity_line_id_3b089ee0_fk_order_line_id FOREIGN KEY (line_id) REFERENCES public.order_line(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.order_shippingeventquantity DROP CONSTRAINT order_shippingeventquantity_line_id_3b089ee0_fk_order_line_id;
       public          torsion_prog    false    3778    282    304            q           2606    27751 C   order_surcharge order_surcharge_order_id_5c0a94f5_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_surcharge
    ADD CONSTRAINT order_surcharge_order_id_5c0a94f5_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.order_surcharge DROP CONSTRAINT order_surcharge_order_id_5c0a94f5_fk_order_order_id;
       public          torsion_prog    false    354    3796    288            "           2606    27773 U   partner_partner_users partner_partner_users_partner_id_1883dfd9_fk_partner_partner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_partner_users
    ADD CONSTRAINT partner_partner_users_partner_id_1883dfd9_fk_partner_partner_id FOREIGN KEY (partner_id) REFERENCES public.partner_partner(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.partner_partner_users DROP CONSTRAINT partner_partner_users_partner_id_1883dfd9_fk_partner_partner_id;
       public          torsion_prog    false    256    254    3704            !           2606    27768 L   partner_partner_users partner_partner_users_user_id_d75d6e40_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_partner_users
    ADD CONSTRAINT partner_partner_users_user_id_d75d6e40_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.partner_partner_users DROP CONSTRAINT partner_partner_users_user_id_d75d6e40_fk_auth_user_id;
       public          torsion_prog    false    207    3548    256            #           2606    26690 L   partner_partneraddress partner_partneraddre_country_id_02c4f979_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_partneraddress
    ADD CONSTRAINT partner_partneraddre_country_id_02c4f979_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.partner_partneraddress DROP CONSTRAINT partner_partneraddre_country_id_02c4f979_fk_address_c;
       public          torsion_prog    false    212    258    3568            $           2606    26695 L   partner_partneraddress partner_partneraddre_partner_id_59551b0a_fk_partner_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_partneraddress
    ADD CONSTRAINT partner_partneraddre_partner_id_59551b0a_fk_partner_p FOREIGN KEY (partner_id) REFERENCES public.partner_partner(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.partner_partneraddress DROP CONSTRAINT partner_partneraddre_partner_id_59551b0a_fk_partner_p;
       public          torsion_prog    false    254    3704    258            %           2606    26670 J   partner_stockalert partner_stockalert_stockrecord_id_68ad503a_fk_partner_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_stockalert
    ADD CONSTRAINT partner_stockalert_stockrecord_id_68ad503a_fk_partner_s FOREIGN KEY (stockrecord_id) REFERENCES public.partner_stockrecord(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.partner_stockalert DROP CONSTRAINT partner_stockalert_stockrecord_id_68ad503a_fk_partner_s;
       public          torsion_prog    false    3725    262    260            &           2606    26703 Q   partner_stockrecord partner_stockrecord_partner_id_4155a586_fk_partner_partner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_stockrecord
    ADD CONSTRAINT partner_stockrecord_partner_id_4155a586_fk_partner_partner_id FOREIGN KEY (partner_id) REFERENCES public.partner_partner(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.partner_stockrecord DROP CONSTRAINT partner_stockrecord_partner_id_4155a586_fk_partner_partner_id;
       public          torsion_prog    false    3704    262    254            '           2606    26708 S   partner_stockrecord partner_stockrecord_product_id_62fd9e45_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.partner_stockrecord
    ADD CONSTRAINT partner_stockrecord_product_id_62fd9e45_fk_catalogue_product_id FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.partner_stockrecord DROP CONSTRAINT partner_stockrecord_product_id_62fd9e45_fk_catalogue_product_id;
       public          torsion_prog    false    3612    226    262            r           2606    27823 B   payment_bankcard payment_bankcard_user_id_08e1d04c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_bankcard
    ADD CONSTRAINT payment_bankcard_user_id_08e1d04c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.payment_bankcard DROP CONSTRAINT payment_bankcard_user_id_08e1d04c_fk_auth_user_id;
       public          torsion_prog    false    358    3548    207            t           2606    27829 A   payment_source payment_source_order_id_6b7f2215_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_source
    ADD CONSTRAINT payment_source_order_id_6b7f2215_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.payment_source DROP CONSTRAINT payment_source_order_id_6b7f2215_fk_order_order_id;
       public          torsion_prog    false    360    3796    288            s           2606    27818 N   payment_source payment_source_source_type_id_700828fe_fk_payment_sourcetype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_source
    ADD CONSTRAINT payment_source_source_type_id_700828fe_fk_payment_sourcetype_id FOREIGN KEY (source_type_id) REFERENCES public.payment_sourcetype(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.payment_source DROP CONSTRAINT payment_source_source_type_id_700828fe_fk_payment_sourcetype_id;
       public          torsion_prog    false    3999    362    360            u           2606    27836 O   payment_transaction payment_transaction_source_id_c5ac31e8_fk_payment_source_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_transaction
    ADD CONSTRAINT payment_transaction_source_id_c5ac31e8_fk_payment_source_id FOREIGN KEY (source_id) REFERENCES public.payment_source(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.payment_transaction DROP CONSTRAINT payment_transaction_source_id_c5ac31e8_fk_payment_source_id;
       public          torsion_prog    false    360    364    3993            w           2606    27892 K   reviews_productreview reviews_productrevie_product_id_52e52a32_fk_catalogue    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_productreview
    ADD CONSTRAINT reviews_productrevie_product_id_52e52a32_fk_catalogue FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.reviews_productreview DROP CONSTRAINT reviews_productrevie_product_id_52e52a32_fk_catalogue;
       public          torsion_prog    false    226    366    3612            v           2606    27872 L   reviews_productreview reviews_productreview_user_id_8acb5ddd_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_productreview
    ADD CONSTRAINT reviews_productreview_user_id_8acb5ddd_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.reviews_productreview DROP CONSTRAINT reviews_productreview_user_id_8acb5ddd_fk_auth_user_id;
       public          torsion_prog    false    3548    366    207            x           2606    27880 H   reviews_vote reviews_vote_review_id_371b2d8d_fk_reviews_productreview_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_vote
    ADD CONSTRAINT reviews_vote_review_id_371b2d8d_fk_reviews_productreview_id FOREIGN KEY (review_id) REFERENCES public.reviews_productreview(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.reviews_vote DROP CONSTRAINT reviews_vote_review_id_371b2d8d_fk_reviews_productreview_id;
       public          torsion_prog    false    368    366    4006            y           2606    27885 :   reviews_vote reviews_vote_user_id_5fb87b53_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_vote
    ADD CONSTRAINT reviews_vote_user_id_5fb87b53_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.reviews_vote DROP CONSTRAINT reviews_vote_user_id_5fb87b53_fk_auth_user_id;
       public          torsion_prog    false    207    368    3548            z           2606    28001 \   shipping_orderanditemcharges_countries shipping_orderandite_country_id_30387f2e_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries
    ADD CONSTRAINT shipping_orderandite_country_id_30387f2e_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries DROP CONSTRAINT shipping_orderandite_country_id_30387f2e_fk_address_c;
       public          torsion_prog    false    373    212    3568            {           2606    28006 f   shipping_orderanditemcharges_countries shipping_orderandite_orderanditemcharges__bf5bfee9_fk_shipping_    FK CONSTRAINT     	  ALTER TABLE ONLY public.shipping_orderanditemcharges_countries
    ADD CONSTRAINT shipping_orderandite_orderanditemcharges__bf5bfee9_fk_shipping_ FOREIGN KEY (orderanditemcharges_id) REFERENCES public.shipping_orderanditemcharges(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.shipping_orderanditemcharges_countries DROP CONSTRAINT shipping_orderandite_orderanditemcharges__bf5bfee9_fk_shipping_;
       public          torsion_prog    false    4028    371    373            |           2606    27961 G   shipping_weightband shipping_weightband_method_id_b699a1ba_fk_shipping_    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_weightband
    ADD CONSTRAINT shipping_weightband_method_id_b699a1ba_fk_shipping_ FOREIGN KEY (method_id) REFERENCES public.shipping_weightbased(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.shipping_weightband DROP CONSTRAINT shipping_weightband_method_id_b699a1ba_fk_shipping_;
       public          torsion_prog    false    4047    375    377            }           2606    28011 T   shipping_weightbased_countries shipping_weightbased_country_id_06117384_fk_address_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_weightbased_countries
    ADD CONSTRAINT shipping_weightbased_country_id_06117384_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(iso_3166_1_a2) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.shipping_weightbased_countries DROP CONSTRAINT shipping_weightbased_country_id_06117384_fk_address_c;
       public          torsion_prog    false    379    212    3568            ~           2606    28016 X   shipping_weightbased_countries shipping_weightbased_weightbased_id_93e3132f_fk_shipping_    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_weightbased_countries
    ADD CONSTRAINT shipping_weightbased_weightbased_id_93e3132f_fk_shipping_ FOREIGN KEY (weightbased_id) REFERENCES public.shipping_weightbased(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.shipping_weightbased_countries DROP CONSTRAINT shipping_weightbased_weightbased_id_93e3132f_fk_shipping_;
       public          torsion_prog    false    377    4047    379            _           2606    28038 U   voucher_voucher_offers voucher_voucher_offe_conditionaloffer_id_f9682bfb_fk_offer_con    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucher_offers
    ADD CONSTRAINT voucher_voucher_offe_conditionaloffer_id_f9682bfb_fk_offer_con FOREIGN KEY (conditionaloffer_id) REFERENCES public.offer_conditionaloffer(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.voucher_voucher_offers DROP CONSTRAINT voucher_voucher_offe_conditionaloffer_id_f9682bfb_fk_offer_con;
       public          torsion_prog    false    312    328    3866            `           2606    28043 L   voucher_voucher_offers voucher_voucher_offe_voucher_id_7f9c575d_fk_voucher_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucher_offers
    ADD CONSTRAINT voucher_voucher_offe_voucher_id_7f9c575d_fk_voucher_v FOREIGN KEY (voucher_id) REFERENCES public.voucher_voucher(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.voucher_voucher_offers DROP CONSTRAINT voucher_voucher_offe_voucher_id_7f9c575d_fk_voucher_v;
       public          torsion_prog    false    326    328    3916            ^           2606    28061 D   voucher_voucher voucher_voucher_voucher_set_id_17b96a54_fk_voucher_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucher
    ADD CONSTRAINT voucher_voucher_voucher_set_id_17b96a54_fk_voucher_v FOREIGN KEY (voucher_set_id) REFERENCES public.voucher_voucherset(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.voucher_voucher DROP CONSTRAINT voucher_voucher_voucher_set_id_17b96a54_fk_voucher_v;
       public          torsion_prog    false    326    381    4058            c           2606    27465 P   voucher_voucherapplication voucher_voucherappli_voucher_id_5204edb7_fk_voucher_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucherapplication
    ADD CONSTRAINT voucher_voucherappli_voucher_id_5204edb7_fk_voucher_v FOREIGN KEY (voucher_id) REFERENCES public.voucher_voucher(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.voucher_voucherapplication DROP CONSTRAINT voucher_voucherappli_voucher_id_5204edb7_fk_voucher_v;
       public          torsion_prog    false    330    3916    326            a           2606    27455 Y   voucher_voucherapplication voucher_voucherapplication_order_id_30248a05_fk_order_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucherapplication
    ADD CONSTRAINT voucher_voucherapplication_order_id_30248a05_fk_order_order_id FOREIGN KEY (order_id) REFERENCES public.order_order(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.voucher_voucherapplication DROP CONSTRAINT voucher_voucherapplication_order_id_30248a05_fk_order_order_id;
       public          torsion_prog    false    288    3796    330            b           2606    27460 V   voucher_voucherapplication voucher_voucherapplication_user_id_df53a393_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucherapplication
    ADD CONSTRAINT voucher_voucherapplication_user_id_df53a393_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.voucher_voucherapplication DROP CONSTRAINT voucher_voucherapplication_user_id_df53a393_fk_auth_user_id;
       public          torsion_prog    false    3548    330    207                       2606    28072 D   voucher_voucherset voucher_voucherset_offer_id_1d10d5d6_fk_offer_con    FK CONSTRAINT     �   ALTER TABLE ONLY public.voucher_voucherset
    ADD CONSTRAINT voucher_voucherset_offer_id_1d10d5d6_fk_offer_con FOREIGN KEY (offer_id) REFERENCES public.offer_conditionaloffer(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.voucher_voucherset DROP CONSTRAINT voucher_voucherset_offer_id_1d10d5d6_fk_offer_con;
       public          torsion_prog    false    312    381    3866            �           2606    28106 I   wishlists_line wishlists_line_product_id_9d6d9b37_fk_catalogue_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wishlists_line
    ADD CONSTRAINT wishlists_line_product_id_9d6d9b37_fk_catalogue_product_id FOREIGN KEY (product_id) REFERENCES public.catalogue_product(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.wishlists_line DROP CONSTRAINT wishlists_line_product_id_9d6d9b37_fk_catalogue_product_id;
       public          torsion_prog    false    226    3612    383            �           2606    28099 K   wishlists_line wishlists_line_wishlist_id_4cffe302_fk_wishlists_wishlist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wishlists_line
    ADD CONSTRAINT wishlists_line_wishlist_id_4cffe302_fk_wishlists_wishlist_id FOREIGN KEY (wishlist_id) REFERENCES public.wishlists_wishlist(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wishlists_line DROP CONSTRAINT wishlists_line_wishlist_id_4cffe302_fk_wishlists_wishlist_id;
       public          torsion_prog    false    4071    383    385            �           2606    28112 G   wishlists_wishlist wishlists_wishlist_owner_id_d5464c62_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wishlists_wishlist
    ADD CONSTRAINT wishlists_wishlist_owner_id_d5464c62_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.wishlists_wishlist DROP CONSTRAINT wishlists_wishlist_owner_id_d5464c62_fk_auth_user_id;
       public          torsion_prog    false    3548    385    207               4   x�u���00��.J��K弰�®�6\�qa���%\1z\\\ gh�            x������ � �      ,      x������ � �      .      x������ � �      0      x������ � �      2      x������ � �            x������ � �            x������ � �         �  x��[ے�6}��B?�[�]z��$U��m3��lUJ�Vw��m;�<����H�8 )ϼ��s`
�HP]d�1�����%����sVd��/sm/7���^��ˤPnH��>M�i�@7$��?��lP�=;O�����?�Һ&��S@������ `{qQ!�����/���U�A���آs|��"H�>1��!H)�0�zA�+���:]��:���)j�}�K?� �:����ߦ���������t��S����)k�4��l�	����W�'�_n�� m�U��{}��Sm��t�)U����0�#�<b]@�+�H���)�;��M��#�b� �@ �m����D��a����2e����z��T*�F~R�2"�!ABH#�z&(��q�^N�H.��rS���H G�B�̅�I�?���L�C�o*� �Ѿ�T�NG���F�����u��Ǘ�x�
W�/v�jF6�
p%���\��IDC�k�u���N�M/������T"Dv[sTnDv^s ]"����C0�^��3���35��S���<��0�Ax|���oKF5�~�4u"�=\�71�D�{�tb�Q�{<�<�%���n�9�L���)+ܫ��F��Q�3xݠI*Oc/ ����)n%�	����7lNw���h���Ɨ�M��9I�W�b��N2a-����I�_$(V���Tt^OCI,�ax�8(`x8/`�6C��u/����۴�W{��t����3���I��Ie�!�x%L����6�K���ڃ|J.�f��L8��E�K�Nϯ��bEY��SKC�����0��0D�
�R&��`N�Ӄ%S�<-��S��<�����T�ҽvO�MsϬ��v��᪌]�������Hd�d�*ߪN�%����/�s�� �ҽ���C�fdӫL�$�*�8�A8dr ��#t<���x������ټ	����d���` �akXg���"V�n �i���u�nɒ������'N��ng��}�q7�T)H�HeDT�!E$u�E�fUE�nUm��&��훇��H1��J6�{z�FZ57	����Dj؀�"�c)[�Q*��� .�*[U]n��-���R��z�3=S�ҧ'YlU��@��� 0.t��  W�"��VfY��bqS����� U~P/
�`�4�*�,��=+�яV�pV���m�k�V��6���(y����?��۔UۤV{�H��6Vd���>afe�L�X�'�$'�MьpeU�S!y�[U)�V�*��Z00�X*�P#��X�a4���TҖ1�n����"N�TĜ@q��f(!���Fn��YU�
�--�T�V��T-�V����U0>�0�~��m:>��ZVu�o�����5��x#��$�Nl%�Y++������B�{`��U�=��آZi0%TM����B��U'�Ѫ�!U䏓���[|:-EW7��>9LUB�
 �+t[2��L����ٙΧO�-_u���������f�=+~o�bHՄ{���u��{fhw�bD�Ƿo���Un�1-�B7=�$2H�"��C�k�
��i�?��Y�G3`��!��(*�C
9P �C�u=�K�~w;<����9���|\��h��.\%�
�3דTή�8q��=���[O������5������dm��_��R��ߥ���}���|\�b�V-�Z��������P�pZ���|�}���t���-�ː1��`>C|�*<�!~��;5,u��k�#֕�M}Ă�|�o���Qƞ]��*�]��G�������d4�����2�]9�a-�)0���:qN@�-�����8e�{/�;�a�9�ER7O���=�C�k�>Hp(ɼ� lr��;�^�]Lg���.f��Ȃ��9^2Z���ǝ-8=wm@��l����^϶@}x��-@���]��eg�����^�N)��db��#�b&���aHx������ܢ���5V���}�x�(��Y��	+Y��e<^ǝ}�6�9ː���
��6ʭʱ�@~k�Z ��k�d���8=��q�Gwi *� ��*� ��遐J s��A�=��3n5�|V�L�B�1��R`9!�`�!��Q���񐟞��R�������V�t�� �I���J�B��'<��_�����wsan�t���@*=��;$���y�H�]�i��k�[}e�."���S���8�p �"��/�Rϧ�{�~>�Ƨɬ�����4���t� c���}�PB��UGOg�Vb��&x�떢�Qv�
�{��K��i�g��#��R	��}))U��k�"VM�
r��G����rא;�X3Sa�Y�;�U�>C������0yAՉxx8�<Uq"�V#�U��6Fw>Uww��hm)���[�0��"cv�:S\�3��}���ɍ�eo��[G</��y����p�^�:�B��
t(y+d��a�*����a6+��q�n%�F�(�kU��ڡ9X7�j�]S4릠��5d�f݌T�_&��<�K8�v�������[�=��9U�`N>�^5U��\[c�T#���g��N����)o%"���)&o*"&���m/"쌘4��6�Z�]}{4z�U��Y��w\_e;��u۸;�*�jV���+q��5��
׬�攱`N���Z���c��J�NYSs��UƱy��̭��;9�;�_k<��{��d�~�~0���7�8��u5��l���x�U�[�SoXg��n���T!O���ϮB��h����6���ݺ����v���	7*B���	�-B��˵1B�g�h����*k���:�V�I����k�$�d��ժ6�^9�3\����ǥq�u[i6��٬Q�k.u�Y��\b�Yä�\��f�MX��Ns��4+J��\&:͊��4�Q�Yq��:͖��R����Jl�6�.Rᡠ��}�G���=�{LH�:��u�|�knQD,�R׀�(~�k@U	D��5�:��o��f]-.q�5�&V����j��E:�.c�
`������@׈����?Z"��
,��&���9���c�xLH<e�l�o]A�Z:c����T���5 ��U�	NW�?[Uu�0�\U�۴��?��8���Y�Er��{�ޭ�R��H��SI#Êpe"�1 ]pͷ�&]͂=:�t<�L�'r����	�D��35RK��N���ݠ�]�����}���]�g�좄�<3�G��yV�s�o�6� �_�)�.b�{�
41�H(�����I�}˒�.���FJ'�I�3b3)�`&�����3&ڵ�aߗ�l���]�nj��ߙ���}XU��X��V�z#�0������r�����j�8��Db.�1z�F���
���%&�;5�J���.;��F=��x��TQRH~� VuH���J���g@�6��n�1P��u_U�����G��#N��9q��D�}9���q��^�J��oB����:(�e(U� ��>��P F_�2�=�ߝ������Q�f�p8$k�5�O��Z������R:�D�0�gף��d�n�j����eB���"	F�T2����5?��T?�n�����;�J�_c0�+l��P�9W�!��.���3��j�e �(X��TXr�E�&#����������9�{�\�+�P		 >f��G���.� �o#���x�^O����<``*��'�*��g��T
�O�Ѕ{�4���7�a�i���>i1����WE��ȥp��}ڜ��M�;6��9a�5�V����f��?�gQ�         �   x�E��
�@ E��W�pڼtR2HI"2��|���!ԯoj�]\.��A�y��߆�c���
�hq]�����`���p$g�ŧ�h�<I�(X{��C���j���X1�ҡ�"�P�A��MMk1�����	i�}������tS4�QI�ȫ�ˈ�,Q�3��R�\EQ>�d5�      	      x������ � �            x������ � �      H   7   x�3��/H��4202�54�5�T04�2��25�351364�60��!C�=... �	�      �      x������ � �      J      x������ � �      L      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      *      x������ � �            x������ � �            x������ � �      �      x������ � �             x������ � �      "      x������ � �      $      x������ � �      &      x������ � �      (      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      �   �  x��TAN1]ۧ�	���آ���SHa�Q����)�!A՞`D�\��F}'��d���I�������ۭ�o���E4��/sJ}jS�|7��e|�}	Nb�!�+���E}s��z �|�m+�H()�a B�,E�Et��E�tE]���N= %p�{��$��ԩ=��gz���Oz�n��b�?�͒�j�0�d-�<��q��;A}��s���Mr�7Ms��'�*�VR{65�?�����T2�����K�۪xr?�P���l���E�t������\,:��	JN�;����e�W}L�����Ԧ�����Y$���i�($0j[��i�49��x��|��.+���f��I��XgK��9W�7�N9�B}�D��1������3����DWE{^���l׫��Ԣ,c]� ܕ�"#G��5��Ӝ����?�>��nH��2;����-����_`��      �      x��ksǕ ���9�X��i� �Hi�(�c�Ғ�53�E�� ���Uu�?��ХDzd8��G��޽1�1M �Ќ�_���K�yeVf=�")�bge���2����8rhj:l���#G&�&'�&N��㧎O�:r�o&�}�:T�-��:����gAÛ�{������/�g�������`���������9�N��~opm����{�]��-������ayB�ެy��[��ف�:���.���>�|	���?��<nV���NE�O���8<
�݂w�Z�;�/�ٻ�4�Q�+���z�����u\�?6�g��A��߬�^z��./��n��Oqi�`p������?V��mXdpW��>I6���tN {�����
<G� �V�������}������"�E�? ��'������o*�6��!> 8]���Jc�l�*�lX�*�S�o�]��.��x.T��h>��V6� oOh�]�,a�q�}�����ۃ;��:�᫏��l�vS�&�N5��π�M�ڦ���W|"���F�X'Dt	_ی��������g W&/!uEx�ԇ���r����B�	����b]>t��p��q+]x�6��Ct�/��% �.}]�잞yT���uB����jE��f�~��?"�^*�f��G�WW皵6<���~%��?�+�����b�H{L�]���������b��xos���[�.��x���t[D7���Ȓ)؍O	�\M?,l�L��\Bp�w\�4ao��w	����DTx$ydC�� x���e�=�KW(��9�iF��� ��4J/���"�Et�'tk���NLdp�UC���f�3Te�����������=�_Ê:=�/Da�o���^�!p'�{��I9�د$;��w�-�_��o�!	���.�l��V`�;	�	���e�!�wp���Ndp�I5���'R�RM���R?��nv�Ԅ�n";Y}m>���.�a�]E��E7��!0��f7)�f��6Y�RxB�nCk�'�g^��Q5���!��c-薋�����,�l����h?@(Ԑ��GZ^���J�@X�]%L�˓��U����*I��*��uS̊���,�4���K�ݰ.	�u:0`�+���H�G��7�>��t���ʲ^'�A\r����,��P�5���&{ RG�Y��\�&�?�7 ��i;	j��A}B�ܱ�^N�N|#"���c����]�VJhYdၷ`,!<�W�_�$��Wش`m�J
_�����N��6���X����mͰ��";(g ##����W��n1�~��Ҷ�6TWx#>$o�l7���w=c�0ِ(�?-rG+��HJ�GD�+��.3�D�]-X4� �~�|�B+�\�	�m11A>��"���C�G���Ͳ�~ l|m� ˻Z��'"�6�p/�Jp#%�P�Mh����oV�(���1�;�jψc�V�]+ 7<�#4�Hu?6�$S��ȩ�c�=%3t���DW> �@�����\��uw�G��Ց�n�}��DDnD�M��!=I�B�$��F7�K(��^bBg<@��=<;��žQ`��n��B�/�z`�j��DB�le)��\�+�@w(��]-Hq��F���&��EC�61)�m�n����\�~����:��k6{�����_�n��o���"1�#��C.zW ��#��n�����u��'h�dWHiQ��C:�2���V$˄e�����8���}�K6��xWf�};�>C��1���'�P�B��L��w��;�W7�Ԉ�m��7YW��"g��|�p�kI�բ�1�#Ҷ�Y���5Rs�y�x��C���v���]6����z{^ŭ���������1��6O�|�`f�5�Fq6�Q؞O$y+OU�Ƽ�\R�jR(�и��}��� ����9���jE^�	Oz�V�[��S��*�O+V3a�Zs�Zj���欏/�sA���)[w���\���1���?<�Ej���G~�7a��v3����i�E-~����R�\���xM��+~k\]
��k����|= �]�Ł|0F����^��N���pf&@���h���\M5B�@;J֭�E؊�*4d�I�����WoY�m�T#����(�%�u�V�YD�Л�Ak	�L�X"*�[A.Ex�F����oG�p�U�8��P��p��8D5 �H��W !���E��f{ƫ����9�ϧ���>��d<�qs��I���PK���Q�y;|K�W�} [��#V�xN�p�p1V�A�+-�
 �G3~�PB�1nH���?�gm\���| iǛ��t3HcOu�l�}���v�����V=-��g��0����<��8�O����E��\؎} 8���%\@|�S�a|�<��_<TG��-��Ǧ��A�3���Ω��,[kW[H��:P�WK��/���GՀ�M�Y$T�a˛���g7H��H��_���$�>�3$�6���b��'�xH�}�H<��\ �*�r$rO5l�-��DS��z8O��DD!}��'�=���f|=:�#�]���c�5B a/���z}՞��Yem8~�o��+���z� �1���{R��X�w��O�9|#�r�_4�CVj��|
2!l�k(am/�w65��:AL!�X�Տ��A���l����'�?���h�$n��U�ͨ����s!"�%3��*����V�?�s��r0y*ő�7������u�w��z�N�������/B�$@p�D����T��>�'�r�J�*���Ֆb s�I�� �zݛ����^�p`A��qE��2r���b�Bf��^��3Z�����Go�7Z�Vy�U�h�7Z�Vy�U�h�7Z�Vy�U�h�7Z�Vy�U�h�7Z��-+��_����`͑���m���Ѓ5���V�X� �c4�o��5���=����1�!�a����Z����j��s�w_i?AX2/�cV`�&AK��#�ܬ;	��K������h��a�R̩UE�@��"#j�8�Z��w�~� ���\wM�4v�I4���8���p�3�������eS���uhfp_B3p���?�S[�'��sN�$(����5���<�h����&
A�݅�}s����N�F���o��G���Ugp����AT��N�b2{6�9&�P[AL�5R�#=�TT�V�S����}�g���ϣ=�s%Q���g�oF�[�NM�������`��n�h��*trY� �J�iS7��{�+�q�:�� �ݔ1��7�:)�U���P�
�?8?�$��XT���X�V�"���RB��ȋM�l�w��V��!��,'�
�l�JI�Eb�&ނ�T�-|s�1��xㄥ�r�hE�AL����3a���Q �
e÷FJ�X�V*���\���9!��*u,[l�5���0��[��H��$��Y�(��!	�cG�3��Dc�j\WJ���ߓpF)�+�B�������'��YV�/H�w��$�"����C�.Hf�U	��+sL	/{ݛl���&i1D�K�n��f���\��IM"�����C�R[�L�X_cu���)��K�X�7_A�!E_���/e�ñF���
R/ʓ5;���4�61��MO&�Bn̗Э�S�w��p{hGnP���3~#x�0V�m�li�da�,0˄o8�b�Rv� c��[s���Z.�V�a��c���"6B�C(wVR�������pC(,g�
�8�-z`U�(|�"4�Q6DH��"v��'�Zс�uB���=dqr�@
�&Z�$F64Wm���!G��+���ES �q��j۫D	�nБ���ؕ)۶K���P4a�'�Ǌ�荚���t̄o�Y�������S�э��F$8l���O�����t��6$hB�ґPAkd��;E���ڷ�}	�0j���:ӺWB&��#	��"2���U�K�ǤbB%x^�}�α_�"�/�|np    �c��L�%oG����~��#���q��#E(jnXDd2ķ8�?S��y��\��h��@�U��1��$�m5.W��0�7y� �wo8�?:z���)��kJ�''���&���xîhO}�[�>��ϴ����_��wY���6L����.qA0c�3��V�����W�|LD����a�$*9�:6��&�g]�侖]�;n�?� �S�������#G{��Sѥ@N�ŉc�EC�^��(���.�\�oy<Α�y���_g Kcq�+����W_{�����3 �w8%���u�_\8t��/���Z�n=��t`5�9��3�7����:�cZ�~��$`ʲ�|0I�@2�aP6(.5?��$�٤�:�Q�ԁX�y��{Z
d`C���$t?s����921��.�t�Hd�JJ|�n
Ph8;����D�f-5�M��.$����z0$�!K"*��~0�����*A^g�3�j����:%XJ��`y6���ءw����:�����uF����h�}�"���vF)��0�,�|�e��rd��$�T�c��s�8�C��������M)A:����(�r��X<�kA�;m��;�X!�n*}�Hٻ&�w�	���c�G�aV�1��Jp���gΚ�/�9$MJr���:��]2�`�&��m�Z9�ñ�G�k�fX��s͈�Tn��+
�=�ؼN��%��di&%���l�"���6pOOiE0�!}�d]smb�9EW���$G+/nr��I���'�q�w����鏜gc���-�Uj:����߯ڙ�*^���/9.}�Ӫu�צI�g>��o���MM.��Y���m�3۵6��z���.t�ҹ�.����%�;2n>�w��j���)���:W��9�Ԫo@g#��ms���I�.���)>��R����]+em�>���s2(3���x�o��S�G���J�ӉV�N�<���َ�� {}��$�l�1�v��$���u�����ǋU��S��!���գ��´�������^��	:xF�dp����Dn�eZR�"%Su��Q&���kUE��S	�:5:qE��+'�D�c�H[�n�c��PR����m�n�MގS�a�=u��*�A��:C�u\��>���i������[�?s�G�VOZ����ī�,Tl;=��{�Ǆ�˗Hĺ\��Sh-p�4��W�|ؗ���N�#�n�vH(�����=�mXJJcb�T���Y?�hق�]#@�".ٳ@5?9C���c�Jvt���uIH�h��Rk��$��N�|�Frw�7wbs�^���"� ˛}Sѐ�"IJ���/���_bOj�1Sۉ ��9G��TQ�m�IFBEI�O�$}�)��7����*#"LT���G^�+ �P�yF[-c}S��ag�rɹfxN��+�����p�l$�����G�|�.1����#� ��R��G����T?��ȯ���m�ý�G�Bne�殡�L�!��vw�ᇧ՜�i��݁��N��H4��>�0M(��7	�|�׎}�~�h�vҤ3�FԿE6͝Y�6Q	��У�.�>��м��	�Kԁ ���>Av��S.�mu�Ud��ma� FK8?o7�#�6�X����c����3HUڭ�}�Z
>�Rc�v�{��V@��S���S{�vD�h���?���z���������0q��l�|�;�`��v�-�	Z����7�r�<g@KHSc�W�E����%�&+��w<
�8�_S��B}���7��+`?��y���}n ZG�u�&v>�5��z#֋��p�����h�1��z!hUÏb�vj����$mk�(B���i�c�{@���v˯`_��7��V2�&���]��Z-b���)�U������� +|ކ ��]��5�)������!��y-���� �Y����%�0i6}:���_�y3p:�=�A�����y�F	5����"F�.+)e �����2�RR�@JH))e �/<�2���S!!�����r,S��_cj���b�B�@HB������+)؀�ޡ����:��l���]���<.,��i3���sO�5����8�3���sf���e�����n�~�p�X�I1 ٸ�q@%ήV+Y�MٶRF^�ac�j�PZKʤVY��.	a0}��e��IŵfA�~��U˥,��WģU��V��0!y�cױ��ǅE���ߪF��ջƞ�2�{eߎ���^$߈�3����s�gC��1dQ��6�ֳ�?1aI�dh�7��5Y;.K0��9�| �j����5]�ӕ�8����0N�taV~a���ئ\wdJ�70){I�My�e���3e���Xe)�f�9I���f�J�.���A��WIR9��Z:2m�RѰ��D��1oL�U�zGp���*�X���T݊���2�+U[v2�~��F�I%�(	�-�����*�8�fX)���Ա�u��D�d0b=1Z�[J�sͮ�� �Vh�jS�N�������y�E&lk��Z�S����&�Ĵ�o� 5��;���]�G��Ṙ�\��bԴ5"V�֡MHc��4w��D��+|M$�7�&?T,7�����6Fɞ�2Iѧ�1*�~�rLڃ�~$�R���n}YS��D����4W&<2�T��A�zX�ܤ|Î�b�EJ�8l��1�=�ՖV��k_8�(F�9ȋqb��<��F���?ފ�bUmǭ��ͅ���+EW^�EW4�5�_qo�2#��HL�#���w��y�S���{F�!v��;�#&�����#E����+�^n}_[������<LO�>z������m�qnjxU�ŕʿcK������G�`��tV��?�:��[�pᯭ�5�I��KM�RG'ޘt�X8��"�����yȝ���vEMN�,�3Ǣ���qFԃʉ.�J�f!��=�7G�T?�x��Oԑ#�Ǝ��8�<���d����b����k��w�o'���s�+���HE[��=�)��/.:>2��M5�÷ρ�dU�FU�������j����	����|���D�<�����z5���$�a���I+�X)���&�o�T�N�JJ�>GB��WH(;D(�C(_SXIH�o}�3��
䰻Ă&��Q�^�q��+z�c�=48ߣGt����t*O��<y���t���q�581�I��Q�����m�V{̑X��H�5Nzr�J������GN�m/{򪳯�U��|ܽ�4��{2���Dw?����{��Y���Ts� �Oudb�+���x���b]؟<iZ��z���ı׬(� �m��5M��R��nU���0���k̿�05���}Wvwa�팷yApw�r $d� �ϓ^�w�Ԭƥ5EĦ��,ts�'e��Wu�vLi�8V�(o:�i�8v0&{��u)�����߀�lR��I��M�L��:�JF}Eu?�����c�9<��D|Mg��n���hAæ -��O�WM~�`��~��l̬B73iyp��k�a�ɝzH�%��~��^�$'����P�4{�4i�Sit7<���0�t�*�G,%H�E�α��ƈx&Hs�Z��<Oy�x��An��v�4����I5y����SG�.9�����1�}�|�6	��p��F��&�)�r����w���Ι�e#I687�oMFRrud����|�|�k� �u�8�J�(5;�D��A��|I/���b�dk/5�'jt��^+����S��5��1;E 3��tV������/,��R3$�n�����Ya^��0�����=�r��tc�	�N�٤���+��`��=�w�4��鳓GƎ?�ӽ ���?��_����R8�ջ��MW����x{�'�%��_�C ��l9R]��Љ���N��F�(�iS��M�D&!~�����dj�L��M�u�<�0��S�T/���h�zw����:N�9W��l4+aN"���;r���f��Lx43?u�K
�
�2T1�VVW�N:�>tU��Uq4K�����9x�Y,gN���q�;(AQ��s<(�7��p�<e[2ɉ�y��s2��8Wh��f2c�L�<�������<C�    ^������Td�T",��-����9�]$��HУdbk�hgwۚ���5�p>�5��������-~�{���Ԙ��m3Ap����|ỨB� o�ݢ�ť�]�8\?��Ԉ4��� 5�c7`�ށQ�����Sq��ۚw��r��Q0��~�RY�E��P��e<�P)����r~��o�O���:vd�g�3����;N`F?��O]�����h�q��@�Lڲ6t�!'��C͍>r�x�ϕ��jyE,�r�.�X��E�ƻ�:4��g�MU��[�9U�W� �ߜE�q��m�wd���gML �sj>
���͏�|/R��U�[R��%�Y;�mC\@ː�'���^2O���y�d�i}��'�Cm�{�3�6f��i���Ś�j[�8��G�{1u[���m�טGl���B	����b q{S����T��8�P(2��]mcPֳW4$�/2l�j�@������c�6������E��Py��~c����K�.�-��d��7�^4���c".��n��
���~���;Oa�Cq�������5x>9̴_�[���ԅ�@�?�
������f�c���4]j�!&跼�U��3^��f�ɫs
�٢'?��D3��A) �Ls=��앩��{���4���KS���S��[���?9��2ƅ�c�K�!1di0���EF5kQ�&��0�B3l�H��T�A�1�(�Ee�h@�`Q,*�Ee�����2X��,��s����Fc�Ɉe��{���5�v�&#�j�.��c.�����y*�6u��țc.r��AME�1	q�{��'s����8�2Ě=��Aڣ�JF5Տm���ylP3C���#<�v3�{ϼ��k��hn���RF�c��⽼f
i;��b��w��r'���B<�e��j�l�]�֪6C��"bu��
m�N�������s~i��#I)7�b]���i������u�P�RܑF7�&�`Z��d%e�r3����<+����e�&X��`�]{�O+���,��Q�FM���6S���hf��n��B����2�w]˔�w�m�s�yA[��ى����TyÅD&ݓ�I��G�9��$�G1�kd|�9�m
�������2P�K�7LN��I��C��9���+GG3P���^�)oy����5/Z�{oձL5�~j�S2O���y�kD5����tn�D�)���ئ{]^�}g%wU��m��z�3�������d�&�bc�pg�mz~��k�ǟ��ڿ�yiW�K�W�bva��"�f�f?���v	��%(���щC�>
�d�������ț�ss�kǏ�0�����;�jj���4��a葧��[�馉T�����	ۃ�oH�L���ɷO����[��M�d�5:n��Ə��a4F2�H��t��mwd^��C�|d�.wZp���dOZX�'���b����Z/Ӈ;����rI:�[�	6���wx�I*�j&M%���}P�p'�m���x���M�T�#��T�&�q����v���N�Ng|<#�4�/m�;��0�_�bo<09&�s���;b��S���z�����w��wgPIݻ=����u���g/ty�Cuћ�	h>�y/���ğK�VѦ5�á�[�FKh��r�DZl��3�$����W����P|��k�6�yNG������=U�ق���1k������}��9,wx(��B����k��f�b�eƣ����	.]j(}��W��Ȕ�IǦ����;)�:Zr�0h��#7�S���^��/wa�O��xr��1$yw"
g�NLB�+lW#�������0�Q&�eԅ���5�26Y�6�Vy¬��x
��ғN5;y�0�O�ʆ�|��dB��S��j�I7���wX�t���e��#{�������
u��6���Q��1Dm�S��b�lX	;����~N��z�����B8m;�9�2]��J<���;6a�9�<`~�����!-E!��t/ס !~<Uq-��V��mH��M�>�cI�0���Z��q��,�2�5�J�vF,��G��J�}��$f�H�=$�Z�P����_\'��׺]^_�V�As^�)�N��jw���V���Թ&�|�ݨ���U~��L��>��PX������?1D�;�TNa�TY��!!�ܩ]Y$1�yM�"�*YO�m� �fTX���EF�j�:�Jlt��K��Q��$VA��-�ྙ��5�S#�X�S��$Jo�L��a�T��,_Իm�e�HO���+���ߧ��ļ!�W��<�'��#��9��ܔ���m�O�)��\w���ۓx�2%�cۂ��"ʪ�-�Y�M��b�h";!�M͖$>a=f�s'Ȍ4�VR��:��$ߋY����h)e��b���=�z�!��%�b����l�bmD�J� 䩻a6����\��3QM}�)ªiEhvk�A�K����h;�Q;��g�	C�T�$y������.zt���
���y�7�J��Ğ�A�&�o&I*!�K�����AE%
>7DCd��$�<m��.��_	��&�M��I���(x��-L���Ĕ��v��$�m�8<j����E�\�-I�LRɚ�8��'n[�r�)������1,ů���N�6����ǁ2&�*)���S���9�،Հ��jW������
�����dYmKH&����9�3քf����z6#Hw)d@nw�GaՌ� &������c�[ٻ1�0��+���Sr�/&�y$Oq�`��fr�&��[X�Kx'�lh�V��8�k�jW\g��<��	�tR�z ?_�!���JS��A�+�����TU�����x���<N��cH���$���Ql�8��n�5��s�SǎO�_}K-��ܩ�'��׀�2�;%p�u�H�3�Ca��7b,:T�iϸ�L;2��4~2ZYd�2I�kl��~�b�T�(�c�i�SQ?;7UQ����~�k�[u)���� ����8=�=�_CW���+뺲f�I�ص�u[��C���¶O5�������"{�������a���㙩s��^g����P]:��3r�`9z��@�Ijrb�S`�c��a|��-:B�:$l6(F�����c�Br�ܹ�:���S|:tzh����ĩ%��P��t��C]�\Q/K�� ��5�愄_���5�r_�w��"���1��8?5�B*��� H�c�б�.���-�LЈ6�$JɎ`q�7�BX�&g�2<��t�!,����{n�AA�O[m�}H��Ƞ��c<��^t"G�	�I)�e�ε��$[dY&rY��2!a���P���)��AP݆E��AT�-�� ��������� FIi��|�$�>�C=C"]��g�;ﰂ������K�>ﰅߗ����I6ಂ�՗��)5%�oWT���p�Y�^�3N����5�6*��{�%ʩ��Ի�xOY�obf��w�H�qҲ!��&�{(�4Q�wqꃏ.��m��Qb��B�&���k� �<yrҤ�P�D릀�AS�J;�<k��J]���ޏ0��8͏�v�S��]��&2�wIt@K=2ԍs��U�X��>�<�l�Yt͊ ȹ�I~���w�Wl�u�TK�E��ˀ����5/��-sM<\�W2Q-��(�QLx��o��ˁx];�E���̥��}M�3�%�/D�89��h�m�N<��i/΄Tґ��c��:Wfln���6%����pmm�b�F�{z�w*���sy{,C�k��i�_��j���Q�4߅���OZ'���A��I�[��  ��Np�3b�������^��A�����v�ǉ%�/�:��]z�y��	��^��ݑ�i:b�E�üƾ�,y��q�n�?S,bJ�;5m�n��_�&M&ņN��F�(���9k#�z�(4Vr̛Ϋ���������T�6ݻw�=3!Bؐ��0��D�P�D�~t��.N]>G�{�$�s%�.�[��Qr�� /�]�=!���u%6#��V�Lm�.Sۊf�"��̖۬���=y�IykW�9Ό!]�C��i���&vЦ�f�(    Nh΅m��W�^��k��wl:�j~���O�m0��^�_��n��^M��?#�o��Μ�0���)l�I���{�}7a'x ���H�G��vSX��MSܵ�&yK����4e����v����	(�nM���B��T.b���}mr2�1q�>���Թ������Ԫ���k�܎X�tE�0�׽���/�?���c�r�=�鑉��M�#��K�����o�R$x�q��/e��g����ܥ�[�e�	u��Y�E�=}�����"m��<��O��f�\Q'�/ZO�- �����HP��yrb��/}���gA�@���&��v�|�YR��L�-�($Q�է�A��(Ӡ���up4�݁6�Y��?93�<PP`�s�������?������K�;��݉㟎p&|�����Ӌ~ml�g\_p,��@�����"��]��Ȁk �d�ox��sI�͉O+
`���������x�����g#����&�H���s����W�xl���R�Ϯd���������&�&Om>X�_L� 6992�����Qco�$:�|ynrP돝;wnߢR����,��F��)g����j��d�S��(^�ź>��s� ^�}��Όt�>��{3��+q����ѕ�Q83A2�7�^C��%IG�@w!ԏ��u�Ory�Ҿdܾ�m�R���Ȭ��"/F<��0�l�@1} k�9�a
�?1�����g�E����̇)��R)�^� �ֱ�/O]�R�M�����F�ɗz ���/���Ї�8����Gծ����
��
3S��O)>g�����9��6�ek�h��'����W��G���-��*��J��S#㙏,#Xa?��^ .%D����1���_�pB�*�X�E�����7 ��a ;26Э�G��k� �9����K��O�|����E5G.�`�}�g:?u �J�tl�#�?��9����(5�������������������x�i�ǏxG��e���UI�Ʊ�Ѳ�������/s�i����|3��ɉ�{-�}�Tn�ElYOc���&ƪ�Q3��Tȣ�il7���[4��?p@��
Z����������l�iP����Txc{U��"�޾8���N�R�؀q>�c�٢�j��6xl�:]��4��a O,�c���N3�)[����ߏ�funX>�դ;�q��_8Џ���3 4��xu<p��W�^�=�Uq�͵�'����0��즦#vM���0| �١nZ��l�Y��؏+�E ���� �M;���p-y©� I�iτ�Ẏ�m8�Z�j�T7ib�H���������Ń�|�}�a��
���%C_`Q�\26/^�[~�iF��F�ګ�a��pZi���j �ȫ^A*�= E"�H�<�@#��~�hi��+�oj��*�t ���>��ay\1j��,�9�A#����
��Ɯ
�M@>���ٹ�͝a���ٻ�+�]��qujj&
j���l��|"x>)����Z�k�����<��&�2y��=�V��W�_����;��8\PᶉW��<�����Ue�c:)O�����(�_��ָ�fXgV��d��Pd𠀀SE	-k�u؀�;��+��p�i��]>�,��s�(���!v;O��|�y�ZaTC�H#���pJ�����7�W$�Ho8��a��و�n�%��zQl��f
@�sO��U��ƴK�J܂�� ���0r�2x�7����~����I���+M�ƙ{��3G��R_6�E����6[��<u�=Q? ���EG���%KCTT<c�	4X]�b����%�g��(8i0
�v�HO�f�8���Uz�a����U��6lŁb+�q# ���ߜ$f�v+�-�<�Z��ݷ�d��ux�H�0�/ݻ����b���a�`�6yc!r	0�B�h�x.��Y�41��^�9���R N�@Z�f�
���IbY,s��q�����-�Ƃ�䒚��`W�}�@k"B�NXPE��m���&N��n4{�OF%�����3�F(˓�4oz#�a�D�V@8�	<|=>[ş�������B�Z�H�P �9nWQ���k2 �i��6�B�~�%�f�kùf�i=`�j8�m%�n`_��^����6�c��7�e�c���_!��;�Jt���GH�%�߄��?@���>�����~��v����P��h3�� ^j������iK�*h�����M�)����FWz2��uVƈ�:�>�1"�:.�nf[��,h���"(�1$[��G��φH`�,�$1#��pTEtU��O<�o2�[�3̶�b�T)Bx�R��d|�$�c{;� �����f�h�׆�0"�Ѣ��h6�]�J)��b��5h 3ao�eR$�=��Ea5/v��Z��H�Wԙ6����)�DG�  5��	JB�$���@��������+�-{)�,m���3Hg,W�j6q�8�W��Z���x"���鳮w"&���*�6���.�m��`�N/�g��ª�U��杧�8��zk��m�Cº��s��W�5��pQ���N�#�
48N@Nd����y�9ia�����	�8b��E�A���T�C۔�E�5� X��@Q�k��|*�`�U�+�5�\�!���*X�d����n�	���|U��dw��TF�'g���n�;�aA��Y�O�6Ac�g�	gZ��:����<���f��Q�/JLKV���p,�Ĕ���0�r,I�ND�H Ԯ�r{)So�����I�ʗ�WL����kA�?�����E6j��l�P���{�������T�z�n%�]���_z��>����f����@��Y��`�` �GB���|/���ib�mգ71��i��;^VU��"�,c�B��i���D��i	��|u	�l<�>��V�s?��ɜ簾�m�aSg��[��(>����U��D t� ��$7�5�C/şC���h�6�::�E�=
�셴�Lt8E<�2ѳ�{�F�h�)�;rS&\xٶ���\�i��y0���	b?��u��N� ���-u|>��"k�'e~0Շ#rJYax`��W$�ܘ��U������s�zej���c}O�瞓Y��}��}��;�o��[�f�	�r��W�Y[��Z���c��s'�X��R�:<
��"K�l&@}|)��^��#}�l���Sq	��%D�|w�W瓬��g}y�A��Q�s������?wz��[~>�2��>�8�޼7���}>�����7��%��|�������Z�S�/g��3�˙��L�r�x9S��)^�/g��˙��r�x9S��)^�/g��3�˙��L��bP�/g���`�L�r�x9S��)^�O)�r�x9S��)^�/g��3�˙��L�r�x9S��)^�O=T�߻�C9S��)���F��r��˨�*g��^�7_}_�a�3�-�,g��3�˙��L�=-�r��ZD�3�G�q�L�E9S<7.���K)g������ܦ,?(?��)�
4�yu9��)�/g���"��)^�/g�?�3�-���L�W|�x��Ȗ������k:��Za?!R�;����)bY�n�+8�	;
��" 
�Ы��<Fii����B���U~�gZ%aJEk��B��uX�~B�<�Qh��C`��0+YA�7y=��$��91�1��=�۲��s'=��~BT��
`�	����{�����K��0��SQ�ov3����vs���"�G����"�(����uҸ��>ɍ� g ��L���'�b�/���B��T���,�($
�"��zW���85�/h-�-�z��u��$�ٖ�@���hR�,��s��o�iP(�[���4�py���>W�a<gN�j�͂��ؠ�U��~�U�P����z4�((P)j�I� S�Ai�kh��`=�=Ъ�<5𹋀�3��f=���o�2�Ղ�@�������!�5�������d�L�%�g    _�7؟!�����Li�-x�uI�[!2��5���Cr��	�f|�ͬ	�����0���{�'��g�K�|��2)sD/lmKD-� XT� �����a�d����A����������ƈ��=�������t����2ŝ�_�{��DtM��.��Q�0�=�2w-��g-����4W������.6��W}��,0��O��ї�?��M���=WF�?����C���T�Y( ��r[�p�?�i�!J�5%/���OS�uGz��C�>���pT���D�a� ��m�c�YY��ȇ�%�6�A�����=�T!Mi�u�c*"�X�k�#�G�ߞ!ȼV= �`�n+��n���T��I����Ƕ�u��Bg83k�=A
Z��]��"� F�������_#l�=@���%�u{�Ct���=�!6���h|Z�v��O��Qs�"�Yc$B�I�ְ�  �Q'�y�u�q*Y˸�Қ��'QAvNqk���s� 4w�j�Е�()�h�$ݕg��D��tW��
ܕ���hc��'�	�G�^s�R(�N<�u�a��Y&ՃQo��`��� Ӗ��X��Cjr�N�C*�_c_�G@��i�J�=wHZ%���Xj��}�)I�u�2��-(zI�6TRT��QD" ~���;�}�sG����]wؓvȞܫm#�ohl�ݧ�^�]���|MZ�N(**����2&i�eKP�}Y��#%�U�h]��nO�&���/Jl&��k��~:L����I�{����a���9�w�SR���ٶ��M��d�8Sj'�p5���/�B:b�W$0�-m�����7�������L�>;��W�4�o@4rW���rb(�Dt�ghYLC�W��Y<ژиʋ�VR�t`�g�3���G餓���=t�ݮ�쵾�C'���C'�E��� ��q�-����w�!��@���9'	3�����wb~�Ľ�7''4=s�b��}t͹+^�һN��eI���I��:�#�Ց*L1���[���9�r�f�<s�f9�*ȵ\,3�J#�u�0X�9~@b�q����zbԢ��4ym��n��*A3$�q8B��q�2��}��y5 r�丱A��<!z�D�My�ƬuQ��9�I_���d��,����b@4��z��l=�PN�N�$�~���S��f9�ثF;�vDJl?���~5"�V� �ob�hDQЄ��M�Xf�`)�XCP]e7e��x�:���N\ӽj�1k��ry��Ԙ`�8�@�H�X�=���Y6!�� �|���P�b],c�1�\��%u���`���܌e˕�9)�`���J&�#V��IӢe~�Ikm��s��'�r��v���}�M�4��;��,^��E^�N�	+�F=,�5ըF��Qi�F5b�RJQ����0{2�I�B1'���:����R��[Qf��uR8�i�J�L�#1rmuKK�����o��,&��F1��'��4�UR�~r{d�1y>�*3՛Ɓ��ro�R�L��"���F"��
{ѐty��~�ޫf�r�|ȋ�ًf���?�����,�4a�mM�8ίXG��u������-}:���z{v�;n����3z:@컯���HL��LHv��0�}p6��0�#�27�i}&<3:��N8l
va���^8kڍ �{o�{I��1s>�ش'��TR�r�4�������d�CV�+a�n|��������o�_ps�QLG�{����f-e��o�ڝo싑��ʭʮ7C�t�{כa�˫�r�VX�[v�)$�����k��D!�J�����ĝt�����r��r���i��&�(e���,��:~2(��<���v��nU��b��e��9����v��'_�k^�m���V��E�K�Q�ױ�vL����͍؝����W�;�����6zא�D~ �j�s��S�(�{ۣ�����|��Յf��h5������g��C��=g^%�Iu����2��|�x�;�dg�P�ɼ�\��ߏ2#y���������
v��!�c����م��q���;�|vq�����}ɝd>;��g�����(s��Zs���8�Z��R�}R�,��ac�*�g�7���Xy��/��(���-5��M�8yE���eT���&p�fvB#�����%���V��=M�5���K��j����ȍe���=�RU�>�Yo9�B������;�a���kg�wU�fS�ǲ9����V����-�Y��Dg���/ �6d��v��3����y���A��G�PݏMN����㧎�yjb�o&�}�:T�- ��/h~4�Y����7&�p�g�u�ޙ�kP&�5�t(-��̣�y��@�s�z2���֓����5��#��)����^��Fm�
���?ޝ������s^>s񿶱S��u��v�����}�^oּx�-���ǜ�J9�_���ۭ�?i�u3�x���ΆF�_=*y�F�n�Y������J�(4as3w��	��0�δ{�6�԰3���Ck�����[{�||,U�ٳ��#ʓ���擕~O��ҟiv@������Z.�S@�����t!��+:��*��'�t��!�g%��N+��6����uL1� �Mֻ�]�9M�GI�`i�@J(��.�ف�V��V��ҫQƐ[����1O�֝Q�]V;:1�F�ß{RV5�{��)���͎�T���aw�^��R	M�d=�T/�����3���&T�]�<��ķ�=�6�P�<�bQ�3zp�'��3f�'Ő�X�[;�]ch��:cm��R���� |:-.F��#�3�T�w�4�X���93pZ��!��p-\7�,���Gc��m�Dءn�f=НZ1�C��������.A�k#�oj3{�	(b0j.JM�P�mk�)�\�cl'�H��d�|ޱ��d\bp�:u�����6�Uf��n��p��6,��l�,L�ЀcgDwBA�]�L�U'3Ɖ�vmz"�	8dV1#�	����ku���ɆH~ӡB5<�MC��-�l����C��6��K=}`��>�����mg���.lP1�[��Ssu��4ҟ����9/��?�^��o�����>hL�ͼ$���z�Z-O�[X�G6�nq���c�p���\2��H�"��އ[��D�����F3/�g��Wi�c�3v���w3����&v�$�D�w��w��:�^O��%����V��~M����t��d.9�iz
��v���Z�k:����s���@7�װ�/uT��:��#�������|���3� ���m�]���i;�`���]����Kj��N���dEIb$��5M`�zL�XD�o���7G��oxq��\,��7Y��������3�.���)XI�l��2����]&���$�L��!�ۅ��b���zd�h�ɉ�I���A��r�2������Т�y[$!E�ˮQ�_\t��mgX�����KS��-og؏�T���X��X�32f߁x��Lm���coN�E�a�$�<911�[w��'�b(�+�M{���E���N�:E"N{���J�/��M�\��<S�I�!�����4���n=�ŏ� �r��lR
��	����d�u�F��M�r$W}��A9ew��k�n�9��"��X�7��I4���x(�,�iǹ���o�s2�Iv�W�8�j<����w$�6+��c�!}�)Ա-�K`#��s�|/�)�Z95����H��ğZ'_���|�֧&ibEt��*����aD�阧#�e1m��v8���F���[���'Ǯ$��:	�U>**X�2&^�e�J����Ay�� �X�y^�������U�
�Q��	˺b}E:3 W�v��e�u+6Đ�w0����p���锦{���7�XFרmќy�%a��T��_��<G��P4 �Pg�dr������.d?��齏>�(�"p-�*�����m䧶����/�?d�?�|n#��(�{�W����!�视r�b�K��՘�k�'�
I�w���#&\ϊQ�l������#��ֶ�m�%�'��|l�j]�Ǫ��#�5v׎$����Q�����Hf�n��Ȅ� u�Sl�/�    �v<7*���W3������4�T)�4^��^t�NFe�ஷ����(���:�7��F:[�H�K+�W��2A'	����	����$ho�)��,�u%�$)��R�>3b\��W�'�(����Z��M}���!3�Y)�� �k̞�!�d*P2��vx���O
~�<�LK�~�]����^OF0�Jtv�Vl.,�g��Z�ꭞ瀓���ź��nf�[vI�mAA~����l��qK޽�ȄS�u#S�*�F9�I+$Vbd��	��-���h78nBl+-{�]�G�g(�Íb։�l{�:��iC�Ց[4�P��8Oz��	�)]z���F�+'D#�
�2ko�f�=*��-�/���(A�t9��2����j&a��4������Z��K�?;�Q����a>J�Ԏ��+�����8�^�)aY�at�/�E/�N,�푨�n��SL�ʒ��ao�����X���ve���-9BHY��5���Yu�c�Zu���$K%�7)<������)w�'\J}�
`Ѿ�vC��hR;VO���NE��]�e�P�C���.qW���U]ߗ$����$��%�%l�����lS��	ٻtJx�ȨB�h�K�u�/"����J�";�������B���3kzJ�H໋ ^�F��S�K�9	j�.��e�+�r:��nN �|@��̗�i�?�B�tQC�M�+�����w`J�C��I�oq*N.��=��ӻJ�Z>�8��df=;�
*�5�9~��rR��К$��;�W���k�43�;r��D��ɓ��;'��|Î8�;J���Լ7Oɝ���1+�������>jǫ3����}L��8���:]�>����#ǒ��8r�����ĉ�?q��$�L�+���8�/.:���nZ���[*������ۜ5)�AS}���^3�T4�>g)z͚��f�������E���M��x�V�[���fh�qZ��ݥӊ����pf~�a���n���e'�맃��� ��ث�D♶_�`�YT]�R�y{~����_�1{�#U���VԮ^�+��VU��u��b���������|\�
\��`���j��jG^]5��\����q�>� ��N����G�Qæ���#����56���$'��!�9E��[�E^�TU�������4n��v0Oi��^���c�CTԂWm�
��5i���"�}��LHs^cZ8Ĝss��v4�Ac�P&���&b��p$Y�JT?ӎ���J>i�!�a�	��y}��|����"�c�S�l�_QS1�<�������q�^;�jAc���3�c�GD�}��y\7�K6ZIHv����
���pq+_8��5��WT;�E�{`6�
 �_|�G�Y|����ǥ� ���4g�A<���(�����hkIE�"�T Z��ao���s�q�q�����oSA���$_��Z�@PD�� ��+�pј��}+�j�芼S��Gb�"���|d�
����� n����zP�����ȯ��̀�@���-3(t�k 8v�	"�Ţ��<�p�?C>�JC�������~�H`��sM��:3���6��G\
gn�DS�wqX�TŹ:�s`$zՏZ�{���-��?����A�M�f�Y97�'�qB�@� uPJ!��x�p���"�V� �<T��6h��'be�*'�	(���$EFq�RE"��*j�p:���Gf���w��!��~s! � ��[Oh���,H��7���?����˹eA���06�=@�D��׮��؋�Z	/�N�]DYU�75�(��U ���WM���<�w�<ᓶ����V���A���O$�'��\�bK`C S�Ь�q�K4u*Ȕ.��~ki�)
?���o�4�N�_����9��Tba��/Ak g�f��I���^Ӗ�����[B�`������C�9e�*�Op�w�o��Kd����gs�ü�����kb=~|ދ���b��3 ���R��z8��@�c�eJ
\	T�s:���m�8���h� J��{�dj����]6�]`����6(��2I����HB�������:��nu�o�Dƍ�M�\u{=�"��w��Q� /x�X�~��0��[c�<��$ᾚ���9��
�	�[�Y�A<�����v�bH.����$������}D6h.����n�5����1r#�Eyh↣�bw�ł1DHw٬SI؀��$@�ek"���(:7CƑ����*��l����TڊK��>g�u`���x;xn$A�U��0N�S�(	�3gH�2k��#���u����Zcl�|���ΞӌEsھ�^)_��lB���i|�ל=�.���d�G7#�gk�c*��hMx�X��ƪ����~8�ڳ̠b2�a��guq4�5y�4da���`巴�@�!J��w��!^\�X�pc��A%����	�:lE��B�x�&�~������A<�߁J�%, �	����E��|�qD�2���IN�"�Ѡ�U�m��i����j P �@
3��r	�ep!���a�h�^[���>7�pB'56yh	�Z3��^}�[�#N=�w���񡃘Od��2����0�`G�Vi7��>F��6:����?�!ʾz�m+�������-ci��������M��������	�,dč`~�
5�Ӝ��e�a�=����h�@~=����z��k͵cc>��c�w#p��b����8Qxb��&��LA�=��k��n8��S�a��e���b��81�.�? �5�(�	�ݧ� �ѺE(�
�)U�RU�}��3/�{����g.��$�-�����,�/�����~Y^_�ח���������u_�ח��ey}Y^�/��������,�/��������,�/�����AY^_�ח��ey}Y^_�ח��ey}Y^_�ח��ey}Y^�/�����2q�/3qlL᭕���&���-Nc� m��Uȸ�)�xKH[x7Yᮙh�=ۢ�A3���uq[��/eT���
^���њ�*��(	=�pO���%���ɏ��
r��H���ݐ?BN�V`�t��#�֡pY
��B,) *"��:z���<�y�~�њbG���#}�,4�(�34ӎ�������h�*��]�3I�� <��,I���	���yr��y�b��JN�O���W�������%�)�:�+7�C�,CЙe��J�Q��t1rȈ.���7��]���(L�"��ߢ��&��o(YVyX�B�D���q���~�d10�Vၳ+$;Yd>�5�|Y�9�v���A�Đ��Āl��On�}}+�k��5�`�&��s-�<L�(���8IL$E@~�Ib�2�!;�v����hL����k���3ے�u�1�DU�)]sS���v��餅�d�=(�CL&A�Isd�������������Ä�9��5�%X�'�j:l^�I�ALd}�k�^�O�M K������t4�����tYD޲���(<�k���/0��uV�/*�K���L��$}�|e��q�6��/N�"rvI=̈́:�k�*�%ze`�i�<��I��R�S�$z���4/-��l�J^�6��@�xMB�r]�DF�?)J�XѬ�����]9z��	^(m�����Ydk�Э�.G�rN)S�I�"Y�G0EEI]���V�-���$,\���u�r�(�~2O2���lqH�׮DA�X)[Z<=��L���8�!�3.#"%��Aߢa��&iUV�"lS�ջB	��Ӱ$|W�VK.S�C���ӱ
_�&d}v���K��}$fYv�V�+o����L,��{d��b�X��YIT��eB�$I�0ly��HU�cu/?�N�����P��M¢=r�`��r?��%�F���F"Q��J�/ep��z����W���$XNJ �+}���`y�z�c&����(Ν���S��r5�jZ�ȉTA:��u�-�ot����=���T��d+�t�t+��"Ăܳe¬ț�<f����I �&ͦY1N�2i    Vb�-'��v��N�OĲ&�T~^�q�ZN�՟r��)~���<�D�4+v��>�L^��:Qw�~�cV���[�U���4C;�U[&�~��x�$	ޙ�3�<��3�`e;��b$ot�v�Z�'d��*���ʬBC5M>vn�+�[�����f���&�b�h�b�*\�QE��չT[|�FP���kݕ�&�k2�09�T�q��خ����c�L�5!3�f-�� 䮹��/��2�(~�MDA���i�������%h���$��-�v:ӎ�X��Q����NFۤ���fJj�3����3q���}}��+��ɚ�h�Y�k�.%C�� ~�A��
�ɍb��Ύ"q��]C�KEwm7�Y7r�znJ��V��!w��L���T�T�,1�4���*������)����N�0	�;9�R�m� xX���l���jK�����G��Q��v��(��,!0�ӢDIZT�}4"����w�\�б�J*-J,Q��F�>��ypҢ��LZy�������+�V��c����v�����m�]++�K̀���-��m8�=%�]�}T�ȼ���%N*T��,��
Ef�2�/�V2�P� �.S�J���/���Rhv���.۳��ֳ��^���Ľ��N�J�N@ry5I�FɩXn��X�4(2M����KIҶ�ѷ� ��X�D�h�HW�"_.�IT�ݼ[)ȋ���T�"��������G�����B0d��i�PI7{b]	�r�S%�}��Ơ�<
�D�?O�:!�Y�N|#�Q���uZ�ޑI;�\��^����t��0o�i�`�@2������p2���#^�����$�5In���8[7���*�S/o�b������K��\��� â>?��S�]�E��!�e�ŷ|��4�k|������|>���)�}�)��OH�&�W��K��놡9ږ��#e/ݐ�)�����i���0�.�Da{^�=�t�v�
�7_a5~�=�.��FC���vCw�����rą}&��L ��3es�$⾜�\��i֍�ߕ��%�M�E4H�RDa�%�tP�AI%�t`�B~$��9E�u�|lG��?:y�z�lB�elr�OM?ul�Ա���8R�q�v���������������N�s̡�}:��{P�@���Mse��Q��#�X�����.\~M�x���u~r��{o`�Q��V��M�k6W	���L�J?�{�I���}�CO��M�g�n���-�֔�E�Mq�$s�
r��C�����zS/4�ڤ�'����}Ө��EG�[�@:�P���hFMw���\��~�����ށ]Ua	�.�PTt(�S��";��d������Z'��;�y��%=t��I��!%��� �P�"�Uα��O:j̫���.%���2��UV�J�!�ж�sUG$�R�����J |�MB�o�n���VR->�ZVj�8�)�M��v��Z^&0�eS��4J�����(����R���t���s̺d��e��|_2��u\�J�M]�4��PC 	�*$�7��g.
8/�j�I���HZ들7K�6�Z�I�թ�ζ�X�]Ϧk��������8�l�;��|s�H��MzE.���[����T�־9y%7��Ņ�����x�u��F�P¾�!�IK�HO�c���^�f�t_� �\Lt�˧�J@#?9%�+n�(���Un���PHM8\%E�4�'��pϝ$'_ԃ��AM������c��p�'X#�|�V� 	�Z 6�rIG~Y �q FDl��b�橖ߠ�8�~�z���F����4�#�$K�4���Ƨ2�x��ބ�Qp��B����8�h ��3/�Gg�BX�Gp�@�4�T��Vù��թ����L.j���qb� �<?dG�X���d
��@�䇳ug�'���{W�h��	_�s��ZC&%��z��:��xZ���W��Ǌ���8��
���� X���5D�?���|/�p\N"c��J�=�����f��Fh4���c�zZ^��t�j�>$���`��Dӈ �&��K��4�J��4�J��`�%��il_1n���a�<����2D�*#���ݜ�0H�uv�Dw�+�������a�e"��֚����ˏ����.$��/��!�2�)�� �t�*���D�{V�ZW'[��Y'e/�u�F�0�I�-� l��N4)��²����S�����Щ>Å0�ݰ���u�x�)I&I��}��le��m����*�-��y y���Y�;���N�X�
]W�ډ_���x�l��iH�����lj.�ޠL�{ia�=��@��%II�e���v\���Xʮ u���?�*��x����g�K�R]�˙��)S��3ޒ�!"S-�5X\���\�TPK���2C�O!�0Fp��|?
|��+4�lΛ�_B�,h�Àô�7�S_e2��^�xw���ǳ�oa��5��D]��Qc��5��5�{+ߛ+��ĜB�\�d�G	/l	gz8t�>���sUf��A�����Q���>���ɉCgú�A���섚<v��ĩ���]��q�]�q�d���?�y��&�J�_��ܖ�wvI�>��U����I�j�&��GN�v<`)2�oꎧO��c�4oW��W膖�O71בR�P�#2���Zxs���W��4d|���:��S�7�x<˸����dK�]AŦ��F}OX�[���:�:��G!�m�Cէ>�O����j7ݶɛ�,gCtW�T��)���z�t�tܲ
���H�P�4Q��`%	���h�
M��ߞ���*=�u������c`�qW�rȖrJ>� ��G��5�w\v�H�;��i|tt5�aLrSP�U�x<쟤��z�j��3?�Rs���j���0�(�5�Ci�A�s��&����qpĐ�FM���Ը#[ڃ�R�d�8�J�]'t��>2M�MZ���Ͽ��j팳��$���A}%��&�Igߥg7��kE��A's`%<��}�H�Ɵ�ec���Ǥ	&�{rj�M�L.5�XQ�Ό̡�]uLM�c���;`J��#�'O�A4u�)��:3uA��թЁI�����p���s�rG��"s�B�݊D�����%ӣ�9䵪#�)���Ǩ�<���%;��q��uQ�n&�1e�P�˝�4��r�{���0�������s��jJF�2�9T+���G=�,g-`��?Z!jfJ2��p�5ΐ�S
Zq�β�OK��:��#����t�ֺ:21yBq7���xJ��3�����&�O;��&V=��U�<~,�Tu@;��(}����EjދZM?�k)��i?�ė�*t����Q�_Д��h�����o��5�����<��E��$��!�j�����#w�_\a_=�����ѓoŪ�E�~�"wܧ�H�g����a��M���kr�V��3|,n�k�_�}F�<ܬ��t{���5�h@$�f��M����v���$=�[^PWa�U���	��~]E��z��$���i�v�%��	5P�A+q��E��6�_�u*�gsd#�� �S�`�A��FE�F�ת/�8h�׃��z!��6�W�$��F�3~�Y���o�V��}�H\%��xG�סQ@�ae�^�c�U��ɽnݛ�� �z=��%Z%�����:۔KmF�Zx��#Dn��|������^>���y��ފQ�zH)s:��#~dT���;���/1�D˭.�jX�+�.kD:Dw��1��Q���DҨ���x�W�o��qX��h?u�j5�jPt	�ͅ 8���ꘀT�(=!aZ�^���40�E��_]��Z�y��=�ҁW�K������ӿ��v�����ǌ���g3�d��7?��)������̩� �G0�{D|�r�a=��/���k,���k,���k,���k|f����f���{�6!d`_��S��7�2�=@:^�!�v[�����x�;܀p�;l��=��7�t��I̽O���1(���CW����i�j=��t�������Z����ҋi�M�I)    C=����'����7�j��n!�1�˘	���@�V��<C�i���
�6���e Е7��1����@�:�����"���/�@�w�a��{ ɷk ��9*�5���:�p�!$�����b]�>ԉ(�*����tе
v�U��f73���H#D�g8�M�v�#�����x�k�n_�����R���(c0��1��7�C�N��Rd8��w���bZ�!mp�.� ������Y�/�e	�'���TI&��O���!��n+~j�g)~��9�d�A^һz3��V�oI!\:���"�O-�_��Q�2���o�yq�=�!n��>�ю6�Y]����ڋ4yҬ�-9�,�h���\��Ȟ����_5�刊��1e��ӵ���	������_t��uG����]p"_X+O����r���u~T���ˏ&'���٩�G�����?5�Ʃ�o����s���b����I]R�mm�V�1=�8��
a��.^~��o�ݛ㸎<ѿ�OQˍА��oȞ�E�Z�);�q#��P��vU7 �_$!Q�P&eY}glkdoxo���4A4�ċ�����ܓ��G�AQ%U�m6���#Of��_����gAL���㽼��Q3�zW��9,?����)ēo�-=��� đ�5��ݒY8�� ��;�?$#E���>S*�/Լ�(�0k��?���5,x�Ń��$���65��؃f��")Z�>U���䎴�u�$��'�0Wn�<�tJx���Z�6����t�`���o�C
�ah�)��(���G�K@cHъ۔�����t��3/��8:i/aV8{:F�����nP_nc�/�oI���%�rT��~�D�:��9�8!�	ID������5���Ӧ�i5�I+�l_���h��"���y��`��L$����Մ����>�b�y1|�x}��K�a�ӹ�`�Իj PΜ�=��I��$�W��_5�Z��Jg~�:�)wϰ�}9���2�\_2P9>��M�a�Z��Q<��xK��Q�Z�A��&�U�m�ubs���Y�*l)i��ej�(��-M��q���&H�����._���ǁ�C����S�2�e�O$ZϠ��>�����ܻ��V�)�&�7J�I�p�W.A��
T+����~�A��	͝��=�鏋Y���D�_��~�V�z�z��,�P������<f���k�����H��)��/�b��%]���/�25vFG�R٭�h3)o���_���0I�_On�G�h)���)b�O�{0��pG �g�4Ӈܢ���y獽&�����?B/$�꧲z?���N#�]����ѯ�iݡ��q�R���c_��#�A��f�q��E�*a�0�Aw�K��5�Uh���M�u䑧��8{�PVgK�E�`�_L��Hv��M�����;Ȗ3 τ�o���F��9���7�ZG�IɂZ{gd�����f�T����\�ˁ`�� �v>,��؂9Zj��5�_1� ]�C�Ң>�� _�D�s���ii����e��G7茱n`���CJ�j�[�Fp��3ZQ��pa[<��v[��{��8]�څ�Ce�=�1c?���#�ǞƟ���b<4}�u"ܠ�h������� %Fٲ.��f3���t?���B�C��F�5�C�nOv��i�ݰ��u�J�T��ҕ�=%}^����׽�mY��G澅/�/~����2�=> ZnF8����~V�p��4Z�o�]��y_0.�ۿ]��)ս�p�ޙnEV��2��U<���oel����3��_3�i��bD��~{Wә�YX�?�{'����sk���Ө��ׂ�G�d�m���҅/+�$�ؒ�}"�2Z�?�R�IF�^����T���8�߉W8	��_� *�Ĳs44L���AɄ B�l��A�`�]W�f��
��RwҔ�8�#�1ƆᯠA��8�$PSIƸ��S��p�_EѶF@�#��EI�)mkD���T�3I֠����'�S�>A��/`��;u5�C���u`x���e�)?	V�~��@efq��:l��^jc�~y)�;�a7���,�>�W^�TR	įX��]��D��q�f�	?l��e�+�V�Ɯ�X�I�N�7YT���k�d1����eT
��Z\���F��0`xw�1өG��Sj�	2�Fk^��8D!"�S.MT⍕{jÓn��"<�"P7����p�.���(6��T�}��*�������J�Z�8��T&ˁ�]�6_=f5�QA����M��n�E�^k2c->RY�n/n'pv���� W}�����m�|��Z�N7l���$�Տ�L�����v+X�_�Nz-�&��Lr�8V+<��"^��^Q{�[����t!�"�/i�ma"y���#�B�)k���u�.��ſ��W����$�.����k��`w��iì��������-���0g+��ݶ�D����I����'`����b��nم� e�lC���_��<{R�JMb��A��v�y�!��Z��I�W$+�m�^���e"�	L�?
��9^\�Ub��X{U4�#E<=�,��%��Ol��5�Y�����q�Ֆ �jʭk��_����\���}S�D��V��w���X������Q��a�?e�ҁ��a50gN�>j!H�����n#%�O$�8���ˆ�{��
K��@��'*@y�j�ԧ���&x"��kj3,�D�m�#��Pd#R�x�����̍��#�$��ܐf#�<�k;���>�dLrz�<���۞�s"�%�y��.��
|(}:�Z&����[Q8~ &կ���71����8����7�H�TV�x,�R:[�R!�5�C5�C�Nz(�7m]u��=��
�蚭F��4d`�j��X~��Z�^\��5(�"�w�wtx���J���S-���T�F�+@�ɋ�&u�\�[��#��UO/Uͽ�{5�'3��gO=��˗�{��c��fg�g�͟9��4ݏ�	����s� �9�@ �<������B�I�&lnR���;��Z��ݳ���_�H!�x�{����=| ��.�l��>u�"��r�K���@ ���n�V\D�b���j� 0��1�����K��[��	�z�Ô4̙�MV��WԲ<� �� �X��� �^��0Ï�a�A�wy`����b]�3tJ��luѶ��mjH^FG����'_�_Բ�`����%$�Xƫ�+�N�c�iJ(\G͆`os�����iH7$F(�#B<`��@<w��I_t_y���h
�_��F� ʿ��9�dp�%Nd�n=$�b��)��w�:0�x���!'u��цPD�}/��z���h�`\�a��|�q���I�=��#�ˢ�����)^���������5�m�� ��_��}ˬ�@���(���b�-ۺR͒�O��)e��1~�C�L3�z.��&Fѷh�i���	�ؖ�(�*b���V���H2��� �L��݋�#����8X�ѱ�n��̟<�P_�����?�?��I�i�'�&O�+���o�}k����0t�Ͽw5�<�߶�{�Tc��M-���4� UN6��O��H�w�N�t�V�X}�m�C*�ڋ�N�SE���Q��d�[�a'juÂ2�����0 ���kE=��,�my@>��r������rOͮ�xB�,���pv�7@��N&T`aw�,�dQ��3�JjZ/M�����^�Vj�O�`ŋ��0j'��K�-��/хq!��[&�u�V'�L�����!��i��@�n�CzЊG��ߋ��m�A_�#�ai�+���E
ֳ�ht��/|�7��>-���A�,����!:�]SN�F��+�nP�fԌ�� Ѡ�ַ"%�m/�e/� ���:���TyM��TyM���,{M�hi������],/�̮~�hgLS1]�C	��ad_�Ib��*��B�Y}����V��G8 h�k�c�0��1�������]�����I,�݆�;J�'�z�e7��#�e��$z�cD0�ur��OL���Q�:d��    ? Vُe���2�n��>؟�}"�| |�MCc��Q�$z�to:�,H��eG����n�����e"��(f̃2Q0��=N��Jf���B@,�`���:7żZ��ZE1����,w�}$5��P.8?��X}�U�p��Z�]bU`�-��K��PEl���s�N+����|W�I�ξ��Ω�tX��a�j%-l������Uǔ����'���yWcb��zv�����0$�Ä=P�� ��Ĩ���{<�vΞ���q�&?�
50@<�գ�>�����]�uյ3�(�;5f&�?����N]8{��a�z�7�?Ѓ��D��7C������-���^�[��7��U��]j-��;��;xꫀ>�Q��-��=��	/��R�Q�c��&�!�d�}�έ����Y�1��;<z��Kݔ=m�$[.��-�U�VPÀ�$��/v!���=ZD�8=���p�߻�"���{��Ka���	'Ǯ��sL
��5�1�����e@���=���!@�Lng��Z+	8�"��\��CX��u7�#��]�~ܾ���%�T\��
��{X(�GHb��f��#APz��K���<�K��<� ���*�ߪ������eD�F�Q��>"�␂Wh6��̌��	�����,,yI���.�y�:BzM	�[�=�؇�<�&h3�Y�.=B9�?�K
:�]��5%Pj3x=�z��fC�t��M��Ѯ��>0��uMq.uw歯Q��^���4��A�jp�cL(+:	5<S(����`�-@�8��������"}ěv��U���t�N��⥚�v'hּע�Q�^z�g5�(N������^5W-�=t�w�;�������A�2OR�oQ���5�rC/ӵ��gD�7*o&�V)�=�gQ���/��]������rٛ={�􅚦���m��B����Լ���Q�� ����&�4�l� ����/�9��M�$�KR�b�
^vvX�Z�y��˿��%�F�KpY�k�:����{\�J%�W�I9G��Z��ǶW<�ܞ,�X�"���q��M]�VWW�}ܖ�%t�֦�ɸwr�鯴���D_� Qi��'�IT��5���Bp��]�q����[����C辋�Wտ{�NsM:�B��K���Y%圞2�G˽Ô%��[Sw��x{�����yw�S��^���֜�*����v�Nj̭�*����};Z��ˍ���ӫꍒ�kbO�U��]�� wFU���k.��P������Bm��"!���%t�.��J��a׋�f3��)��]VkN�Z���F+YS�ݮ�[��P*��6A�m�{j(����t�����u�N���sM���v�INcC��6�5PsI`�jE�g(Chy��7͸j^3X�6�v�Ӎ�~������r��n'jД�b'���9�\�k2h�M2���%���~�J)+	
b����LGd�la~F�b=��Yqh1�$�m_��8hљ���>�U8~���:$ݙ\��Ͻ5E��4�t҉�G8�3O�N'�m�ZF�:@+�l�tzKg��ZjC�L����J��n��Q�U��T1�*P� �@�b U�{ȸ��=;�;�G��e�!��2�E�1h��H�B]��"
&r
݆�9�Pڪ�B��WT�K�B[�-�ʠȰ�1^��4L;����b.�!W좕�����\�x�VWo�������\iJ;@*G,�
�I<��@�G����������������d����>?�ϧfh�| Ma�o�Q��l�O a�1������by~�-�A�����#��I��f<�¾�D֑�����B������c)BO�<+��!RE@j4�}�,#�!.O�f;|zX}]O����. �`�c �6�9,���̶y6|�]>B��}�{`��F���c�<F~Y WZ㳥�P���#g�@d��goБ\>P��6�����%��0���?2��f�����YϏ��88��x���s�]�E�˰��ބ���K �f�/ 0�W8�Ǡ�;��"�]<^$�p:	3DNY�Ñ1���q�#ՎG~�WE�`%�B�kB�����f�2��Xa�#홖�C��x�ٽ.\k�)����q�8��盅���7���plz���B�lգK���� 7���o+9^�`�N�͟:����ˠ}g���3�����}Z:w�[�c�Z����x��k����ԾڡS��+�&���k������6�lr�L��͍/�po��q��kT��������w��Μ�^e�|=�Ř2��O͜����b�/�U1X"%}��ݣB�b��y�8i�
���c7�:��Ǖ����t��\묻��Z`��薞�P�	��D��3�0�s���2tA��,��hK9-��o��wN�J^��'SQ�����,_v����_�'I�Zh�ը�R�Xͮ~���~SWb7��\��#�U_�Kˇ�qv�3o�ν����=�++UY��J}]V�����!�6�d���;����N׸�c�u�-&���TѽQ�����Y��c��R���=�9�}���T�������mέ�Щz����&`�b�h�K�q�m<��Lyq����k��Ư�Sv�%�U͡��73��g�B���B�_arՉ��͟9?f.l�>.�A����_P�d�Bn���r�T$te1������X;ザ0�K=J`�O�U�B�����]��<dl��)�<��9lP���:Cma�A�&�Z�1j ��*7��36m��t��̣ۈ��$�sA@���,�٢Ŷ�ur�D%Y�d�ŜM��<^�[\�G�#�	U,09��w<������=;� Y�L/�#ā5�t2u� �Ύ>C���h��6_�㕹}�E/����]tm���##����φ��7El��4
��F}.�F���0�ܖ�����6���0V@�r}��}�r��3�J췓�:��.�F���h�ռ7_�.wb��׼w���kv᫋�a�X���Rrr:ݚ��KØ�*t��Ӑ�ck�ݦ7gq �������<fg�gJ��˔;�yg�X�C>o��Œ "!�x�7lD�
��b�,`�G&$��^x��<Ï�U6�	ǟSݧls���<��xZ?AH�{�0�Ut"��0`�[x�5�i5���M��f+@]xB�c5�B9��KAJ�'ryS�8�F #'���'5��TP`f���[Mj��k�͓7�x��`����1��kU�إ/T��<�a�`}SMz��2V�1u��g�~��K O��u9^�A�۰-�T�v%����R�:�j����ʓ�?��,T��u�����[��-DP4�B���B2��/�\�<��K��a����sd��:7�{PqW��n��:�~��b)`�X��P���?�_o�e�-�hm��	jۚt�F�����0wU]y�F>�A%��C)\����-�	���R���TN׃�5i��G�
Q�B�a���ՅR�v��(���I$e�~�<�n�mt:��_<��J��w�zp�PA"�A��ܰv�����>)�Z��a3�bU�^�P�ؤf���('@T*��bp�_�W�SZJ��=!�����%�\��%�\��%���ΰVxS���Z��7��
l�ޠ��M�:@�I�?L�<���t����,P�����gU:�=j�.y�MV肋fp���iI�g��wY���F�d���.S`��bD�>{�ZJg��[�x�~�RG��[�)�]�;6Zwh�v*����[�*x�4P���*"X�*�D�CQ[F��՘D�#�+)w�ͻ�����q��'�zw�S�j�{�~G�6�� ���G�~��x�f���l<b�5IF�S�5|=-ixl��Yx��8� �E����:X���8N��(�G���ߖ/).49� �����I{�=�b��	ؙlF��^���19G�\]e�oڠ�m
��%x_]=�K�b��Ր�Wi	�:8ҀnC漨�,���t    y8��s��2
�O�B~�a=+�Xp���=��M5��2��g�=��	G�ot�s��gN͟:�M�Y#����م�3�N/R��3�֡0�؄��N
]
n��n$��tX�T��=K��-�o�E��V5+���Ո�����(7�%{o5>	̞.��=�[.��H	{ ���.e�;�1���Â
\5_��0b��7����i/���_�W����	��f����+����Y���ou
�y_�M)V�q�l�?-��[ G\Ë�=c�A����Ug@<&ed't�;
DC��("T��ґC� ˏ��p���[W��vD9/�_��}��(2N[�MA�f��`�<�s�y��c��ȳ�mP�1�{�'��;�A�3�tXΒ2�-E��!�F�5H(��f*0ׂ%���O�xE��	��� E��b�:����s����M����J	GF��sgD|�1�=. ݩ�!Qa#6 j��+��Jx��	���$!}.łx�I��<lX)�:{!f��܅�#�X�dR 4�M>�}�����EsV��'�I*Sd�:-I��CuB����Z�5X՗��#�x��Wg�k}��f�r��	����Օ?�.��믿>u)j.z?�y��~�w��kDss30�Wzu�͝��]a?+SNe u��4�L+#�-�M�����8rbG��������H2;t����R��_\	���x�p:(_�ם�J�������qi���.1��	:��Z�c��lb`���Ц�oA���'_fZ|����a��嶧�a�v@���r��%[K������1/��?:v�4B����iF~#9	����ٓ������.Ξ?��1���Z3�ѱ� ���gff:����2��w2�~�������g��k�Μ�p���^�l���X
ǒ�O��GJ�<�zkm��}l�i:s"���%Ap�@V�Yn
�u�m�i��~� !q����k�ZP����m�*D���+P�&^ ��� C_�W/C�?js�˽@�muuF��vR��N��UM�A?⚵0A�;�ƪi�nw��a@�"�	l�����vt��ie$���+~��abE��R�E����f�-���]��ڴ�P@�k�b1!�%�1����p����j�`�x�Z������,��B-]�h4}�w�`	[�z�wa�ڑ�����]�d�eXl��X�c�,0X��z�wa-3N�<�-��*`�x^�a[f�r�`���r��w��VӋ��/H�-��z�@��ŗv!p�m�	�����Rm|�����=�!��ȸV���?�p�y�j�l��ה�t��	�R�<�N��q��f��"`��*U?�V�j�~"`#���P\'�k�=�IYH?Ԧ4�%� �]�k �@�f�L`4K=�-�F��A3�C����n�Ӷ�8  ($Z�L'g�JZ�����-O��,R�W��S�'��U���VUԪ�ZUQ�*jUE���U�e~C^�����m�������>�4*�'�%��7�����=KBS�y���i�w���b�v<K��1��+o�X�E��`�y��N��L��=���=�"���۬[���%q)o���#���-�C��� ���>��[nXf�^�,�<�r���E<òZ�ů����&���p�rn�Q��8�F�	�r�?��g���i1�+�mW�qYo2��o��'����$_7�S�OڍI�Ps���#1l�H�qd�n�w�o"�3{��-�S"n�O�+�Q�;2֟QzBb�Ap9�����r@��RB7�?a���m�?i!�5U>��Z֣�AA3���x��f b�uS�G�v/ڋ��,�"A�
�'�<�����>��r�jΆ�A�<����w�պx��{�g�p|FRǎψ��I}F��r��/�
�T��4�1�MNi��Z�=E�āp�O$a���n=L^�q���+�U����e�P�<E��Y�u�8v2�k ��C���)�����^�z��13q1���9�3ĭ۩<ç�"[��qZ'�ftL}��H �Q?/�yva�Yȶ�VZ[ ]u��an�C�n��4w��y��٦gi���V�Z�j���+���y����W����Lu����3E��Ң���Ξ��^h<�׺�K��!�|���
rNLҫ�k)�*�}��2u��Ryu��?Y2q3m��� �hg$g�)���ZY��x�G����#Ft�sn%?�)��'��`�������0�R���I���T�}L��b8q>�K��������Nخ���A||�}���`������{�e���6�B�	���Oj��?��:V�	��T��P�*�^B踈r[Σ�GA(h�V�X�����wD�m�uX����t�� �`%��]}�����1[��%PE;���I.�����/h����m�he�?�eA������/x�n�x��CC�Q���#��8*,k���0�������JBI5�N�8!+N�bG�;J���n �S��Өy5YUJ���q������GE	57U5��s���l�c���qa�U6jC];i�4�֮底��I�}N�U�;�My<���1���D���bu#�}a��l������g�]Ё�7�����_���g�����}��������)@������޸R2�Y󺟆�('<�A����h�]�MB}Hpя�e�!K��,�},�*Ib\�#o�c��2�x&]A�픻��K���S��o�>@�sn���q6�/�J�����t@�ۈ��ݔHB��׬��.��̥V��ǥ��t�>������}��m���,��(P��tҡD�n��l����1~7- ;�dn���#N�5�����o�8`7E#Yp��O��z��;�R&[u�������l��P��VH����(+\[rF�I,W����Q݄-���&jFo���R�ٺ�JUܖ_�>����5�fr���(J�2ɜY-O'����,��'j��\�,��8J��Li8�����P���<ƻ���ёFn/a*2����Δ��gh�A�2Q"�^��z�:��P��<�(�LC���	R��!X�߰��_�;:P=�%�䄣x[g����< �d�`ЮOr�17n�W�vSM��XF�G�.��^ݧ��m<5(�Q؁��ټZW�Yy�n%�x����i`F�F�(+5Y���Lw�����ēݞ�����6�����:���J�=7�x�a�(	p��9�8k� _�8�.A�\�hg/�=l�P@�{��l�>(���n���)M����������m�b�m{���]�a�B�u?����0Y\�VVA�K�K�떻��h��]�Y�	��c��*z�|L3��Y��ɶ���^����v=�ۉ��j��>TR,�~kڻ�@��_�o��62�ҥġ;� �*
����f�x�<2�m;j�zӇR�|EW���,ANsM��W�7�ڔ��8Mm@;��.j�ܨ���b,���ռ�չ�l���n�F��^��~�;T4��zh�ܱ�3|�E��܃�lWv�ZQ�Մ�M(�Y	�1�Yʋ �v[�m4�(�R�I����ɒ��}�Zy��Wy��f3Z��с�5���BDF]����\������FɅT����Px���o����f^��c�k�Wa�8U,P��V�F�^ �rɅM\�ԤG�-� ��D��= �N"�� V��SE�b(k��kn�|7~��x�h��Pq��
�6�EQ%Q��$�n�+C�vBqЊV|,k���I!#VF�zO��B�]�bz�:I���W�p���G-�!հ��[��$<PGW����uM�{��hW���;�z�J	�T����~�݄��Lc�+�<5n��fn��F�Gp�P�j�Q+8	�fRCP�wQ��L�nԑv�8^%4�ˁ��vq�Q;���Ń?�w@V�u[ ���w�O�
S�T_[cJr8�%:҃�K��Uze�{�d/hx�EƂ�	��z΂�z��`�;H�t���&�g+�i��Us�    ��Ũ���d�Z���@k=�k�6�BuLp#����=e�Xj����GqK�J��U�FjA��T�c�JH?o�1�������R����=�Y&�R�W9�Y w�ߪ�[U~��oU��*�U巪�V�ߪ�[U~��oU��*�U巾u���6�Ȁ$.�0ym��S$}xm�S�xg�e��Ki �2e��&/����c��V���+��$��c�C����<Q}���OTYԕ�-����g���PMg�:��|�r������{��m3I7�;�|��1�Ӄ���Eqmd������������7x[`��3�x6�|�k�2�ᡷx4O��M������~č�5c����5E.,�'	� Ucn�jl�/� �%�y��_乀�\�iu��:��}��6k���"���.��|Vh�SZ����)ȻE��͝�{'��Εɫ���Q��}��\�Gn��crE7�A�S����YB����%�۞�K��(.?G����TQO�Ľf[a_��1t��bt�1��V������=Њy�5{������PrlAn�UɃz�R���Tsu�׃�M۽��h��� �Axԯ���sqvi6]�����]��R���}
��j��[��o3ڗlx�{/��ڲ ��v�ტK6�r��+�fs�^���k6hF`��7�E��~\��)�j{V��G�w6���s����DI�p ���5��6��˿�_�M��}�V/�@��Mi$e-��oٗk�&2�l���v�:H_-���f\�D�p�k�g���#�5��3�(
# ^�dIl�؝��g+�a��̽s��>l��4i��e5��	�i�D���Fn���)L�\u�M���=r�h����֜�3��mOv03������=�L����[�d�u���%��o���`l�Ι�u��XtO���^��'�Olj�c��s=f^���_�X-��M��+�x���pz%F"
i8y�?��p�B�Vuj�S"���kh�g�����a�7ec�ugai!�ip�ĭ�
^Y�R�J�*=����|{�#©��s��D	��2���gN-�^8?s����-Ď�)�t/혜M��MN�eh8%Z����Ɍ�Ӱ7�*����.a�2SKd�'�`Ls\ߏ7��
9"�]��r��хX�6
�p��ı8�cu�O�g}O"����8&� (fRD��s�t7����&?�B*O��� '+������pv�f�	w����B�0t;�t?��|� �""lpg69-���͒@&�I���(��th��w���m�t�)�%�퀗� ��i�Zߓ�1�����/`+��&ወ�y�-�V+$����d+��?;�9�<�+�W����3� �[˨�3M��!���E!�Z>h��W���ꞀF�SW��ON��;�v	Д�4p�?ƕR��f�e� x�� �0���+:��)���>����,/��� IZ�i ��-#��ղ�=��`	(�-0F��.�@'�h��tO��tݿ��^��ð��Đ8���_��6'���2�MFJ���O��FT���4D>����zc9����H�ߛ�:�7��?�����=�~�"-&b�q��%��P����\'VPx ��}8"�S1D4 �;P}��M8U�)�1���@ԜT�keڇc@<���mԆ����Ԙ�`v�:m�WD�A��!2?ߡ?K.hg̘��_tЍ| *�t�g��\G�N��;v�[t`I�>��2�J�=�|#����2��� w��4ER&MEk��V0�%��IP�*'��̅sg��� �ܙ���x�r�O��=�(|�̅��>K^t5��H����Tծ�G�g��P]M����s�T�����)b�K{�������au��=����^�JQu�תb����j@1%����Q}s7��$���V*��Q7\\��3�ד�لN���Ql�G��S�zR�ImE��۽AKƠ!��_��~3�^|��X��ֺ[�_o,7#�����(����Jڱ�|����G���ԃ/Gq$����+1^���5]�X�B�װEUs�J��Aq�އ�s�묭��S�~��V�r��؏�#vW��N؁�@�E�)5֤���Wߥ��k�%��xV����;�Jl�F*��4�S#����X��$m!���)X��z6���9zYA����?P;�������е�-�����z�����~u]�F�O	�0h�:T�(���BC%^S�.�Bm.Na�"�=h������1���f��.��=l���a�����=xo7ha�BX��&���&����!���Ba�սpы{m@?�^1{��f�
�T��*4S�f��L��B3Uh�
�|?|��j��m@����1o~��y��d8� ^n�Eb�]�^Ⱦ�d�?X]�	�~8��K�][X�6k��'�E�!۰�Ճ?h$�=-�,3[��vf�a�Iq��G�}]m�q���=��J\<�n�mZ��c��OR����t��-Rʓ8v����!����&i+X -��+���`D��b��F�c�7�����f�����jOb@�#���Ff=�O��FwY<7r�ZEr\��jf�ʥ1���d�+��X�l�3=L]�)�:Y^Z�k��N�4*�j|�ʕ�C��b�M��r���&HWx+�V�M<� �Y��W#D*���Ȭ��u����%O�z��b�YS���B�9�C����6t�)���4i��bo��=�/�'8g�ݗ�vX��K~�Jm�@�͚O��W�p���he���>4��E�xf��նY��O����lf�#_�����V�>�|[����ӢO
nX+����\~�n��<��(�IS��
B�$�����*�M׈�RreI���l�<6��"S'%!?�Б*�&������bc��P�0>'xu��b}¼�3�F4#��@��ةjA���Z�����L���ʔA~���������%�p�q����bp�,��m�L�gj��Uߊ��e��s�v�eF"N�K�H��}�Qb����v5�͝��4g��~��ޡP����>��a�����L �ffI�Pv�{�MӐ.?����	�0c`IB)=��z����!}�$.Dg��
7uvh@���gS���S�^�ӣ�[�$`�x�
�	)P{���X��)1���g��SR�r�9�';�#7�)}��){�Zz�W"�LqH�
Z���J���A��ť�y��'.���Z�4P)����nf��z�K���⾇lc�j��n��G�5��Ҏ���* 8��0$�\3|�:���t�P�[s
C�H��R)���w�o��޹����]L���d�����I\.�v�e������'���4یq`����@y�l�CI��SP���J�Vx0"��XԒu 1KG�x����o��P��2�7g��:Q�L�.I��/7���x�����|��(�~�p���4�Jƫ�,z�h#2���`��\�.G~�g,�c�LvY!��/\^�⺚|��h����~�������uVL��3�����6���zY�LVo�F=�r�;,�2r;��]bo�7ߨy���]V����6�q$�٦'y?�={���lnn�s���,����S'�y��$1���Fwd�$�6�]����E�0e�m/n�Ԣ��Q�y���"L���\.�V6���4ߔ�	�D��Q�_��L4W��7ɠ�Ab)�7>`��#�ܐP��?�=H[����Į���$ ����C�R��!Е�� �3q$|�aP e��i�Ĥ
h�����	�����H��o���Ϝ.���|-�>������S����מ�+��?C�x5�����z�믍e�O�Y�$�B�t�n�eTp71Pol�݄���i�����'��`	�!����"�ŝ�l`;�	H�m���BP�[����f�ǆC��BJ����>E8zټ�q3�s��7��x!���;�A{)��P��Gl~���alKbw,�CC����Y��%><%s�_R�Y�b ��$+��'ќ���Z�
��8\�u#5x ���R��
{    -�9!�s�Od/c��mX�X~��4�}1����C��6�B�2�Cŀ�V�&�P�!���_N�tf��$�/��f���yVM})����q���5��~g7�]T��2`���ް7<\�Lg�*ԫ �[@�$Y�RY�z��oB��^ڥf���o5r���(^�$ws{�?A�EImJዡuY��kEu���0L=�ĭ��|���6��B� >�W
�<֗�L����d��J�� ���!��	�P�5�.��z�����W�D�o����������+Im`��L5�RL��8\
�@ʡ͎L3�ح�zm�8ŝ��=lW��Q���bZ�QmN����~���k�4e{�A��w��(�����_�>:U��
�U�*�Vܪ�[p�nU��
�U>��]��̍�>06* �/�>`zoX>0 �|��l0�v�
nV��~�#��_i�7�-
<_�Y_�"�a�B�-E`�,�����8����:���D�֮�����<B���w^;@3N��xG��N��Ǟ�%S�2��km�W��W8���E�!F�*.xLMH6��Q�6c��jG9��S=�p���x{a��t8Λ�MW��h �}�*-g���z���ʲ:-h��qV�5 �r���Y�X �;>'1.[m@�����\�a/���Fd�y�3e�؋E�����|{���}�M�p���Jm���+\�ՠ��Y�o����UQ/P��M8�|fK�U�����z�4<���9�K�'+��$��͓�X��F�m��iɊ����%Hhe[ˢwjx����u����Z�f��]�U�L��ʅqe*Wd���&uQ�'��6��Jk?���^dy�����\⧪��R��6싢k��m��8L���H�?�p�J�P�RO �OE��������mK
I�r^�:0Y�D�N�@�Q�/�C�=S�3�ױEiYR}����'�]��o�����a�#�����z�p�����ڑ�G���i��Ho/��qE�VQ���E���8�`���`�pQ�	��z�E�)ya�� ���f��e�0�I�]ej�3P9�\%�������Yږj����־Z����??7��%��]Hz��ґ��3g�O�d+J��K*J�s������� [�<w�+�����U哿�����[�����ύ��Qc�a�ed��0���F��I�:E�(�)~��)�B��y������<�i؀�s:���n�1L�� �N�$'5LC��QOܶa^���#���5Wa�)���e���lB#s��"fx><Ӟ\�x�l!8��������f����Jz+{��sMm�K�����+_�x�5��J�6E��&�������n���@��siѡa�QJ�H���-X���ϣ�@g�tR�=z���Xf�m� s��@v7u���!ʹ�N5`X\s����,�~���-����l�:���=܂��f�����6�U��N�����*��6�i��Ij�lxu��Y��\��]��p�=�q�`����\�<��>�gd�E���ɢh�$J5R�C�P� W�Nlz!-��5%Ĩ�JY\G1�͹�%����?�A�}��e	����kz�u܆���{$r�9�ز�h��}�{J�L��
��<��>�5	�dsx+�,�0`�\���� ��j�Rg�7�����@�AZ�&}�5
#�p&�RF1�s94�yd�W<�斟@�.���'����Hȳ>$�6?L5� v3����hY32��bLfM��a�m�j�Fܤ���nY�$�$��gHߗe<@����{Tkkx$�Y[�ZKeÖ��8X �	U���ү���\քK�O}4�n�}��� ����� �wi]���Zfл�ռ��RtT}u������d`PM%��G�luJ�%���.jf�B�a��C��>Qr�'���~�~A����+�?N$�PY^����N��԰_"�86;d�1�7�����0l�w(c�'ظiR�   ���l���:���;u~�;~��	�ԹS����������mmj�g�s�Y�20$��e�k0��hT�Tt[*��Llg��3�r��v�}�zx>C�.�_C{��Lq��/<G�t��G��-���R�O���u������ρ�N�p_��ݖ��<��[Q��(����Q9�n��j �#t�G��0��F�7׼`�,k����r�滆0Өm���k�G�ۆ_��!��_��V ��v���Yr-�-�9 �����E1�A�C�"л�q.� �����UOX����V7�x�*s����76Rȴ�v�a�]��F�M���f�K�ʴ�x�djnw�q�UNL���q��H��u��F�w�v؍�.L�oѤ;�Q�YFL/��Ͱ���.�m��Զ$�"=�o�`-�.����#���"�|[�q�7�YqoA݇���aO���A�O,�~I�YT�:<l$cM)<��˖�\j���{�j}ll�eǊ��- �A���k�ط�u��#�׼�� ����Ċ�����䒫!��իGj�[A
U�uj~�2}[-"6`�A��8t��+ �^
�]*��|�8��DaSd;lA;X:,Dh�b�yX��' (A�� 4�Ş�@��D�(��[נ;k����S\\�����*&���_�3Y*\�7��y���~b�t�� ��6G?���n� 0W�����O|5�h�_f��N� %_}�w�57J@'65�%��".Ц�N{�E�e�9S\��J�-�j8����4 Zi�:1�)��5(�@	��a��vϗ.7�����R0-И�_��{|u�����=���W����ݿ�g�>B�m!k�mx�4nɪ٤�Y��#����e�%1�{Ϛw�D��������{!y{�v�`VaX����~����gbL���2�2�O�w*���w�	̗jnt\���B7`���ǘ?A��C��:��C����NpXY��j�]H �M\.8a[���T(�x<¶��9]���g��`e?��������h(��#�A�R���ںVwC�e��>p.���:y!�X��pd5O�ſŽS�f���ȾU2xv�x���~<������t!<"d���� �/���Hn;�\H��^\h0ܹ�e���r�f�0���@h�d��V�u�mQ��D�[�LߚO��=7�NY���v%�*�J;�wO���ܔP Z�C]4����� �ё�7�ՠv��}�E<;���g���>%v7Q-�{6�]�-��������є�{�=*������b���F��m������E2���>���k����|�������?Y~���DiD!���i�h�i������jz����̭_P��g�}潠|�����-�J}2(��^��]����lo�8fv����e?P^Y�)ˌ���(k�ȫ�ޘ}dI|h?��)� G�`��
=�RM�j�xa�u[(�~B�b�w����X�[�o�c0��*�r�1<�XE�}�-��|��\$"iR Y�!�t�����A=;Hran�����,��6�6dDV%�Vm�0BF6��b-��iNW���
��q=�<���O���h.Yl����"Ȝ|\��;{ff���Ő�w_}���}��t�ڪ��U��
�WA�*�^٫ ��	��9�2�]8�|��>[�Ӿ�߭7T���h��i=�&�ν4L�~�{��97�Q��*��w=w%R��.���" ��{㍗�+X�3�����}���W���_����~u߯���G�]��pvή��U8�
gW�쾿8��\����\�
�W��x�&�w����&��xTA�?A�]���s�bׅh}M7;3?7����Avg�Sg��sHm���&�����bH0�nY�>�S 忀�����4�5A��p[f��(%������-;𩚖n�g��<n�,֜���� E�p���n��8ȓ��a����*D_���C�^yl�3�a/�&���     	��}��Rx���YCY/ʁ�F�'J�M(���y3~[�-�����!�� ������O$Fr�}z���Yr�~�\�9�F����������L��!��R���>����D�<@a�۞(� ���佖d��^H:�B��R��D3O*/�����������H�s��OY Aw.�?��]�^�$$D�?˭-��1�κ�Zh>�ܬ>Y T��,�JP��z��!\�!���0n%��{
�!e��O����ug!t�Vp�yP��G�j�Շ�6R3Nz�V��� ��x˻bp�^췗�xI�(�#U�¯U����䋚�O-T�L��-� k)���U�PD����!ժ$�`
�
o"��á�W}/Zh*���$��~:�==$aF��0���@�����{Tq�*�Q�=��G���Uܣ�{Tq��1��u!'ue'�?�A�96:��c1!}�+�95 ��ژ!�]^�`<*d� +A�<]�b�;U$��_�;%���������l�n^��!y�t��M��/���������S��h��N�1�?U�����2�`4�;0�sC�R�omd�RV�K�?v��ǂj������Kk����4���5��t^S�4�N�I�f��8̦х�Z�f��g���]K� �@jC5�U����?�~�`���ޫe��y��H<6�n�hO�q���GrT
͔i|s���Gd�5H�@dʶR��w�A-���X�~�o7(�BY�@C��׀L��+w^��� -K���H���S"��$	��z~��s?���� �${�;=?s*�����!�ӧ�s���N�'4�tЍB�}�a���s@�(Eފ�'�L���o\<6��b���;���v=�(&|�|���D�C�V�6/�5���w��f�Ԟ�C+���1�W���|�#��S��=ev9D:���O�^���� 3����+p���=u��w�F���j�!{1b�yP���h���>yQ�@$�7P�(�ڍ��J~��+kޥ�?�y�]�9��Y��1`�t��Ag>B�A��x��bi ��1|����������݃1)������V`\�>_���ܞځ�/=0�X�v����kr�$7K;B��eL= �����e��؃�):��*|@9�����2��0n��������Y�)��X�M<'���Os�A���`��`�.1xE�O��QT��9ݏ��������$'v�b�u@� I(��3x�AR+��������k���J}z�z�&�+^�h"ՙ�&cfo	�~P� �d�)��7(�뤩���o�d�r�3�˻�;��O(G�"M(Gtpqm%8��Zf��R�vG�!Z������oD7�͔�)Q ��<7;5wn����吅7�!L>1���.)�뛷��.���vM���d�$����Fc~!��{�q���c��ng�������e��L��n4�N�������칩5�ӿ�;}��?�����������wi���	VιT`� �֤��y�,�gt�	N��%�Q���r��A�c����K��oSX�3�&��nP_�3�3K䣰�{֓��s�O�
�� �ٍ^at���']o)�z�,��f���엽�~���5��L�[	���T�u�u�jOTK��;> ��X�;�&����G�(N��]��ˇƆ_��=��xKx%�&C�	�T����B��@� ���1�W���f �;���1o�ZkA]}^h6X�7�f�.�J Z��?� \�j"�0�M* ���� �����eʼY��"��}�n���j ������Bk���~���
xd���}0Ը�ɴ��x�5 ����xe��;��+|�!J�rԋ��S�y�.�.k�e���U���V]֪��w�6����x�����0�,���֎6�`��'Fj�$ńYa�1�b�?�qi�	�«/o3��6��0��&'o�1�!~�;&���Xx�u��] 4�̾�I|�KD�]��c�|T6+���:Xw̯�y�X�~����ې��L
���"o����~	$:���z���J�B���ZG�N+��c�R�r�<i��:Ԫ?�"x�G��CB��];Ժ��4֝06������:��[w<(�8=�q4ۮ�>����C_�I�4ޤc��N�)G�6�l��]�cȇ��M�Ǚq@l�!����\H�9Sn�N�܌!�Sl�ii��g ��v|�7�  ���}C~�����Y���qGL)�g�~X �e�*B��]y3������!����X_��Q|3�7�+��r���2.����*���U��f�Tf�����\y[i����B0��������gff��DM�
�Хx����)��0Zv,���)�7� ��T������O�f�-����ߡ�L�Ճ��`B}����95��ï�f�.*�[M��u���o����01(��3����J��}�,�֒�7�?:v�K�����l�����u��� 57srv�������[�2+���\8�y�Eo5lt��gO���L�|4e��6<��TOw�o�=[�<ڱKQ�����$3�$�����ǍiO��������]��Q+į{�61����Q��L�Շ_�>�q��{3;v��+�#���=��gG�{5⛥#�*���~�;eR~������O�?�T�T�y3�H�[������A��}�ũ&WM����sg����6�����;�V'놝��;S���ǅޙ��$����T�Jk��D%و�Δp��}�V��{�oG	��(�����Q�L����6��+��C�����ko"D����V/��	�:8`
�t�Pʔ�����9ʛr'3[;��=a�����;���i(V9�?/�)���b1�=�>������]y��K5�~������*-���^�[��MW��w���㚦���$g�����.�NQ��-]��q�kA89�M�ce��Z�L�>>#E�G�)�>"�CYc�",�]�Z�1����&ݰ���y#��ڡ��[�J��6�e�s�����&��ԚީI>��Z�
�;L��Q�:U�bQ-~@�#���)�s��� ��;�<"��k�;��m������$.��oΪ��"�߂J(�7^����d<��.�rӲs�爿���\�Qi�é�eK����if�ѿ(̌��S��
	��d]�/���ܦI!?,.�����}|��(�aI	�q@�}�f\��CG�ZA���eN)��F�6zdh�&7�T5t����0�!'H-����<*�*b>����_X�r3�>c��~�m����,�+��ٳN_�4�0N1գ�[\�Γ�ޢ:E���"��F:\Kx^1ہ5���o��M{�p822��.S{;̃B5`:�]Tf&x	(F۲���L�E���[`�4�HK?���}�
�Ue/�@#��g��x����o�W�~ ��t��i�*�G�f:��a��gڡx�5�&=���^Gyk�U��\0 �D�M�5�����u�da��� N&�/�ɿX����^L�{A?)�.�k#�X9Դ����u&�$h6�+T#�aR+��,G1�7�P�Դ��=� /��e?��/4�d���������a���@b�t�󨐑1P��@�H��+0���4C"�=_÷�"$-��`f�E�b�)sb�6a��W`s�fX�n����(٫;���[�' 0eq+RңvJ}P������0��ȴ�v1�cY���Uƨ�/jɕ��@��FPf��E���;�YR-�_�e�o��5C$Z�W�v��FK�2�B�@�4q��,�1$0cI� �;l�_�{4�V-��{Y�,myM�u;�F�A�NO����j�Hl+�q�X���.<�/Q?�"�\�R^/�&^�w��8Z��	V%B "���~NEׇ����j�dh1�w�'�gO�<7Ou)�.Eե��U���RT]���K��M��by����D�1���	ƫNj�9��hZ2���͚n";+3�D�wd��?��tXj���d    ��ys d@sn8��xw,��L]�M�;F���&4۶�F�f��X+�t�5Ԉ ��a31�"��	��m��TLL4�[eMt�o�h��r��M�B�eD:� ۏ�Տ�Հ�����.��>s��4�1Ќ3���m��h�m�u�,��c*�TL>wG��*A�c��(�� �*�H\����+%*��b���M��5� �G�|h��ɱ/3��B�5�X�"Dv��MPp����Qm:��w���:�3�|�4T�̐�A��͚Y�2��/�I����J�l���	ݝ׼�8�����Y$�h�\���k`�]6��v�$a���!׼i%0wִ��-7U�a��*����m��mf�Ƨ��Y,4�߾�0���M�I���8J+fP�èm@����˺cg֞R��Ps]�8V���j&�L��:����=�Ju���	�KY|ù���؃|\JΝ�07svvv�l0�i[��k������-#Ƽ��R�����K�{���g|�j�:?B:�����w��������}��޸�|�U,\����§	�a}�fQ�h�}_��xH�w�b����S":�sؑ+ $"��R�-_K�qπ/3ׅ����<Z��`a�&��=���9A�-:��*�]*tVL�G�ن�s0a��}�&mv<rv�W�������h	�l�;�X/�a�O=�\���8�,��e"�[�6�ݣE���j�s*B.g2��g^|bm �*=�K�ٲS���y�!�R8h,�$rG��)�܌G�"�(GnO�˧��X?�Yu�bq����,Z�p7E�o�ɡO���w�� Z�����o������ӥ���l����r���!�p"B�H�z�0n����{(�[��
�����X@�� 7�b��EJ�����/�Α���.`@vi
��e�?w� ���o�w�f�%�Cp�E����;W�э_>��U��π�n���]�0�/C�q����C������x�}�5������F�N���&:�t��(;��źg6U�j���=���2 ��j(���*��%J�ǐ�&ꇻ���O�  \�(V�҈�`�k�>H-&��R����Dp0M�x"x�t
5N@�l}� Eϡo�lE'��#��Ӏ�vS@�7 >��^ݪI,�ʊ�����Z��]79�,/P[�"���}S��G�S��!���j�.����}���~79Zʤ��<Ct�p�pC �"a9�J�]� F�Q��JJ�͛Ď�x���.k�8e��Ӵ����EF�V�A=	��1����>��So���k�:�ĭ8�/5@y��(c{ݩ(��Cξ���pA��w[&���c�sX����)���`è?��>��L�Ƨ? ��iVr�3$|���WhOh�}���!�/{��o���w�^n2��a�|lʤi:>���%j��U� ���p�3ˆ�Ĭ!O,���Z8;��M.�0����@(ʃ4�ZO��&��<�w��E��@�D���1���1E��G�V.R���M��������5���Z0e:��8ݠm�m�iߤ�7(�s~Da6�����X)Q�6�,\ƀ[��l�,�������r~���Zg���q_�;:�X:��{���M��s}�ם�:�a�P��qڎB�w��L�H=�dh�"dϜ:�������],sQ>�O�N�g�E2w��	���2ј��P��S6��mI#5}�3�{�-5{�e�� /)���������"�e�0�7�-L��U���IE��˖��e�mt�/�|�W�ѯu�����`Q�����Ӹ���J�β��Əl��̶�.��9�g�N�`�3����8|�q�w�~�l(��ǻ��C(���x,�f��v�c����ˊ������}��*�@��H�Y��︮�g��H�f0^*-c�m`}��g ��[�5�g��7�s����*�>6IPι��X���7����,�q{�t�ېr�W��M,FC���5I��q�aމ��P��y�:GW�"�8��ޣ��:����$��ܭ a30�ܲ]k�U�R�3�,O[�ɍ�Za�5���l���iW�LT��whi4�������3j��i���ǆE��]���7c#�<����R�=�U����K#���nZ�@>U��}f������3GŐ�2懖�g\�G	�u����_iш�
��'�n2	oY%syXg"Lk�@���'�R�n�i����v?��ˢ��|EP־�c�q7�f��`)��:��fy^�%@� t���L�9�M	�!ǈ��p�o{-�j�%~3H����߼4���>ZQ7h�!�~Ј�v���A� |9"ēnT����(j$P��M{կ�f����b��>n�����f��ū�D1�_�kkvꣅ`�W��h��0j��|aXA 7��Ҝ����x�=5�VĄ�0M:��<w�Q���y��޾����o��ʫBA���z�,=\�ӷ�g�"I �� �@�!@�H���..*qHpe�F &��~5|�{��g��$�Mv�~�{��$���zݦ���j������v���D���\��M!(�󽰽��'��O;�J1L��ׯ�K�Q�7��y\EP��º�!��s]@��փ���[��auJ�^u��X�J
�i����;Q����~ŏè��>
z��� xj�{�w�4%��މ�95Ԥ��](ؑ��v���$l��^����~'��J�.#����}(M-YqT���LG����t����B�RMA�m؄��ղ �;�mX-Ԥ7��P���������r����vW�|��0�QS����Q�%�ҸrF�$Ǐ�f��~:��P�K�n�O�sԟH�^X~����(Ej�H
��jJ����L_�p�0���K��+�hᗳ��D������\�����
�<u��fVÌ@U��H������^q��X��R�R
j�@�y��ߥ�'������.j,Q��O�" x�C�0�3q�!<S�9�H#Zm�<_��sTHC}(����:�J~��C�0�k:�0���י�FS�a�^�[�xT���8*b5����T���D�e�cu~v (���P;Ս��(�!:?����ⱦ��
ޯ/�m�Oj& 0�H-��e�3d	I�l��x�h���nVD�����͠�rED��3v8$��W*�����i��o��k �JNlA����e���A(=J�U�����Q5��R���l�@a� �Q�Jֽ0�)�@��.R��FW��Uu�]L.��Ĩ��]Oh�(�t@Aa���2��mb��W�eu�e�$�BR�]*ԩ�ώ��X��	�d�X��И���zi�n�YA;�������i�_GE����ކ0����ͨ��C�L}Y��zX0�F쯂M_��M6�Ƭ��.o*N|Ct�C�0:���w��h��މ��:Q3�hI �&@�؝������0�G0+%{���s�KP_U*F�H�2�~�*����r�S���� \���R��58J��`�3�&K� ������zc}Ey��q�zq�dİ�3&����B�ֵ�
�qx�n���=:�싖��Z���i��k��h��]<<�`�5If�Y*�
�Sa{*lO��I+lO����=����T؞
�Sa{*lO����=����T؞
�Sa{*lϷ�3&~�t��k�!Bx������G`_5!����»�D߰! 49�E����p8$���.~�WtCf��6���K�6ަoj+)z�|0l�c�u��	�`3�}�+�5�]����� eh3.l䃻H�Q�.�!��6Lhyf��U���=�e6�v�7<M�!�]�0�úVW�����>>�5�å�5�N-�n���"c��v�Ю���boLt&��WR�Ò /w������K�a�//�f]�g{Ȅr�Dx��j�i!�FL�d�� ��ʘզ�;y�l���.�z�ŭ5{�u�;�˻�/��3!�m�2��YA]i)��9ք�ǽ,mv�L�+vE�K���R�e�{g��]VvG 7  �0퓵�s�C^n»t�χw9��.��O�%�/�#��&yA&I��kM�M�@�J��;�u�^��[^.xQ�� /���xz=l��BIt��o.��fd���t`W�M��.-�a���vA]=^H7ǀ�X6��ouHwC�t���.��LP�M�O"6�Eމ�'
�Rp^��˲I�ra��ml�L���F&�F#�a���)�������)��6�sw���,9�W}'�gw���Ҡ��CL��ta���k��w��	Wd���l����2��ش���9:ꀻ�ޛ"Z���4B40�;����\_��H
҇����TkN���m4�]v>'��_��[@�%&���(.�G�ٍ��da�6�L������M>W}}�Sr�[�Xvq[|�q1]��!��^p,�&�9|LC;(2�d9o���uy�œ�X��Dr��q]g���i�[C.�˚�Z�­*�얚6���ڭKDw8a<����o;�89���S;g���˄�FqK'������g�_Ε��,�Wi�( 3�/s�쏌ň.]ID״+�VW�89�Z��'ԯG��ҽ)���1�ͺ>J:��Z��� �%��؉� �\7�&��\<�6���l{����ss뻍ԉ#�.����P.���7��=sC�~
GjCB�����΅u)�D!�u��}���l@Hl�:��L���4��;�+�����kD��g�&��e�-|�N�տV����d�����%rX�vul�쩳_�]|�)���n{}�[q^��9΋'q@��b!��w#��F�����)��af���<B��e�4ԋN�5v�w_�<x��|"Q�m
j�_c�K���]	������j7�n#����>�������;}���;��H�o$��_�,�:`�(���c�����^��阯d��Fj{��U.�㊂��_�aG�@J~���rL����s`��Ls_�V�	kƠ�"^h�1���سMR���5����А%930�kI�̌
�g��ȁP��=(F|���	���U����պT�R��S[�����������      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      F      x������ � �         �  x���Mo�F���� tmC���'o��ć�6�9�A@[k��D
$�&��;˕ai�U� )��x���zg2�8{���T�T	���K�~a<��k�r�CO_?|�Tө�N���o3��	� �K	�P\Y�����cWՍ;  O�� �#�������I/v�u���aRY�Ƙ�-��Ǽm�a��%]$_U�C��8��������'�ӻv=���rU5_Q��BFh��)2;o��JU� (���*�Uv�Uʹ�j�.��LL�%B�A[6�H�O���V5�Yۥ��1Kf��1Q�s��P�M�1`1B�|qF��~��!o����9�S��ܱnYv]}Y�f��:��ص���� KaKa
m4�:�����Y��!�'�K	�C���N��zQ���lP]�{���jf2y��b����K_����a��.��0�~�������w��Y!GG��a�X|���S����o�^?��v���::��TS�	����f�x_;J(-~��-���XJ[�����k��=N�YP&��k״�O������m�IWQÃ���5߱�%G*1P�=�h$�[ '� �(�F�z�����e}P"ED�sAyV�d�ћ�z�4�;��$$� T�sc����I��%UE�\��p*�'�|]/�%]�API��� �ou3$�MlO�i���m,�Q���m綺E{4c%�����򹞺��5�"�(@�f��w,W?m7\�"C���0\����\n�1���%�����p�{P � /�✿��<M0&�;���i�P/�Y� "��k�I|�����HS�}�,\��$����h[�.��)�G7���$H�H�_$�B)Bluvq��]?��������u� 똆>SF!�8x��$M|�U���MČ5�c3���n�Y��ڔ��*M�7��S)�`��t ���Y������4]���h
�U��S_�����%��O��c�"]��:璂!0���(
���
B#l�tn�d��A�A7A+m�r4�F���mr�Q�U/�fL���Q o\WɋڧЌ��	�O�<<��P�����Úf�ͻ+���/q���P�!�P�η�!�7N/'،&�~A�������U���(5�5�0��/"!��� �jQk����~��U?�W�#M,���PY(M��<��	��gqrr�/"x�      �   %  x�}UK�� S������$r��tv߅�$½EQJ��Y.D�X�yBE��&�
3Kk�^�>����
��lVhȠ���s����X���q�ҡ��F������+�
2p'n�)�v|�,d����:n��^��K�H�u&�������l_�z:9X�=n�3b�f��=Q>���A�ed<�2�
n�	�C?�޿�/�����I�+OP#ˈA��� TՋy��%���a+�>�3�	3�9�W�T5?�GT�I"%��Nh��NXT�;��{�jC��]$�QWH�1�u��	��;�s7�b��I݄�:UĞ��M�]{�1xp[䰟����5���̥����E;y�Y�q�0��̡X4�J�uz��J������`m|	>@�(���y�J�P�s�=�%�5p��%���(�g���H�Ê�|؝lJ��W��"q��* إX��L�C�=@C�1�Ms��l��U*��J��.��b�B?Gi�M&�t?�'����17��"PW�W���������)�q}�׵18��*~����?��6��C�L�?���={
;&�H��5�Z�>���]����{UbW���j�� �����6]s���]�P�����g��n�'t���y]K>�"#�{X�	N����ľ9�Ϣ�,��Xt�b���0����&�>#X��l&�����!��*�%�r��a=yH;)i�=R�'$��G-N�J��/���w競������4>���n'�&�$v�3۞���_ �k )�      �      x������ � �      �      x������ � �      �     x��Y�r�(|�~ž_��`�|�UQZ[�U+[>I�m��P,�!g�$�(݂��gCu�s{���[;UB�ݵ����P���C��@/ _���"+�/�߰j��y�:�& d��c;�x��DN��A����GZ84�2E�d�x���'��2^4�h�@�H ���e�&�k?���ڎ����Ԏ~y���t���8D���\�X� ��iY���p��t����N�|+}?����q�ڴ^S��xU*�`%�+	}s����_����;|B�&��C37�ro��D�B�6,�kӿ����t��CUj�[��
2B)�s㹁��c���O����E.��%==��W�Ϭ�[;^�i
q����}{=��x�2�#��\��(�K��Oi�S�@�E�,�G\�p�K��V����=8t��7�����}��HHRɐă�8��ܻ��y��	-KAx��e)oM��y���v��_8�SQ�L�䄋t�K�bt�����t�(L�S�vQ�)P}P�X�N�p����� z#����\�6��3I��c�X��M����c�H�	Mukƙ}�9�6ꄲ��>���9�j�Q1I�U?��W;� i.:��v:ըI�	�0�/԰p���P%V���s��ڦT27)���~8�A> �J�*۝��_�JnkK�]H��ׂ� �
Y�O[;�u.m�2���91(-
xWs�4&�V��Qbta�x-�Nx�፟���k���í�����s-�}��\�T�&�������>f]J�Rf8o��sS�-�y3���D,5C����d���+���N�ӄ
�Q� ��S:��-��sʧ(-)�"������!�)zKA�aXJS� �h��+�R��0Pp��)�"�N����f��a#�K�PEcSvK���Ri�8�<T�G��Px�X�%
B���c���z��J�`��b�M���xK����Ն�5�4�V� 3
�f�rr�)[�	����7Gyu��"�U&��$��w����ݡ̀Υ�Lo�	�0ۣ����̣D-��Co�	&��L��}!L�1r���0a&/��aAہ�9E)v�b����a�$L�Vx>��,���pΫX'H�h����Y�<�����I��W��%}� W<��q���>���T���X���mvi�ᚭ/�#�M����-2إJ��0���V��m(Ԃ������� u2d6H�7 dؘӻ����~��,=�nk��*ʎ2��<���,G�J��g��W�io�in~�i�+���b,����"?f��0w��Ͽ���������c���>4S9�N��T?����q[]�����椤`mq����Y85ӕ��xޟoqzz�f�%��(���J�%DQW��員��	�êE�RN�t������H%?a8�I�cW�ޔG63nz��P㗘�N\�ZA9�*L�XV�pF�c������߇�>u��d�d�&,�4��� 7FG�X�k��l�c�
�{eR�l�ӡ�[�\,$CG��gĝՇ	H�:"��	���	�(VK9|S���� W\Wcv�͐����piO�L�~ّ�X�p��˺�3nXs/�itu"'�y;���](ti�v�����V����ؾu��O�y�!�b���Q���1��\"���[{��G0��*I��`c2��R��	8�ZE�pTM�r��t�JJXn����n�������i�v�})���Na:j�a�{��:���r�>��=|fWϵ�{�]�v���@~�c��;��ޝ6�r�����yz�ҩɚ�nx��&S<6�{)�2�i�4؃P9CfB�b��d�MW�B��3p�-���熖8Pΰ�k�5��2q�T�vӹ���~%獓��
�����}Y+�\�m9v��9$��� �9��V� ���>o���W��#�QG�akN#�|) X]���6L�)��wa_оh��sK�����=d�籹N}j>��~Pp�|;�m�D	�˷�K�f:sk��܉��_l���h���.�r T@�2�����Q�(\̦����۷o��A6      �   �  x���ߎ�0�k}��ߌiEk2W̴F�@���@�*�8}���}��ܞ|����9���d��z"}V�}�nʫJ�c�ZP��*�����L�A{%��șX��B����K!E�bA��ZR���P�x_$�Q�7zr�1��ܭ�<fm��#֋7^}����T�����ş����q�w�7�M���oSg_qtkSu�������p�QUe�|�3�I�7���\����Q(l��x-j�Y�"n
;��x[ ��+��p�����W�� -��s�ҫy��D���LH�Է\O�����vO;��[l>�V�����t	z��w�4=T��_�r���PX�ٰ����=��-4V�4!������g`e@�F24ii�:[gY��+;s���auXQ7l�}�8��9Z�yÃ�@kS�i���;��i�/�=ǹ�Q��ݲ�IǷ��z����
Yo�l�s�\.�B�o      4      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      l      x������ � �      n      x������ � �      p      x������ � �      r      x������ � �      t      x������ � �      v      x������ � �      x      x������ � �      z      x������ � �      |      x������ � �      N      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      V      x������ � �      X      x������ � �      Z      x������ � �      \      x������ � �      �      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �      d      x������ � �      f      x������ � �      h      x������ � �      j      x������ � �      �      x������ � �      �      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
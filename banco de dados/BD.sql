--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0 (Debian 16.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    nome_cliente character varying(100) NOT NULL
);


--
-- Name: contato_cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contato_cliente (
    tel_celular character varying(15),
    email character varying(50),
    nome_cliente character varying(100) NOT NULL
);


--
-- Name: contato_loja; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contato_loja (
    tel_celular character varying(15),
    email character varying(50),
    nome_loja character varying(100) NOT NULL
);


--
-- Name: demo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.demo (
    id integer NOT NULL,
    name character varying(200) DEFAULT ''::character varying NOT NULL,
    hint text DEFAULT ''::text NOT NULL
);


--
-- Name: demo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: demo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.demo_id_seq OWNED BY public.demo.id;


--
-- Name: endereço_cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."endereço_cliente" (
    bairro character varying(50) NOT NULL,
    numero character varying(5) NOT NULL,
    cep character varying(15),
    nome_cliente character varying(100) NOT NULL
);


--
-- Name: endereço_loja; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."endereço_loja" (
    bairro character varying(50) NOT NULL,
    numero character varying(5) NOT NULL,
    cep character varying(15),
    nome_loja character varying(100) NOT NULL
);


--
-- Name: loja; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.loja (
    nome_loja character varying(100) NOT NULL
);


--
-- Name: produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produto (
    nome_produto character varying(100) NOT NULL,
    "preço" character varying(10),
    categoria character varying(20)
);


--
-- Name: demo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo ALTER COLUMN id SET DEFAULT nextval('public.demo_id_seq'::regclass);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (nome_cliente);


--
-- Name: contato_cliente contato_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contato_cliente
    ADD CONSTRAINT contato_cliente_pkey PRIMARY KEY (nome_cliente);


--
-- Name: contato_loja contato_loja_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contato_loja
    ADD CONSTRAINT contato_loja_pkey PRIMARY KEY (nome_loja);


--
-- Name: demo demo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_pkey PRIMARY KEY (id);


--
-- Name: endereço_cliente endereço_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."endereço_cliente"
    ADD CONSTRAINT "endereço_cliente_pkey" PRIMARY KEY (nome_cliente);


--
-- Name: endereço_loja endereço_loja_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."endereço_loja"
    ADD CONSTRAINT "endereço_loja_pkey" PRIMARY KEY (nome_loja);


--
-- Name: loja loja_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT loja_pkey PRIMARY KEY (nome_loja);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (nome_produto);


--
-- PostgreSQL database dump complete
--


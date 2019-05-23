SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: event_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.event_category AS ENUM (
    'music',
    'art',
    'film',
    'performance',
    'food',
    'protest',
    'class',
    'workshop',
    'gathering'
);


--
-- Name: type_of_entity; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.type_of_entity AS ENUM (
    'personal',
    'collective',
    'venue'
);


--
-- Name: type_of_presence; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.type_of_presence AS ENUM (
    'venue',
    'organizer',
    'attendee'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: entities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entities (
    id bigint NOT NULL,
    handle character varying,
    name character varying,
    email character varying,
    password_digest character varying,
    confirmed boolean DEFAULT false,
    confirm_token character varying DEFAULT ''::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    entity_type public.type_of_entity
);


--
-- Name: entities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.entities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.entities_id_seq OWNED BY public.entities.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    name character varying,
    date timestamp without time zone,
    description character varying,
    address character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    category public.event_category
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: presences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.presences (
    id bigint NOT NULL,
    entity_id bigint,
    event_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    presence_type public.type_of_presence
);


--
-- Name: presences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.presences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: presences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.presences_id_seq OWNED BY public.presences.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    subscriber_id integer,
    subscribed_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: entities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entities ALTER COLUMN id SET DEFAULT nextval('public.entities_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: presences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presences ALTER COLUMN id SET DEFAULT nextval('public.presences_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: entities entities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: presences presences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presences
    ADD CONSTRAINT presences_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: index_entities_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_entities_on_email ON public.entities USING btree (email);


--
-- Name: index_entities_on_entity_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entities_on_entity_type ON public.entities USING btree (entity_type);


--
-- Name: index_entities_on_handle; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_entities_on_handle ON public.entities USING btree (handle);


--
-- Name: index_entities_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_entities_on_name ON public.entities USING btree (name);


--
-- Name: index_events_on_address; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_address ON public.events USING btree (address);


--
-- Name: index_events_on_category; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_category ON public.events USING btree (category);


--
-- Name: index_events_on_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_date ON public.events USING btree (date);


--
-- Name: index_events_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_name ON public.events USING btree (name);


--
-- Name: index_presences_on_entity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_presences_on_entity_id ON public.presences USING btree (entity_id);


--
-- Name: index_presences_on_event_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_presences_on_event_id ON public.presences USING btree (event_id);


--
-- Name: index_presences_on_presence_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_presences_on_presence_type ON public.presences USING btree (presence_type);


--
-- Name: index_subscriptions_on_subscribed_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_subscribed_id ON public.subscriptions USING btree (subscribed_id);


--
-- Name: index_subscriptions_on_subscriber_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_subscriber_id ON public.subscriptions USING btree (subscriber_id);


--
-- Name: presences fk_rails_238247797e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presences
    ADD CONSTRAINT fk_rails_238247797e FOREIGN KEY (event_id) REFERENCES public.events(id);


--
-- Name: presences fk_rails_42a7dbbe83; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presences
    ADD CONSTRAINT fk_rails_42a7dbbe83 FOREIGN KEY (entity_id) REFERENCES public.entities(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20190508164755'),
('20190508165351'),
('20190508202206'),
('20190508235419'),
('20190514095639'),
('20190523095347'),
('20190523104637');



--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Postgres.app)
-- Dumped by pg_dump version 16.0

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: appointments; Type: TABLE; Schema: public; Owner: tamaralaraque
--

CREATE TABLE public.appointments (
    appointmentid integer NOT NULL,
    patientid integer,
    doctorid integer,
    appointmentdate date,
    reason character varying(255)
);


ALTER TABLE public.appointments OWNER TO tamaralaraque;

--
-- Name: appointments_appointmentid_seq; Type: SEQUENCE; Schema: public; Owner: tamaralaraque
--

CREATE SEQUENCE public.appointments_appointmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointments_appointmentid_seq OWNER TO tamaralaraque;

--
-- Name: appointments_appointmentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tamaralaraque
--

ALTER SEQUENCE public.appointments_appointmentid_seq OWNED BY public.appointments.appointmentid;


--
-- Name: doctors; Type: TABLE; Schema: public; Owner: tamaralaraque
--

CREATE TABLE public.doctors (
    doctorid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    specialty character varying(100),
    contactnumber character varying(15),
    email character varying(100)
);


ALTER TABLE public.doctors OWNER TO tamaralaraque;

--
-- Name: doctors_doctorid_seq; Type: SEQUENCE; Schema: public; Owner: tamaralaraque
--

CREATE SEQUENCE public.doctors_doctorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_doctorid_seq OWNER TO tamaralaraque;

--
-- Name: doctors_doctorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tamaralaraque
--

ALTER SEQUENCE public.doctors_doctorid_seq OWNED BY public.doctors.doctorid;


--
-- Name: medicalrecords; Type: TABLE; Schema: public; Owner: tamaralaraque
--

CREATE TABLE public.medicalrecords (
    recordid integer NOT NULL,
    patientid integer,
    diagnosis character varying(255),
    treatment character varying(255),
    recorddate date
);


ALTER TABLE public.medicalrecords OWNER TO tamaralaraque;

--
-- Name: medicalrecords_recordid_seq; Type: SEQUENCE; Schema: public; Owner: tamaralaraque
--

CREATE SEQUENCE public.medicalrecords_recordid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.medicalrecords_recordid_seq OWNER TO tamaralaraque;

--
-- Name: medicalrecords_recordid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tamaralaraque
--

ALTER SEQUENCE public.medicalrecords_recordid_seq OWNED BY public.medicalrecords.recordid;


--
-- Name: patients; Type: TABLE; Schema: public; Owner: tamaralaraque
--

CREATE TABLE public.patients (
    patientid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    dateofbirth date,
    gender character varying(10),
    contactnumber character varying(15),
    email character varying(100)
);


ALTER TABLE public.patients OWNER TO tamaralaraque;

--
-- Name: patients_patientid_seq; Type: SEQUENCE; Schema: public; Owner: tamaralaraque
--

CREATE SEQUENCE public.patients_patientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_patientid_seq OWNER TO tamaralaraque;

--
-- Name: patients_patientid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tamaralaraque
--

ALTER SEQUENCE public.patients_patientid_seq OWNED BY public.patients.patientid;


--
-- Name: appointments appointmentid; Type: DEFAULT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointmentid SET DEFAULT nextval('public.appointments_appointmentid_seq'::regclass);


--
-- Name: doctors doctorid; Type: DEFAULT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.doctors ALTER COLUMN doctorid SET DEFAULT nextval('public.doctors_doctorid_seq'::regclass);


--
-- Name: medicalrecords recordid; Type: DEFAULT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.medicalrecords ALTER COLUMN recordid SET DEFAULT nextval('public.medicalrecords_recordid_seq'::regclass);


--
-- Name: patients patientid; Type: DEFAULT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.patients ALTER COLUMN patientid SET DEFAULT nextval('public.patients_patientid_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: tamaralaraque
--

INSERT INTO public.appointments VALUES
	(1, 1, 1, '2023-07-10', 'Routine Checkup'),
	(2, 2, 2, '2023-07-12', 'Headache');


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: tamaralaraque
--

INSERT INTO public.doctors VALUES
	(1, 'Alice', 'Brown', 'Cardiology', '555-123-4567', 'alice.brown@example.com'),
	(2, 'Brown', 'Johnson', 'Neurology', '555-987-6543', 'bob.johnson@example.com');


--
-- Data for Name: medicalrecords; Type: TABLE DATA; Schema: public; Owner: tamaralaraque
--

INSERT INTO public.medicalrecords VALUES
	(1, 1, 'Hypertension', 'Medication', '2023-07-10'),
	(2, 2, 'Migraine', 'Painkiller', '2023-07-12');


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: tamaralaraque
--

INSERT INTO public.patients VALUES
	(1, 'John', 'Doe', '1980-01-15', 'Male', '123-456-7898', 'john.doe@example.com'),
	(2, 'Jane', 'Smith', '1990-05-20', 'Female', '987-654-3210', 'Jane.smith@example.com');


--
-- Name: appointments_appointmentid_seq; Type: SEQUENCE SET; Schema: public; Owner: tamaralaraque
--

SELECT pg_catalog.setval('public.appointments_appointmentid_seq', 2, true);


--
-- Name: doctors_doctorid_seq; Type: SEQUENCE SET; Schema: public; Owner: tamaralaraque
--

SELECT pg_catalog.setval('public.doctors_doctorid_seq', 2, true);


--
-- Name: medicalrecords_recordid_seq; Type: SEQUENCE SET; Schema: public; Owner: tamaralaraque
--

SELECT pg_catalog.setval('public.medicalrecords_recordid_seq', 2, true);


--
-- Name: patients_patientid_seq; Type: SEQUENCE SET; Schema: public; Owner: tamaralaraque
--

SELECT pg_catalog.setval('public.patients_patientid_seq', 2, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointmentid);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctorid);


--
-- Name: medicalrecords medicalrecords_pkey; Type: CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.medicalrecords
    ADD CONSTRAINT medicalrecords_pkey PRIMARY KEY (recordid);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patientid);


--
-- Name: appointments appointments_doctorid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_doctorid_fkey FOREIGN KEY (doctorid) REFERENCES public.doctors(doctorid);


--
-- Name: appointments appointments_patientid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);


--
-- Name: medicalrecords medicalrecords_patientid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tamaralaraque
--

ALTER TABLE ONLY public.medicalrecords
    ADD CONSTRAINT medicalrecords_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);


--
-- PostgreSQL database dump complete
--


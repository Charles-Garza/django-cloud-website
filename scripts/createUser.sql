-- Table: public."user"

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
 id serial NOT NULL,
 unique_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
 email character varying(255) COLLATE pg_catalog."default" NOT NULL,
 first_name character varying(255) COLLATE pg_catalog."default",
 last_name character varying(255) COLLATE pg_catalog."default",
 administrator integer DEFAULT 0,
 CONSTRAINT user_pkey PRIMARY KEY (id, unique_id, email)
 )
WITH (
    OIDS = FALSE
)

TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;


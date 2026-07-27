-- Deploy: schemas/agentic_db_app_public/tables/email_threads/constraints/email_threads_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table


ALTER TABLE agentic_db_app_public.email_threads 
  ADD CONSTRAINT email_threads_pkey PRIMARY KEY (id);


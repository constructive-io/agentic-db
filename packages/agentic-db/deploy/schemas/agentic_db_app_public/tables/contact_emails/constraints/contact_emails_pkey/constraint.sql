-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/constraints/contact_emails_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table


ALTER TABLE agentic_db_app_public.contact_emails 
  ADD CONSTRAINT contact_emails_pkey PRIMARY KEY (id);


-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/constraints/contact_phones_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table


ALTER TABLE agentic_db_app_public.contact_phones 
  ADD CONSTRAINT contact_phones_pkey PRIMARY KEY (id);


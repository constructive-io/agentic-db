-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/constraints/raw_contact_urls_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ADD CONSTRAINT raw_contact_urls_pkey PRIMARY KEY (id);


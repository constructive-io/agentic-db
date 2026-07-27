-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/constraints/raw_contacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table


ALTER TABLE agentic_db_app_public.raw_contacts 
  ADD CONSTRAINT raw_contacts_pkey PRIMARY KEY (id);


-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/constraints/contact_addresses_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.contact_addresses 
  ADD CONSTRAINT contact_addresses_pkey PRIMARY KEY (id);


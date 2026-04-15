-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/constraints/contacts_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  ADD CONSTRAINT contacts_chunks_pkey PRIMARY KEY (id);


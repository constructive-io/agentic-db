-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/constraints/contact_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000001781


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ADD CONSTRAINT contact_chunks_pkey PRIMARY KEY (id);


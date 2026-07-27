-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/constraints/documents_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table


ALTER TABLE agentic_db_app_public.documents_chunks 
  ADD CONSTRAINT documents_chunks_pkey PRIMARY KEY (id);


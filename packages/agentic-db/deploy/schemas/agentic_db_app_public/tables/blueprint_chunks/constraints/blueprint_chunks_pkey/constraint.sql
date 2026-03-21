-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/constraints/blueprint_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ADD CONSTRAINT blueprint_chunks_pkey PRIMARY KEY (id);


-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/constraints/idea_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding/column


ALTER TABLE agentic_db_app_public.idea_chunks 
  ADD CONSTRAINT idea_chunks_pkey PRIMARY KEY (id);


-- Deploy: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.chunks 
  ADD COLUMN embedding vector(768);


-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD COLUMN embedding vector(768);


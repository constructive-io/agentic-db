-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD COLUMN embedding_text text;


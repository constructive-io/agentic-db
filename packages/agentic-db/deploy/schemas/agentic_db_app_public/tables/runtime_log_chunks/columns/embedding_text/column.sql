-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/content/alterations/alt0000006072


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  ADD COLUMN embedding_text text;


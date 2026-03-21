-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/content/alterations/alt0000004299


ALTER TABLE agentic_db_app_public.thread_chunks 
  ADD COLUMN embedding_text text;


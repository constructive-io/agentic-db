-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/chunk_index/alterations/alt0000004298
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/updated_at/alterations/alt0000004297


ALTER TABLE agentic_db_app_public.thread_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;


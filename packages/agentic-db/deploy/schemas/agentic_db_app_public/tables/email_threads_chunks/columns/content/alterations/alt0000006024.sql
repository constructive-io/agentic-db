-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/content/alterations/alt0000006024
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ALTER COLUMN content SET NOT NULL;


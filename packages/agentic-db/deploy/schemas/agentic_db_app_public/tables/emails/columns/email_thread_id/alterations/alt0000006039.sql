-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/email_thread_id/alterations/alt0000006039
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/email_thread_id/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN email_thread_id SET NOT NULL;


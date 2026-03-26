-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/chunk_index/alterations/alt0000001802


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



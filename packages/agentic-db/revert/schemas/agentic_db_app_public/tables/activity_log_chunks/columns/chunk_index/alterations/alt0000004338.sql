-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/chunk_index/alterations/alt0000004338


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



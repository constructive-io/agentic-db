-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/chunk_index/alterations/alt0000003833


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



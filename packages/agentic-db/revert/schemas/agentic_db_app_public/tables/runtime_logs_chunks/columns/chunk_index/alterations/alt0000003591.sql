-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/chunk_index/alterations/alt0000003591


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



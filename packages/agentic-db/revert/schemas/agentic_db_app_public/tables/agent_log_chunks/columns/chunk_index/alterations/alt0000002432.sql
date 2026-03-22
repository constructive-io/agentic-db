-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/chunk_index/alterations/alt0000002432


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



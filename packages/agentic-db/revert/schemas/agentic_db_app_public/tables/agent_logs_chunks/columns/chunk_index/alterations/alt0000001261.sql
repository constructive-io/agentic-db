-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/chunk_index/alterations/alt0000001261


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/chunk_index/alterations/alt0000002159


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;



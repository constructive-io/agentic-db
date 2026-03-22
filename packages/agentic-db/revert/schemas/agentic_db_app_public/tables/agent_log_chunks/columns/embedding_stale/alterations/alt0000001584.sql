-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/embedding_stale/alterations/alt0000001584


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;



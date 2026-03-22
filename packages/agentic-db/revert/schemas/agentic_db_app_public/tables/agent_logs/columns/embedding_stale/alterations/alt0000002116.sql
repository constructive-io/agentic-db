-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding_stale/alterations/alt0000002116


ALTER TABLE "agentic_db_app_public".agent_logs 
  ALTER COLUMN embedding_stale DROP NOT NULL;



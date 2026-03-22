-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/embedding_stale/alterations/alt0000002102


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN embedding_stale DROP NOT NULL;



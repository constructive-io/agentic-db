-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/embedding_stale/alterations/alt0000002166


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;



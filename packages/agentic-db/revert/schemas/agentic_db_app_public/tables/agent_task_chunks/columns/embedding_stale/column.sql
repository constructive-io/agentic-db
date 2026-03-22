-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  DROP COLUMN embedding_stale RESTRICT;



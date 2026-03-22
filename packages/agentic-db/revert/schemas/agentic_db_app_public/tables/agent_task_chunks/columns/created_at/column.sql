-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  DROP COLUMN created_at RESTRICT;



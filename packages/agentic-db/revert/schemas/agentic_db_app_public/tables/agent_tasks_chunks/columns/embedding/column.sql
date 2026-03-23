-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.agent_tasks_chunks 
  DROP COLUMN embedding RESTRICT;



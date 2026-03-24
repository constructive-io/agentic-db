-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/updated_at/alterations/alt0000001241


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;



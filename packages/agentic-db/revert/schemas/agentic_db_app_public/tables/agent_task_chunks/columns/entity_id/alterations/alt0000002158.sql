-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/entity_id/alterations/alt0000002158


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;



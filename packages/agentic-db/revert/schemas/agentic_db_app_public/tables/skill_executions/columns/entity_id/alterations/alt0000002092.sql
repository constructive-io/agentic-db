-- Revert: schemas/agentic_db_app_public/tables/skill_executions/columns/entity_id/alterations/alt0000002092


ALTER TABLE "agentic_db_app_public".skill_executions 
  ALTER COLUMN entity_id DROP NOT NULL;



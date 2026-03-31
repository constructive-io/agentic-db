-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/entity_id/alterations/alt0000001501


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ALTER COLUMN entity_id DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/task_notes/columns/entity_id/alterations/alt0000002063


ALTER TABLE "agentic_db_app_public".task_notes 
  ALTER COLUMN entity_id DROP NOT NULL;



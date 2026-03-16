-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/entity_id/alterations/alt0000001473


ALTER TABLE "agentic_db_app_public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;



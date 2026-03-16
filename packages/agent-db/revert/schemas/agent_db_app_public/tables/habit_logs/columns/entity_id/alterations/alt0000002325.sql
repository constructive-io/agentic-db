-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/entity_id/alterations/alt0000002325


ALTER TABLE "agent_db_app_public".habit_logs 
  ALTER COLUMN entity_id DROP NOT NULL;



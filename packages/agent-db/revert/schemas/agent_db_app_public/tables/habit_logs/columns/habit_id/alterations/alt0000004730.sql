-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/habit_id/alterations/alt0000004730


ALTER TABLE "agent_db_app_public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;



-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/id/alterations/alt0000004675


ALTER TABLE "agent_db_app_public".habit_logs 
  ALTER COLUMN id DROP NOT NULL;



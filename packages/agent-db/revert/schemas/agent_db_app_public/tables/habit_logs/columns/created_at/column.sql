-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/created_at/column


ALTER TABLE "agent_db_app_public".habit_logs 
  DROP COLUMN created_at RESTRICT;



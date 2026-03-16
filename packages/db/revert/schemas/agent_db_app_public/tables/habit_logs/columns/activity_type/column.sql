-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/activity_type/column


ALTER TABLE "agent_db_app_public".habit_logs 
  DROP COLUMN activity_type RESTRICT;



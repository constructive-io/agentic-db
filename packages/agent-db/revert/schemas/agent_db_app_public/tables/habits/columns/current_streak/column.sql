-- Revert: schemas/agent_db_app_public/tables/habits/columns/current_streak/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN current_streak RESTRICT;



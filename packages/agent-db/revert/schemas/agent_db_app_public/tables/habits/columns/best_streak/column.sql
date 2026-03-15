-- Revert: schemas/agent_db_app_public/tables/habits/columns/best_streak/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN best_streak RESTRICT;



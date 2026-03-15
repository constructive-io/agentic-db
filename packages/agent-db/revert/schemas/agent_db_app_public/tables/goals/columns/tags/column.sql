-- Revert: schemas/agent_db_app_public/tables/goals/columns/tags/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN tags RESTRICT;



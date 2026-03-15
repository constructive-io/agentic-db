-- Revert: schemas/agent_db_app_public/tables/goals/columns/status/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN status RESTRICT;



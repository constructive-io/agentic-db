-- Revert: schemas/agent_db_app_public/tables/goals/columns/created_at/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN created_at RESTRICT;



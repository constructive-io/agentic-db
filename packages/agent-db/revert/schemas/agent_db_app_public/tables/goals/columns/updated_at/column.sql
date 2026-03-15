-- Revert: schemas/agent_db_app_public/tables/goals/columns/updated_at/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN updated_at RESTRICT;



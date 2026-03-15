-- Revert: schemas/agent_db_app_public/tables/goals/columns/category/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN category RESTRICT;



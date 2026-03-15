-- Revert: schemas/agent_db_app_public/tables/goals/columns/entity_id/column


ALTER TABLE agent_db_app_public.goals 
  DROP COLUMN entity_id RESTRICT;



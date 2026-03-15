-- Revert: schemas/agent_db_app_public/tables/goal_habits/columns/entity_id/alterations/alt0000001573


ALTER TABLE agent_db_app_public.goal_habits 
  ALTER COLUMN entity_id DROP NOT NULL;



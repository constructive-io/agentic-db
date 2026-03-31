-- Revert: schemas/agentic_db_app_public/tables/goal_habits/columns/entity_id/alterations/alt0000004148


ALTER TABLE agentic_db_app_public.goal_habits 
  ALTER COLUMN entity_id DROP NOT NULL;



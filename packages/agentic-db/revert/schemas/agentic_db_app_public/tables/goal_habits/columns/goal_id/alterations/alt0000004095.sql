-- Revert: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/alterations/alt0000004095


ALTER TABLE agentic_db_app_public.goal_habits 
  ALTER COLUMN goal_id DROP NOT NULL;



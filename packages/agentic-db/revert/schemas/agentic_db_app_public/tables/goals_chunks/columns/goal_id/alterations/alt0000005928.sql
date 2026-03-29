-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/goal_id/alterations/alt0000005928


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN goal_id DROP NOT NULL;



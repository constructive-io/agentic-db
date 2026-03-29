-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/goal_id/column


ALTER TABLE agentic_db_app_public.goals_chunks 
  DROP COLUMN goal_id RESTRICT;



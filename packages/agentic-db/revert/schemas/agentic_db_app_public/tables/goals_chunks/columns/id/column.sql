-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.goals_chunks 
  DROP COLUMN id RESTRICT;



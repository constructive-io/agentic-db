-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.goals_chunks 
  DROP COLUMN updated_at RESTRICT;



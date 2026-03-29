-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/id/alterations/alt0000005878


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN id DROP NOT NULL;



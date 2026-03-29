-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/content/alterations/alt0000005882


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN content DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/updated_at/alterations/alt0000003803


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;



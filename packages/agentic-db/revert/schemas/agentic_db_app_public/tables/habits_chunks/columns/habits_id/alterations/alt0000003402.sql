-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/habits_id/alterations/alt0000003402


ALTER TABLE agentic_db_app_public.habits_chunks 
  ALTER COLUMN habits_id DROP NOT NULL;



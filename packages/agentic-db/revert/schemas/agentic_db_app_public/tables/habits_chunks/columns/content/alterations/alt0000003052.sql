-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/content/alterations/alt0000003052


ALTER TABLE agentic_db_app_public.habits_chunks 
  ALTER COLUMN content DROP NOT NULL;



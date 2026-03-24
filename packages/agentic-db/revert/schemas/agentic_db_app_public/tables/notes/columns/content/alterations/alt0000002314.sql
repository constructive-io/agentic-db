-- Revert: schemas/agentic_db_app_public/tables/notes/columns/content/alterations/alt0000002314


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN content DROP NOT NULL;



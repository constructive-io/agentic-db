-- Revert: schemas/agentic_db_app_public/tables/notes/columns/created_at/alterations/alt0000013009


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN created_at DROP NOT NULL;



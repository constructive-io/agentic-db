-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/updated_at/alterations/alt0000004658


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;



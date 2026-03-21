-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/created_at/alterations/alt0000004656


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN created_at DROP NOT NULL;



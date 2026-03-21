-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/content/alterations/alt0000004661


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN content DROP NOT NULL;



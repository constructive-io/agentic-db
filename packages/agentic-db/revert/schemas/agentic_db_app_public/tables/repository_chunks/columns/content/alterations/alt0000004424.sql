-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/content/alterations/alt0000004424


ALTER TABLE agentic_db_app_public.repository_chunks 
  ALTER COLUMN content DROP NOT NULL;



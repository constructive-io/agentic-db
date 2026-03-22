-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/content/alterations/alt0000002678


ALTER TABLE agentic_db_app_public.project_chunks 
  ALTER COLUMN content DROP NOT NULL;



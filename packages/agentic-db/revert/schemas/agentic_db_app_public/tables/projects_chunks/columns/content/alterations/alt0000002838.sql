-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/content/alterations/alt0000002838


ALTER TABLE agentic_db_app_public.projects_chunks 
  ALTER COLUMN content DROP NOT NULL;



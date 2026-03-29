-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/updated_at/alterations/alt0000005741


ALTER TABLE agentic_db_app_public.projects_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/project_id/alterations/alt0000005743


ALTER TABLE agentic_db_app_public.projects_chunks 
  ALTER COLUMN project_id DROP NOT NULL;



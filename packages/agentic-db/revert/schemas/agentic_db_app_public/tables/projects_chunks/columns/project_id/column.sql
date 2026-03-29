-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/project_id/column


ALTER TABLE agentic_db_app_public.projects_chunks 
  DROP COLUMN project_id RESTRICT;



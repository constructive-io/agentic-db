-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/column


ALTER TABLE agentic_db_app_public.project_chunks 
  DROP COLUMN project_id RESTRICT;



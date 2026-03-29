-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.projects_chunks 
  DROP COLUMN updated_at RESTRICT;



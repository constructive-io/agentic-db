-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.project_chunks 
  DROP COLUMN updated_at RESTRICT;



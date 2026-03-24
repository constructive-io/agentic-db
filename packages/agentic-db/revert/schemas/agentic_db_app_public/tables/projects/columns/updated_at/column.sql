-- Revert: schemas/agentic_db_app_public/tables/projects/columns/updated_at/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN updated_at RESTRICT;



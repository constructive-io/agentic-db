-- Revert: schemas/agentic_db_app_public/tables/projects/columns/tags/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN tags RESTRICT;



-- Revert: schemas/agentic_db_app_public/tables/projects/columns/completed_at/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN completed_at RESTRICT;



-- Revert: schemas/agentic_db_app_public/tables/projects/columns/started_at/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN started_at RESTRICT;



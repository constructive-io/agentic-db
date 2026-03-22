-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/dependency_id/column


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  DROP COLUMN dependency_id RESTRICT;



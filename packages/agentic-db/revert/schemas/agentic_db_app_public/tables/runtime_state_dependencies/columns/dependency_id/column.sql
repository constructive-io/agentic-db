-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/dependency_id/column


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  DROP COLUMN dependency_id RESTRICT;



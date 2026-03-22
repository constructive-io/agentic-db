-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/runtime_state_id/column


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  DROP COLUMN runtime_state_id RESTRICT;



-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/state_type/column


ALTER TABLE agentic_db_app_public.runtime_states 
  DROP COLUMN state_type RESTRICT;



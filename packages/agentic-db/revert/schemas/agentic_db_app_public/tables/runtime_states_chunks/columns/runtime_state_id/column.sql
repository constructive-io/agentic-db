-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/runtime_state_id/column


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  DROP COLUMN runtime_state_id RESTRICT;



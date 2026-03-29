-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/constraints/runtime_states_chunks_runtime_state_id_fkey/constraint


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  DROP CONSTRAINT runtime_states_chunks_runtime_state_id_fkey;



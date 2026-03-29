-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/runtime_state_id/alterations/alt0000005720


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  ALTER COLUMN runtime_state_id DROP NOT NULL;



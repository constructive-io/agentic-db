-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  DROP COLUMN metadata RESTRICT;



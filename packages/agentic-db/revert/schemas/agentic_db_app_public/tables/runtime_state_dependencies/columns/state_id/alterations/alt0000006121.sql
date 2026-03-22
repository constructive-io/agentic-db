-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/state_id/alterations/alt0000006121


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ALTER COLUMN state_id DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/entity_id/alterations/alt0000002821


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ALTER COLUMN entity_id DROP NOT NULL;



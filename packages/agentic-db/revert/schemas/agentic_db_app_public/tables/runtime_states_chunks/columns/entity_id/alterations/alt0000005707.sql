-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/entity_id/alterations/alt0000005707


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;



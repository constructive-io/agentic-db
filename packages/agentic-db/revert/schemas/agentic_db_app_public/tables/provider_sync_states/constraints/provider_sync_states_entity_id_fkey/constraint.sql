-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/constraints/provider_sync_states_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.provider_sync_states 
  DROP CONSTRAINT provider_sync_states_entity_id_fkey;



-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/entity_id/column


ALTER TABLE agentic_db_app_public.runtime_states 
  DROP COLUMN entity_id RESTRICT;



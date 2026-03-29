-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/alterations/alt0000010947


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN entity_id DROP NOT NULL;



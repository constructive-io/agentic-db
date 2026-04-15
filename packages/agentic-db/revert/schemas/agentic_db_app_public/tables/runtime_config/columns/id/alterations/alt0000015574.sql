-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/id/alterations/alt0000015574


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN id DROP NOT NULL;



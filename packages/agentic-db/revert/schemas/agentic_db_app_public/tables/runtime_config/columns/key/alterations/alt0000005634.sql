-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/key/alterations/alt0000005634


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN key DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/alterations/alt0000005637


ALTER TABLE agentic_db_app_public.runtime_config 
  ALTER COLUMN updated_at DROP NOT NULL;



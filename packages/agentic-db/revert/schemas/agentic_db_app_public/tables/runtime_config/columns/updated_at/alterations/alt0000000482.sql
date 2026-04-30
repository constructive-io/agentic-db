-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/alterations/alt0000000482




ALTER TABLE agentic_db_app_public.runtime_config 
    ALTER COLUMN updated_at DROP DEFAULT;




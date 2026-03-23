-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/alterations/alt0000003096




ALTER TABLE agentic_db_app_public.runtime_config 
    ALTER COLUMN created_at DROP DEFAULT;




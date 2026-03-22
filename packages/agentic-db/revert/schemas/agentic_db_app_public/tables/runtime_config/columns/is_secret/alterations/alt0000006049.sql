-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/alterations/alt0000006049




ALTER TABLE agentic_db_app_public.runtime_config 
    ALTER COLUMN is_secret DROP DEFAULT;




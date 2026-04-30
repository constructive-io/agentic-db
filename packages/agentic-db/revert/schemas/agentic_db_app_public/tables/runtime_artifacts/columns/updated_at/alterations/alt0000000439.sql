-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/alterations/alt0000000439




ALTER TABLE agentic_db_app_public.runtime_artifacts 
    ALTER COLUMN updated_at DROP DEFAULT;




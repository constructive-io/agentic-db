-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/created_at/alterations/alt0000002717




ALTER TABLE agentic_db_app_public.runtime_metrics 
    ALTER COLUMN created_at DROP DEFAULT;




-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/alterations/alt0000002266




ALTER TABLE "agentic_db_app_public".runtime_metrics 
    ALTER COLUMN updated_at DROP DEFAULT;




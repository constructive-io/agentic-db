-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/alterations/alt0000001383




ALTER TABLE "agentic_db_app_public".runtime_schedules 
    ALTER COLUMN is_active DROP DEFAULT;




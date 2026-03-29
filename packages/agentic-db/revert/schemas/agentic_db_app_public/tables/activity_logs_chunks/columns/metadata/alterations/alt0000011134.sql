-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/metadata/alterations/alt0000011134




ALTER TABLE agentic_db_app_public.activity_logs_chunks 
    ALTER COLUMN metadata DROP DEFAULT;




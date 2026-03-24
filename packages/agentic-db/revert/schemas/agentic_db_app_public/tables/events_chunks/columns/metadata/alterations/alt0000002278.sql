-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/metadata/alterations/alt0000002278




ALTER TABLE agentic_db_app_public.events_chunks 
    ALTER COLUMN metadata DROP DEFAULT;




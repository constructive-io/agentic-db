-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/updated_at/alterations/alt0000002178




ALTER TABLE agentic_db_app_public.event_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;




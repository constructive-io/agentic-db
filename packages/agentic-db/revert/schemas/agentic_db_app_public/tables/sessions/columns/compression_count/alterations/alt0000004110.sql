-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/compression_count/alterations/alt0000004110




ALTER TABLE agentic_db_app_public.sessions 
    ALTER COLUMN compression_count DROP DEFAULT;




-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/metadata/alterations/alt0000002744




ALTER TABLE agentic_db_app_public.interactions_chunks 
    ALTER COLUMN metadata DROP DEFAULT;




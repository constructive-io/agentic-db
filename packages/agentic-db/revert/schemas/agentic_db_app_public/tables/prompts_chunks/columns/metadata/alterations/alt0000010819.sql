-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/metadata/alterations/alt0000010819




ALTER TABLE agentic_db_app_public.prompts_chunks 
    ALTER COLUMN metadata DROP DEFAULT;




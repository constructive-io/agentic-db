-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/version/alterations/alt0000004013




ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN version DROP DEFAULT;




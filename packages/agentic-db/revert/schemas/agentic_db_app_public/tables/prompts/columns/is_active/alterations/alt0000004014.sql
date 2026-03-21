-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/is_active/alterations/alt0000004014




ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN is_active DROP DEFAULT;




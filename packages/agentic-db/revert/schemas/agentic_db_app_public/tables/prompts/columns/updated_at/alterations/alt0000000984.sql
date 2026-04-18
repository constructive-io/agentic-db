-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/updated_at/alterations/alt0000000984




ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN updated_at DROP DEFAULT;




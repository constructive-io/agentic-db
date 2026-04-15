-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/created_at/alterations/alt0000013237




ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN created_at DROP DEFAULT;




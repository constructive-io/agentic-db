-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000004514




ALTER TABLE agentic_db_app_public.user_settings 
    ALTER COLUMN updated_at DROP DEFAULT;




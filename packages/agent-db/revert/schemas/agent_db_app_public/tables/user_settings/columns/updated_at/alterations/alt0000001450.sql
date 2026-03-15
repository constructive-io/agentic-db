-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000001450




ALTER TABLE agent_db_app_public.user_settings 
    ALTER COLUMN updated_at DROP DEFAULT;




-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/updated_at/alterations/alt0000001369




ALTER TABLE agent_db_app_public.email_accounts 
    ALTER COLUMN updated_at DROP DEFAULT;




-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/created_at/alterations/alt0000001366


ALTER TABLE agent_db_app_public.email_accounts 
  ALTER COLUMN created_at DROP NOT NULL;



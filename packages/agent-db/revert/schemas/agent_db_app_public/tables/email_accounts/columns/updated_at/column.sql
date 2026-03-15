-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/updated_at/column


ALTER TABLE agent_db_app_public.email_accounts 
  DROP COLUMN updated_at RESTRICT;



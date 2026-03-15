-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/provider/column


ALTER TABLE agent_db_app_public.email_accounts 
  DROP COLUMN provider RESTRICT;



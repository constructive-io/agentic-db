-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/sync_state/column


ALTER TABLE agent_db_app_public.email_accounts 
  DROP COLUMN sync_state RESTRICT;



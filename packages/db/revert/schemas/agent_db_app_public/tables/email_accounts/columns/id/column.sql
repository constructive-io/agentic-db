-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/id/column


ALTER TABLE "agent_db_app_public".email_accounts 
  DROP COLUMN id RESTRICT;



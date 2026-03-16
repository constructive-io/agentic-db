-- Revert: schemas/agent_db_app_public/tables/email_accounts/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".email_accounts 
  DISABLE ROW LEVEL SECURITY;



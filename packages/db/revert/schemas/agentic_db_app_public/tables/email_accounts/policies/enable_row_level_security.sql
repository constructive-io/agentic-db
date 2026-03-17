-- Revert: schemas/agentic_db_app_public/tables/email_accounts/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".email_accounts 
  DISABLE ROW LEVEL SECURITY;



-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/id/column


ALTER TABLE agentic_db_app_public.email_accounts 
  DROP COLUMN id RESTRICT;



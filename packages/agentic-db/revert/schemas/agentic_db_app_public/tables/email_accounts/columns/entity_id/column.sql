-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/column


ALTER TABLE agentic_db_app_public.email_accounts 
  DROP COLUMN entity_id RESTRICT;



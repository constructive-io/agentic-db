-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/alterations/alt0000004429


ALTER TABLE agentic_db_app_public.email_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;



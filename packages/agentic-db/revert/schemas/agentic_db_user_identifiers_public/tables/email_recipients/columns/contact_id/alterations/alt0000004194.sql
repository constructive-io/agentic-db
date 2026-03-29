-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/contact_id/alterations/alt0000004194


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  ALTER COLUMN contact_id DROP NOT NULL;



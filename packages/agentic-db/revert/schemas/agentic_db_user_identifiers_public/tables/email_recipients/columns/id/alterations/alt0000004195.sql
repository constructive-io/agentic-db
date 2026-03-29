-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/id/alterations/alt0000004195


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  ALTER COLUMN id DROP NOT NULL;



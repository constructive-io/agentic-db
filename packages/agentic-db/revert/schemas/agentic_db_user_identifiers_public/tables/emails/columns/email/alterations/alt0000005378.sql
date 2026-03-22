-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/email/alterations/alt0000005378


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ALTER COLUMN email DROP NOT NULL;



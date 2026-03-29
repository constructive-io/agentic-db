-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/email_id/alterations/alt0000011537


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  ALTER COLUMN email_id DROP NOT NULL;



-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/email_id/column


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  DROP COLUMN email_id RESTRICT;



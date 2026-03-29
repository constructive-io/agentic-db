-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/id/column


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  DROP COLUMN id RESTRICT;



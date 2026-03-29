-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/constraints/email_recipients_contact_id_fkey/constraint


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  DROP CONSTRAINT email_recipients_contact_id_fkey;



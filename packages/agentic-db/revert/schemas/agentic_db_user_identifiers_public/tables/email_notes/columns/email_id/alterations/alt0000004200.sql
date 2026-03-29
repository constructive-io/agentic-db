-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/email_id/alterations/alt0000004200


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ALTER COLUMN email_id DROP NOT NULL;



-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/email_id/column


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  DROP COLUMN email_id RESTRICT;



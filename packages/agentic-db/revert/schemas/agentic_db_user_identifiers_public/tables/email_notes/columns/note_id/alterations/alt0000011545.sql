-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/note_id/alterations/alt0000011545


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ALTER COLUMN note_id DROP NOT NULL;



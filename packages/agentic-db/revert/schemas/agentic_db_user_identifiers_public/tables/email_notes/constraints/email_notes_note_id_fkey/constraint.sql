-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/constraints/email_notes_note_id_fkey/constraint


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  DROP CONSTRAINT email_notes_note_id_fkey;



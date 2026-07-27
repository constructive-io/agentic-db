-- Revert: schemas/agentic_db_app_public/tables/email_notes/columns/note_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.email_notes 
  ALTER COLUMN note_id DROP NOT NULL;



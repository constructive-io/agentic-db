-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/alterations/alt0000001340


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN note_id DROP NOT NULL;



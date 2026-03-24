-- Revert: schemas/agentic_db_app_public/tables/event_notes/columns/note_id/alterations/alt0000003163


ALTER TABLE agentic_db_app_public.event_notes 
  ALTER COLUMN note_id DROP NOT NULL;



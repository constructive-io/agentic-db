-- Revert: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/note_id/alterations/alt0000001676


ALTER TABLE "agentic_db_app_public".calendar_event_notes 
  ALTER COLUMN note_id DROP NOT NULL;



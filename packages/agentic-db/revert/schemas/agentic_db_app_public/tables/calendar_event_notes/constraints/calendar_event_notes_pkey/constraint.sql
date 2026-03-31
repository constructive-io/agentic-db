-- Revert: schemas/agentic_db_app_public/tables/calendar_event_notes/constraints/calendar_event_notes_pkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_event_notes 
  DROP CONSTRAINT calendar_event_notes_pkey;



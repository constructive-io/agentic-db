-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/alterations/alt0000013681
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/indexes/calendar_event_notes_note_id_idx


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  ALTER COLUMN calendar_event_id SET NOT NULL;


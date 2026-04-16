-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/indexes/calendar_event_notes_note_id_idx


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  ENABLE ROW LEVEL SECURITY;


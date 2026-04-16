-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/alterations/alt0000000734
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/indexes/calendar_event_notes_note_id_idx


COMMENT ON TABLE agentic_db_app_public.calendar_event_tasks IS E'@behavior +manyToMany';


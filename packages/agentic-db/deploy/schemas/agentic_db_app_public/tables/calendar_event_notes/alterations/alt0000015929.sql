-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/alterations/alt0000015929
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_notes/indexes/email_notes_note_id_idx


COMMENT ON TABLE agentic_db_app_public.calendar_event_notes IS E'@behavior +manyToMany';


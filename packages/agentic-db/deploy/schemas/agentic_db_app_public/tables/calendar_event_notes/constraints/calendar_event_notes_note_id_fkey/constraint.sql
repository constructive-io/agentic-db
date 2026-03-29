-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/constraints/calendar_event_notes_note_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  ADD CONSTRAINT calendar_event_notes_note_id_fkey 
    FOREIGN KEY(note_id) 
    REFERENCES agentic_db_app_public.notes (id) 
    ON DELETE CASCADE;


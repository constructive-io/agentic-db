-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/constraints/calendar_events_organizer_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/emails/indexes/emails_from_contact_id_idx


ALTER TABLE agentic_db_app_public.calendar_events 
  ADD CONSTRAINT calendar_events_organizer_contact_id_fkey 
    FOREIGN KEY(organizer_contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE SET NULL;


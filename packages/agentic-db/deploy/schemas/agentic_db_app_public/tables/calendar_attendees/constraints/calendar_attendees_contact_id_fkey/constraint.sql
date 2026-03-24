-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/constraints/calendar_attendees_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_organizer_contact_id_idx


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  ADD CONSTRAINT calendar_attendees_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agentic_db_app_public".contacts (id) 
    ON DELETE SET NULL;


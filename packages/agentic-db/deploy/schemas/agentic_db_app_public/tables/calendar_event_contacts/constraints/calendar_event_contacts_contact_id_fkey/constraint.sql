-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/constraints/calendar_event_contacts_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  ADD CONSTRAINT calendar_event_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;


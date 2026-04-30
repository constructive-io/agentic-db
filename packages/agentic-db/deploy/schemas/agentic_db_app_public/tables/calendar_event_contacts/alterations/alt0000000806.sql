-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/alterations/alt0000000806
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  DISABLE ROW LEVEL SECURITY;


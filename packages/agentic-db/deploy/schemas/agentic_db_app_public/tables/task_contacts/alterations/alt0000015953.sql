-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/alterations/alt0000015953
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.task_contacts 
  DISABLE ROW LEVEL SECURITY;


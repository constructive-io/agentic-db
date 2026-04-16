-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/alterations/alt0000000677
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/indexes/calendar_event_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  DISABLE ROW LEVEL SECURITY;


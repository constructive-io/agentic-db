-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/indexes/calendar_event_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.expense_contacts 
  ENABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/alterations/alt0000001976
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".contact_notes 
  DISABLE ROW LEVEL SECURITY;


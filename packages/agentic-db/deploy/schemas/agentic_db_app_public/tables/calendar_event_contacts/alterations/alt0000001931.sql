-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/alterations/alt0000001931
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".calendar_event_contacts 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agent_db_app_public/tables/calendar_event_contacts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ENABLE ROW LEVEL SECURITY;


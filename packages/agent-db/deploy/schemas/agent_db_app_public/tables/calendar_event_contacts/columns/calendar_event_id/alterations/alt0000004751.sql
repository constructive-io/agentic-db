-- Deploy: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000004751
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/column
-- requires: schemas/agent_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ALTER COLUMN calendar_event_id SET NOT NULL;


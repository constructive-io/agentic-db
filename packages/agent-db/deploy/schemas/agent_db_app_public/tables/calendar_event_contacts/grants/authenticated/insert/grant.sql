-- Deploy: schemas/agent_db_app_public/tables/calendar_event_contacts/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agent_db_app_public".calendar_event_contacts TO authenticated;


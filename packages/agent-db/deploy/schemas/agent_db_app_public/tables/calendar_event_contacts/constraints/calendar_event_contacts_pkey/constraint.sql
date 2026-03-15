-- Deploy: schemas/agent_db_app_public/tables/calendar_event_contacts/constraints/calendar_event_contacts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".calendar_event_contacts 
  ADD CONSTRAINT calendar_event_contacts_pkey PRIMARY KEY (id);


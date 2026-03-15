-- Deploy: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/id/alterations/alt0000001584
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/columns/id/column
-- requires: schemas/agent_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.calendar_event_contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();


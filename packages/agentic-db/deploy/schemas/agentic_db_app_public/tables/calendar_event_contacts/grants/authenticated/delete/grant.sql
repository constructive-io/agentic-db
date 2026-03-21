-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


GRANT DELETE ON agentic_db_app_public.calendar_event_contacts TO authenticated;


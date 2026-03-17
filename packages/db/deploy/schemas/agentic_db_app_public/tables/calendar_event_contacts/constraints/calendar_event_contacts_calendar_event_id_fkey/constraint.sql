-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/constraints/calendar_event_contacts_calendar_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".calendar_event_contacts 
  ADD CONSTRAINT calendar_event_contacts_calendar_event_id_fkey 
    FOREIGN KEY(calendar_event_id) 
    REFERENCES "agentic_db_app_public".calendar_events (id) 
    ON DELETE CASCADE;


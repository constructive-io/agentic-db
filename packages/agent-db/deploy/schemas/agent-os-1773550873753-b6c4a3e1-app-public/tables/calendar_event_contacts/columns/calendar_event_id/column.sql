-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_event_contacts/columns/calendar_event_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_event_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_event_contacts 
  ADD COLUMN calendar_event_id uuid;


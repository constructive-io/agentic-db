-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/constraints/company_events_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ADD CONSTRAINT company_events_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".events (id) 
    ON DELETE CASCADE;


-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/constraints/event_venues_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_venues 
  ADD CONSTRAINT event_venues_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".events (id) 
    ON DELETE CASCADE;


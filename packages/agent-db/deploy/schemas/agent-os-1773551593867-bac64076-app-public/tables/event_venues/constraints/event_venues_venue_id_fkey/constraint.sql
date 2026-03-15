-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/constraints/event_venues_venue_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  ADD CONSTRAINT event_venues_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".venues (id) 
    ON DELETE CASCADE;


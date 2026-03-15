-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_images/constraints/venue_images_venue_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_images 
  ADD CONSTRAINT venue_images_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".venues (id) 
    ON DELETE CASCADE;


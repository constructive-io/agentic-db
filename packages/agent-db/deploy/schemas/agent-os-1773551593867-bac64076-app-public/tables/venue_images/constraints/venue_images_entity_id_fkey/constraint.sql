-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/constraints/venue_images_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_images 
  ADD CONSTRAINT venue_images_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  ADD CONSTRAINT venue_images_image_id_fkey 
    FOREIGN KEY(image_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".images (id) 
    ON DELETE CASCADE;


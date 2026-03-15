-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  ADD COLUMN entity_id uuid;


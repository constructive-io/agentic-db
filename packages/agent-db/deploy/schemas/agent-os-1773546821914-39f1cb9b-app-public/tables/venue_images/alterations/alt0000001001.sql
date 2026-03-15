-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/alterations/alt0000001001
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  DISABLE ROW LEVEL SECURITY;


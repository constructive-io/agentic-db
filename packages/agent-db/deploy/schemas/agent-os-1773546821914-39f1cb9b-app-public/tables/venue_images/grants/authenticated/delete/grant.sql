-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".venue_images TO authenticated;


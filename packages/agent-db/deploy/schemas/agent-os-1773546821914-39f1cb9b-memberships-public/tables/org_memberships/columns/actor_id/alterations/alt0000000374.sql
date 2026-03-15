-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/actor_id/alterations/alt0000000374
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships.actor_id IS 'References the user who holds this membership';


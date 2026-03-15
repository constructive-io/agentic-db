-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000000385
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_members.actor_id IS 'References the user who is a member';


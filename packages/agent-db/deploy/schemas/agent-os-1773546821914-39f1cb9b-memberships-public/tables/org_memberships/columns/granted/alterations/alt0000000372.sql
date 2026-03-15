-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/granted/alterations/alt0000000372
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/granted/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';


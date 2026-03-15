-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/granted/alterations/alt0000000372
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/granted/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';


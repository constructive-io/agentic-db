-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/permissions/alterations/alt0000000369
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships.permissions IS E'Aggregated permission bitmask combining profile-based and directly granted permissions';


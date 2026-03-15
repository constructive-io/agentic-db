-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/permissions/alterations/alt0000001930
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships.permissions IS E'Aggregated permission bitmask combining profile-based and directly granted permissions';


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/is_active/alterations/alt0000001921
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/is_active/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/columns/is_grant/alterations/alt0000001969
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".org_owner_grants.is_grant IS E'True to grant ownership, false to revoke ownership';


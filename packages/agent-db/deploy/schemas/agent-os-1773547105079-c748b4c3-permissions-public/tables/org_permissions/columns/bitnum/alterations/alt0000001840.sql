-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitnum/alterations/alt0000001840
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitnum/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions.bitnum IS E'Position of this permission in the bitmask (1-indexed), must be unique per permission set';


-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/bitnum/alterations/alt0000000279
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/bitnum/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions.bitnum IS E'Position of this permission in the bitmask (1-indexed), must be unique per permission set';


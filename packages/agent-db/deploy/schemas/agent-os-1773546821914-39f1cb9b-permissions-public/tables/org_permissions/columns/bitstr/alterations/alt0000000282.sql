-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/columns/bitstr/alterations/alt0000000282
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/columns/bitstr/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions.bitstr IS E'Pre-computed bitmask with only this permission bit set, used for bitwise OR/AND operations';


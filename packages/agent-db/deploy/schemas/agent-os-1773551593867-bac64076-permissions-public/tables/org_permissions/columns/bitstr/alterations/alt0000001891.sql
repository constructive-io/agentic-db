-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/columns/bitstr/alterations/alt0000001891
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/columns/bitstr/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-permissions-public".org_permissions.bitstr IS E'Pre-computed bitmask with only this permission bit set, used for bitwise OR/AND operations';


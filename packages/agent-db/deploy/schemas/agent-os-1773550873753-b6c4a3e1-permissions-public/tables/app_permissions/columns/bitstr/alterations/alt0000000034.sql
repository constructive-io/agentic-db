-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000000034
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/bitstr/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions.bitstr IS E'Pre-computed bitmask with only this permission bit set, used for bitwise OR/AND operations';


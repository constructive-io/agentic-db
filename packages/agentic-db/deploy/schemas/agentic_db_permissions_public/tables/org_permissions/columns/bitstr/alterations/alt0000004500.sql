-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/alterations/alt0000004500
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/column


COMMENT ON COLUMN agentic_db_permissions_public.org_permissions.bitstr IS E'Pre-computed bitmask with only this permission bit set, used for bitwise OR/AND operations';


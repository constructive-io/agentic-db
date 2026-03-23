-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitnum/alterations/alt0000001992
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitnum/column


COMMENT ON COLUMN agentic_db_permissions_public.org_permissions.bitnum IS E'Position of this permission in the bitmask (1-indexed), must be unique per permission set';


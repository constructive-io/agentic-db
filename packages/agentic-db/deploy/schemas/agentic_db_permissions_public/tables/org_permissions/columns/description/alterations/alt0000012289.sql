-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/description/alterations/alt0000012289
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/columns/description/column


COMMENT ON COLUMN agentic_db_permissions_public.org_permissions.description IS E'Human-readable description of what this permission allows';


-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/columns/name/alterations/alt0000002561
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/columns/name/column


COMMENT ON COLUMN agentic_db_permissions_public.app_permissions.name IS E'Human-readable permission name (e.g. read, write, manage)';


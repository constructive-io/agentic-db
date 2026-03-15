-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/name/alterations/alt0000000277
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/name/column


COMMENT ON COLUMN agent_db_permissions_public.org_permissions.name IS E'Human-readable permission name (e.g. read, write, manage)';


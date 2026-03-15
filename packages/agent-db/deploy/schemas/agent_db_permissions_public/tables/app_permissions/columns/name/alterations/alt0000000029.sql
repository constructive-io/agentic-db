-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/name/alterations/alt0000000029
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/name/column


COMMENT ON COLUMN agent_db_permissions_public.app_permissions.name IS E'Human-readable permission name (e.g. read, write, manage)';


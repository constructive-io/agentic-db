-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/description/alterations/alt0000000035
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/description/column


COMMENT ON COLUMN agent_db_permissions_public.app_permissions.description IS E'Human-readable description of what this permission allows';


-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000003213
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/column


COMMENT ON COLUMN "agent_db_permissions_public".app_permission_defaults.permissions IS 'Default permission bitmask applied to new members';


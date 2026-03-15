-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000000291
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/column


COMMENT ON COLUMN agent_db_permissions_public.org_permission_defaults.permissions IS 'Default permission bitmask applied to new members';


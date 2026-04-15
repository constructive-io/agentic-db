-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000012049
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/column


COMMENT ON COLUMN agentic_db_permissions_public.app_permission_defaults.permissions IS 'Default permission bitmask applied to new members';


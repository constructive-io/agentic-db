-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000002410
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/permissions/column


COMMENT ON COLUMN agentic_db_permissions_public.org_permission_defaults.permissions IS 'Default permission bitmask applied to new members';


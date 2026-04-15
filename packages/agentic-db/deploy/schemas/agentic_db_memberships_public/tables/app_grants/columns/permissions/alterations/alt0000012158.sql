-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000012158
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/columns/permissions/column


COMMENT ON COLUMN agentic_db_memberships_public.app_grants.permissions IS 'Bitmask of permissions being granted or revoked';


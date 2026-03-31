-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/alterations/alt0000002247
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/column


COMMENT ON COLUMN agentic_db_memberships_public.app_admin_grants.is_grant IS E'True to grant admin, false to revoke admin';


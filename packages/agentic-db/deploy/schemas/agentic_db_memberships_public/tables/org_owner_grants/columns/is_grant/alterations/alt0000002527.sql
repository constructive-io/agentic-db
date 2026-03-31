-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/is_grant/alterations/alt0000002527
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/is_grant/column


COMMENT ON COLUMN agentic_db_memberships_public.org_owner_grants.is_grant IS E'True to grant ownership, false to revoke ownership';


-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000001264
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_approved/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.is_approved IS 'Whether this membership has been approved by an admin';


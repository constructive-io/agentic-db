-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000000095
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/column


COMMENT ON COLUMN agent_db_memberships_public.app_memberships.is_approved IS 'Whether this membership has been approved by an admin';


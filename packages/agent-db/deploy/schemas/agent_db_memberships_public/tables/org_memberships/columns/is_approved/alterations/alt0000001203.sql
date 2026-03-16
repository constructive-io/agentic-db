-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_approved/alterations/alt0000001203
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_approved/column


COMMENT ON COLUMN "agent_db_memberships_public".org_memberships.is_approved IS 'Whether this membership has been approved by an admin';


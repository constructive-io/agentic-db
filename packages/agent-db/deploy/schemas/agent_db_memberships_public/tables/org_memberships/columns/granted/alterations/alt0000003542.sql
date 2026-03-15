-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/granted/alterations/alt0000003542
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/granted/column


COMMENT ON COLUMN "agent_db_memberships_public".org_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';


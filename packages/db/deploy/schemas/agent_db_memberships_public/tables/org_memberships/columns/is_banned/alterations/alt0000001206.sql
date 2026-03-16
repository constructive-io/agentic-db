-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_banned/alterations/alt0000001206
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_banned/column


COMMENT ON COLUMN "agent_db_memberships_public".org_memberships.is_banned IS 'Whether this member has been banned from the entity';


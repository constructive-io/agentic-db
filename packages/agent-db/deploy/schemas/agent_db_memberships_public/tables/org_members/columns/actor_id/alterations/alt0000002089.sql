-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000002089
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_members.actor_id IS 'References the user who is a member';


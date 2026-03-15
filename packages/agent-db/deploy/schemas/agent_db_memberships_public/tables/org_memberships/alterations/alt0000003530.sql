-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/alterations/alt0000003530
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


COMMENT ON TABLE "agent_db_memberships_public".org_memberships IS E'Tracks membership records linking actors to entities with permission bitmasks, ownership, and admin status';


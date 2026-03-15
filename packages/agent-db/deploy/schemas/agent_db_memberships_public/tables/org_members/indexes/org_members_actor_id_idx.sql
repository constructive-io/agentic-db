-- Deploy: schemas/agent_db_memberships_public/tables/org_members/indexes/org_members_actor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/column


CREATE INDEX org_members_actor_id_idx ON "agent_db_memberships_public".org_members USING BTREE ( actor_id );


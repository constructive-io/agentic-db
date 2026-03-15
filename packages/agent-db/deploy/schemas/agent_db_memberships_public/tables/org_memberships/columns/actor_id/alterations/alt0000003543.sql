-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/alterations/alt0000003543
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN actor_id SET NOT NULL;


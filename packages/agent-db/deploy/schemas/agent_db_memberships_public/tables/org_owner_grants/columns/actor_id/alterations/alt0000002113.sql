-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/actor_id/alterations/alt0000002113
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/actor_id/column


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  ALTER COLUMN actor_id SET NOT NULL;


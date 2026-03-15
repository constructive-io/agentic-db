-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000003326
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/column


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN actor_id SET NOT NULL;


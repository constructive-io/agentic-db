-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/id/alterations/alt0000001840
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/id/column


ALTER TABLE "agent_db_memberships_public".app_owner_grants 
  ALTER COLUMN id SET NOT NULL;


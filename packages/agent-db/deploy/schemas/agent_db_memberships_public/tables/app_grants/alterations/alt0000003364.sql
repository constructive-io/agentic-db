-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/alterations/alt0000003364
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


ALTER TABLE "agent_db_memberships_public".app_grants 
  DISABLE ROW LEVEL SECURITY;


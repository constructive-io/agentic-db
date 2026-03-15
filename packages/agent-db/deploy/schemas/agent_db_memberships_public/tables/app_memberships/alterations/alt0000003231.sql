-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/alterations/alt0000003231
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


ALTER TABLE "agent_db_memberships_public".app_memberships 
  DISABLE ROW LEVEL SECURITY;


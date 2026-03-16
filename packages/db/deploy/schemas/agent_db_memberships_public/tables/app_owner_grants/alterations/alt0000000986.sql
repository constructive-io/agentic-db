-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/alterations/alt0000000986
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table


ALTER TABLE "agent_db_memberships_public".app_owner_grants 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/alterations/alt0000003291
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/table


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  DISABLE ROW LEVEL SECURITY;


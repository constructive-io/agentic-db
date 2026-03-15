-- Deploy: schemas/agent_db_invites_public/tables/org_invites/alterations/alt0000003958
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


ALTER TABLE "agent_db_invites_public".org_invites 
  DISABLE ROW LEVEL SECURITY;


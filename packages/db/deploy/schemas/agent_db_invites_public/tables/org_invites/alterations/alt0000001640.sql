-- Deploy: schemas/agent_db_invites_public/tables/org_invites/alterations/alt0000001640
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


ALTER TABLE "agent_db_invites_public".org_invites 
  DISABLE ROW LEVEL SECURITY;


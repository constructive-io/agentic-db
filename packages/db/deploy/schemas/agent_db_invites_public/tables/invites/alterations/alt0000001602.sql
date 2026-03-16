-- Deploy: schemas/agent_db_invites_public/tables/invites/alterations/alt0000001602
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


ALTER TABLE "agent_db_invites_public".invites 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/id/alterations/alt0000001673
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/id/column


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ALTER COLUMN id SET NOT NULL;


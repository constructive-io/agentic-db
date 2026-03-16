-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/created_at/alterations/alt0000001678
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/created_at/column


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();


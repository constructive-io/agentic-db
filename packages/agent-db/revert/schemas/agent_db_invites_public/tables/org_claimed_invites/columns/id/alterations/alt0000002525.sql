-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/id/alterations/alt0000002525


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ALTER COLUMN id DROP NOT NULL;



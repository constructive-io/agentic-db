-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000002531


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;



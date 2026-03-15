-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/updated_at/column


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  DROP COLUMN updated_at RESTRICT;



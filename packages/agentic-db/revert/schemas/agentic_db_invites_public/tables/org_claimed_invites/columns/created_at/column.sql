-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/created_at/column


ALTER TABLE "agentic_db_invites_public".org_claimed_invites 
  DROP COLUMN created_at RESTRICT;



-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/id/alterations/alt0000001666


ALTER TABLE "agentic_db_invites_public".org_claimed_invites 
  ALTER COLUMN id DROP NOT NULL;



-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000000827


ALTER TABLE "agentic_db_invites_public".org_claimed_invites 
  ALTER COLUMN entity_id DROP NOT NULL;



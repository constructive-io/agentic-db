-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_count/alterations/alt0000000805


ALTER TABLE "agentic_db_invites_public".org_invites 
  ALTER COLUMN invite_count DROP NOT NULL;



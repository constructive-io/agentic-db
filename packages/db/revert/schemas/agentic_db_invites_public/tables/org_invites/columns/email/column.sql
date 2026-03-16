-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/email/column


ALTER TABLE "agentic_db_invites_public".org_invites 
  DROP COLUMN email RESTRICT;



-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/created_at/column


ALTER TABLE "agentic_db_invites_public".org_invites 
  DROP COLUMN created_at RESTRICT;



-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/updated_at/alterations/alt0000004035


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN updated_at DROP DEFAULT;



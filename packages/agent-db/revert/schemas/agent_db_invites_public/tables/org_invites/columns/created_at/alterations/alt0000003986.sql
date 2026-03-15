-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/created_at/alterations/alt0000003986


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN created_at DROP DEFAULT;



-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/created_at/column


ALTER TABLE "agent_db_invites_public".org_invites 
  DROP COLUMN created_at RESTRICT;



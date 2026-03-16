-- Revert: schemas/agent_db_invites_public/tables/invites/columns/email/column


ALTER TABLE "agent_db_invites_public".invites 
  DROP COLUMN email RESTRICT;



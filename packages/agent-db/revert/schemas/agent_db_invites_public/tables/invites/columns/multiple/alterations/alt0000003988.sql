-- Revert: schemas/agent_db_invites_public/tables/invites/columns/multiple/alterations/alt0000003988


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN multiple DROP NOT NULL;



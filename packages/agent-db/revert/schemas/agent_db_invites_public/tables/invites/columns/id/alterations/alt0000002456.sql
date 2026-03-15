-- Revert: schemas/agent_db_invites_public/tables/invites/columns/id/alterations/alt0000002456


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN id DROP NOT NULL;



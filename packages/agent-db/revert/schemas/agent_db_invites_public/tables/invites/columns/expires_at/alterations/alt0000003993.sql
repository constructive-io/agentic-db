-- Revert: schemas/agent_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000003993




ALTER TABLE "agent_db_invites_public".invites 
    ALTER COLUMN expires_at DROP DEFAULT;




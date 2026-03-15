-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000003986




ALTER TABLE "agent_db_invites_public".invites 
    ALTER COLUMN invite_count DROP DEFAULT;




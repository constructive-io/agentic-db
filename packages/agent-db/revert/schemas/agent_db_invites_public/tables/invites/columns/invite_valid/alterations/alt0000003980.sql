-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000003980




ALTER TABLE "agent_db_invites_public".invites 
    ALTER COLUMN invite_valid DROP DEFAULT;




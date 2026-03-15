-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000002469




ALTER TABLE "agent_db_invites_public".invites 
    ALTER COLUMN invite_limit DROP DEFAULT;




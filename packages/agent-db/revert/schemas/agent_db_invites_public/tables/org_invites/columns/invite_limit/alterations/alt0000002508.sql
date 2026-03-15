-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000002508




ALTER TABLE "agent_db_invites_public".org_invites 
    ALTER COLUMN invite_limit DROP DEFAULT;




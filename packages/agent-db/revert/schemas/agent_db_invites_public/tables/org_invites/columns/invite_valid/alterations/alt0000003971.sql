-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/alterations/alt0000003971




ALTER TABLE "agent_db_invites_public".org_invites 
    ALTER COLUMN invite_valid DROP DEFAULT;




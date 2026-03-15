-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/is_grant/alterations/alt0000001843




ALTER TABLE "agent_db_memberships_public".app_owner_grants 
    ALTER COLUMN is_grant DROP DEFAULT;




-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000001003




ALTER TABLE "agent_db_memberships_public".app_grants 
    ALTER COLUMN permissions DROP DEFAULT;




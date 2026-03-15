-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_disabled/alterations/alt0000001804




ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_disabled DROP DEFAULT;




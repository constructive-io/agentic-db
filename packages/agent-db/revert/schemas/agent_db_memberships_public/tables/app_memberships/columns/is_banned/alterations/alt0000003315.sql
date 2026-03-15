-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000003315




ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_banned DROP DEFAULT;




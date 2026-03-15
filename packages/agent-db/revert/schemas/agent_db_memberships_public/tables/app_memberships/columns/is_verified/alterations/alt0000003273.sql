-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000003273




ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_verified DROP DEFAULT;




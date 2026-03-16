-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000000964




ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_admin DROP DEFAULT;




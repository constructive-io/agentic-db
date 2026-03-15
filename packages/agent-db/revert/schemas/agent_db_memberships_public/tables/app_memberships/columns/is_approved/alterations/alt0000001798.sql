-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000001798




ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_approved DROP DEFAULT;




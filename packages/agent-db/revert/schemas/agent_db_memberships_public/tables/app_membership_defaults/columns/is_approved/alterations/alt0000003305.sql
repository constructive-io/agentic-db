-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000003305




ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;




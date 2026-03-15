-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/grantor_id/alterations/alt0000003301




ALTER TABLE "agent_db_memberships_public".app_admin_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




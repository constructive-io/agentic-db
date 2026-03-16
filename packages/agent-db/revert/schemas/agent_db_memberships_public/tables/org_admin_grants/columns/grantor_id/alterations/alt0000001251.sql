-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/grantor_id/alterations/alt0000001251




ALTER TABLE "agent_db_memberships_public".org_admin_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




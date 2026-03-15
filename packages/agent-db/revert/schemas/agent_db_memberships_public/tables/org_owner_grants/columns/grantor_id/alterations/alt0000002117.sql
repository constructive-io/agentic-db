-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/grantor_id/alterations/alt0000002117




ALTER TABLE "agent_db_memberships_public".org_owner_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




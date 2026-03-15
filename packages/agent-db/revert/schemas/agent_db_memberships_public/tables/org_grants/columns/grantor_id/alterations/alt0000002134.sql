-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/grantor_id/alterations/alt0000002134




ALTER TABLE "agent_db_memberships_public".org_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




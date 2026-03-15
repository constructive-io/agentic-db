-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/grantor_id/alterations/alt0000003328




ALTER TABLE "agent_db_memberships_public".app_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




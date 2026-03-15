-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/grantor_id/alterations/alt0000000143




ALTER TABLE agent_db_memberships_public.app_owner_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




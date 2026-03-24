-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/grantor_id/alterations/alt0000001482




ALTER TABLE agentic_db_memberships_public.app_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




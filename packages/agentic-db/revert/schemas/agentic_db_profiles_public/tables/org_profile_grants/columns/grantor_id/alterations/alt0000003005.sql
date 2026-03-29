-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/grantor_id/alterations/alt0000003005




ALTER TABLE agentic_db_profiles_public.org_profile_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




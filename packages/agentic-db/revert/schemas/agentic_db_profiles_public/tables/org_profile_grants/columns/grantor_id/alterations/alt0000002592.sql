-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/grantor_id/alterations/alt0000002592




ALTER TABLE agentic_db_profiles_public.org_profile_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;




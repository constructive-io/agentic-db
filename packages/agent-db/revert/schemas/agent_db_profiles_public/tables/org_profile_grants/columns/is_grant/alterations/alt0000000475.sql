-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/is_grant/alterations/alt0000000475




ALTER TABLE agent_db_profiles_public.org_profile_grants 
    ALTER COLUMN is_grant DROP DEFAULT;




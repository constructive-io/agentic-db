-- Verify: schemas/agent_db_profiles_public/tables/org_profile_grants/indexes/org_profile_grants_profile_id_idx


SELECT verify_index('agent_db_profiles_public.org_profile_grants', 'org_profile_grants_profile_id_idx');



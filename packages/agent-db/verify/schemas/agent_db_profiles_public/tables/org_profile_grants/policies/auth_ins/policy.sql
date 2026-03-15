-- Verify: schemas/agent_db_profiles_public/tables/org_profile_grants/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_profiles_public.org_profile_grants');



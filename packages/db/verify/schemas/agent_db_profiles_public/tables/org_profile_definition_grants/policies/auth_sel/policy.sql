-- Verify: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_profiles_public.org_profile_definition_grants');



-- Verify: schemas/agent_db_profiles_public/tables/org_profile_permissions/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_profiles_public.org_profile_permissions');



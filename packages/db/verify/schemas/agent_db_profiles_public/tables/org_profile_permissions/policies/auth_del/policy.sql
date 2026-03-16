-- Verify: schemas/agent_db_profiles_public/tables/org_profile_permissions/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_profiles_public.org_profile_permissions');



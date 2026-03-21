-- Verify: schemas/agentic_db_profiles_public/tables/app_profile_permissions/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_profiles_public.app_profile_permissions');



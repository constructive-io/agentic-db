-- Verify: schemas/agentic_db_profiles_public/tables/app_profile_permissions/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_profiles_public.app_profile_permissions');



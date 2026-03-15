-- Verify: schemas/agent_db_profiles_public/tables/app_profile_permissions/indexes/app_profile_permissions_updated_at_idx


SELECT verify_index('agent_db_profiles_public.app_profile_permissions', 'app_profile_permissions_updated_at_idx');



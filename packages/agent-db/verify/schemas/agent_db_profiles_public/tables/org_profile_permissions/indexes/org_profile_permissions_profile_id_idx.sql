-- Verify: schemas/agent_db_profiles_public/tables/org_profile_permissions/indexes/org_profile_permissions_profile_id_idx


SELECT verify_index('agent_db_profiles_public.org_profile_permissions', 'org_profile_permissions_profile_id_idx');



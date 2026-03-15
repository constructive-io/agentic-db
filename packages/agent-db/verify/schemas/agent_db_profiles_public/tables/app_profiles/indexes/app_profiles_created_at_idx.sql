-- Verify: schemas/agent_db_profiles_public/tables/app_profiles/indexes/app_profiles_created_at_idx


SELECT verify_index('agent_db_profiles_public.app_profiles', 'app_profiles_created_at_idx');



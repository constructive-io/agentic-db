-- Verify: schemas/agent_db_profiles_public/tables/org_profiles/indexes/org_profiles_default_entity_uniq


SELECT verify_index('agent_db_profiles_public.org_profiles', 'org_profiles_default_entity_uniq');



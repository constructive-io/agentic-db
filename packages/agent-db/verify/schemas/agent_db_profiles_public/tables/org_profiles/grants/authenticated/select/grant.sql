-- Verify: schemas/agent_db_profiles_public/tables/org_profiles/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_profiles_public.org_profiles', 'select', 'authenticated');



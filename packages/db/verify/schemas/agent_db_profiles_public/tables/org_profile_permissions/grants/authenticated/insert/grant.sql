-- Verify: schemas/agent_db_profiles_public/tables/org_profile_permissions/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_profiles_public.org_profile_permissions', 'insert', 'authenticated');



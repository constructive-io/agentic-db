-- Verify: schemas/agentic_db_profiles_public/tables/org_profile_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_profiles_public.org_profile_permissions', 'update', 'authenticated');



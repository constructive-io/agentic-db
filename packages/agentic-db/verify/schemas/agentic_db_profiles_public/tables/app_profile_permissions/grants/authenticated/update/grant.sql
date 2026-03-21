-- Verify: schemas/agentic_db_profiles_public/tables/app_profile_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_profiles_public.app_profile_permissions', 'update', 'authenticated');



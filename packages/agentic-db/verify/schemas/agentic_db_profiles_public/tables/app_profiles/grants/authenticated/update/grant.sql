-- Verify: schemas/agentic_db_profiles_public/tables/app_profiles/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_profiles_public.app_profiles', 'update', 'authenticated');



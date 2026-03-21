-- Verify: schemas/agentic_db_profiles_public/tables/app_profiles/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_profiles_public.app_profiles', 'insert', 'authenticated');



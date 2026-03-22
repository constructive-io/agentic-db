-- Verify: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_profiles_public.app_profile_definition_grants', 'insert', 'authenticated');



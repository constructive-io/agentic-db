-- Verify: schemas/agentic_db_profiles_public/tables/org_profiles/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_profiles_public.org_profiles', 'insert', 'authenticated');



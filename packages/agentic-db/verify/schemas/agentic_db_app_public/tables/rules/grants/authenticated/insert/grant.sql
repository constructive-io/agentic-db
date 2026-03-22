-- Verify: schemas/agentic_db_app_public/tables/rules/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.rules', 'insert', 'authenticated');



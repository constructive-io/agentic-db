-- Verify: schemas/agent_db_app_public/tables/rules/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.rules', 'insert', 'authenticated');



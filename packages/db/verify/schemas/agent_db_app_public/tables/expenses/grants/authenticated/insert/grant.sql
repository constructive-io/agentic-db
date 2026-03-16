-- Verify: schemas/agent_db_app_public/tables/expenses/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.expenses', 'insert', 'authenticated');



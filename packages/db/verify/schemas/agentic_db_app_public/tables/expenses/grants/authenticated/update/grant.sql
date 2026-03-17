-- Verify: schemas/agentic_db_app_public/tables/expenses/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.expenses', 'update', 'authenticated');



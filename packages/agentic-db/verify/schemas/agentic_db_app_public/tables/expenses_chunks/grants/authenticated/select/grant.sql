-- Verify: schemas/agentic_db_app_public/tables/expenses_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.expenses_chunks', 'select', 'authenticated');



-- Verify: schemas/agentic_db_app_public/tables/expense_contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.expense_contacts', 'insert', 'authenticated');


